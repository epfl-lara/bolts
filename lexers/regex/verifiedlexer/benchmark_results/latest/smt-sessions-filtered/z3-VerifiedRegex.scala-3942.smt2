; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215988 () Bool)

(assert start!215988)

(declare-fun b!2216980 () Bool)

(declare-fun b_free!64151 () Bool)

(declare-fun b_next!64855 () Bool)

(assert (=> b!2216980 (= b_free!64151 (not b_next!64855))))

(declare-fun tp!690419 () Bool)

(declare-fun b_and!173995 () Bool)

(assert (=> b!2216980 (= tp!690419 b_and!173995)))

(declare-fun b_free!64153 () Bool)

(declare-fun b_next!64857 () Bool)

(assert (=> b!2216980 (= b_free!64153 (not b_next!64857))))

(declare-fun tp!690429 () Bool)

(declare-fun b_and!173997 () Bool)

(assert (=> b!2216980 (= tp!690429 b_and!173997)))

(declare-fun b!2216976 () Bool)

(declare-fun b_free!64155 () Bool)

(declare-fun b_next!64859 () Bool)

(assert (=> b!2216976 (= b_free!64155 (not b_next!64859))))

(declare-fun tp!690424 () Bool)

(declare-fun b_and!173999 () Bool)

(assert (=> b!2216976 (= tp!690424 b_and!173999)))

(declare-fun b_free!64157 () Bool)

(declare-fun b_next!64861 () Bool)

(assert (=> b!2216976 (= b_free!64157 (not b_next!64861))))

(declare-fun tp!690418 () Bool)

(declare-fun b_and!174001 () Bool)

(assert (=> b!2216976 (= tp!690418 b_and!174001)))

(declare-fun b!2216978 () Bool)

(declare-fun b_free!64159 () Bool)

(declare-fun b_next!64863 () Bool)

(assert (=> b!2216978 (= b_free!64159 (not b_next!64863))))

(declare-fun tp!690427 () Bool)

(declare-fun b_and!174003 () Bool)

(assert (=> b!2216978 (= tp!690427 b_and!174003)))

(declare-fun b_free!64161 () Bool)

(declare-fun b_next!64865 () Bool)

(assert (=> b!2216978 (= b_free!64161 (not b_next!64865))))

(declare-fun tp!690432 () Bool)

(declare-fun b_and!174005 () Bool)

(assert (=> b!2216978 (= tp!690432 b_and!174005)))

(declare-fun b!2216973 () Bool)

(declare-fun b_free!64163 () Bool)

(declare-fun b_next!64867 () Bool)

(assert (=> b!2216973 (= b_free!64163 (not b_next!64867))))

(declare-fun tp!690423 () Bool)

(declare-fun b_and!174007 () Bool)

(assert (=> b!2216973 (= tp!690423 b_and!174007)))

(declare-fun b_free!64165 () Bool)

(declare-fun b_next!64869 () Bool)

(assert (=> b!2216973 (= b_free!64165 (not b_next!64869))))

(declare-fun tp!690420 () Bool)

(declare-fun b_and!174009 () Bool)

(assert (=> b!2216973 (= tp!690420 b_and!174009)))

(declare-fun b_free!64167 () Bool)

(declare-fun b_next!64871 () Bool)

(assert (=> start!215988 (= b_free!64167 (not b_next!64871))))

(declare-fun tp!690426 () Bool)

(declare-fun b_and!174011 () Bool)

(assert (=> start!215988 (= tp!690426 b_and!174011)))

(declare-fun b!2216967 () Bool)

(declare-fun e!1415620 () Bool)

(declare-datatypes ((List!26017 0))(
  ( (Nil!25933) (Cons!25933 (h!31334 (_ BitVec 16)) (t!199169 List!26017)) )
))
(declare-datatypes ((TokenValue!4317 0))(
  ( (FloatLiteralValue!8634 (text!30664 List!26017)) (TokenValueExt!4316 (__x!17087 Int)) (Broken!21585 (value!131865 List!26017)) (Object!4400) (End!4317) (Def!4317) (Underscore!4317) (Match!4317) (Else!4317) (Error!4317) (Case!4317) (If!4317) (Extends!4317) (Abstract!4317) (Class!4317) (Val!4317) (DelimiterValue!8634 (del!4377 List!26017)) (KeywordValue!4323 (value!131866 List!26017)) (CommentValue!8634 (value!131867 List!26017)) (WhitespaceValue!8634 (value!131868 List!26017)) (IndentationValue!4317 (value!131869 List!26017)) (String!28260) (Int32!4317) (Broken!21586 (value!131870 List!26017)) (Boolean!4318) (Unit!38929) (OperatorValue!4320 (op!4377 List!26017)) (IdentifierValue!8634 (value!131871 List!26017)) (IdentifierValue!8635 (value!131872 List!26017)) (WhitespaceValue!8635 (value!131873 List!26017)) (True!8634) (False!8634) (Broken!21587 (value!131874 List!26017)) (Broken!21588 (value!131875 List!26017)) (True!8635) (RightBrace!4317) (RightBracket!4317) (Colon!4317) (Null!4317) (Comma!4317) (LeftBracket!4317) (False!8635) (LeftBrace!4317) (ImaginaryLiteralValue!4317 (text!30665 List!26017)) (StringLiteralValue!12951 (value!131876 List!26017)) (EOFValue!4317 (value!131877 List!26017)) (IdentValue!4317 (value!131878 List!26017)) (DelimiterValue!8635 (value!131879 List!26017)) (DedentValue!4317 (value!131880 List!26017)) (NewLineValue!4317 (value!131881 List!26017)) (IntegerValue!12951 (value!131882 (_ BitVec 32)) (text!30666 List!26017)) (IntegerValue!12952 (value!131883 Int) (text!30667 List!26017)) (Times!4317) (Or!4317) (Equal!4317) (Minus!4317) (Broken!21589 (value!131884 List!26017)) (And!4317) (Div!4317) (LessEqual!4317) (Mod!4317) (Concat!10642) (Not!4317) (Plus!4317) (SpaceValue!4317 (value!131885 List!26017)) (IntegerValue!12953 (value!131886 Int) (text!30668 List!26017)) (StringLiteralValue!12952 (text!30669 List!26017)) (FloatLiteralValue!8635 (text!30670 List!26017)) (BytesLiteralValue!4317 (value!131887 List!26017)) (CommentValue!8635 (value!131888 List!26017)) (StringLiteralValue!12953 (value!131889 List!26017)) (ErrorTokenValue!4317 (msg!4378 List!26017)) )
))
(declare-datatypes ((String!28261 0))(
  ( (String!28262 (value!131890 String)) )
))
(declare-datatypes ((C!12796 0))(
  ( (C!12797 (val!7410 Int)) )
))
(declare-datatypes ((List!26018 0))(
  ( (Nil!25934) (Cons!25934 (h!31335 C!12796) (t!199170 List!26018)) )
))
(declare-datatypes ((IArray!16971 0))(
  ( (IArray!16972 (innerList!8543 List!26018)) )
))
(declare-datatypes ((Conc!8483 0))(
  ( (Node!8483 (left!19933 Conc!8483) (right!20263 Conc!8483) (csize!17196 Int) (cheight!8694 Int)) (Leaf!12426 (xs!11425 IArray!16971) (csize!17197 Int)) (Empty!8483) )
))
(declare-datatypes ((BalanceConc!16684 0))(
  ( (BalanceConc!16685 (c!354039 Conc!8483)) )
))
(declare-datatypes ((Regex!6325 0))(
  ( (ElementMatch!6325 (c!354040 C!12796)) (Concat!10643 (regOne!13162 Regex!6325) (regTwo!13162 Regex!6325)) (EmptyExpr!6325) (Star!6325 (reg!6654 Regex!6325)) (EmptyLang!6325) (Union!6325 (regOne!13163 Regex!6325) (regTwo!13163 Regex!6325)) )
))
(declare-datatypes ((TokenValueInjection!8218 0))(
  ( (TokenValueInjection!8219 (toValue!5896 Int) (toChars!5755 Int)) )
))
(declare-datatypes ((Rule!8162 0))(
  ( (Rule!8163 (regex!4181 Regex!6325) (tag!4671 String!28261) (isSeparator!4181 Bool) (transformation!4181 TokenValueInjection!8218)) )
))
(declare-datatypes ((Token!7844 0))(
  ( (Token!7845 (value!131891 TokenValue!4317) (rule!6481 Rule!8162) (size!20243 Int) (originalCharacters!4953 List!26018)) )
))
(declare-datatypes ((List!26019 0))(
  ( (Nil!25935) (Cons!25935 (h!31336 Token!7844) (t!199171 List!26019)) )
))
(declare-fun l!6601 () List!26019)

(declare-fun tp!690417 () Bool)

(declare-fun e!1415614 () Bool)

(declare-fun inv!21 (TokenValue!4317) Bool)

(assert (=> b!2216967 (= e!1415614 (and (inv!21 (value!131891 (h!31336 l!6601))) e!1415620 tp!690417))))

(declare-fun b!2216968 () Bool)

(declare-fun res!952161 () Bool)

(declare-fun e!1415623 () Bool)

(assert (=> b!2216968 (=> (not res!952161) (not e!1415623))))

(declare-datatypes ((LexerInterface!3778 0))(
  ( (LexerInterfaceExt!3775 (__x!17088 Int)) (Lexer!3776) )
))
(declare-fun thiss!27908 () LexerInterface!3778)

(declare-fun p!3128 () Int)

(declare-datatypes ((List!26020 0))(
  ( (Nil!25936) (Cons!25936 (h!31337 Rule!8162) (t!199172 List!26020)) )
))
(declare-fun rules!4462 () List!26020)

(declare-fun tokensListTwoByTwoPredicateList!48 (LexerInterface!3778 List!26019 List!26020 Int) Bool)

(assert (=> b!2216968 (= res!952161 (tokensListTwoByTwoPredicateList!48 thiss!27908 l!6601 rules!4462 p!3128))))

(declare-fun b!2216969 () Bool)

(declare-fun e!1415626 () Bool)

(declare-fun e!1415611 () Bool)

(assert (=> b!2216969 (= e!1415626 e!1415611)))

(declare-fun res!952157 () Bool)

(assert (=> b!2216969 (=> res!952157 e!1415611)))

(declare-fun i!1797 () Int)

(assert (=> b!2216969 (= res!952157 (< (- i!1797 1) 0))))

(declare-fun b!2216970 () Bool)

(declare-fun res!952158 () Bool)

(assert (=> b!2216970 (=> (not res!952158) (not e!1415623))))

(declare-fun t1!61 () Token!7844)

(declare-fun apply!6427 (List!26019 Int) Token!7844)

(assert (=> b!2216970 (= res!952158 (= (apply!6427 l!6601 i!1797) t1!61))))

(declare-fun tp!690416 () Bool)

(declare-fun b!2216971 () Bool)

(declare-fun e!1415622 () Bool)

(declare-fun e!1415617 () Bool)

(declare-fun inv!35144 (String!28261) Bool)

(declare-fun inv!35147 (TokenValueInjection!8218) Bool)

(assert (=> b!2216971 (= e!1415622 (and tp!690416 (inv!35144 (tag!4671 (rule!6481 t1!61))) (inv!35147 (transformation!4181 (rule!6481 t1!61))) e!1415617))))

(declare-fun e!1415613 () Bool)

(declare-fun e!1415628 () Bool)

(declare-fun t2!61 () Token!7844)

(declare-fun tp!690421 () Bool)

(declare-fun b!2216972 () Bool)

(assert (=> b!2216972 (= e!1415613 (and tp!690421 (inv!35144 (tag!4671 (rule!6481 t2!61))) (inv!35147 (transformation!4181 (rule!6481 t2!61))) e!1415628))))

(assert (=> b!2216973 (= e!1415628 (and tp!690423 tp!690420))))

(declare-fun b!2216974 () Bool)

(declare-fun res!952159 () Bool)

(assert (=> b!2216974 (=> (not res!952159) (not e!1415623))))

(declare-fun size!20244 (List!26019) Int)

(assert (=> b!2216974 (= res!952159 (< (+ 1 i!1797) (size!20244 l!6601)))))

(declare-fun b!2216975 () Bool)

(declare-fun res!952165 () Bool)

(assert (=> b!2216975 (=> (not res!952165) (not e!1415623))))

(assert (=> b!2216975 (= res!952165 (= (apply!6427 l!6601 (+ 1 i!1797)) t2!61))))

(declare-fun e!1415615 () Bool)

(assert (=> b!2216976 (= e!1415615 (and tp!690424 tp!690418))))

(declare-fun e!1415618 () Bool)

(declare-fun b!2216977 () Bool)

(declare-fun tp!690431 () Bool)

(assert (=> b!2216977 (= e!1415618 (and (inv!21 (value!131891 t1!61)) e!1415622 tp!690431))))

(declare-fun e!1415631 () Bool)

(assert (=> b!2216978 (= e!1415631 (and tp!690427 tp!690432))))

(declare-fun res!952162 () Bool)

(assert (=> start!215988 (=> (not res!952162) (not e!1415623))))

(get-info :version)

(assert (=> start!215988 (= res!952162 ((_ is Lexer!3776) thiss!27908))))

(assert (=> start!215988 e!1415623))

(assert (=> start!215988 true))

(declare-fun e!1415630 () Bool)

(assert (=> start!215988 e!1415630))

(declare-fun e!1415627 () Bool)

(declare-fun inv!35148 (Token!7844) Bool)

(assert (=> start!215988 (and (inv!35148 t2!61) e!1415627)))

(assert (=> start!215988 tp!690426))

(declare-fun e!1415612 () Bool)

(assert (=> start!215988 e!1415612))

(assert (=> start!215988 (and (inv!35148 t1!61) e!1415618)))

(declare-fun tp!690430 () Bool)

(declare-fun b!2216979 () Bool)

(assert (=> b!2216979 (= e!1415612 (and (inv!35148 (h!31336 l!6601)) e!1415614 tp!690430))))

(assert (=> b!2216980 (= e!1415617 (and tp!690419 tp!690429))))

(declare-fun b!2216981 () Bool)

(declare-fun res!952163 () Bool)

(assert (=> b!2216981 (=> (not res!952163) (not e!1415623))))

(assert (=> b!2216981 (= res!952163 (not (= i!1797 0)))))

(declare-fun b!2216982 () Bool)

(assert (=> b!2216982 (= e!1415623 e!1415626)))

(declare-fun res!952160 () Bool)

(assert (=> b!2216982 (=> (not res!952160) (not e!1415626))))

(declare-fun lt!826845 () List!26019)

(assert (=> b!2216982 (= res!952160 (tokensListTwoByTwoPredicateList!48 thiss!27908 lt!826845 rules!4462 p!3128))))

(declare-fun tail!3222 (List!26019) List!26019)

(assert (=> b!2216982 (= lt!826845 (tail!3222 l!6601))))

(declare-fun b!2216983 () Bool)

(declare-fun tp!690415 () Bool)

(assert (=> b!2216983 (= e!1415620 (and tp!690415 (inv!35144 (tag!4671 (rule!6481 (h!31336 l!6601)))) (inv!35147 (transformation!4181 (rule!6481 (h!31336 l!6601)))) e!1415631))))

(declare-fun e!1415633 () Bool)

(declare-fun tp!690425 () Bool)

(declare-fun b!2216984 () Bool)

(assert (=> b!2216984 (= e!1415633 (and tp!690425 (inv!35144 (tag!4671 (h!31337 rules!4462))) (inv!35147 (transformation!4181 (h!31337 rules!4462))) e!1415615))))

(declare-fun b!2216985 () Bool)

(declare-fun tp!690428 () Bool)

(assert (=> b!2216985 (= e!1415630 (and e!1415633 tp!690428))))

(declare-fun b!2216986 () Bool)

(declare-fun res!952164 () Bool)

(assert (=> b!2216986 (=> (not res!952164) (not e!1415623))))

(assert (=> b!2216986 (= res!952164 (>= i!1797 0))))

(declare-fun tp!690422 () Bool)

(declare-fun b!2216987 () Bool)

(assert (=> b!2216987 (= e!1415627 (and (inv!21 (value!131891 t2!61)) e!1415613 tp!690422))))

(declare-fun b!2216988 () Bool)

(assert (=> b!2216988 (= e!1415611 (>= (+ 1 (- i!1797 1)) (size!20244 lt!826845)))))

(assert (= (and start!215988 res!952162) b!2216968))

(assert (= (and b!2216968 res!952161) b!2216986))

(assert (= (and b!2216986 res!952164) b!2216974))

(assert (= (and b!2216974 res!952159) b!2216970))

(assert (= (and b!2216970 res!952158) b!2216975))

(assert (= (and b!2216975 res!952165) b!2216981))

(assert (= (and b!2216981 res!952163) b!2216982))

(assert (= (and b!2216982 res!952160) b!2216969))

(assert (= (and b!2216969 (not res!952157)) b!2216988))

(assert (= b!2216984 b!2216976))

(assert (= b!2216985 b!2216984))

(assert (= (and start!215988 ((_ is Cons!25936) rules!4462)) b!2216985))

(assert (= b!2216972 b!2216973))

(assert (= b!2216987 b!2216972))

(assert (= start!215988 b!2216987))

(assert (= b!2216983 b!2216978))

(assert (= b!2216967 b!2216983))

(assert (= b!2216979 b!2216967))

(assert (= (and start!215988 ((_ is Cons!25935) l!6601)) b!2216979))

(assert (= b!2216971 b!2216980))

(assert (= b!2216977 b!2216971))

(assert (= start!215988 b!2216977))

(declare-fun m!2658109 () Bool)

(assert (=> b!2216984 m!2658109))

(declare-fun m!2658111 () Bool)

(assert (=> b!2216984 m!2658111))

(declare-fun m!2658113 () Bool)

(assert (=> b!2216971 m!2658113))

(declare-fun m!2658115 () Bool)

(assert (=> b!2216971 m!2658115))

(declare-fun m!2658117 () Bool)

(assert (=> b!2216977 m!2658117))

(declare-fun m!2658119 () Bool)

(assert (=> b!2216975 m!2658119))

(declare-fun m!2658121 () Bool)

(assert (=> b!2216972 m!2658121))

(declare-fun m!2658123 () Bool)

(assert (=> b!2216972 m!2658123))

(declare-fun m!2658125 () Bool)

(assert (=> b!2216983 m!2658125))

(declare-fun m!2658127 () Bool)

(assert (=> b!2216983 m!2658127))

(declare-fun m!2658129 () Bool)

(assert (=> b!2216967 m!2658129))

(declare-fun m!2658131 () Bool)

(assert (=> b!2216979 m!2658131))

(declare-fun m!2658133 () Bool)

(assert (=> b!2216987 m!2658133))

(declare-fun m!2658135 () Bool)

(assert (=> b!2216974 m!2658135))

(declare-fun m!2658137 () Bool)

(assert (=> b!2216968 m!2658137))

(declare-fun m!2658139 () Bool)

(assert (=> b!2216982 m!2658139))

(declare-fun m!2658141 () Bool)

(assert (=> b!2216982 m!2658141))

(declare-fun m!2658143 () Bool)

(assert (=> b!2216988 m!2658143))

(declare-fun m!2658145 () Bool)

(assert (=> start!215988 m!2658145))

(declare-fun m!2658147 () Bool)

(assert (=> start!215988 m!2658147))

(declare-fun m!2658149 () Bool)

(assert (=> b!2216970 m!2658149))

(check-sat (not b!2216975) b_and!174005 (not b_next!64857) (not b!2216984) (not b!2216974) (not start!215988) (not b!2216988) (not b!2216982) b_and!174003 b_and!174007 (not b!2216968) (not b!2216977) b_and!173995 (not b!2216983) (not b_next!64859) (not b_next!64865) (not b!2216985) (not b_next!64855) b_and!173997 (not b!2216972) (not b_next!64867) (not b!2216979) b_and!174009 (not b!2216971) b_and!173999 (not b_next!64861) (not b_next!64863) (not b_next!64869) b_and!174011 (not b!2216987) (not b!2216967) (not b_next!64871) (not b!2216970) b_and!174001)
(check-sat b_and!174007 b_and!173995 b_and!174005 (not b_next!64859) (not b_next!64857) b_and!173997 (not b_next!64867) b_and!174009 (not b_next!64871) b_and!174001 b_and!174003 (not b_next!64865) (not b_next!64855) b_and!173999 (not b_next!64861) (not b_next!64863) (not b_next!64869) b_and!174011)
(get-model)

(declare-fun b!2216999 () Bool)

(declare-fun e!1415641 () Bool)

(declare-fun e!1415642 () Bool)

(assert (=> b!2216999 (= e!1415641 e!1415642)))

(declare-fun c!354046 () Bool)

(assert (=> b!2216999 (= c!354046 ((_ is IntegerValue!12952) (value!131891 (h!31336 l!6601))))))

(declare-fun b!2217000 () Bool)

(declare-fun inv!17 (TokenValue!4317) Bool)

(assert (=> b!2217000 (= e!1415642 (inv!17 (value!131891 (h!31336 l!6601))))))

(declare-fun b!2217001 () Bool)

(declare-fun e!1415640 () Bool)

(declare-fun inv!15 (TokenValue!4317) Bool)

(assert (=> b!2217001 (= e!1415640 (inv!15 (value!131891 (h!31336 l!6601))))))

(declare-fun d!662787 () Bool)

(declare-fun c!354045 () Bool)

(assert (=> d!662787 (= c!354045 ((_ is IntegerValue!12951) (value!131891 (h!31336 l!6601))))))

(assert (=> d!662787 (= (inv!21 (value!131891 (h!31336 l!6601))) e!1415641)))

(declare-fun b!2217002 () Bool)

(declare-fun res!952177 () Bool)

(assert (=> b!2217002 (=> res!952177 e!1415640)))

(assert (=> b!2217002 (= res!952177 (not ((_ is IntegerValue!12953) (value!131891 (h!31336 l!6601)))))))

(assert (=> b!2217002 (= e!1415642 e!1415640)))

(declare-fun b!2217003 () Bool)

(declare-fun inv!16 (TokenValue!4317) Bool)

(assert (=> b!2217003 (= e!1415641 (inv!16 (value!131891 (h!31336 l!6601))))))

(assert (= (and d!662787 c!354045) b!2217003))

(assert (= (and d!662787 (not c!354045)) b!2216999))

(assert (= (and b!2216999 c!354046) b!2217000))

(assert (= (and b!2216999 (not c!354046)) b!2217002))

(assert (= (and b!2217002 (not res!952177)) b!2217001))

(declare-fun m!2658151 () Bool)

(assert (=> b!2217000 m!2658151))

(declare-fun m!2658153 () Bool)

(assert (=> b!2217001 m!2658153))

(declare-fun m!2658155 () Bool)

(assert (=> b!2217003 m!2658155))

(assert (=> b!2216967 d!662787))

(declare-fun d!662789 () Bool)

(declare-fun lt!826848 () Int)

(assert (=> d!662789 (>= lt!826848 0)))

(declare-fun e!1415645 () Int)

(assert (=> d!662789 (= lt!826848 e!1415645)))

(declare-fun c!354049 () Bool)

(assert (=> d!662789 (= c!354049 ((_ is Nil!25935) lt!826845))))

(assert (=> d!662789 (= (size!20244 lt!826845) lt!826848)))

(declare-fun b!2217008 () Bool)

(assert (=> b!2217008 (= e!1415645 0)))

(declare-fun b!2217009 () Bool)

(assert (=> b!2217009 (= e!1415645 (+ 1 (size!20244 (t!199171 lt!826845))))))

(assert (= (and d!662789 c!354049) b!2217008))

(assert (= (and d!662789 (not c!354049)) b!2217009))

(declare-fun m!2658157 () Bool)

(assert (=> b!2217009 m!2658157))

(assert (=> b!2216988 d!662789))

(declare-fun b!2217010 () Bool)

(declare-fun e!1415647 () Bool)

(declare-fun e!1415648 () Bool)

(assert (=> b!2217010 (= e!1415647 e!1415648)))

(declare-fun c!354051 () Bool)

(assert (=> b!2217010 (= c!354051 ((_ is IntegerValue!12952) (value!131891 t1!61)))))

(declare-fun b!2217011 () Bool)

(assert (=> b!2217011 (= e!1415648 (inv!17 (value!131891 t1!61)))))

(declare-fun b!2217012 () Bool)

(declare-fun e!1415646 () Bool)

(assert (=> b!2217012 (= e!1415646 (inv!15 (value!131891 t1!61)))))

(declare-fun d!662793 () Bool)

(declare-fun c!354050 () Bool)

(assert (=> d!662793 (= c!354050 ((_ is IntegerValue!12951) (value!131891 t1!61)))))

(assert (=> d!662793 (= (inv!21 (value!131891 t1!61)) e!1415647)))

(declare-fun b!2217013 () Bool)

(declare-fun res!952178 () Bool)

(assert (=> b!2217013 (=> res!952178 e!1415646)))

(assert (=> b!2217013 (= res!952178 (not ((_ is IntegerValue!12953) (value!131891 t1!61))))))

(assert (=> b!2217013 (= e!1415648 e!1415646)))

(declare-fun b!2217014 () Bool)

(assert (=> b!2217014 (= e!1415647 (inv!16 (value!131891 t1!61)))))

(assert (= (and d!662793 c!354050) b!2217014))

(assert (= (and d!662793 (not c!354050)) b!2217010))

(assert (= (and b!2217010 c!354051) b!2217011))

(assert (= (and b!2217010 (not c!354051)) b!2217013))

(assert (= (and b!2217013 (not res!952178)) b!2217012))

(declare-fun m!2658159 () Bool)

(assert (=> b!2217011 m!2658159))

(declare-fun m!2658161 () Bool)

(assert (=> b!2217012 m!2658161))

(declare-fun m!2658163 () Bool)

(assert (=> b!2217014 m!2658163))

(assert (=> b!2216977 d!662793))

(declare-fun d!662795 () Bool)

(declare-fun res!952189 () Bool)

(declare-fun e!1415657 () Bool)

(assert (=> d!662795 (=> (not res!952189) (not e!1415657))))

(declare-fun isEmpty!14836 (List!26018) Bool)

(assert (=> d!662795 (= res!952189 (not (isEmpty!14836 (originalCharacters!4953 (h!31336 l!6601)))))))

(assert (=> d!662795 (= (inv!35148 (h!31336 l!6601)) e!1415657)))

(declare-fun b!2217025 () Bool)

(declare-fun res!952190 () Bool)

(assert (=> b!2217025 (=> (not res!952190) (not e!1415657))))

(declare-fun list!10062 (BalanceConc!16684) List!26018)

(declare-fun dynLambda!11484 (Int TokenValue!4317) BalanceConc!16684)

(assert (=> b!2217025 (= res!952190 (= (originalCharacters!4953 (h!31336 l!6601)) (list!10062 (dynLambda!11484 (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601)))) (value!131891 (h!31336 l!6601))))))))

(declare-fun b!2217026 () Bool)

(declare-fun size!20246 (List!26018) Int)

(assert (=> b!2217026 (= e!1415657 (= (size!20243 (h!31336 l!6601)) (size!20246 (originalCharacters!4953 (h!31336 l!6601)))))))

(assert (= (and d!662795 res!952189) b!2217025))

(assert (= (and b!2217025 res!952190) b!2217026))

(declare-fun b_lambda!71431 () Bool)

(assert (=> (not b_lambda!71431) (not b!2217025)))

(declare-fun tb!132675 () Bool)

(declare-fun t!199176 () Bool)

(assert (=> (and b!2216980 (= (toChars!5755 (transformation!4181 (rule!6481 t1!61))) (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601))))) t!199176) tb!132675))

(declare-fun b!2217031 () Bool)

(declare-fun e!1415660 () Bool)

(declare-fun tp!690435 () Bool)

(declare-fun inv!35151 (Conc!8483) Bool)

(assert (=> b!2217031 (= e!1415660 (and (inv!35151 (c!354039 (dynLambda!11484 (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601)))) (value!131891 (h!31336 l!6601))))) tp!690435))))

(declare-fun result!160952 () Bool)

(declare-fun inv!35152 (BalanceConc!16684) Bool)

(assert (=> tb!132675 (= result!160952 (and (inv!35152 (dynLambda!11484 (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601)))) (value!131891 (h!31336 l!6601)))) e!1415660))))

(assert (= tb!132675 b!2217031))

(declare-fun m!2658169 () Bool)

(assert (=> b!2217031 m!2658169))

(declare-fun m!2658171 () Bool)

(assert (=> tb!132675 m!2658171))

(assert (=> b!2217025 t!199176))

(declare-fun b_and!174015 () Bool)

(assert (= b_and!173997 (and (=> t!199176 result!160952) b_and!174015)))

(declare-fun tb!132677 () Bool)

(declare-fun t!199178 () Bool)

(assert (=> (and b!2216976 (= (toChars!5755 (transformation!4181 (h!31337 rules!4462))) (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601))))) t!199178) tb!132677))

(declare-fun result!160956 () Bool)

(assert (= result!160956 result!160952))

(assert (=> b!2217025 t!199178))

(declare-fun b_and!174017 () Bool)

(assert (= b_and!174001 (and (=> t!199178 result!160956) b_and!174017)))

(declare-fun t!199180 () Bool)

(declare-fun tb!132679 () Bool)

(assert (=> (and b!2216978 (= (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601)))) (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601))))) t!199180) tb!132679))

(declare-fun result!160958 () Bool)

(assert (= result!160958 result!160952))

(assert (=> b!2217025 t!199180))

(declare-fun b_and!174019 () Bool)

(assert (= b_and!174005 (and (=> t!199180 result!160958) b_and!174019)))

(declare-fun t!199182 () Bool)

(declare-fun tb!132681 () Bool)

(assert (=> (and b!2216973 (= (toChars!5755 (transformation!4181 (rule!6481 t2!61))) (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601))))) t!199182) tb!132681))

(declare-fun result!160960 () Bool)

(assert (= result!160960 result!160952))

(assert (=> b!2217025 t!199182))

(declare-fun b_and!174021 () Bool)

(assert (= b_and!174009 (and (=> t!199182 result!160960) b_and!174021)))

(declare-fun m!2658173 () Bool)

(assert (=> d!662795 m!2658173))

(declare-fun m!2658175 () Bool)

(assert (=> b!2217025 m!2658175))

(assert (=> b!2217025 m!2658175))

(declare-fun m!2658177 () Bool)

(assert (=> b!2217025 m!2658177))

(declare-fun m!2658179 () Bool)

(assert (=> b!2217026 m!2658179))

(assert (=> b!2216979 d!662795))

(declare-fun d!662799 () Bool)

(declare-fun res!952198 () Bool)

(declare-fun e!1415671 () Bool)

(assert (=> d!662799 (=> res!952198 e!1415671)))

(assert (=> d!662799 (= res!952198 (or (not ((_ is Cons!25935) l!6601)) (not ((_ is Cons!25935) (t!199171 l!6601)))))))

(assert (=> d!662799 (= (tokensListTwoByTwoPredicateList!48 thiss!27908 l!6601 rules!4462 p!3128) e!1415671)))

(declare-fun b!2217045 () Bool)

(declare-fun e!1415672 () Bool)

(assert (=> b!2217045 (= e!1415671 e!1415672)))

(declare-fun res!952199 () Bool)

(assert (=> b!2217045 (=> (not res!952199) (not e!1415672))))

(declare-fun dynLambda!11485 (Int Token!7844 Token!7844 List!26020) Bool)

(assert (=> b!2217045 (= res!952199 (dynLambda!11485 p!3128 (h!31336 l!6601) (h!31336 (t!199171 l!6601)) rules!4462))))

(declare-fun b!2217046 () Bool)

(assert (=> b!2217046 (= e!1415672 (tokensListTwoByTwoPredicateList!48 thiss!27908 (Cons!25935 (h!31336 (t!199171 l!6601)) (t!199171 (t!199171 l!6601))) rules!4462 p!3128))))

(assert (= (and d!662799 (not res!952198)) b!2217045))

(assert (= (and b!2217045 res!952199) b!2217046))

(declare-fun b_lambda!71433 () Bool)

(assert (=> (not b_lambda!71433) (not b!2217045)))

(declare-fun t!199184 () Bool)

(declare-fun tb!132683 () Bool)

(assert (=> (and start!215988 (= p!3128 p!3128) t!199184) tb!132683))

(declare-fun result!160962 () Bool)

(assert (=> tb!132683 (= result!160962 true)))

(assert (=> b!2217045 t!199184))

(declare-fun b_and!174023 () Bool)

(assert (= b_and!174011 (and (=> t!199184 result!160962) b_and!174023)))

(declare-fun m!2658187 () Bool)

(assert (=> b!2217045 m!2658187))

(declare-fun m!2658189 () Bool)

(assert (=> b!2217046 m!2658189))

(assert (=> b!2216968 d!662799))

(declare-fun d!662803 () Bool)

(declare-fun lt!826854 () Token!7844)

(declare-fun contains!4305 (List!26019 Token!7844) Bool)

(assert (=> d!662803 (contains!4305 l!6601 lt!826854)))

(declare-fun e!1415684 () Token!7844)

(assert (=> d!662803 (= lt!826854 e!1415684)))

(declare-fun c!354057 () Bool)

(assert (=> d!662803 (= c!354057 (= i!1797 0))))

(declare-fun e!1415683 () Bool)

(assert (=> d!662803 e!1415683))

(declare-fun res!952208 () Bool)

(assert (=> d!662803 (=> (not res!952208) (not e!1415683))))

(assert (=> d!662803 (= res!952208 (<= 0 i!1797))))

(assert (=> d!662803 (= (apply!6427 l!6601 i!1797) lt!826854)))

(declare-fun b!2217064 () Bool)

(assert (=> b!2217064 (= e!1415683 (< i!1797 (size!20244 l!6601)))))

(declare-fun b!2217065 () Bool)

(declare-fun head!4737 (List!26019) Token!7844)

(assert (=> b!2217065 (= e!1415684 (head!4737 l!6601))))

(declare-fun b!2217066 () Bool)

(assert (=> b!2217066 (= e!1415684 (apply!6427 (tail!3222 l!6601) (- i!1797 1)))))

(assert (= (and d!662803 res!952208) b!2217064))

(assert (= (and d!662803 c!354057) b!2217065))

(assert (= (and d!662803 (not c!354057)) b!2217066))

(declare-fun m!2658203 () Bool)

(assert (=> d!662803 m!2658203))

(assert (=> b!2217064 m!2658135))

(declare-fun m!2658205 () Bool)

(assert (=> b!2217065 m!2658205))

(assert (=> b!2217066 m!2658141))

(assert (=> b!2217066 m!2658141))

(declare-fun m!2658207 () Bool)

(assert (=> b!2217066 m!2658207))

(assert (=> b!2216970 d!662803))

(declare-fun d!662807 () Bool)

(declare-fun res!952209 () Bool)

(declare-fun e!1415685 () Bool)

(assert (=> d!662807 (=> res!952209 e!1415685)))

(assert (=> d!662807 (= res!952209 (or (not ((_ is Cons!25935) lt!826845)) (not ((_ is Cons!25935) (t!199171 lt!826845)))))))

(assert (=> d!662807 (= (tokensListTwoByTwoPredicateList!48 thiss!27908 lt!826845 rules!4462 p!3128) e!1415685)))

(declare-fun b!2217067 () Bool)

(declare-fun e!1415686 () Bool)

(assert (=> b!2217067 (= e!1415685 e!1415686)))

(declare-fun res!952210 () Bool)

(assert (=> b!2217067 (=> (not res!952210) (not e!1415686))))

(assert (=> b!2217067 (= res!952210 (dynLambda!11485 p!3128 (h!31336 lt!826845) (h!31336 (t!199171 lt!826845)) rules!4462))))

(declare-fun b!2217068 () Bool)

(assert (=> b!2217068 (= e!1415686 (tokensListTwoByTwoPredicateList!48 thiss!27908 (Cons!25935 (h!31336 (t!199171 lt!826845)) (t!199171 (t!199171 lt!826845))) rules!4462 p!3128))))

(assert (= (and d!662807 (not res!952209)) b!2217067))

(assert (= (and b!2217067 res!952210) b!2217068))

(declare-fun b_lambda!71437 () Bool)

(assert (=> (not b_lambda!71437) (not b!2217067)))

(declare-fun t!199194 () Bool)

(declare-fun tb!132693 () Bool)

(assert (=> (and start!215988 (= p!3128 p!3128) t!199194) tb!132693))

(declare-fun result!160974 () Bool)

(assert (=> tb!132693 (= result!160974 true)))

(assert (=> b!2217067 t!199194))

(declare-fun b_and!174033 () Bool)

(assert (= b_and!174023 (and (=> t!199194 result!160974) b_and!174033)))

(declare-fun m!2658209 () Bool)

(assert (=> b!2217067 m!2658209))

(declare-fun m!2658211 () Bool)

(assert (=> b!2217068 m!2658211))

(assert (=> b!2216982 d!662807))

(declare-fun d!662809 () Bool)

(assert (=> d!662809 (= (tail!3222 l!6601) (t!199171 l!6601))))

(assert (=> b!2216982 d!662809))

(declare-fun d!662811 () Bool)

(assert (=> d!662811 (= (inv!35144 (tag!4671 (rule!6481 t1!61))) (= (mod (str.len (value!131890 (tag!4671 (rule!6481 t1!61)))) 2) 0))))

(assert (=> b!2216971 d!662811))

(declare-fun d!662815 () Bool)

(declare-fun res!952215 () Bool)

(declare-fun e!1415694 () Bool)

(assert (=> d!662815 (=> (not res!952215) (not e!1415694))))

(declare-fun semiInverseModEq!1672 (Int Int) Bool)

(assert (=> d!662815 (= res!952215 (semiInverseModEq!1672 (toChars!5755 (transformation!4181 (rule!6481 t1!61))) (toValue!5896 (transformation!4181 (rule!6481 t1!61)))))))

(assert (=> d!662815 (= (inv!35147 (transformation!4181 (rule!6481 t1!61))) e!1415694)))

(declare-fun b!2217079 () Bool)

(declare-fun equivClasses!1599 (Int Int) Bool)

(assert (=> b!2217079 (= e!1415694 (equivClasses!1599 (toChars!5755 (transformation!4181 (rule!6481 t1!61))) (toValue!5896 (transformation!4181 (rule!6481 t1!61)))))))

(assert (= (and d!662815 res!952215) b!2217079))

(declare-fun m!2658215 () Bool)

(assert (=> d!662815 m!2658215))

(declare-fun m!2658217 () Bool)

(assert (=> b!2217079 m!2658217))

(assert (=> b!2216971 d!662815))

(declare-fun d!662819 () Bool)

(assert (=> d!662819 (= (inv!35144 (tag!4671 (rule!6481 (h!31336 l!6601)))) (= (mod (str.len (value!131890 (tag!4671 (rule!6481 (h!31336 l!6601))))) 2) 0))))

(assert (=> b!2216983 d!662819))

(declare-fun d!662821 () Bool)

(declare-fun res!952217 () Bool)

(declare-fun e!1415696 () Bool)

(assert (=> d!662821 (=> (not res!952217) (not e!1415696))))

(assert (=> d!662821 (= res!952217 (semiInverseModEq!1672 (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601)))) (toValue!5896 (transformation!4181 (rule!6481 (h!31336 l!6601))))))))

(assert (=> d!662821 (= (inv!35147 (transformation!4181 (rule!6481 (h!31336 l!6601)))) e!1415696)))

(declare-fun b!2217081 () Bool)

(assert (=> b!2217081 (= e!1415696 (equivClasses!1599 (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601)))) (toValue!5896 (transformation!4181 (rule!6481 (h!31336 l!6601))))))))

(assert (= (and d!662821 res!952217) b!2217081))

(declare-fun m!2658223 () Bool)

(assert (=> d!662821 m!2658223))

(declare-fun m!2658225 () Bool)

(assert (=> b!2217081 m!2658225))

(assert (=> b!2216983 d!662821))

(declare-fun d!662827 () Bool)

(assert (=> d!662827 (= (inv!35144 (tag!4671 (rule!6481 t2!61))) (= (mod (str.len (value!131890 (tag!4671 (rule!6481 t2!61)))) 2) 0))))

(assert (=> b!2216972 d!662827))

(declare-fun d!662829 () Bool)

(declare-fun res!952219 () Bool)

(declare-fun e!1415698 () Bool)

(assert (=> d!662829 (=> (not res!952219) (not e!1415698))))

(assert (=> d!662829 (= res!952219 (semiInverseModEq!1672 (toChars!5755 (transformation!4181 (rule!6481 t2!61))) (toValue!5896 (transformation!4181 (rule!6481 t2!61)))))))

(assert (=> d!662829 (= (inv!35147 (transformation!4181 (rule!6481 t2!61))) e!1415698)))

(declare-fun b!2217083 () Bool)

(assert (=> b!2217083 (= e!1415698 (equivClasses!1599 (toChars!5755 (transformation!4181 (rule!6481 t2!61))) (toValue!5896 (transformation!4181 (rule!6481 t2!61)))))))

(assert (= (and d!662829 res!952219) b!2217083))

(declare-fun m!2658231 () Bool)

(assert (=> d!662829 m!2658231))

(declare-fun m!2658233 () Bool)

(assert (=> b!2217083 m!2658233))

(assert (=> b!2216972 d!662829))

(declare-fun d!662833 () Bool)

(declare-fun res!952222 () Bool)

(declare-fun e!1415701 () Bool)

(assert (=> d!662833 (=> (not res!952222) (not e!1415701))))

(assert (=> d!662833 (= res!952222 (not (isEmpty!14836 (originalCharacters!4953 t2!61))))))

(assert (=> d!662833 (= (inv!35148 t2!61) e!1415701)))

(declare-fun b!2217086 () Bool)

(declare-fun res!952223 () Bool)

(assert (=> b!2217086 (=> (not res!952223) (not e!1415701))))

(assert (=> b!2217086 (= res!952223 (= (originalCharacters!4953 t2!61) (list!10062 (dynLambda!11484 (toChars!5755 (transformation!4181 (rule!6481 t2!61))) (value!131891 t2!61)))))))

(declare-fun b!2217087 () Bool)

(assert (=> b!2217087 (= e!1415701 (= (size!20243 t2!61) (size!20246 (originalCharacters!4953 t2!61))))))

(assert (= (and d!662833 res!952222) b!2217086))

(assert (= (and b!2217086 res!952223) b!2217087))

(declare-fun b_lambda!71439 () Bool)

(assert (=> (not b_lambda!71439) (not b!2217086)))

(declare-fun tb!132697 () Bool)

(declare-fun t!199198 () Bool)

(assert (=> (and b!2216980 (= (toChars!5755 (transformation!4181 (rule!6481 t1!61))) (toChars!5755 (transformation!4181 (rule!6481 t2!61)))) t!199198) tb!132697))

(declare-fun b!2217088 () Bool)

(declare-fun e!1415702 () Bool)

(declare-fun tp!690439 () Bool)

(assert (=> b!2217088 (= e!1415702 (and (inv!35151 (c!354039 (dynLambda!11484 (toChars!5755 (transformation!4181 (rule!6481 t2!61))) (value!131891 t2!61)))) tp!690439))))

(declare-fun result!160977 () Bool)

(assert (=> tb!132697 (= result!160977 (and (inv!35152 (dynLambda!11484 (toChars!5755 (transformation!4181 (rule!6481 t2!61))) (value!131891 t2!61))) e!1415702))))

(assert (= tb!132697 b!2217088))

(declare-fun m!2658239 () Bool)

(assert (=> b!2217088 m!2658239))

(declare-fun m!2658241 () Bool)

(assert (=> tb!132697 m!2658241))

(assert (=> b!2217086 t!199198))

(declare-fun b_and!174037 () Bool)

(assert (= b_and!174015 (and (=> t!199198 result!160977) b_and!174037)))

(declare-fun t!199200 () Bool)

(declare-fun tb!132699 () Bool)

(assert (=> (and b!2216976 (= (toChars!5755 (transformation!4181 (h!31337 rules!4462))) (toChars!5755 (transformation!4181 (rule!6481 t2!61)))) t!199200) tb!132699))

(declare-fun result!160980 () Bool)

(assert (= result!160980 result!160977))

(assert (=> b!2217086 t!199200))

(declare-fun b_and!174039 () Bool)

(assert (= b_and!174017 (and (=> t!199200 result!160980) b_and!174039)))

(declare-fun tb!132701 () Bool)

(declare-fun t!199202 () Bool)

(assert (=> (and b!2216978 (= (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601)))) (toChars!5755 (transformation!4181 (rule!6481 t2!61)))) t!199202) tb!132701))

(declare-fun result!160982 () Bool)

(assert (= result!160982 result!160977))

(assert (=> b!2217086 t!199202))

(declare-fun b_and!174041 () Bool)

(assert (= b_and!174019 (and (=> t!199202 result!160982) b_and!174041)))

(declare-fun t!199204 () Bool)

(declare-fun tb!132703 () Bool)

(assert (=> (and b!2216973 (= (toChars!5755 (transformation!4181 (rule!6481 t2!61))) (toChars!5755 (transformation!4181 (rule!6481 t2!61)))) t!199204) tb!132703))

(declare-fun result!160984 () Bool)

(assert (= result!160984 result!160977))

(assert (=> b!2217086 t!199204))

(declare-fun b_and!174043 () Bool)

(assert (= b_and!174021 (and (=> t!199204 result!160984) b_and!174043)))

(declare-fun m!2658243 () Bool)

(assert (=> d!662833 m!2658243))

(declare-fun m!2658245 () Bool)

(assert (=> b!2217086 m!2658245))

(assert (=> b!2217086 m!2658245))

(declare-fun m!2658247 () Bool)

(assert (=> b!2217086 m!2658247))

(declare-fun m!2658249 () Bool)

(assert (=> b!2217087 m!2658249))

(assert (=> start!215988 d!662833))

(declare-fun d!662839 () Bool)

(declare-fun res!952224 () Bool)

(declare-fun e!1415703 () Bool)

(assert (=> d!662839 (=> (not res!952224) (not e!1415703))))

(assert (=> d!662839 (= res!952224 (not (isEmpty!14836 (originalCharacters!4953 t1!61))))))

(assert (=> d!662839 (= (inv!35148 t1!61) e!1415703)))

(declare-fun b!2217089 () Bool)

(declare-fun res!952225 () Bool)

(assert (=> b!2217089 (=> (not res!952225) (not e!1415703))))

(assert (=> b!2217089 (= res!952225 (= (originalCharacters!4953 t1!61) (list!10062 (dynLambda!11484 (toChars!5755 (transformation!4181 (rule!6481 t1!61))) (value!131891 t1!61)))))))

(declare-fun b!2217090 () Bool)

(assert (=> b!2217090 (= e!1415703 (= (size!20243 t1!61) (size!20246 (originalCharacters!4953 t1!61))))))

(assert (= (and d!662839 res!952224) b!2217089))

(assert (= (and b!2217089 res!952225) b!2217090))

(declare-fun b_lambda!71443 () Bool)

(assert (=> (not b_lambda!71443) (not b!2217089)))

(declare-fun t!199206 () Bool)

(declare-fun tb!132705 () Bool)

(assert (=> (and b!2216980 (= (toChars!5755 (transformation!4181 (rule!6481 t1!61))) (toChars!5755 (transformation!4181 (rule!6481 t1!61)))) t!199206) tb!132705))

(declare-fun b!2217091 () Bool)

(declare-fun e!1415704 () Bool)

(declare-fun tp!690440 () Bool)

(assert (=> b!2217091 (= e!1415704 (and (inv!35151 (c!354039 (dynLambda!11484 (toChars!5755 (transformation!4181 (rule!6481 t1!61))) (value!131891 t1!61)))) tp!690440))))

(declare-fun result!160986 () Bool)

(assert (=> tb!132705 (= result!160986 (and (inv!35152 (dynLambda!11484 (toChars!5755 (transformation!4181 (rule!6481 t1!61))) (value!131891 t1!61))) e!1415704))))

(assert (= tb!132705 b!2217091))

(declare-fun m!2658251 () Bool)

(assert (=> b!2217091 m!2658251))

(declare-fun m!2658253 () Bool)

(assert (=> tb!132705 m!2658253))

(assert (=> b!2217089 t!199206))

(declare-fun b_and!174045 () Bool)

(assert (= b_and!174037 (and (=> t!199206 result!160986) b_and!174045)))

(declare-fun tb!132707 () Bool)

(declare-fun t!199208 () Bool)

(assert (=> (and b!2216976 (= (toChars!5755 (transformation!4181 (h!31337 rules!4462))) (toChars!5755 (transformation!4181 (rule!6481 t1!61)))) t!199208) tb!132707))

(declare-fun result!160988 () Bool)

(assert (= result!160988 result!160986))

(assert (=> b!2217089 t!199208))

(declare-fun b_and!174047 () Bool)

(assert (= b_and!174039 (and (=> t!199208 result!160988) b_and!174047)))

(declare-fun tb!132709 () Bool)

(declare-fun t!199210 () Bool)

(assert (=> (and b!2216978 (= (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601)))) (toChars!5755 (transformation!4181 (rule!6481 t1!61)))) t!199210) tb!132709))

(declare-fun result!160990 () Bool)

(assert (= result!160990 result!160986))

(assert (=> b!2217089 t!199210))

(declare-fun b_and!174049 () Bool)

(assert (= b_and!174041 (and (=> t!199210 result!160990) b_and!174049)))

(declare-fun t!199212 () Bool)

(declare-fun tb!132711 () Bool)

(assert (=> (and b!2216973 (= (toChars!5755 (transformation!4181 (rule!6481 t2!61))) (toChars!5755 (transformation!4181 (rule!6481 t1!61)))) t!199212) tb!132711))

(declare-fun result!160992 () Bool)

(assert (= result!160992 result!160986))

(assert (=> b!2217089 t!199212))

(declare-fun b_and!174051 () Bool)

(assert (= b_and!174043 (and (=> t!199212 result!160992) b_and!174051)))

(declare-fun m!2658255 () Bool)

(assert (=> d!662839 m!2658255))

(declare-fun m!2658257 () Bool)

(assert (=> b!2217089 m!2658257))

(assert (=> b!2217089 m!2658257))

(declare-fun m!2658259 () Bool)

(assert (=> b!2217089 m!2658259))

(declare-fun m!2658261 () Bool)

(assert (=> b!2217090 m!2658261))

(assert (=> start!215988 d!662839))

(declare-fun d!662841 () Bool)

(declare-fun lt!826858 () Int)

(assert (=> d!662841 (>= lt!826858 0)))

(declare-fun e!1415705 () Int)

(assert (=> d!662841 (= lt!826858 e!1415705)))

(declare-fun c!354061 () Bool)

(assert (=> d!662841 (= c!354061 ((_ is Nil!25935) l!6601))))

(assert (=> d!662841 (= (size!20244 l!6601) lt!826858)))

(declare-fun b!2217092 () Bool)

(assert (=> b!2217092 (= e!1415705 0)))

(declare-fun b!2217093 () Bool)

(assert (=> b!2217093 (= e!1415705 (+ 1 (size!20244 (t!199171 l!6601))))))

(assert (= (and d!662841 c!354061) b!2217092))

(assert (= (and d!662841 (not c!354061)) b!2217093))

(declare-fun m!2658263 () Bool)

(assert (=> b!2217093 m!2658263))

(assert (=> b!2216974 d!662841))

(declare-fun d!662843 () Bool)

(assert (=> d!662843 (= (inv!35144 (tag!4671 (h!31337 rules!4462))) (= (mod (str.len (value!131890 (tag!4671 (h!31337 rules!4462)))) 2) 0))))

(assert (=> b!2216984 d!662843))

(declare-fun d!662845 () Bool)

(declare-fun res!952226 () Bool)

(declare-fun e!1415706 () Bool)

(assert (=> d!662845 (=> (not res!952226) (not e!1415706))))

(assert (=> d!662845 (= res!952226 (semiInverseModEq!1672 (toChars!5755 (transformation!4181 (h!31337 rules!4462))) (toValue!5896 (transformation!4181 (h!31337 rules!4462)))))))

(assert (=> d!662845 (= (inv!35147 (transformation!4181 (h!31337 rules!4462))) e!1415706)))

(declare-fun b!2217094 () Bool)

(assert (=> b!2217094 (= e!1415706 (equivClasses!1599 (toChars!5755 (transformation!4181 (h!31337 rules!4462))) (toValue!5896 (transformation!4181 (h!31337 rules!4462)))))))

(assert (= (and d!662845 res!952226) b!2217094))

(declare-fun m!2658265 () Bool)

(assert (=> d!662845 m!2658265))

(declare-fun m!2658267 () Bool)

(assert (=> b!2217094 m!2658267))

(assert (=> b!2216984 d!662845))

(declare-fun d!662847 () Bool)

(declare-fun lt!826859 () Token!7844)

(assert (=> d!662847 (contains!4305 l!6601 lt!826859)))

(declare-fun e!1415708 () Token!7844)

(assert (=> d!662847 (= lt!826859 e!1415708)))

(declare-fun c!354062 () Bool)

(assert (=> d!662847 (= c!354062 (= (+ 1 i!1797) 0))))

(declare-fun e!1415707 () Bool)

(assert (=> d!662847 e!1415707))

(declare-fun res!952227 () Bool)

(assert (=> d!662847 (=> (not res!952227) (not e!1415707))))

(assert (=> d!662847 (= res!952227 (<= 0 (+ 1 i!1797)))))

(assert (=> d!662847 (= (apply!6427 l!6601 (+ 1 i!1797)) lt!826859)))

(declare-fun b!2217095 () Bool)

(assert (=> b!2217095 (= e!1415707 (< (+ 1 i!1797) (size!20244 l!6601)))))

(declare-fun b!2217096 () Bool)

(assert (=> b!2217096 (= e!1415708 (head!4737 l!6601))))

(declare-fun b!2217097 () Bool)

(assert (=> b!2217097 (= e!1415708 (apply!6427 (tail!3222 l!6601) (- (+ 1 i!1797) 1)))))

(assert (= (and d!662847 res!952227) b!2217095))

(assert (= (and d!662847 c!354062) b!2217096))

(assert (= (and d!662847 (not c!354062)) b!2217097))

(declare-fun m!2658269 () Bool)

(assert (=> d!662847 m!2658269))

(assert (=> b!2217095 m!2658135))

(assert (=> b!2217096 m!2658205))

(assert (=> b!2217097 m!2658141))

(assert (=> b!2217097 m!2658141))

(declare-fun m!2658271 () Bool)

(assert (=> b!2217097 m!2658271))

(assert (=> b!2216975 d!662847))

(declare-fun b!2217108 () Bool)

(declare-fun e!1415716 () Bool)

(declare-fun e!1415717 () Bool)

(assert (=> b!2217108 (= e!1415716 e!1415717)))

(declare-fun c!354068 () Bool)

(assert (=> b!2217108 (= c!354068 ((_ is IntegerValue!12952) (value!131891 t2!61)))))

(declare-fun b!2217109 () Bool)

(assert (=> b!2217109 (= e!1415717 (inv!17 (value!131891 t2!61)))))

(declare-fun b!2217110 () Bool)

(declare-fun e!1415715 () Bool)

(assert (=> b!2217110 (= e!1415715 (inv!15 (value!131891 t2!61)))))

(declare-fun d!662849 () Bool)

(declare-fun c!354067 () Bool)

(assert (=> d!662849 (= c!354067 ((_ is IntegerValue!12951) (value!131891 t2!61)))))

(assert (=> d!662849 (= (inv!21 (value!131891 t2!61)) e!1415716)))

(declare-fun b!2217111 () Bool)

(declare-fun res!952230 () Bool)

(assert (=> b!2217111 (=> res!952230 e!1415715)))

(assert (=> b!2217111 (= res!952230 (not ((_ is IntegerValue!12953) (value!131891 t2!61))))))

(assert (=> b!2217111 (= e!1415717 e!1415715)))

(declare-fun b!2217112 () Bool)

(assert (=> b!2217112 (= e!1415716 (inv!16 (value!131891 t2!61)))))

(assert (= (and d!662849 c!354067) b!2217112))

(assert (= (and d!662849 (not c!354067)) b!2217108))

(assert (= (and b!2217108 c!354068) b!2217109))

(assert (= (and b!2217108 (not c!354068)) b!2217111))

(assert (= (and b!2217111 (not res!952230)) b!2217110))

(declare-fun m!2658273 () Bool)

(assert (=> b!2217109 m!2658273))

(declare-fun m!2658275 () Bool)

(assert (=> b!2217110 m!2658275))

(declare-fun m!2658277 () Bool)

(assert (=> b!2217112 m!2658277))

(assert (=> b!2216987 d!662849))

(declare-fun b!2217117 () Bool)

(declare-fun e!1415720 () Bool)

(declare-fun tp_is_empty!9823 () Bool)

(declare-fun tp!690443 () Bool)

(assert (=> b!2217117 (= e!1415720 (and tp_is_empty!9823 tp!690443))))

(assert (=> b!2216967 (= tp!690417 e!1415720)))

(assert (= (and b!2216967 ((_ is Cons!25934) (originalCharacters!4953 (h!31336 l!6601)))) b!2217117))

(declare-fun b!2217118 () Bool)

(declare-fun e!1415721 () Bool)

(declare-fun tp!690444 () Bool)

(assert (=> b!2217118 (= e!1415721 (and tp_is_empty!9823 tp!690444))))

(assert (=> b!2216977 (= tp!690431 e!1415721)))

(assert (= (and b!2216977 ((_ is Cons!25934) (originalCharacters!4953 t1!61))) b!2217118))

(declare-fun b!2217160 () Bool)

(declare-fun b_free!64169 () Bool)

(declare-fun b_next!64873 () Bool)

(assert (=> b!2217160 (= b_free!64169 (not b_next!64873))))

(declare-fun tp!690460 () Bool)

(declare-fun b_and!174069 () Bool)

(assert (=> b!2217160 (= tp!690460 b_and!174069)))

(declare-fun b_free!64171 () Bool)

(declare-fun b_next!64875 () Bool)

(assert (=> b!2217160 (= b_free!64171 (not b_next!64875))))

(declare-fun t!199230 () Bool)

(declare-fun tb!132729 () Bool)

(assert (=> (and b!2217160 (= (toChars!5755 (transformation!4181 (rule!6481 (h!31336 (t!199171 l!6601))))) (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601))))) t!199230) tb!132729))

(declare-fun result!161016 () Bool)

(assert (= result!161016 result!160952))

(assert (=> b!2217025 t!199230))

(declare-fun tb!132731 () Bool)

(declare-fun t!199232 () Bool)

(assert (=> (and b!2217160 (= (toChars!5755 (transformation!4181 (rule!6481 (h!31336 (t!199171 l!6601))))) (toChars!5755 (transformation!4181 (rule!6481 t2!61)))) t!199232) tb!132731))

(declare-fun result!161018 () Bool)

(assert (= result!161018 result!160977))

(assert (=> b!2217086 t!199232))

(declare-fun tb!132733 () Bool)

(declare-fun t!199234 () Bool)

(assert (=> (and b!2217160 (= (toChars!5755 (transformation!4181 (rule!6481 (h!31336 (t!199171 l!6601))))) (toChars!5755 (transformation!4181 (rule!6481 t1!61)))) t!199234) tb!132733))

(declare-fun result!161020 () Bool)

(assert (= result!161020 result!160986))

(assert (=> b!2217089 t!199234))

(declare-fun b_and!174071 () Bool)

(declare-fun tp!690459 () Bool)

(assert (=> b!2217160 (= tp!690459 (and (=> t!199230 result!161016) (=> t!199232 result!161018) (=> t!199234 result!161020) b_and!174071))))

(declare-fun e!1415752 () Bool)

(assert (=> b!2217160 (= e!1415752 (and tp!690460 tp!690459))))

(declare-fun b!2217157 () Bool)

(declare-fun tp!690458 () Bool)

(declare-fun e!1415754 () Bool)

(declare-fun e!1415756 () Bool)

(assert (=> b!2217157 (= e!1415756 (and (inv!35148 (h!31336 (t!199171 l!6601))) e!1415754 tp!690458))))

(assert (=> b!2216979 (= tp!690430 e!1415756)))

(declare-fun b!2217158 () Bool)

(declare-fun tp!690457 () Bool)

(declare-fun e!1415753 () Bool)

(assert (=> b!2217158 (= e!1415754 (and (inv!21 (value!131891 (h!31336 (t!199171 l!6601)))) e!1415753 tp!690457))))

(declare-fun b!2217159 () Bool)

(declare-fun tp!690461 () Bool)

(assert (=> b!2217159 (= e!1415753 (and tp!690461 (inv!35144 (tag!4671 (rule!6481 (h!31336 (t!199171 l!6601))))) (inv!35147 (transformation!4181 (rule!6481 (h!31336 (t!199171 l!6601))))) e!1415752))))

(assert (= b!2217159 b!2217160))

(assert (= b!2217158 b!2217159))

(assert (= b!2217157 b!2217158))

(assert (= (and b!2216979 ((_ is Cons!25935) (t!199171 l!6601))) b!2217157))

(declare-fun m!2658335 () Bool)

(assert (=> b!2217157 m!2658335))

(declare-fun m!2658337 () Bool)

(assert (=> b!2217158 m!2658337))

(declare-fun m!2658339 () Bool)

(assert (=> b!2217159 m!2658339))

(declare-fun m!2658341 () Bool)

(assert (=> b!2217159 m!2658341))

(declare-fun b!2217183 () Bool)

(declare-fun e!1415772 () Bool)

(declare-fun tp!690486 () Bool)

(assert (=> b!2217183 (= e!1415772 tp!690486)))

(declare-fun b!2217181 () Bool)

(assert (=> b!2217181 (= e!1415772 tp_is_empty!9823)))

(declare-fun b!2217184 () Bool)

(declare-fun tp!690483 () Bool)

(declare-fun tp!690482 () Bool)

(assert (=> b!2217184 (= e!1415772 (and tp!690483 tp!690482))))

(assert (=> b!2216971 (= tp!690416 e!1415772)))

(declare-fun b!2217182 () Bool)

(declare-fun tp!690484 () Bool)

(declare-fun tp!690485 () Bool)

(assert (=> b!2217182 (= e!1415772 (and tp!690484 tp!690485))))

(assert (= (and b!2216971 ((_ is ElementMatch!6325) (regex!4181 (rule!6481 t1!61)))) b!2217181))

(assert (= (and b!2216971 ((_ is Concat!10643) (regex!4181 (rule!6481 t1!61)))) b!2217182))

(assert (= (and b!2216971 ((_ is Star!6325) (regex!4181 (rule!6481 t1!61)))) b!2217183))

(assert (= (and b!2216971 ((_ is Union!6325) (regex!4181 (rule!6481 t1!61)))) b!2217184))

(declare-fun b!2217191 () Bool)

(declare-fun e!1415779 () Bool)

(declare-fun tp!690496 () Bool)

(assert (=> b!2217191 (= e!1415779 tp!690496)))

(declare-fun b!2217189 () Bool)

(assert (=> b!2217189 (= e!1415779 tp_is_empty!9823)))

(declare-fun b!2217192 () Bool)

(declare-fun tp!690493 () Bool)

(declare-fun tp!690492 () Bool)

(assert (=> b!2217192 (= e!1415779 (and tp!690493 tp!690492))))

(assert (=> b!2216983 (= tp!690415 e!1415779)))

(declare-fun b!2217190 () Bool)

(declare-fun tp!690494 () Bool)

(declare-fun tp!690495 () Bool)

(assert (=> b!2217190 (= e!1415779 (and tp!690494 tp!690495))))

(assert (= (and b!2216983 ((_ is ElementMatch!6325) (regex!4181 (rule!6481 (h!31336 l!6601))))) b!2217189))

(assert (= (and b!2216983 ((_ is Concat!10643) (regex!4181 (rule!6481 (h!31336 l!6601))))) b!2217190))

(assert (= (and b!2216983 ((_ is Star!6325) (regex!4181 (rule!6481 (h!31336 l!6601))))) b!2217191))

(assert (= (and b!2216983 ((_ is Union!6325) (regex!4181 (rule!6481 (h!31336 l!6601))))) b!2217192))

(declare-fun b!2217195 () Bool)

(declare-fun e!1415780 () Bool)

(declare-fun tp!690501 () Bool)

(assert (=> b!2217195 (= e!1415780 tp!690501)))

(declare-fun b!2217193 () Bool)

(assert (=> b!2217193 (= e!1415780 tp_is_empty!9823)))

(declare-fun b!2217196 () Bool)

(declare-fun tp!690498 () Bool)

(declare-fun tp!690497 () Bool)

(assert (=> b!2217196 (= e!1415780 (and tp!690498 tp!690497))))

(assert (=> b!2216972 (= tp!690421 e!1415780)))

(declare-fun b!2217194 () Bool)

(declare-fun tp!690499 () Bool)

(declare-fun tp!690500 () Bool)

(assert (=> b!2217194 (= e!1415780 (and tp!690499 tp!690500))))

(assert (= (and b!2216972 ((_ is ElementMatch!6325) (regex!4181 (rule!6481 t2!61)))) b!2217193))

(assert (= (and b!2216972 ((_ is Concat!10643) (regex!4181 (rule!6481 t2!61)))) b!2217194))

(assert (= (and b!2216972 ((_ is Star!6325) (regex!4181 (rule!6481 t2!61)))) b!2217195))

(assert (= (and b!2216972 ((_ is Union!6325) (regex!4181 (rule!6481 t2!61)))) b!2217196))

(declare-fun b!2217199 () Bool)

(declare-fun e!1415781 () Bool)

(declare-fun tp!690506 () Bool)

(assert (=> b!2217199 (= e!1415781 tp!690506)))

(declare-fun b!2217197 () Bool)

(assert (=> b!2217197 (= e!1415781 tp_is_empty!9823)))

(declare-fun b!2217200 () Bool)

(declare-fun tp!690503 () Bool)

(declare-fun tp!690502 () Bool)

(assert (=> b!2217200 (= e!1415781 (and tp!690503 tp!690502))))

(assert (=> b!2216984 (= tp!690425 e!1415781)))

(declare-fun b!2217198 () Bool)

(declare-fun tp!690504 () Bool)

(declare-fun tp!690505 () Bool)

(assert (=> b!2217198 (= e!1415781 (and tp!690504 tp!690505))))

(assert (= (and b!2216984 ((_ is ElementMatch!6325) (regex!4181 (h!31337 rules!4462)))) b!2217197))

(assert (= (and b!2216984 ((_ is Concat!10643) (regex!4181 (h!31337 rules!4462)))) b!2217198))

(assert (= (and b!2216984 ((_ is Star!6325) (regex!4181 (h!31337 rules!4462)))) b!2217199))

(assert (= (and b!2216984 ((_ is Union!6325) (regex!4181 (h!31337 rules!4462)))) b!2217200))

(declare-fun b!2217248 () Bool)

(declare-fun b_free!64177 () Bool)

(declare-fun b_next!64881 () Bool)

(assert (=> b!2217248 (= b_free!64177 (not b_next!64881))))

(declare-fun tp!690552 () Bool)

(declare-fun b_and!174077 () Bool)

(assert (=> b!2217248 (= tp!690552 b_and!174077)))

(declare-fun b_free!64179 () Bool)

(declare-fun b_next!64883 () Bool)

(assert (=> b!2217248 (= b_free!64179 (not b_next!64883))))

(declare-fun t!199242 () Bool)

(declare-fun tb!132741 () Bool)

(assert (=> (and b!2217248 (= (toChars!5755 (transformation!4181 (h!31337 (t!199172 rules!4462)))) (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601))))) t!199242) tb!132741))

(declare-fun result!161038 () Bool)

(assert (= result!161038 result!160952))

(assert (=> b!2217025 t!199242))

(declare-fun t!199244 () Bool)

(declare-fun tb!132743 () Bool)

(assert (=> (and b!2217248 (= (toChars!5755 (transformation!4181 (h!31337 (t!199172 rules!4462)))) (toChars!5755 (transformation!4181 (rule!6481 t2!61)))) t!199244) tb!132743))

(declare-fun result!161040 () Bool)

(assert (= result!161040 result!160977))

(assert (=> b!2217086 t!199244))

(declare-fun tb!132745 () Bool)

(declare-fun t!199246 () Bool)

(assert (=> (and b!2217248 (= (toChars!5755 (transformation!4181 (h!31337 (t!199172 rules!4462)))) (toChars!5755 (transformation!4181 (rule!6481 t1!61)))) t!199246) tb!132745))

(declare-fun result!161042 () Bool)

(assert (= result!161042 result!160986))

(assert (=> b!2217089 t!199246))

(declare-fun b_and!174079 () Bool)

(declare-fun tp!690551 () Bool)

(assert (=> b!2217248 (= tp!690551 (and (=> t!199242 result!161038) (=> t!199244 result!161040) (=> t!199246 result!161042) b_and!174079))))

(declare-fun e!1415802 () Bool)

(assert (=> b!2217248 (= e!1415802 (and tp!690552 tp!690551))))

(declare-fun e!1415803 () Bool)

(declare-fun tp!690550 () Bool)

(declare-fun b!2217247 () Bool)

(assert (=> b!2217247 (= e!1415803 (and tp!690550 (inv!35144 (tag!4671 (h!31337 (t!199172 rules!4462)))) (inv!35147 (transformation!4181 (h!31337 (t!199172 rules!4462)))) e!1415802))))

(declare-fun b!2217244 () Bool)

(declare-fun e!1415804 () Bool)

(declare-fun tp!690553 () Bool)

(assert (=> b!2217244 (= e!1415804 (and e!1415803 tp!690553))))

(assert (=> b!2216985 (= tp!690428 e!1415804)))

(assert (= b!2217247 b!2217248))

(assert (= b!2217244 b!2217247))

(assert (= (and b!2216985 ((_ is Cons!25936) (t!199172 rules!4462))) b!2217244))

(declare-fun m!2658351 () Bool)

(assert (=> b!2217247 m!2658351))

(declare-fun m!2658353 () Bool)

(assert (=> b!2217247 m!2658353))

(declare-fun b!2217253 () Bool)

(declare-fun e!1415813 () Bool)

(declare-fun tp!690562 () Bool)

(assert (=> b!2217253 (= e!1415813 (and tp_is_empty!9823 tp!690562))))

(assert (=> b!2216987 (= tp!690422 e!1415813)))

(assert (= (and b!2216987 ((_ is Cons!25934) (originalCharacters!4953 t2!61))) b!2217253))

(declare-fun b_lambda!71449 () Bool)

(assert (= b_lambda!71439 (or (and b!2216976 b_free!64157 (= (toChars!5755 (transformation!4181 (h!31337 rules!4462))) (toChars!5755 (transformation!4181 (rule!6481 t2!61))))) (and b!2216980 b_free!64153 (= (toChars!5755 (transformation!4181 (rule!6481 t1!61))) (toChars!5755 (transformation!4181 (rule!6481 t2!61))))) (and b!2217248 b_free!64179 (= (toChars!5755 (transformation!4181 (h!31337 (t!199172 rules!4462)))) (toChars!5755 (transformation!4181 (rule!6481 t2!61))))) (and b!2216973 b_free!64165) (and b!2217160 b_free!64171 (= (toChars!5755 (transformation!4181 (rule!6481 (h!31336 (t!199171 l!6601))))) (toChars!5755 (transformation!4181 (rule!6481 t2!61))))) (and b!2216978 b_free!64161 (= (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601)))) (toChars!5755 (transformation!4181 (rule!6481 t2!61))))) b_lambda!71449)))

(declare-fun b_lambda!71451 () Bool)

(assert (= b_lambda!71431 (or (and b!2216978 b_free!64161) (and b!2216980 b_free!64153 (= (toChars!5755 (transformation!4181 (rule!6481 t1!61))) (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601)))))) (and b!2216976 b_free!64157 (= (toChars!5755 (transformation!4181 (h!31337 rules!4462))) (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601)))))) (and b!2216973 b_free!64165 (= (toChars!5755 (transformation!4181 (rule!6481 t2!61))) (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601)))))) (and b!2217160 b_free!64171 (= (toChars!5755 (transformation!4181 (rule!6481 (h!31336 (t!199171 l!6601))))) (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601)))))) (and b!2217248 b_free!64179 (= (toChars!5755 (transformation!4181 (h!31337 (t!199172 rules!4462)))) (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601)))))) b_lambda!71451)))

(declare-fun b_lambda!71453 () Bool)

(assert (= b_lambda!71443 (or (and b!2217160 b_free!64171 (= (toChars!5755 (transformation!4181 (rule!6481 (h!31336 (t!199171 l!6601))))) (toChars!5755 (transformation!4181 (rule!6481 t1!61))))) (and b!2216976 b_free!64157 (= (toChars!5755 (transformation!4181 (h!31337 rules!4462))) (toChars!5755 (transformation!4181 (rule!6481 t1!61))))) (and b!2216978 b_free!64161 (= (toChars!5755 (transformation!4181 (rule!6481 (h!31336 l!6601)))) (toChars!5755 (transformation!4181 (rule!6481 t1!61))))) (and b!2216980 b_free!64153) (and b!2217248 b_free!64179 (= (toChars!5755 (transformation!4181 (h!31337 (t!199172 rules!4462)))) (toChars!5755 (transformation!4181 (rule!6481 t1!61))))) (and b!2216973 b_free!64165 (= (toChars!5755 (transformation!4181 (rule!6481 t2!61))) (toChars!5755 (transformation!4181 (rule!6481 t1!61))))) b_lambda!71453)))

(declare-fun b_lambda!71455 () Bool)

(assert (= b_lambda!71437 (or (and start!215988 b_free!64167) b_lambda!71455)))

(declare-fun b_lambda!71457 () Bool)

(assert (= b_lambda!71433 (or (and start!215988 b_free!64167) b_lambda!71457)))

(check-sat (not d!662815) b_and!173995 (not tb!132675) b_and!174049 (not b!2217095) (not b_next!64871) (not b!2217086) b_and!174033 (not tb!132705) b_and!174007 b_and!174051 (not b!2217247) (not b!2217093) (not b!2217117) (not b!2217025) (not b!2217096) (not b!2217183) (not d!662829) (not b!2217031) b_and!174077 (not b_lambda!71457) (not b_next!64859) (not d!662803) (not b_next!64857) (not b!2217192) (not b!2217253) b_and!174069 (not d!662839) (not b_lambda!71451) (not b!2217003) (not b!2217109) (not b!2217083) (not b_next!64865) (not b!2217087) (not b_next!64855) b_and!174071 (not b!2217009) (not b!2217089) (not b!2217066) (not b!2217065) (not b_next!64867) (not b!2217079) tp_is_empty!9823 (not d!662847) (not b!2217091) (not b_lambda!71453) (not b!2217068) (not b!2217159) b_and!174045 (not d!662833) (not b!2217244) b_and!174047 (not b!2217118) (not b!2217182) b_and!174079 (not b!2217012) (not b_next!64873) (not tb!132697) (not b!2217000) (not b!2217090) b_and!173999 (not b_next!64861) (not b!2217011) (not b!2217088) (not b!2217191) (not b!2217194) (not b_lambda!71455) (not b!2217001) (not b!2217184) (not b!2217046) (not b_next!64875) (not b!2217026) (not b_next!64863) (not b_next!64881) (not b_next!64869) (not b!2217112) (not b!2217081) (not b!2217064) (not b!2217195) (not b!2217157) (not b_next!64883) (not b!2217200) b_and!174003 (not b!2217190) (not b!2217097) (not b!2217110) (not d!662821) (not b!2217158) (not b!2217199) (not b!2217196) (not b!2217014) (not b!2217198) (not b_lambda!71449) (not d!662795) (not d!662845) (not b!2217094))
(check-sat b_and!173995 (not b_next!64857) b_and!174069 b_and!174049 (not b_next!64867) (not b_next!64873) (not b_next!64875) (not b_next!64871) b_and!174033 b_and!174007 b_and!174051 b_and!174077 (not b_next!64859) (not b_next!64865) (not b_next!64855) b_and!174071 b_and!174045 b_and!174047 b_and!174079 b_and!173999 (not b_next!64861) (not b_next!64863) (not b_next!64881) (not b_next!64869) (not b_next!64883) b_and!174003)
