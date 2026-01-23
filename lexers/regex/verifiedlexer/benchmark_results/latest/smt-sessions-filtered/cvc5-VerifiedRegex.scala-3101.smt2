; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183896 () Bool)

(assert start!183896)

(assert (=> start!183896 true))

(declare-fun b!1844807 () Bool)

(assert (=> b!1844807 true))

(assert (=> b!1844807 true))

(declare-fun b!1844808 () Bool)

(assert (=> b!1844808 true))

(declare-fun b!1844817 () Bool)

(declare-fun e!1178930 () Bool)

(declare-datatypes ((List!20417 0))(
  ( (Nil!20345) (Cons!20345 (h!25746 (_ BitVec 16)) (t!171982 List!20417)) )
))
(declare-datatypes ((IArray!13489 0))(
  ( (IArray!13490 (innerList!6802 List!20417)) )
))
(declare-datatypes ((Conc!6742 0))(
  ( (Node!6742 (left!16287 Conc!6742) (right!16617 Conc!6742) (csize!13714 Int) (cheight!6953 Int)) (Leaf!9844 (xs!9618 IArray!13489) (csize!13715 Int)) (Empty!6742) )
))
(declare-datatypes ((BalanceConc!13406 0))(
  ( (BalanceConc!13407 (c!301187 Conc!6742)) )
))
(declare-fun x!368712 () BalanceConc!13406)

(declare-fun tp!521699 () Bool)

(declare-fun inv!26646 (Conc!6742) Bool)

(assert (=> b!1844817 (= e!1178930 (and (inv!26646 (c!301187 x!368712)) tp!521699))))

(declare-datatypes ((IdentifierValueInjection!16 0))(
  ( (IdentifierValueInjection!17) )
))
(declare-fun thiss!4669 () IdentifierValueInjection!16)

(declare-fun inst!1048 () Bool)

(declare-fun inv!26647 (BalanceConc!13406) Bool)

(declare-fun list!8273 (BalanceConc!13406) List!20417)

(declare-datatypes ((TokenValue!3758 0))(
  ( (FloatLiteralValue!7516 (text!26751 List!20417)) (TokenValueExt!3757 (__x!12806 Int)) (Broken!18790 (value!114317 List!20417)) (Object!3829) (End!3758) (Def!3758) (Underscore!3758) (Match!3758) (Else!3758) (Error!3758) (Case!3758) (If!3758) (Extends!3758) (Abstract!3758) (Class!3758) (Val!3758) (DelimiterValue!7516 (del!3818 List!20417)) (KeywordValue!3764 (value!114318 List!20417)) (CommentValue!7516 (value!114319 List!20417)) (WhitespaceValue!7516 (value!114320 List!20417)) (IndentationValue!3758 (value!114321 List!20417)) (String!23299) (Int32!3758) (Broken!18791 (value!114322 List!20417)) (Boolean!3759) (Unit!35033) (OperatorValue!3761 (op!3818 List!20417)) (IdentifierValue!7516 (value!114323 List!20417)) (IdentifierValue!7517 (value!114324 List!20417)) (WhitespaceValue!7517 (value!114325 List!20417)) (True!7516) (False!7516) (Broken!18792 (value!114326 List!20417)) (Broken!18793 (value!114327 List!20417)) (True!7517) (RightBrace!3758) (RightBracket!3758) (Colon!3758) (Null!3758) (Comma!3758) (LeftBracket!3758) (False!7517) (LeftBrace!3758) (ImaginaryLiteralValue!3758 (text!26752 List!20417)) (StringLiteralValue!11274 (value!114328 List!20417)) (EOFValue!3758 (value!114329 List!20417)) (IdentValue!3758 (value!114330 List!20417)) (DelimiterValue!7517 (value!114331 List!20417)) (DedentValue!3758 (value!114332 List!20417)) (NewLineValue!3758 (value!114333 List!20417)) (IntegerValue!11274 (value!114334 (_ BitVec 32)) (text!26753 List!20417)) (IntegerValue!11275 (value!114335 Int) (text!26754 List!20417)) (Times!3758) (Or!3758) (Equal!3758) (Minus!3758) (Broken!18794 (value!114336 List!20417)) (And!3758) (Div!3758) (LessEqual!3758) (Mod!3758) (Concat!8748) (Not!3758) (Plus!3758) (SpaceValue!3758 (value!114337 List!20417)) (IntegerValue!11276 (value!114338 Int) (text!26755 List!20417)) (StringLiteralValue!11275 (text!26756 List!20417)) (FloatLiteralValue!7517 (text!26757 List!20417)) (BytesLiteralValue!3758 (value!114339 List!20417)) (CommentValue!7517 (value!114340 List!20417)) (StringLiteralValue!11276 (value!114341 List!20417)) (ErrorTokenValue!3758 (msg!3819 List!20417)) )
))
(declare-fun toCharacters!21 (IdentifierValueInjection!16 TokenValue!3758) BalanceConc!13406)

(declare-fun toValue!28 (IdentifierValueInjection!16 BalanceConc!13406) TokenValue!3758)

(assert (=> start!183896 (= inst!1048 (=> (and (inv!26647 x!368712) e!1178930) (= (list!8273 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))) (list!8273 x!368712))))))

(assert (= start!183896 b!1844817))

(declare-fun m!2273095 () Bool)

(assert (=> b!1844817 m!2273095))

(declare-fun m!2273097 () Bool)

(assert (=> start!183896 m!2273097))

(declare-fun m!2273099 () Bool)

(assert (=> start!183896 m!2273099))

(declare-fun m!2273101 () Bool)

(assert (=> start!183896 m!2273101))

(declare-fun m!2273103 () Bool)

(assert (=> start!183896 m!2273103))

(assert (=> start!183896 m!2273103))

(declare-fun m!2273105 () Bool)

(assert (=> start!183896 m!2273105))

(assert (=> start!183896 m!2273101))

(declare-fun res!828515 () Bool)

(declare-fun e!1178932 () Bool)

(assert (=> b!1844808 (=> res!828515 e!1178932)))

(declare-fun x!368713 () BalanceConc!13406)

(declare-fun x!368714 () BalanceConc!13406)

(assert (=> b!1844808 (= res!828515 (not (= (list!8273 x!368713) (list!8273 x!368714))))))

(declare-fun inst!1049 () Bool)

(declare-fun e!1178933 () Bool)

(declare-fun e!1178931 () Bool)

(assert (=> b!1844808 (= inst!1049 (=> (and (inv!26647 x!368713) e!1178931 (inv!26647 x!368714) e!1178933) e!1178932))))

(declare-fun b!1844818 () Bool)

(assert (=> b!1844818 (= e!1178932 (= (toValue!28 thiss!4669 x!368713) (toValue!28 thiss!4669 x!368714)))))

(declare-fun b!1844819 () Bool)

(declare-fun tp!521700 () Bool)

(assert (=> b!1844819 (= e!1178931 (and (inv!26646 (c!301187 x!368713)) tp!521700))))

(declare-fun b!1844820 () Bool)

(declare-fun tp!521701 () Bool)

(assert (=> b!1844820 (= e!1178933 (and (inv!26646 (c!301187 x!368714)) tp!521701))))

(assert (= (and b!1844808 (not res!828515)) b!1844818))

(assert (= b!1844808 b!1844819))

(assert (= b!1844808 b!1844820))

(declare-fun m!2273107 () Bool)

(assert (=> b!1844808 m!2273107))

(declare-fun m!2273109 () Bool)

(assert (=> b!1844808 m!2273109))

(declare-fun m!2273111 () Bool)

(assert (=> b!1844808 m!2273111))

(declare-fun m!2273113 () Bool)

(assert (=> b!1844808 m!2273113))

(declare-fun m!2273115 () Bool)

(assert (=> b!1844818 m!2273115))

(declare-fun m!2273117 () Bool)

(assert (=> b!1844818 m!2273117))

(declare-fun m!2273119 () Bool)

(assert (=> b!1844819 m!2273119))

(declare-fun m!2273121 () Bool)

(assert (=> b!1844820 m!2273121))

(declare-fun bs!408888 () Bool)

(declare-fun neg-inst!1048 () Bool)

(declare-fun s!220806 () Bool)

(assert (= bs!408888 (and neg-inst!1048 s!220806)))

(assert (=> bs!408888 (=> true (= (list!8273 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))) (list!8273 x!368712)))))

(assert (=> m!2273101 m!2273103))

(assert (=> m!2273101 m!2273105))

(assert (=> m!2273101 m!2273099))

(assert (=> m!2273101 s!220806))

(assert (=> m!2273099 s!220806))

(declare-fun bs!408889 () Bool)

(assert (= bs!408889 (and neg-inst!1048 start!183896)))

(assert (=> bs!408889 (= true inst!1048)))

(declare-fun bs!408890 () Bool)

(declare-fun neg-inst!1049 () Bool)

(declare-fun s!220808 () Bool)

(assert (= bs!408890 (and neg-inst!1049 s!220808)))

(declare-fun res!828516 () Bool)

(declare-fun e!1178934 () Bool)

(assert (=> bs!408890 (=> res!828516 e!1178934)))

(assert (=> bs!408890 (= res!828516 (not (= (list!8273 x!368714) (list!8273 x!368714))))))

(assert (=> bs!408890 (=> true e!1178934)))

(declare-fun b!1844821 () Bool)

(assert (=> b!1844821 (= e!1178934 (= (toValue!28 thiss!4669 x!368714) (toValue!28 thiss!4669 x!368714)))))

(assert (= (and bs!408890 (not res!828516)) b!1844821))

(assert (=> m!2273109 s!220808))

(assert (=> m!2273109 s!220808))

(declare-fun bs!408891 () Bool)

(declare-fun s!220810 () Bool)

(assert (= bs!408891 (and neg-inst!1049 s!220810)))

(declare-fun res!828517 () Bool)

(declare-fun e!1178935 () Bool)

(assert (=> bs!408891 (=> res!828517 e!1178935)))

(assert (=> bs!408891 (= res!828517 (not (= (list!8273 x!368714) (list!8273 x!368712))))))

(assert (=> bs!408891 (=> true e!1178935)))

(declare-fun b!1844822 () Bool)

(assert (=> b!1844822 (= e!1178935 (= (toValue!28 thiss!4669 x!368714) (toValue!28 thiss!4669 x!368712)))))

(assert (= (and bs!408891 (not res!828517)) b!1844822))

(declare-fun bs!408892 () Bool)

(assert (= bs!408892 (and m!2273101 m!2273109)))

(assert (=> bs!408892 m!2273109))

(assert (=> bs!408892 m!2273099))

(assert (=> bs!408892 s!220810))

(declare-fun bs!408893 () Bool)

(declare-fun s!220812 () Bool)

(assert (= bs!408893 (and neg-inst!1049 s!220812)))

(declare-fun res!828518 () Bool)

(declare-fun e!1178936 () Bool)

(assert (=> bs!408893 (=> res!828518 e!1178936)))

(assert (=> bs!408893 (= res!828518 (not (= (list!8273 x!368712) (list!8273 x!368712))))))

(assert (=> bs!408893 (=> true e!1178936)))

(declare-fun b!1844823 () Bool)

(assert (=> b!1844823 (= e!1178936 (= (toValue!28 thiss!4669 x!368712) (toValue!28 thiss!4669 x!368712)))))

(assert (= (and bs!408893 (not res!828518)) b!1844823))

(assert (=> m!2273101 m!2273099))

(assert (=> m!2273101 m!2273099))

(assert (=> m!2273101 s!220812))

(declare-fun bs!408894 () Bool)

(declare-fun s!220814 () Bool)

(assert (= bs!408894 (and neg-inst!1049 s!220814)))

(declare-fun res!828519 () Bool)

(declare-fun e!1178937 () Bool)

(assert (=> bs!408894 (=> res!828519 e!1178937)))

(assert (=> bs!408894 (= res!828519 (not (= (list!8273 x!368712) (list!8273 x!368714))))))

(assert (=> bs!408894 (=> true e!1178937)))

(declare-fun b!1844824 () Bool)

(assert (=> b!1844824 (= e!1178937 (= (toValue!28 thiss!4669 x!368712) (toValue!28 thiss!4669 x!368714)))))

(assert (= (and bs!408894 (not res!828519)) b!1844824))

(assert (=> bs!408892 m!2273099))

(assert (=> bs!408892 m!2273109))

(assert (=> bs!408892 s!220814))

(assert (=> m!2273101 s!220812))

(declare-fun bs!408895 () Bool)

(assert (= bs!408895 (and m!2273099 m!2273101)))

(assert (=> bs!408895 s!220812))

(declare-fun bs!408896 () Bool)

(assert (= bs!408896 (and m!2273099 m!2273109)))

(assert (=> bs!408896 s!220810))

(assert (=> m!2273099 s!220812))

(assert (=> bs!408895 s!220812))

(assert (=> bs!408896 s!220814))

(assert (=> m!2273099 s!220812))

(declare-fun bs!408897 () Bool)

(declare-fun s!220816 () Bool)

(assert (= bs!408897 (and neg-inst!1049 s!220816)))

(declare-fun res!828520 () Bool)

(declare-fun e!1178938 () Bool)

(assert (=> bs!408897 (=> res!828520 e!1178938)))

(assert (=> bs!408897 (= res!828520 (not (= (list!8273 x!368712) (list!8273 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))))))))

(assert (=> bs!408897 (=> true e!1178938)))

(declare-fun b!1844825 () Bool)

(assert (=> b!1844825 (= e!1178938 (= (toValue!28 thiss!4669 x!368712) (toValue!28 thiss!4669 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)))))))

(assert (= (and bs!408897 (not res!828520)) b!1844825))

(declare-fun bs!408898 () Bool)

(assert (= bs!408898 (and m!2273105 m!2273101 m!2273099)))

(assert (=> bs!408898 m!2273099))

(assert (=> bs!408898 m!2273105))

(assert (=> bs!408898 s!220816))

(declare-fun bs!408899 () Bool)

(declare-fun s!220818 () Bool)

(assert (= bs!408899 (and neg-inst!1049 s!220818)))

(declare-fun res!828521 () Bool)

(declare-fun e!1178939 () Bool)

(assert (=> bs!408899 (=> res!828521 e!1178939)))

(assert (=> bs!408899 (= res!828521 (not (= (list!8273 x!368714) (list!8273 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))))))))

(assert (=> bs!408899 (=> true e!1178939)))

(declare-fun b!1844826 () Bool)

(assert (=> b!1844826 (= e!1178939 (= (toValue!28 thiss!4669 x!368714) (toValue!28 thiss!4669 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)))))))

(assert (= (and bs!408899 (not res!828521)) b!1844826))

(declare-fun bs!408900 () Bool)

(assert (= bs!408900 (and m!2273105 m!2273109)))

(assert (=> bs!408900 m!2273109))

(assert (=> bs!408900 m!2273105))

(assert (=> bs!408900 s!220818))

(declare-fun bs!408901 () Bool)

(declare-fun s!220820 () Bool)

(assert (= bs!408901 (and neg-inst!1049 s!220820)))

(declare-fun res!828522 () Bool)

(declare-fun e!1178940 () Bool)

(assert (=> bs!408901 (=> res!828522 e!1178940)))

(assert (=> bs!408901 (= res!828522 (not (= (list!8273 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))) (list!8273 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))))))))

(assert (=> bs!408901 (=> true e!1178940)))

(declare-fun b!1844827 () Bool)

(assert (=> b!1844827 (= e!1178940 (= (toValue!28 thiss!4669 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))) (toValue!28 thiss!4669 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)))))))

(assert (= (and bs!408901 (not res!828522)) b!1844827))

(assert (=> m!2273105 s!220820))

(declare-fun bs!408902 () Bool)

(declare-fun s!220822 () Bool)

(assert (= bs!408902 (and neg-inst!1049 s!220822)))

(declare-fun res!828523 () Bool)

(declare-fun e!1178941 () Bool)

(assert (=> bs!408902 (=> res!828523 e!1178941)))

(assert (=> bs!408902 (= res!828523 (not (= (list!8273 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))) (list!8273 x!368712))))))

(assert (=> bs!408902 (=> true e!1178941)))

(declare-fun b!1844828 () Bool)

(assert (=> b!1844828 (= e!1178941 (= (toValue!28 thiss!4669 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))) (toValue!28 thiss!4669 x!368712)))))

(assert (= (and bs!408902 (not res!828523)) b!1844828))

(assert (=> bs!408898 m!2273105))

(assert (=> bs!408898 m!2273099))

(assert (=> bs!408898 s!220822))

(declare-fun bs!408903 () Bool)

(declare-fun s!220824 () Bool)

(assert (= bs!408903 (and neg-inst!1049 s!220824)))

(declare-fun res!828524 () Bool)

(declare-fun e!1178942 () Bool)

(assert (=> bs!408903 (=> res!828524 e!1178942)))

(assert (=> bs!408903 (= res!828524 (not (= (list!8273 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))) (list!8273 x!368714))))))

(assert (=> bs!408903 (=> true e!1178942)))

(declare-fun b!1844829 () Bool)

(assert (=> b!1844829 (= e!1178942 (= (toValue!28 thiss!4669 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))) (toValue!28 thiss!4669 x!368714)))))

(assert (= (and bs!408903 (not res!828524)) b!1844829))

(assert (=> bs!408900 m!2273105))

(assert (=> bs!408900 m!2273109))

(assert (=> bs!408900 s!220824))

(assert (=> m!2273105 s!220820))

(declare-fun bs!408904 () Bool)

(declare-fun s!220826 () Bool)

(assert (= bs!408904 (and neg-inst!1049 s!220826)))

(declare-fun res!828525 () Bool)

(declare-fun e!1178943 () Bool)

(assert (=> bs!408904 (=> res!828525 e!1178943)))

(assert (=> bs!408904 (= res!828525 (not (= (list!8273 x!368712) (list!8273 x!368713))))))

(assert (=> bs!408904 (=> true e!1178943)))

(declare-fun b!1844830 () Bool)

(assert (=> b!1844830 (= e!1178943 (= (toValue!28 thiss!4669 x!368712) (toValue!28 thiss!4669 x!368713)))))

(assert (= (and bs!408904 (not res!828525)) b!1844830))

(declare-fun bs!408905 () Bool)

(assert (= bs!408905 (and m!2273115 m!2273101 m!2273099)))

(assert (=> bs!408905 m!2273099))

(assert (=> bs!408905 m!2273107))

(assert (=> bs!408905 s!220826))

(declare-fun bs!408906 () Bool)

(declare-fun s!220828 () Bool)

(assert (= bs!408906 (and neg-inst!1049 s!220828)))

(declare-fun res!828526 () Bool)

(declare-fun e!1178944 () Bool)

(assert (=> bs!408906 (=> res!828526 e!1178944)))

(assert (=> bs!408906 (= res!828526 (not (= (list!8273 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))) (list!8273 x!368713))))))

(assert (=> bs!408906 (=> true e!1178944)))

(declare-fun b!1844831 () Bool)

(assert (=> b!1844831 (= e!1178944 (= (toValue!28 thiss!4669 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))) (toValue!28 thiss!4669 x!368713)))))

(assert (= (and bs!408906 (not res!828526)) b!1844831))

(declare-fun bs!408907 () Bool)

(assert (= bs!408907 (and m!2273115 m!2273105)))

(assert (=> bs!408907 m!2273105))

(assert (=> bs!408907 m!2273107))

(assert (=> bs!408907 s!220828))

(declare-fun bs!408908 () Bool)

(declare-fun s!220830 () Bool)

(assert (= bs!408908 (and neg-inst!1049 s!220830)))

(declare-fun res!828527 () Bool)

(declare-fun e!1178945 () Bool)

(assert (=> bs!408908 (=> res!828527 e!1178945)))

(assert (=> bs!408908 (= res!828527 (not (= (list!8273 x!368714) (list!8273 x!368713))))))

(assert (=> bs!408908 (=> true e!1178945)))

(declare-fun b!1844832 () Bool)

(assert (=> b!1844832 (= e!1178945 (= (toValue!28 thiss!4669 x!368714) (toValue!28 thiss!4669 x!368713)))))

(assert (= (and bs!408908 (not res!828527)) b!1844832))

(declare-fun bs!408909 () Bool)

(assert (= bs!408909 (and m!2273115 m!2273109)))

(assert (=> bs!408909 m!2273109))

(assert (=> bs!408909 m!2273107))

(assert (=> bs!408909 s!220830))

(declare-fun bs!408910 () Bool)

(declare-fun s!220832 () Bool)

(assert (= bs!408910 (and neg-inst!1049 s!220832)))

(declare-fun res!828528 () Bool)

(declare-fun e!1178946 () Bool)

(assert (=> bs!408910 (=> res!828528 e!1178946)))

(assert (=> bs!408910 (= res!828528 (not (= (list!8273 x!368713) (list!8273 x!368713))))))

(assert (=> bs!408910 (=> true e!1178946)))

(declare-fun b!1844833 () Bool)

(assert (=> b!1844833 (= e!1178946 (= (toValue!28 thiss!4669 x!368713) (toValue!28 thiss!4669 x!368713)))))

(assert (= (and bs!408910 (not res!828528)) b!1844833))

(assert (=> m!2273115 m!2273107))

(assert (=> m!2273115 m!2273107))

(assert (=> m!2273115 s!220832))

(declare-fun bs!408911 () Bool)

(declare-fun s!220834 () Bool)

(assert (= bs!408911 (and neg-inst!1049 s!220834)))

(declare-fun res!828529 () Bool)

(declare-fun e!1178947 () Bool)

(assert (=> bs!408911 (=> res!828529 e!1178947)))

(assert (=> bs!408911 (= res!828529 (not (= (list!8273 x!368713) (list!8273 x!368712))))))

(assert (=> bs!408911 (=> true e!1178947)))

(declare-fun b!1844834 () Bool)

(assert (=> b!1844834 (= e!1178947 (= (toValue!28 thiss!4669 x!368713) (toValue!28 thiss!4669 x!368712)))))

(assert (= (and bs!408911 (not res!828529)) b!1844834))

(assert (=> bs!408905 m!2273107))

(assert (=> bs!408905 m!2273099))

(assert (=> bs!408905 s!220834))

(declare-fun bs!408912 () Bool)

(declare-fun s!220836 () Bool)

(assert (= bs!408912 (and neg-inst!1049 s!220836)))

(declare-fun res!828530 () Bool)

(declare-fun e!1178948 () Bool)

(assert (=> bs!408912 (=> res!828530 e!1178948)))

(assert (=> bs!408912 (= res!828530 (not (= (list!8273 x!368713) (list!8273 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))))))))

(assert (=> bs!408912 (=> true e!1178948)))

(declare-fun b!1844835 () Bool)

(assert (=> b!1844835 (= e!1178948 (= (toValue!28 thiss!4669 x!368713) (toValue!28 thiss!4669 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)))))))

(assert (= (and bs!408912 (not res!828530)) b!1844835))

(assert (=> bs!408907 m!2273107))

(assert (=> bs!408907 m!2273105))

(assert (=> bs!408907 s!220836))

(declare-fun bs!408913 () Bool)

(declare-fun s!220838 () Bool)

(assert (= bs!408913 (and neg-inst!1049 s!220838)))

(declare-fun res!828531 () Bool)

(declare-fun e!1178949 () Bool)

(assert (=> bs!408913 (=> res!828531 e!1178949)))

(assert (=> bs!408913 (= res!828531 (not (= (list!8273 x!368713) (list!8273 x!368714))))))

(assert (=> bs!408913 (=> true e!1178949)))

(declare-fun b!1844836 () Bool)

(assert (=> b!1844836 (= e!1178949 (= (toValue!28 thiss!4669 x!368713) (toValue!28 thiss!4669 x!368714)))))

(assert (= (and bs!408913 (not res!828531)) b!1844836))

(assert (=> bs!408909 m!2273107))

(assert (=> bs!408909 m!2273109))

(assert (=> bs!408909 s!220838))

(assert (=> m!2273115 s!220832))

(declare-fun bs!408914 () Bool)

(assert (= bs!408914 (and m!2273107 m!2273115)))

(assert (=> bs!408914 s!220832))

(assert (=> m!2273107 s!220832))

(declare-fun bs!408915 () Bool)

(assert (= bs!408915 (and m!2273107 m!2273105)))

(assert (=> bs!408915 s!220828))

(declare-fun bs!408916 () Bool)

(assert (= bs!408916 (and m!2273107 m!2273109)))

(assert (=> bs!408916 s!220830))

(declare-fun bs!408917 () Bool)

(assert (= bs!408917 (and m!2273107 m!2273101 m!2273099)))

(assert (=> bs!408917 s!220826))

(assert (=> bs!408917 s!220834))

(assert (=> bs!408914 s!220832))

(assert (=> bs!408915 s!220836))

(assert (=> bs!408916 s!220838))

(assert (=> m!2273107 s!220832))

(declare-fun bs!408918 () Bool)

(assert (= bs!408918 (and m!2273117 m!2273115 m!2273107)))

(assert (=> bs!408918 s!220838))

(assert (=> m!2273117 s!220808))

(declare-fun bs!408919 () Bool)

(assert (= bs!408919 (and m!2273117 m!2273105)))

(assert (=> bs!408919 s!220824))

(declare-fun bs!408920 () Bool)

(assert (= bs!408920 (and m!2273117 m!2273109)))

(assert (=> bs!408920 s!220808))

(declare-fun bs!408921 () Bool)

(assert (= bs!408921 (and m!2273117 m!2273101 m!2273099)))

(assert (=> bs!408921 s!220814))

(assert (=> bs!408921 s!220810))

(assert (=> bs!408919 s!220818))

(assert (=> m!2273117 s!220808))

(assert (=> bs!408920 s!220808))

(assert (=> bs!408918 s!220830))

(declare-fun bs!408922 () Bool)

(assert (= bs!408922 (and neg-inst!1049 b!1844808)))

(assert (=> bs!408922 (= true inst!1049)))

(declare-fun res!828513 () Bool)

(declare-fun e!1178929 () Bool)

(assert (=> start!183896 (=> res!828513 e!1178929)))

(declare-fun lambda!72485 () Int)

(declare-fun Forall!943 (Int) Bool)

(assert (=> start!183896 (= res!828513 (not (Forall!943 lambda!72485)))))

(assert (=> start!183896 (= (Forall!943 lambda!72485) inst!1048)))

(assert (=> start!183896 (not e!1178929)))

(assert (=> start!183896 true))

(declare-fun e!1178928 () Bool)

(assert (=> b!1844807 (= e!1178929 e!1178928)))

(declare-fun res!828514 () Bool)

(assert (=> b!1844807 (=> res!828514 e!1178928)))

(declare-fun lambda!72486 () Int)

(declare-fun lambda!72487 () Int)

(declare-fun semiInverseModEq!1475 (Int Int) Bool)

(assert (=> b!1844807 (= res!828514 (not (semiInverseModEq!1475 lambda!72486 lambda!72487)))))

(assert (=> b!1844807 (= (semiInverseModEq!1475 lambda!72486 lambda!72487) (Forall!943 lambda!72485))))

(declare-fun lambda!72488 () Int)

(declare-fun Forall2!578 (Int) Bool)

(assert (=> b!1844808 (= e!1178928 (Forall2!578 lambda!72488))))

(assert (=> b!1844808 (= (Forall2!578 lambda!72488) inst!1049)))

(assert (= neg-inst!1048 inst!1048))

(assert (= (and start!183896 (not res!828513)) b!1844807))

(assert (= (and b!1844807 (not res!828514)) b!1844808))

(assert (= neg-inst!1049 inst!1049))

(declare-fun m!2273123 () Bool)

(assert (=> start!183896 m!2273123))

(assert (=> start!183896 m!2273123))

(declare-fun m!2273125 () Bool)

(assert (=> b!1844807 m!2273125))

(assert (=> b!1844807 m!2273125))

(assert (=> b!1844807 m!2273123))

(declare-fun m!2273127 () Bool)

(assert (=> b!1844808 m!2273127))

(assert (=> b!1844808 m!2273127))

(push 1)

(assert (not b!1844817))

(assert (not bs!408906))

(assert (not bs!408904))

(assert (not b!1844832))

(assert (not bs!408894))

(assert (not b!1844835))

(assert (not b!1844830))

(assert (not bs!408893))

(assert (not bs!408908))

(assert (not b!1844831))

(assert (not bs!408902))

(assert (not bs!408910))

(assert (not bs!408911))

(assert (not b!1844822))

(assert (not b!1844827))

(assert (not b!1844808))

(assert (not bs!408903))

(assert (not bs!408912))

(assert (not b!1844825))

(assert (not b!1844819))

(assert (not b!1844818))

(assert (not b!1844836))

(assert (not b!1844833))

(assert (not bs!408897))

(assert (not b!1844826))

(assert (not start!183896))

(assert (not bs!408890))

(assert (not bs!408888))

(assert (not bs!408891))

(assert (not b!1844821))

(assert (not b!1844820))

(assert (not bs!408913))

(assert (not b!1844834))

(assert (not bs!408901))

(assert (not b!1844807))

(assert (not b!1844829))

(assert (not b!1844828))

(assert (not b!1844823))

(assert (not bs!408899))

(assert (not b!1844824))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!564642 () Bool)

(declare-fun efficientList!204 (BalanceConc!13406) List!20417)

(assert (=> d!564642 (= (toValue!28 thiss!4669 x!368714) (IdentifierValue!7516 (efficientList!204 x!368714)))))

(declare-fun bs!408960 () Bool)

(assert (= bs!408960 d!564642))

(declare-fun m!2273165 () Bool)

(assert (=> bs!408960 m!2273165))

(assert (=> b!1844826 d!564642))

(declare-fun d!564648 () Bool)

(assert (=> d!564648 (= (toValue!28 thiss!4669 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))) (IdentifierValue!7516 (efficientList!204 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)))))))

(declare-fun bs!408961 () Bool)

(assert (= bs!408961 d!564648))

(assert (=> bs!408961 m!2273103))

(declare-fun m!2273167 () Bool)

(assert (=> bs!408961 m!2273167))

(assert (=> b!1844826 d!564648))

(declare-fun d!564650 () Bool)

(assert (=> d!564650 (= (toValue!28 thiss!4669 x!368713) (IdentifierValue!7516 (efficientList!204 x!368713)))))

(declare-fun bs!408962 () Bool)

(assert (= bs!408962 d!564650))

(declare-fun m!2273169 () Bool)

(assert (=> bs!408962 m!2273169))

(assert (=> b!1844836 d!564650))

(assert (=> b!1844836 d!564642))

(declare-fun d!564652 () Bool)

(declare-fun list!8275 (Conc!6742) List!20417)

(assert (=> d!564652 (= (list!8273 x!368713) (list!8275 (c!301187 x!368713)))))

(declare-fun bs!408963 () Bool)

(assert (= bs!408963 d!564652))

(declare-fun m!2273171 () Bool)

(assert (=> bs!408963 m!2273171))

(assert (=> bs!408910 d!564652))

(declare-fun d!564654 () Bool)

(assert (=> d!564654 (= (toValue!28 thiss!4669 x!368712) (IdentifierValue!7516 (efficientList!204 x!368712)))))

(declare-fun bs!408964 () Bool)

(assert (= bs!408964 d!564654))

(declare-fun m!2273173 () Bool)

(assert (=> bs!408964 m!2273173))

(assert (=> b!1844823 d!564654))

(declare-fun d!564656 () Bool)

(assert (=> d!564656 (= (list!8273 x!368712) (list!8275 (c!301187 x!368712)))))

(declare-fun bs!408965 () Bool)

(assert (= bs!408965 d!564656))

(declare-fun m!2273175 () Bool)

(assert (=> bs!408965 m!2273175))

(assert (=> bs!408904 d!564656))

(assert (=> bs!408904 d!564652))

(assert (=> bs!408893 d!564656))

(assert (=> b!1844829 d!564648))

(assert (=> b!1844829 d!564642))

(declare-fun d!564658 () Bool)

(assert (=> d!564658 (= (list!8273 x!368714) (list!8275 (c!301187 x!368714)))))

(declare-fun bs!408966 () Bool)

(assert (= bs!408966 d!564658))

(declare-fun m!2273177 () Bool)

(assert (=> bs!408966 m!2273177))

(assert (=> bs!408890 d!564658))

(assert (=> b!1844824 d!564654))

(assert (=> b!1844824 d!564642))

(assert (=> bs!408911 d!564652))

(assert (=> bs!408911 d!564656))

(assert (=> b!1844827 d!564648))

(declare-fun d!564660 () Bool)

(assert (=> d!564660 (= (list!8273 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))) (list!8275 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)))))))

(declare-fun bs!408967 () Bool)

(assert (= bs!408967 d!564660))

(declare-fun m!2273179 () Bool)

(assert (=> bs!408967 m!2273179))

(assert (=> bs!408906 d!564660))

(assert (=> bs!408906 d!564652))

(assert (=> bs!408894 d!564656))

(assert (=> bs!408894 d!564658))

(assert (=> b!1844833 d!564650))

(assert (=> b!1844830 d!564654))

(assert (=> b!1844830 d!564650))

(assert (=> bs!408901 d!564660))

(assert (=> b!1844831 d!564648))

(assert (=> b!1844831 d!564650))

(assert (=> bs!408897 d!564656))

(assert (=> bs!408897 d!564660))

(assert (=> bs!408891 d!564658))

(assert (=> bs!408891 d!564656))

(assert (=> bs!408912 d!564652))

(assert (=> bs!408912 d!564660))

(assert (=> b!1844828 d!564648))

(assert (=> b!1844828 d!564654))

(assert (=> b!1844821 d!564642))

(assert (=> b!1844834 d!564650))

(assert (=> b!1844834 d!564654))

(assert (=> bs!408902 d!564660))

(assert (=> bs!408902 d!564656))

(assert (=> bs!408903 d!564660))

(assert (=> bs!408903 d!564658))

(assert (=> b!1844832 d!564642))

(assert (=> b!1844832 d!564650))

(assert (=> bs!408899 d!564658))

(assert (=> bs!408899 d!564660))

(assert (=> bs!408913 d!564652))

(assert (=> bs!408913 d!564658))

(assert (=> b!1844825 d!564654))

(assert (=> b!1844825 d!564648))

(assert (=> bs!408908 d!564658))

(assert (=> bs!408908 d!564652))

(assert (=> b!1844822 d!564642))

(assert (=> b!1844822 d!564654))

(assert (=> b!1844835 d!564650))

(assert (=> b!1844835 d!564648))

(declare-fun bs!408968 () Bool)

(assert (= bs!408968 (and m!2273109 b!1844821)))

(assert (=> bs!408968 m!2273117))

(assert (=> bs!408968 m!2273117))

(declare-fun bs!408969 () Bool)

(assert (= bs!408969 (and m!2273101 m!2273109 b!1844822)))

(assert (=> bs!408969 m!2273117))

(assert (=> bs!408969 m!2273101))

(declare-fun bs!408970 () Bool)

(assert (= bs!408970 (and m!2273101 b!1844823)))

(assert (=> bs!408970 m!2273101))

(assert (=> bs!408970 m!2273101))

(declare-fun bs!408971 () Bool)

(assert (= bs!408971 (and m!2273101 m!2273109 b!1844824)))

(assert (=> bs!408971 m!2273101))

(assert (=> bs!408971 m!2273117))

(declare-fun bs!408972 () Bool)

(assert (= bs!408972 (and m!2273105 m!2273101 m!2273099 b!1844825)))

(assert (=> bs!408972 m!2273101))

(declare-fun m!2273181 () Bool)

(assert (=> bs!408972 m!2273181))

(declare-fun bs!408973 () Bool)

(assert (= bs!408973 (and m!2273105 m!2273109 b!1844826)))

(assert (=> bs!408973 m!2273117))

(assert (=> bs!408973 m!2273181))

(declare-fun bs!408974 () Bool)

(assert (= bs!408974 (and m!2273105 b!1844827)))

(assert (=> bs!408974 m!2273181))

(assert (=> bs!408974 m!2273181))

(declare-fun bs!408975 () Bool)

(assert (= bs!408975 (and m!2273105 m!2273101 m!2273099 b!1844828)))

(assert (=> bs!408975 m!2273181))

(assert (=> bs!408975 m!2273101))

(declare-fun bs!408976 () Bool)

(assert (= bs!408976 (and m!2273105 m!2273109 b!1844829)))

(assert (=> bs!408976 m!2273181))

(assert (=> bs!408976 m!2273117))

(declare-fun bs!408977 () Bool)

(assert (= bs!408977 (and m!2273115 m!2273101 m!2273099 b!1844830)))

(assert (=> bs!408977 m!2273101))

(assert (=> bs!408977 m!2273115))

(declare-fun bs!408978 () Bool)

(assert (= bs!408978 (and m!2273115 m!2273105 b!1844831)))

(assert (=> bs!408978 m!2273181))

(assert (=> bs!408978 m!2273115))

(declare-fun bs!408979 () Bool)

(assert (= bs!408979 (and m!2273115 m!2273109 b!1844832)))

(assert (=> bs!408979 m!2273117))

(assert (=> bs!408979 m!2273115))

(declare-fun bs!408980 () Bool)

(assert (= bs!408980 (and m!2273115 b!1844833)))

(assert (=> bs!408980 m!2273115))

(assert (=> bs!408980 m!2273115))

(declare-fun bs!408981 () Bool)

(assert (= bs!408981 (and m!2273115 m!2273101 m!2273099 b!1844834)))

(assert (=> bs!408981 m!2273115))

(assert (=> bs!408981 m!2273101))

(declare-fun bs!408982 () Bool)

(assert (= bs!408982 (and m!2273115 m!2273105 b!1844835)))

(assert (=> bs!408982 m!2273115))

(assert (=> bs!408982 m!2273181))

(declare-fun bs!408983 () Bool)

(assert (= bs!408983 (and m!2273115 m!2273109 b!1844836)))

(assert (=> bs!408983 m!2273115))

(assert (=> bs!408983 m!2273117))

(push 1)

(assert (not b!1844817))

(assert (not d!564654))

(assert (not b!1844808))

(assert (not d!564642))

(assert (not start!183896))

(assert (not d!564650))

(assert (not bs!408888))

(assert (not b!1844820))

(assert (not b!1844807))

(assert (not d!564656))

(assert (not d!564658))

(assert (not d!564648))

(assert (not b!1844819))

(assert (not b!1844818))

(assert (not d!564652))

(assert (not d!564660))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!564674 () Bool)

(declare-fun lt!714681 () List!20417)

(assert (=> d!564674 (= lt!714681 (list!8273 x!368714))))

(declare-fun efficientList!206 (Conc!6742 List!20417) List!20417)

(declare-fun efficientList$default$2!69 (Conc!6742) List!20417)

(assert (=> d!564674 (= lt!714681 (efficientList!206 (c!301187 x!368714) (efficientList$default$2!69 (c!301187 x!368714))))))

(assert (=> d!564674 (= (efficientList!204 x!368714) lt!714681)))

(declare-fun bs!409007 () Bool)

(assert (= bs!409007 d!564674))

(assert (=> bs!409007 m!2273109))

(declare-fun m!2273199 () Bool)

(assert (=> bs!409007 m!2273199))

(assert (=> bs!409007 m!2273199))

(declare-fun m!2273201 () Bool)

(assert (=> bs!409007 m!2273201))

(assert (=> d!564642 d!564674))

(declare-fun b!1844894 () Bool)

(declare-fun e!1178994 () List!20417)

(declare-fun e!1178995 () List!20417)

(assert (=> b!1844894 (= e!1178994 e!1178995)))

(declare-fun c!301194 () Bool)

(assert (=> b!1844894 (= c!301194 (is-Leaf!9844 (c!301187 x!368712)))))

(declare-fun b!1844896 () Bool)

(declare-fun ++!5525 (List!20417 List!20417) List!20417)

(assert (=> b!1844896 (= e!1178995 (++!5525 (list!8275 (left!16287 (c!301187 x!368712))) (list!8275 (right!16617 (c!301187 x!368712)))))))

(declare-fun b!1844893 () Bool)

(assert (=> b!1844893 (= e!1178994 Nil!20345)))

(declare-fun b!1844895 () Bool)

(declare-fun list!8277 (IArray!13489) List!20417)

(assert (=> b!1844895 (= e!1178995 (list!8277 (xs!9618 (c!301187 x!368712))))))

(declare-fun d!564676 () Bool)

(declare-fun c!301193 () Bool)

(assert (=> d!564676 (= c!301193 (is-Empty!6742 (c!301187 x!368712)))))

(assert (=> d!564676 (= (list!8275 (c!301187 x!368712)) e!1178994)))

(assert (= (and d!564676 c!301193) b!1844893))

(assert (= (and d!564676 (not c!301193)) b!1844894))

(assert (= (and b!1844894 c!301194) b!1844895))

(assert (= (and b!1844894 (not c!301194)) b!1844896))

(declare-fun m!2273203 () Bool)

(assert (=> b!1844896 m!2273203))

(declare-fun m!2273205 () Bool)

(assert (=> b!1844896 m!2273205))

(assert (=> b!1844896 m!2273203))

(assert (=> b!1844896 m!2273205))

(declare-fun m!2273207 () Bool)

(assert (=> b!1844896 m!2273207))

(declare-fun m!2273209 () Bool)

(assert (=> b!1844895 m!2273209))

(assert (=> d!564656 d!564676))

(declare-fun d!564678 () Bool)

(declare-fun lt!714682 () List!20417)

(assert (=> d!564678 (= lt!714682 (list!8273 x!368713))))

(assert (=> d!564678 (= lt!714682 (efficientList!206 (c!301187 x!368713) (efficientList$default$2!69 (c!301187 x!368713))))))

(assert (=> d!564678 (= (efficientList!204 x!368713) lt!714682)))

(declare-fun bs!409008 () Bool)

(assert (= bs!409008 d!564678))

(assert (=> bs!409008 m!2273107))

(declare-fun m!2273211 () Bool)

(assert (=> bs!409008 m!2273211))

(assert (=> bs!409008 m!2273211))

(declare-fun m!2273213 () Bool)

(assert (=> bs!409008 m!2273213))

(assert (=> d!564650 d!564678))

(declare-fun b!1844898 () Bool)

(declare-fun e!1178996 () List!20417)

(declare-fun e!1178997 () List!20417)

(assert (=> b!1844898 (= e!1178996 e!1178997)))

(declare-fun c!301196 () Bool)

(assert (=> b!1844898 (= c!301196 (is-Leaf!9844 (c!301187 x!368714)))))

(declare-fun b!1844900 () Bool)

(assert (=> b!1844900 (= e!1178997 (++!5525 (list!8275 (left!16287 (c!301187 x!368714))) (list!8275 (right!16617 (c!301187 x!368714)))))))

(declare-fun b!1844897 () Bool)

(assert (=> b!1844897 (= e!1178996 Nil!20345)))

(declare-fun b!1844899 () Bool)

(assert (=> b!1844899 (= e!1178997 (list!8277 (xs!9618 (c!301187 x!368714))))))

(declare-fun d!564680 () Bool)

(declare-fun c!301195 () Bool)

(assert (=> d!564680 (= c!301195 (is-Empty!6742 (c!301187 x!368714)))))

(assert (=> d!564680 (= (list!8275 (c!301187 x!368714)) e!1178996)))

(assert (= (and d!564680 c!301195) b!1844897))

(assert (= (and d!564680 (not c!301195)) b!1844898))

(assert (= (and b!1844898 c!301196) b!1844899))

(assert (= (and b!1844898 (not c!301196)) b!1844900))

(declare-fun m!2273215 () Bool)

(assert (=> b!1844900 m!2273215))

(declare-fun m!2273217 () Bool)

(assert (=> b!1844900 m!2273217))

(assert (=> b!1844900 m!2273215))

(assert (=> b!1844900 m!2273217))

(declare-fun m!2273219 () Bool)

(assert (=> b!1844900 m!2273219))

(declare-fun m!2273221 () Bool)

(assert (=> b!1844899 m!2273221))

(assert (=> d!564658 d!564680))

(declare-fun b!1844902 () Bool)

(declare-fun e!1178998 () List!20417)

(declare-fun e!1178999 () List!20417)

(assert (=> b!1844902 (= e!1178998 e!1178999)))

(declare-fun c!301198 () Bool)

(assert (=> b!1844902 (= c!301198 (is-Leaf!9844 (c!301187 x!368713)))))

(declare-fun b!1844904 () Bool)

(assert (=> b!1844904 (= e!1178999 (++!5525 (list!8275 (left!16287 (c!301187 x!368713))) (list!8275 (right!16617 (c!301187 x!368713)))))))

(declare-fun b!1844901 () Bool)

(assert (=> b!1844901 (= e!1178998 Nil!20345)))

(declare-fun b!1844903 () Bool)

(assert (=> b!1844903 (= e!1178999 (list!8277 (xs!9618 (c!301187 x!368713))))))

(declare-fun d!564682 () Bool)

(declare-fun c!301197 () Bool)

(assert (=> d!564682 (= c!301197 (is-Empty!6742 (c!301187 x!368713)))))

(assert (=> d!564682 (= (list!8275 (c!301187 x!368713)) e!1178998)))

(assert (= (and d!564682 c!301197) b!1844901))

(assert (= (and d!564682 (not c!301197)) b!1844902))

(assert (= (and b!1844902 c!301198) b!1844903))

(assert (= (and b!1844902 (not c!301198)) b!1844904))

(declare-fun m!2273223 () Bool)

(assert (=> b!1844904 m!2273223))

(declare-fun m!2273225 () Bool)

(assert (=> b!1844904 m!2273225))

(assert (=> b!1844904 m!2273223))

(assert (=> b!1844904 m!2273225))

(declare-fun m!2273227 () Bool)

(assert (=> b!1844904 m!2273227))

(declare-fun m!2273229 () Bool)

(assert (=> b!1844903 m!2273229))

(assert (=> d!564652 d!564682))

(declare-fun b!1844906 () Bool)

(declare-fun e!1179000 () List!20417)

(declare-fun e!1179001 () List!20417)

(assert (=> b!1844906 (= e!1179000 e!1179001)))

(declare-fun c!301200 () Bool)

(assert (=> b!1844906 (= c!301200 (is-Leaf!9844 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)))))))

(declare-fun b!1844908 () Bool)

(assert (=> b!1844908 (= e!1179001 (++!5525 (list!8275 (left!16287 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))))) (list!8275 (right!16617 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)))))))))

(declare-fun b!1844905 () Bool)

(assert (=> b!1844905 (= e!1179000 Nil!20345)))

(declare-fun b!1844907 () Bool)

(assert (=> b!1844907 (= e!1179001 (list!8277 (xs!9618 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))))))))

(declare-fun d!564684 () Bool)

(declare-fun c!301199 () Bool)

(assert (=> d!564684 (= c!301199 (is-Empty!6742 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)))))))

(assert (=> d!564684 (= (list!8275 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)))) e!1179000)))

(assert (= (and d!564684 c!301199) b!1844905))

(assert (= (and d!564684 (not c!301199)) b!1844906))

(assert (= (and b!1844906 c!301200) b!1844907))

(assert (= (and b!1844906 (not c!301200)) b!1844908))

(declare-fun m!2273231 () Bool)

(assert (=> b!1844908 m!2273231))

(declare-fun m!2273233 () Bool)

(assert (=> b!1844908 m!2273233))

(assert (=> b!1844908 m!2273231))

(assert (=> b!1844908 m!2273233))

(declare-fun m!2273235 () Bool)

(assert (=> b!1844908 m!2273235))

(declare-fun m!2273237 () Bool)

(assert (=> b!1844907 m!2273237))

(assert (=> d!564660 d!564684))

(declare-fun d!564686 () Bool)

(declare-fun lt!714683 () List!20417)

(assert (=> d!564686 (= lt!714683 (list!8273 x!368712))))

(assert (=> d!564686 (= lt!714683 (efficientList!206 (c!301187 x!368712) (efficientList$default$2!69 (c!301187 x!368712))))))

(assert (=> d!564686 (= (efficientList!204 x!368712) lt!714683)))

(declare-fun bs!409009 () Bool)

(assert (= bs!409009 d!564686))

(assert (=> bs!409009 m!2273099))

(declare-fun m!2273239 () Bool)

(assert (=> bs!409009 m!2273239))

(assert (=> bs!409009 m!2273239))

(declare-fun m!2273241 () Bool)

(assert (=> bs!409009 m!2273241))

(assert (=> d!564654 d!564686))

(declare-fun d!564688 () Bool)

(declare-fun lt!714684 () List!20417)

(assert (=> d!564688 (= lt!714684 (list!8273 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))))))

(assert (=> d!564688 (= lt!714684 (efficientList!206 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))) (efficientList$default$2!69 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))))))))

(assert (=> d!564688 (= (efficientList!204 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))) lt!714684)))

(declare-fun bs!409010 () Bool)

(assert (= bs!409010 d!564688))

(assert (=> bs!409010 m!2273103))

(assert (=> bs!409010 m!2273105))

(declare-fun m!2273243 () Bool)

(assert (=> bs!409010 m!2273243))

(assert (=> bs!409010 m!2273243))

(declare-fun m!2273245 () Bool)

(assert (=> bs!409010 m!2273245))

(assert (=> d!564648 d!564688))

(push 1)

(assert (not b!1844817))

(assert (not b!1844808))

(assert (not b!1844908))

(assert (not d!564686))

(assert (not b!1844907))

(assert (not b!1844900))

(assert (not bs!408888))

(assert (not b!1844820))

(assert (not b!1844899))

(assert (not b!1844895))

(assert (not b!1844903))

(assert (not b!1844819))

(assert (not b!1844818))

(assert (not d!564688))

(assert (not b!1844896))

(assert (not start!183896))

(assert (not b!1844904))

(assert (not d!564678))

(assert (not b!1844807))

(assert (not d!564674))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!564706 () Bool)

(declare-fun c!301215 () Bool)

(assert (=> d!564706 (= c!301215 (is-Node!6742 (c!301187 x!368712)))))

(declare-fun e!1179018 () Bool)

(assert (=> d!564706 (= (inv!26646 (c!301187 x!368712)) e!1179018)))

(declare-fun b!1844939 () Bool)

(declare-fun inv!26650 (Conc!6742) Bool)

(assert (=> b!1844939 (= e!1179018 (inv!26650 (c!301187 x!368712)))))

(declare-fun b!1844940 () Bool)

(declare-fun e!1179019 () Bool)

(assert (=> b!1844940 (= e!1179018 e!1179019)))

(declare-fun res!828575 () Bool)

(assert (=> b!1844940 (= res!828575 (not (is-Leaf!9844 (c!301187 x!368712))))))

(assert (=> b!1844940 (=> res!828575 e!1179019)))

(declare-fun b!1844941 () Bool)

(declare-fun inv!26651 (Conc!6742) Bool)

(assert (=> b!1844941 (= e!1179019 (inv!26651 (c!301187 x!368712)))))

(assert (= (and d!564706 c!301215) b!1844939))

(assert (= (and d!564706 (not c!301215)) b!1844940))

(assert (= (and b!1844940 (not res!828575)) b!1844941))

(declare-fun m!2273295 () Bool)

(assert (=> b!1844939 m!2273295))

(declare-fun m!2273297 () Bool)

(assert (=> b!1844941 m!2273297))

(assert (=> b!1844817 d!564706))

(assert (=> bs!408888 d!564660))

(declare-fun d!564708 () Bool)

(declare-fun c!301219 () Bool)

(assert (=> d!564708 (= c!301219 (is-IdentifierValue!7516 (toValue!28 thiss!4669 x!368712)))))

(declare-fun e!1179022 () BalanceConc!13406)

(assert (=> d!564708 (= (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)) e!1179022)))

(declare-fun b!1844946 () Bool)

(declare-fun seqFromList!2609 (List!20417) BalanceConc!13406)

(assert (=> b!1844946 (= e!1179022 (seqFromList!2609 (value!114323 (toValue!28 thiss!4669 x!368712))))))

(declare-fun b!1844947 () Bool)

(assert (=> b!1844947 (= e!1179022 (BalanceConc!13407 Empty!6742))))

(assert (= (and d!564708 c!301219) b!1844946))

(assert (= (and d!564708 (not c!301219)) b!1844947))

(declare-fun m!2273299 () Bool)

(assert (=> b!1844946 m!2273299))

(assert (=> bs!408888 d!564708))

(assert (=> bs!408888 d!564654))

(assert (=> bs!408888 d!564656))

(assert (=> b!1844818 d!564650))

(assert (=> b!1844818 d!564642))

(assert (=> d!564686 d!564656))

(declare-fun b!1844960 () Bool)

(declare-fun e!1179030 () List!20417)

(declare-fun efficientList!208 (IArray!13489) List!20417)

(assert (=> b!1844960 (= e!1179030 (efficientList!208 (xs!9618 (c!301187 x!368712))))))

(declare-fun b!1844961 () Bool)

(declare-datatypes ((Unit!35035 0))(
  ( (Unit!35036) )
))
(declare-fun lt!714705 () Unit!35035)

(declare-fun lt!714704 () Unit!35035)

(assert (=> b!1844961 (= lt!714705 lt!714704)))

(declare-fun lt!714702 () List!20417)

(declare-fun lt!714701 () List!20417)

(declare-fun call!115103 () List!20417)

(assert (=> b!1844961 (= (++!5525 (++!5525 lt!714701 lt!714702) (efficientList$default$2!69 (c!301187 x!368712))) (++!5525 lt!714701 call!115103))))

(declare-fun lemmaConcatAssociativity!1086 (List!20417 List!20417 List!20417) Unit!35035)

(assert (=> b!1844961 (= lt!714704 (lemmaConcatAssociativity!1086 lt!714701 lt!714702 (efficientList$default$2!69 (c!301187 x!368712))))))

(assert (=> b!1844961 (= lt!714702 (list!8275 (right!16617 (c!301187 x!368712))))))

(assert (=> b!1844961 (= lt!714701 (list!8275 (left!16287 (c!301187 x!368712))))))

(declare-fun e!1179029 () List!20417)

(assert (=> b!1844961 (= e!1179029 (efficientList!206 (left!16287 (c!301187 x!368712)) (efficientList!206 (right!16617 (c!301187 x!368712)) (efficientList$default$2!69 (c!301187 x!368712)))))))

(declare-fun b!1844962 () Bool)

(assert (=> b!1844962 (= e!1179029 call!115103)))

(declare-fun d!564710 () Bool)

(declare-fun lt!714703 () List!20417)

(assert (=> d!564710 (= lt!714703 (++!5525 (list!8275 (c!301187 x!368712)) (efficientList$default$2!69 (c!301187 x!368712))))))

(declare-fun e!1179031 () List!20417)

(assert (=> d!564710 (= lt!714703 e!1179031)))

(declare-fun c!301227 () Bool)

(assert (=> d!564710 (= c!301227 (is-Empty!6742 (c!301187 x!368712)))))

(assert (=> d!564710 (= (efficientList!206 (c!301187 x!368712) (efficientList$default$2!69 (c!301187 x!368712))) lt!714703)))

(declare-fun bm!115098 () Bool)

(declare-fun c!301226 () Bool)

(declare-fun c!301228 () Bool)

(assert (=> bm!115098 (= c!301226 c!301228)))

(assert (=> bm!115098 (= call!115103 (++!5525 e!1179030 (efficientList$default$2!69 (c!301187 x!368712))))))

(declare-fun b!1844963 () Bool)

(assert (=> b!1844963 (= e!1179030 lt!714702)))

(declare-fun b!1844964 () Bool)

(assert (=> b!1844964 (= e!1179031 e!1179029)))

(assert (=> b!1844964 (= c!301228 (is-Leaf!9844 (c!301187 x!368712)))))

(declare-fun b!1844965 () Bool)

(assert (=> b!1844965 (= e!1179031 (efficientList$default$2!69 (c!301187 x!368712)))))

(assert (= (and d!564710 c!301227) b!1844965))

(assert (= (and d!564710 (not c!301227)) b!1844964))

(assert (= (and b!1844964 c!301228) b!1844962))

(assert (= (and b!1844964 (not c!301228)) b!1844961))

(assert (= (or b!1844962 b!1844961) bm!115098))

(assert (= (and bm!115098 c!301226) b!1844960))

(assert (= (and bm!115098 (not c!301226)) b!1844963))

(declare-fun m!2273301 () Bool)

(assert (=> b!1844960 m!2273301))

(declare-fun m!2273303 () Bool)

(assert (=> b!1844961 m!2273303))

(declare-fun m!2273305 () Bool)

(assert (=> b!1844961 m!2273305))

(assert (=> b!1844961 m!2273239))

(assert (=> b!1844961 m!2273303))

(declare-fun m!2273307 () Bool)

(assert (=> b!1844961 m!2273307))

(assert (=> b!1844961 m!2273239))

(declare-fun m!2273309 () Bool)

(assert (=> b!1844961 m!2273309))

(assert (=> b!1844961 m!2273205))

(declare-fun m!2273311 () Bool)

(assert (=> b!1844961 m!2273311))

(assert (=> b!1844961 m!2273203))

(assert (=> b!1844961 m!2273311))

(assert (=> b!1844961 m!2273239))

(declare-fun m!2273313 () Bool)

(assert (=> b!1844961 m!2273313))

(assert (=> d!564710 m!2273175))

(assert (=> d!564710 m!2273175))

(assert (=> d!564710 m!2273239))

(declare-fun m!2273315 () Bool)

(assert (=> d!564710 m!2273315))

(assert (=> bm!115098 m!2273239))

(declare-fun m!2273317 () Bool)

(assert (=> bm!115098 m!2273317))

(assert (=> d!564686 d!564710))

(declare-fun d!564712 () Bool)

(assert (=> d!564712 (= (efficientList$default$2!69 (c!301187 x!368712)) Nil!20345)))

(assert (=> d!564686 d!564712))

(declare-fun bs!409015 () Bool)

(declare-fun d!564714 () Bool)

(assert (= bs!409015 (and d!564714 start!183896)))

(declare-fun lambda!72513 () Int)

(assert (=> bs!409015 (not (= lambda!72513 lambda!72485))))

(assert (=> d!564714 true))

(declare-fun order!13107 () Int)

(declare-fun order!13105 () Int)

(declare-fun dynLambda!10104 (Int Int) Int)

(declare-fun dynLambda!10105 (Int Int) Int)

(assert (=> d!564714 (< (dynLambda!10104 order!13105 lambda!72486) (dynLambda!10105 order!13107 lambda!72513))))

(assert (=> d!564714 true))

(declare-fun order!13109 () Int)

(declare-fun dynLambda!10106 (Int Int) Int)

(assert (=> d!564714 (< (dynLambda!10106 order!13109 lambda!72487) (dynLambda!10105 order!13107 lambda!72513))))

(assert (=> d!564714 (= (semiInverseModEq!1475 lambda!72486 lambda!72487) (Forall!943 lambda!72513))))

(declare-fun bs!409016 () Bool)

(assert (= bs!409016 d!564714))

(declare-fun m!2273319 () Bool)

(assert (=> bs!409016 m!2273319))

(assert (=> b!1844807 d!564714))

(declare-fun d!564716 () Bool)

(declare-fun choose!11606 (Int) Bool)

(assert (=> d!564716 (= (Forall!943 lambda!72485) (choose!11606 lambda!72485))))

(declare-fun bs!409017 () Bool)

(assert (= bs!409017 d!564716))

(declare-fun m!2273321 () Bool)

(assert (=> bs!409017 m!2273321))

(assert (=> b!1844807 d!564716))

(assert (=> b!1844808 d!564652))

(assert (=> b!1844808 d!564658))

(declare-fun d!564718 () Bool)

(declare-fun isBalanced!2100 (Conc!6742) Bool)

(assert (=> d!564718 (= (inv!26647 x!368714) (isBalanced!2100 (c!301187 x!368714)))))

(declare-fun bs!409018 () Bool)

(assert (= bs!409018 d!564718))

(declare-fun m!2273323 () Bool)

(assert (=> bs!409018 m!2273323))

(assert (=> b!1844808 d!564718))

(declare-fun d!564720 () Bool)

(declare-fun choose!11607 (Int) Bool)

(assert (=> d!564720 (= (Forall2!578 lambda!72488) (choose!11607 lambda!72488))))

(declare-fun bs!409019 () Bool)

(assert (= bs!409019 d!564720))

(declare-fun m!2273325 () Bool)

(assert (=> bs!409019 m!2273325))

(assert (=> b!1844808 d!564720))

(declare-fun d!564722 () Bool)

(assert (=> d!564722 (= (inv!26647 x!368713) (isBalanced!2100 (c!301187 x!368713)))))

(declare-fun bs!409020 () Bool)

(assert (= bs!409020 d!564722))

(declare-fun m!2273327 () Bool)

(assert (=> bs!409020 m!2273327))

(assert (=> b!1844808 d!564722))

(assert (=> d!564678 d!564652))

(declare-fun b!1844970 () Bool)

(declare-fun e!1179033 () List!20417)

(assert (=> b!1844970 (= e!1179033 (efficientList!208 (xs!9618 (c!301187 x!368713))))))

(declare-fun b!1844971 () Bool)

(declare-fun lt!714710 () Unit!35035)

(declare-fun lt!714709 () Unit!35035)

(assert (=> b!1844971 (= lt!714710 lt!714709)))

(declare-fun lt!714707 () List!20417)

(declare-fun call!115104 () List!20417)

(declare-fun lt!714706 () List!20417)

(assert (=> b!1844971 (= (++!5525 (++!5525 lt!714706 lt!714707) (efficientList$default$2!69 (c!301187 x!368713))) (++!5525 lt!714706 call!115104))))

(assert (=> b!1844971 (= lt!714709 (lemmaConcatAssociativity!1086 lt!714706 lt!714707 (efficientList$default$2!69 (c!301187 x!368713))))))

(assert (=> b!1844971 (= lt!714707 (list!8275 (right!16617 (c!301187 x!368713))))))

(assert (=> b!1844971 (= lt!714706 (list!8275 (left!16287 (c!301187 x!368713))))))

(declare-fun e!1179032 () List!20417)

(assert (=> b!1844971 (= e!1179032 (efficientList!206 (left!16287 (c!301187 x!368713)) (efficientList!206 (right!16617 (c!301187 x!368713)) (efficientList$default$2!69 (c!301187 x!368713)))))))

(declare-fun b!1844972 () Bool)

(assert (=> b!1844972 (= e!1179032 call!115104)))

(declare-fun d!564724 () Bool)

(declare-fun lt!714708 () List!20417)

(assert (=> d!564724 (= lt!714708 (++!5525 (list!8275 (c!301187 x!368713)) (efficientList$default$2!69 (c!301187 x!368713))))))

(declare-fun e!1179034 () List!20417)

(assert (=> d!564724 (= lt!714708 e!1179034)))

(declare-fun c!301230 () Bool)

(assert (=> d!564724 (= c!301230 (is-Empty!6742 (c!301187 x!368713)))))

(assert (=> d!564724 (= (efficientList!206 (c!301187 x!368713) (efficientList$default$2!69 (c!301187 x!368713))) lt!714708)))

(declare-fun bm!115099 () Bool)

(declare-fun c!301229 () Bool)

(declare-fun c!301231 () Bool)

(assert (=> bm!115099 (= c!301229 c!301231)))

(assert (=> bm!115099 (= call!115104 (++!5525 e!1179033 (efficientList$default$2!69 (c!301187 x!368713))))))

(declare-fun b!1844973 () Bool)

(assert (=> b!1844973 (= e!1179033 lt!714707)))

(declare-fun b!1844974 () Bool)

(assert (=> b!1844974 (= e!1179034 e!1179032)))

(assert (=> b!1844974 (= c!301231 (is-Leaf!9844 (c!301187 x!368713)))))

(declare-fun b!1844975 () Bool)

(assert (=> b!1844975 (= e!1179034 (efficientList$default$2!69 (c!301187 x!368713)))))

(assert (= (and d!564724 c!301230) b!1844975))

(assert (= (and d!564724 (not c!301230)) b!1844974))

(assert (= (and b!1844974 c!301231) b!1844972))

(assert (= (and b!1844974 (not c!301231)) b!1844971))

(assert (= (or b!1844972 b!1844971) bm!115099))

(assert (= (and bm!115099 c!301229) b!1844970))

(assert (= (and bm!115099 (not c!301229)) b!1844973))

(declare-fun m!2273329 () Bool)

(assert (=> b!1844970 m!2273329))

(declare-fun m!2273331 () Bool)

(assert (=> b!1844971 m!2273331))

(declare-fun m!2273333 () Bool)

(assert (=> b!1844971 m!2273333))

(assert (=> b!1844971 m!2273211))

(assert (=> b!1844971 m!2273331))

(declare-fun m!2273335 () Bool)

(assert (=> b!1844971 m!2273335))

(assert (=> b!1844971 m!2273211))

(declare-fun m!2273337 () Bool)

(assert (=> b!1844971 m!2273337))

(assert (=> b!1844971 m!2273225))

(declare-fun m!2273339 () Bool)

(assert (=> b!1844971 m!2273339))

(assert (=> b!1844971 m!2273223))

(assert (=> b!1844971 m!2273339))

(assert (=> b!1844971 m!2273211))

(declare-fun m!2273341 () Bool)

(assert (=> b!1844971 m!2273341))

(assert (=> d!564724 m!2273171))

(assert (=> d!564724 m!2273171))

(assert (=> d!564724 m!2273211))

(declare-fun m!2273343 () Bool)

(assert (=> d!564724 m!2273343))

(assert (=> bm!115099 m!2273211))

(declare-fun m!2273345 () Bool)

(assert (=> bm!115099 m!2273345))

(assert (=> d!564678 d!564724))

(declare-fun d!564726 () Bool)

(assert (=> d!564726 (= (efficientList$default$2!69 (c!301187 x!368713)) Nil!20345)))

(assert (=> d!564678 d!564726))

(declare-fun d!564728 () Bool)

(declare-fun c!301232 () Bool)

(assert (=> d!564728 (= c!301232 (is-Node!6742 (c!301187 x!368713)))))

(declare-fun e!1179035 () Bool)

(assert (=> d!564728 (= (inv!26646 (c!301187 x!368713)) e!1179035)))

(declare-fun b!1844976 () Bool)

(assert (=> b!1844976 (= e!1179035 (inv!26650 (c!301187 x!368713)))))

(declare-fun b!1844977 () Bool)

(declare-fun e!1179036 () Bool)

(assert (=> b!1844977 (= e!1179035 e!1179036)))

(declare-fun res!828576 () Bool)

(assert (=> b!1844977 (= res!828576 (not (is-Leaf!9844 (c!301187 x!368713))))))

(assert (=> b!1844977 (=> res!828576 e!1179036)))

(declare-fun b!1844978 () Bool)

(assert (=> b!1844978 (= e!1179036 (inv!26651 (c!301187 x!368713)))))

(assert (= (and d!564728 c!301232) b!1844976))

(assert (= (and d!564728 (not c!301232)) b!1844977))

(assert (= (and b!1844977 (not res!828576)) b!1844978))

(declare-fun m!2273347 () Bool)

(assert (=> b!1844976 m!2273347))

(declare-fun m!2273349 () Bool)

(assert (=> b!1844978 m!2273349))

(assert (=> b!1844819 d!564728))

(declare-fun d!564730 () Bool)

(declare-fun c!301233 () Bool)

(assert (=> d!564730 (= c!301233 (is-Node!6742 (c!301187 x!368714)))))

(declare-fun e!1179037 () Bool)

(assert (=> d!564730 (= (inv!26646 (c!301187 x!368714)) e!1179037)))

(declare-fun b!1844979 () Bool)

(assert (=> b!1844979 (= e!1179037 (inv!26650 (c!301187 x!368714)))))

(declare-fun b!1844980 () Bool)

(declare-fun e!1179038 () Bool)

(assert (=> b!1844980 (= e!1179037 e!1179038)))

(declare-fun res!828577 () Bool)

(assert (=> b!1844980 (= res!828577 (not (is-Leaf!9844 (c!301187 x!368714))))))

(assert (=> b!1844980 (=> res!828577 e!1179038)))

(declare-fun b!1844981 () Bool)

(assert (=> b!1844981 (= e!1179038 (inv!26651 (c!301187 x!368714)))))

(assert (= (and d!564730 c!301233) b!1844979))

(assert (= (and d!564730 (not c!301233)) b!1844980))

(assert (= (and b!1844980 (not res!828577)) b!1844981))

(declare-fun m!2273351 () Bool)

(assert (=> b!1844979 m!2273351))

(declare-fun m!2273353 () Bool)

(assert (=> b!1844981 m!2273353))

(assert (=> b!1844820 d!564730))

(assert (=> d!564674 d!564658))

(declare-fun b!1844982 () Bool)

(declare-fun e!1179040 () List!20417)

(assert (=> b!1844982 (= e!1179040 (efficientList!208 (xs!9618 (c!301187 x!368714))))))

(declare-fun b!1844983 () Bool)

(declare-fun lt!714715 () Unit!35035)

(declare-fun lt!714714 () Unit!35035)

(assert (=> b!1844983 (= lt!714715 lt!714714)))

(declare-fun call!115105 () List!20417)

(declare-fun lt!714711 () List!20417)

(declare-fun lt!714712 () List!20417)

(assert (=> b!1844983 (= (++!5525 (++!5525 lt!714711 lt!714712) (efficientList$default$2!69 (c!301187 x!368714))) (++!5525 lt!714711 call!115105))))

(assert (=> b!1844983 (= lt!714714 (lemmaConcatAssociativity!1086 lt!714711 lt!714712 (efficientList$default$2!69 (c!301187 x!368714))))))

(assert (=> b!1844983 (= lt!714712 (list!8275 (right!16617 (c!301187 x!368714))))))

(assert (=> b!1844983 (= lt!714711 (list!8275 (left!16287 (c!301187 x!368714))))))

(declare-fun e!1179039 () List!20417)

(assert (=> b!1844983 (= e!1179039 (efficientList!206 (left!16287 (c!301187 x!368714)) (efficientList!206 (right!16617 (c!301187 x!368714)) (efficientList$default$2!69 (c!301187 x!368714)))))))

(declare-fun b!1844984 () Bool)

(assert (=> b!1844984 (= e!1179039 call!115105)))

(declare-fun d!564732 () Bool)

(declare-fun lt!714713 () List!20417)

(assert (=> d!564732 (= lt!714713 (++!5525 (list!8275 (c!301187 x!368714)) (efficientList$default$2!69 (c!301187 x!368714))))))

(declare-fun e!1179041 () List!20417)

(assert (=> d!564732 (= lt!714713 e!1179041)))

(declare-fun c!301235 () Bool)

(assert (=> d!564732 (= c!301235 (is-Empty!6742 (c!301187 x!368714)))))

(assert (=> d!564732 (= (efficientList!206 (c!301187 x!368714) (efficientList$default$2!69 (c!301187 x!368714))) lt!714713)))

(declare-fun bm!115100 () Bool)

(declare-fun c!301234 () Bool)

(declare-fun c!301236 () Bool)

(assert (=> bm!115100 (= c!301234 c!301236)))

(assert (=> bm!115100 (= call!115105 (++!5525 e!1179040 (efficientList$default$2!69 (c!301187 x!368714))))))

(declare-fun b!1844985 () Bool)

(assert (=> b!1844985 (= e!1179040 lt!714712)))

(declare-fun b!1844986 () Bool)

(assert (=> b!1844986 (= e!1179041 e!1179039)))

(assert (=> b!1844986 (= c!301236 (is-Leaf!9844 (c!301187 x!368714)))))

(declare-fun b!1844987 () Bool)

(assert (=> b!1844987 (= e!1179041 (efficientList$default$2!69 (c!301187 x!368714)))))

(assert (= (and d!564732 c!301235) b!1844987))

(assert (= (and d!564732 (not c!301235)) b!1844986))

(assert (= (and b!1844986 c!301236) b!1844984))

(assert (= (and b!1844986 (not c!301236)) b!1844983))

(assert (= (or b!1844984 b!1844983) bm!115100))

(assert (= (and bm!115100 c!301234) b!1844982))

(assert (= (and bm!115100 (not c!301234)) b!1844985))

(declare-fun m!2273355 () Bool)

(assert (=> b!1844982 m!2273355))

(declare-fun m!2273357 () Bool)

(assert (=> b!1844983 m!2273357))

(declare-fun m!2273359 () Bool)

(assert (=> b!1844983 m!2273359))

(assert (=> b!1844983 m!2273199))

(assert (=> b!1844983 m!2273357))

(declare-fun m!2273361 () Bool)

(assert (=> b!1844983 m!2273361))

(assert (=> b!1844983 m!2273199))

(declare-fun m!2273363 () Bool)

(assert (=> b!1844983 m!2273363))

(assert (=> b!1844983 m!2273217))

(declare-fun m!2273365 () Bool)

(assert (=> b!1844983 m!2273365))

(assert (=> b!1844983 m!2273215))

(assert (=> b!1844983 m!2273365))

(assert (=> b!1844983 m!2273199))

(declare-fun m!2273367 () Bool)

(assert (=> b!1844983 m!2273367))

(assert (=> d!564732 m!2273177))

(assert (=> d!564732 m!2273177))

(assert (=> d!564732 m!2273199))

(declare-fun m!2273369 () Bool)

(assert (=> d!564732 m!2273369))

(assert (=> bm!115100 m!2273199))

(declare-fun m!2273371 () Bool)

(assert (=> bm!115100 m!2273371))

(assert (=> d!564674 d!564732))

(declare-fun d!564734 () Bool)

(assert (=> d!564734 (= (efficientList$default$2!69 (c!301187 x!368714)) Nil!20345)))

(assert (=> d!564674 d!564734))

(assert (=> start!183896 d!564660))

(assert (=> start!183896 d!564654))

(declare-fun d!564736 () Bool)

(assert (=> d!564736 (= (inv!26647 x!368712) (isBalanced!2100 (c!301187 x!368712)))))

(declare-fun bs!409021 () Bool)

(assert (= bs!409021 d!564736))

(declare-fun m!2273373 () Bool)

(assert (=> bs!409021 m!2273373))

(assert (=> start!183896 d!564736))

(assert (=> start!183896 d!564716))

(assert (=> start!183896 d!564656))

(assert (=> start!183896 d!564708))

(assert (=> d!564688 d!564660))

(declare-fun b!1844988 () Bool)

(declare-fun e!1179043 () List!20417)

(assert (=> b!1844988 (= e!1179043 (efficientList!208 (xs!9618 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))))))))

(declare-fun b!1844989 () Bool)

(declare-fun lt!714720 () Unit!35035)

(declare-fun lt!714719 () Unit!35035)

(assert (=> b!1844989 (= lt!714720 lt!714719)))

(declare-fun lt!714717 () List!20417)

(declare-fun call!115106 () List!20417)

(declare-fun lt!714716 () List!20417)

(assert (=> b!1844989 (= (++!5525 (++!5525 lt!714716 lt!714717) (efficientList$default$2!69 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))))) (++!5525 lt!714716 call!115106))))

(assert (=> b!1844989 (= lt!714719 (lemmaConcatAssociativity!1086 lt!714716 lt!714717 (efficientList$default$2!69 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))))))))

(assert (=> b!1844989 (= lt!714717 (list!8275 (right!16617 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))))))))

(assert (=> b!1844989 (= lt!714716 (list!8275 (left!16287 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))))))))

(declare-fun e!1179042 () List!20417)

(assert (=> b!1844989 (= e!1179042 (efficientList!206 (left!16287 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)))) (efficientList!206 (right!16617 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)))) (efficientList$default$2!69 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)))))))))

(declare-fun b!1844990 () Bool)

(assert (=> b!1844990 (= e!1179042 call!115106)))

(declare-fun d!564738 () Bool)

(declare-fun lt!714718 () List!20417)

(assert (=> d!564738 (= lt!714718 (++!5525 (list!8275 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)))) (efficientList$default$2!69 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))))))))

(declare-fun e!1179044 () List!20417)

(assert (=> d!564738 (= lt!714718 e!1179044)))

(declare-fun c!301238 () Bool)

(assert (=> d!564738 (= c!301238 (is-Empty!6742 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)))))))

(assert (=> d!564738 (= (efficientList!206 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))) (efficientList$default$2!69 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))))) lt!714718)))

(declare-fun bm!115101 () Bool)

(declare-fun c!301237 () Bool)

(declare-fun c!301239 () Bool)

(assert (=> bm!115101 (= c!301237 c!301239)))

(assert (=> bm!115101 (= call!115106 (++!5525 e!1179043 (efficientList$default$2!69 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712))))))))

(declare-fun b!1844991 () Bool)

(assert (=> b!1844991 (= e!1179043 lt!714717)))

(declare-fun b!1844992 () Bool)

(assert (=> b!1844992 (= e!1179044 e!1179042)))

(assert (=> b!1844992 (= c!301239 (is-Leaf!9844 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)))))))

(declare-fun b!1844993 () Bool)

(assert (=> b!1844993 (= e!1179044 (efficientList$default$2!69 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)))))))

(assert (= (and d!564738 c!301238) b!1844993))

(assert (= (and d!564738 (not c!301238)) b!1844992))

(assert (= (and b!1844992 c!301239) b!1844990))

(assert (= (and b!1844992 (not c!301239)) b!1844989))

(assert (= (or b!1844990 b!1844989) bm!115101))

(assert (= (and bm!115101 c!301237) b!1844988))

(assert (= (and bm!115101 (not c!301237)) b!1844991))

(declare-fun m!2273375 () Bool)

(assert (=> b!1844988 m!2273375))

(declare-fun m!2273377 () Bool)

(assert (=> b!1844989 m!2273377))

(declare-fun m!2273379 () Bool)

(assert (=> b!1844989 m!2273379))

(assert (=> b!1844989 m!2273243))

(assert (=> b!1844989 m!2273377))

(declare-fun m!2273381 () Bool)

(assert (=> b!1844989 m!2273381))

(assert (=> b!1844989 m!2273243))

(declare-fun m!2273383 () Bool)

(assert (=> b!1844989 m!2273383))

(assert (=> b!1844989 m!2273233))

(declare-fun m!2273385 () Bool)

(assert (=> b!1844989 m!2273385))

(assert (=> b!1844989 m!2273231))

(assert (=> b!1844989 m!2273385))

(assert (=> b!1844989 m!2273243))

(declare-fun m!2273387 () Bool)

(assert (=> b!1844989 m!2273387))

(assert (=> d!564738 m!2273179))

(assert (=> d!564738 m!2273179))

(assert (=> d!564738 m!2273243))

(declare-fun m!2273389 () Bool)

(assert (=> d!564738 m!2273389))

(assert (=> bm!115101 m!2273243))

(declare-fun m!2273391 () Bool)

(assert (=> bm!115101 m!2273391))

(assert (=> d!564688 d!564738))

(declare-fun d!564740 () Bool)

(assert (=> d!564740 (= (efficientList$default$2!69 (c!301187 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368712)))) Nil!20345)))

(assert (=> d!564688 d!564740))

(declare-fun e!1179049 () Bool)

(declare-fun b!1845000 () Bool)

(declare-fun tp!521716 () Bool)

(declare-fun tp!521715 () Bool)

(assert (=> b!1845000 (= e!1179049 (and (inv!26646 (left!16287 (c!301187 x!368712))) tp!521715 (inv!26646 (right!16617 (c!301187 x!368712))) tp!521716))))

(declare-fun b!1845001 () Bool)

(declare-fun inv!26652 (IArray!13489) Bool)

(assert (=> b!1845001 (= e!1179049 (inv!26652 (xs!9618 (c!301187 x!368712))))))

(assert (=> b!1844817 (= tp!521699 (and (inv!26646 (c!301187 x!368712)) e!1179049))))

(assert (= (and b!1844817 (is-Node!6742 (c!301187 x!368712))) b!1845000))

(assert (= (and b!1844817 (is-Leaf!9844 (c!301187 x!368712))) b!1845001))

(declare-fun m!2273393 () Bool)

(assert (=> b!1845000 m!2273393))

(declare-fun m!2273395 () Bool)

(assert (=> b!1845000 m!2273395))

(declare-fun m!2273397 () Bool)

(assert (=> b!1845001 m!2273397))

(assert (=> b!1844817 m!2273095))

(declare-fun tp!521717 () Bool)

(declare-fun tp!521718 () Bool)

(declare-fun e!1179051 () Bool)

(declare-fun b!1845002 () Bool)

(assert (=> b!1845002 (= e!1179051 (and (inv!26646 (left!16287 (c!301187 x!368713))) tp!521717 (inv!26646 (right!16617 (c!301187 x!368713))) tp!521718))))

(declare-fun b!1845003 () Bool)

(assert (=> b!1845003 (= e!1179051 (inv!26652 (xs!9618 (c!301187 x!368713))))))

(assert (=> b!1844819 (= tp!521700 (and (inv!26646 (c!301187 x!368713)) e!1179051))))

(assert (= (and b!1844819 (is-Node!6742 (c!301187 x!368713))) b!1845002))

(assert (= (and b!1844819 (is-Leaf!9844 (c!301187 x!368713))) b!1845003))

(declare-fun m!2273399 () Bool)

(assert (=> b!1845002 m!2273399))

(declare-fun m!2273401 () Bool)

(assert (=> b!1845002 m!2273401))

(declare-fun m!2273403 () Bool)

(assert (=> b!1845003 m!2273403))

(assert (=> b!1844819 m!2273119))

(declare-fun tp!521719 () Bool)

(declare-fun e!1179053 () Bool)

(declare-fun b!1845004 () Bool)

(declare-fun tp!521720 () Bool)

(assert (=> b!1845004 (= e!1179053 (and (inv!26646 (left!16287 (c!301187 x!368714))) tp!521719 (inv!26646 (right!16617 (c!301187 x!368714))) tp!521720))))

(declare-fun b!1845005 () Bool)

(assert (=> b!1845005 (= e!1179053 (inv!26652 (xs!9618 (c!301187 x!368714))))))

(assert (=> b!1844820 (= tp!521701 (and (inv!26646 (c!301187 x!368714)) e!1179053))))

(assert (= (and b!1844820 (is-Node!6742 (c!301187 x!368714))) b!1845004))

(assert (= (and b!1844820 (is-Leaf!9844 (c!301187 x!368714))) b!1845005))

(declare-fun m!2273405 () Bool)

(assert (=> b!1845004 m!2273405))

(declare-fun m!2273407 () Bool)

(assert (=> b!1845004 m!2273407))

(declare-fun m!2273409 () Bool)

(assert (=> b!1845005 m!2273409))

(assert (=> b!1844820 m!2273121))

(push 1)

(assert (not d!564710))

(assert (not d!564714))

(assert (not b!1845004))

(assert (not b!1844983))

(assert (not b!1844819))

(assert (not b!1844896))

(assert (not b!1844904))

(assert (not d!564732))

(assert (not d!564716))

(assert (not b!1844939))

(assert (not b!1844982))

(assert (not b!1844899))

(assert (not b!1844961))

(assert (not b!1844817))

(assert (not b!1845005))

(assert (not d!564720))

(assert (not b!1844988))

(assert (not b!1845002))

(assert (not b!1844971))

(assert (not bm!115098))

(assert (not b!1845003))

(assert (not bm!115101))

(assert (not b!1844908))

(assert (not d!564718))

(assert (not b!1844907))

(assert (not b!1844960))

(assert (not b!1844900))

(assert (not b!1845000))

(assert (not bm!115100))

(assert (not b!1844981))

(assert (not b!1844820))

(assert (not b!1844970))

(assert (not b!1844946))

(assert (not b!1844895))

(assert (not b!1844989))

(assert (not b!1844978))

(assert (not b!1844941))

(assert (not b!1845001))

(assert (not d!564724))

(assert (not d!564722))

(assert (not d!564738))

(assert (not b!1844903))

(assert (not d!564736))

(assert (not bm!115099))

(assert (not b!1844976))

(assert (not b!1844979))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

