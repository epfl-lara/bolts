; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!375116 () Bool)

(assert start!375116)

(declare-fun b!3986189 () Bool)

(declare-fun b_free!110705 () Bool)

(declare-fun b_next!111409 () Bool)

(assert (=> b!3986189 (= b_free!110705 (not b_next!111409))))

(declare-fun tp!1214745 () Bool)

(declare-fun b_and!306335 () Bool)

(assert (=> b!3986189 (= tp!1214745 b_and!306335)))

(declare-fun b_free!110707 () Bool)

(declare-fun b_next!111411 () Bool)

(assert (=> b!3986189 (= b_free!110707 (not b_next!111411))))

(declare-fun tp!1214742 () Bool)

(declare-fun b_and!306337 () Bool)

(assert (=> b!3986189 (= tp!1214742 b_and!306337)))

(declare-fun b!3986184 () Bool)

(declare-fun b_free!110709 () Bool)

(declare-fun b_next!111413 () Bool)

(assert (=> b!3986184 (= b_free!110709 (not b_next!111413))))

(declare-fun tp!1214741 () Bool)

(declare-fun b_and!306339 () Bool)

(assert (=> b!3986184 (= tp!1214741 b_and!306339)))

(declare-fun b_free!110711 () Bool)

(declare-fun b_next!111415 () Bool)

(assert (=> b!3986184 (= b_free!110711 (not b_next!111415))))

(declare-fun tp!1214735 () Bool)

(declare-fun b_and!306341 () Bool)

(assert (=> b!3986184 (= tp!1214735 b_and!306341)))

(declare-fun b!3986157 () Bool)

(declare-fun e!2470780 () Bool)

(declare-fun e!2470764 () Bool)

(assert (=> b!3986157 (= e!2470780 e!2470764)))

(declare-fun res!1616747 () Bool)

(assert (=> b!3986157 (=> res!1616747 e!2470764)))

(declare-datatypes ((C!23480 0))(
  ( (C!23481 (val!13834 Int)) )
))
(declare-datatypes ((List!42758 0))(
  ( (Nil!42634) (Cons!42634 (h!48054 C!23480) (t!331557 List!42758)) )
))
(declare-fun lt!1403166 () List!42758)

(declare-fun prefix!494 () List!42758)

(assert (=> b!3986157 (= res!1616747 (not (= lt!1403166 prefix!494)))))

(declare-fun lt!1403143 () List!42758)

(declare-fun lt!1403170 () List!42758)

(declare-fun ++!11144 (List!42758 List!42758) List!42758)

(assert (=> b!3986157 (= lt!1403166 (++!11144 lt!1403143 lt!1403170))))

(declare-fun getSuffix!2260 (List!42758 List!42758) List!42758)

(assert (=> b!3986157 (= lt!1403170 (getSuffix!2260 prefix!494 lt!1403143))))

(declare-fun isPrefix!3829 (List!42758 List!42758) Bool)

(assert (=> b!3986157 (isPrefix!3829 lt!1403143 prefix!494)))

(declare-datatypes ((Unit!61327 0))(
  ( (Unit!61328) )
))
(declare-fun lt!1403183 () Unit!61327)

(declare-fun lt!1403180 () List!42758)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!407 (List!42758 List!42758 List!42758) Unit!61327)

(assert (=> b!3986157 (= lt!1403183 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!407 prefix!494 lt!1403143 lt!1403180))))

(declare-fun b!3986158 () Bool)

(declare-fun e!2470761 () Bool)

(declare-fun e!2470758 () Bool)

(assert (=> b!3986158 (= e!2470761 e!2470758)))

(declare-fun res!1616761 () Bool)

(assert (=> b!3986158 (=> (not res!1616761) (not e!2470758))))

(declare-fun lt!1403138 () List!42758)

(declare-fun lt!1403142 () List!42758)

(assert (=> b!3986158 (= res!1616761 (= lt!1403138 lt!1403142))))

(declare-fun newSuffix!27 () List!42758)

(assert (=> b!3986158 (= lt!1403142 (++!11144 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42758)

(assert (=> b!3986158 (= lt!1403138 (++!11144 lt!1403143 newSuffixResult!27))))

(declare-datatypes ((IArray!25911 0))(
  ( (IArray!25912 (innerList!13013 List!42758)) )
))
(declare-datatypes ((Conc!12953 0))(
  ( (Node!12953 (left!32226 Conc!12953) (right!32556 Conc!12953) (csize!26136 Int) (cheight!13164 Int)) (Leaf!20031 (xs!16259 IArray!25911) (csize!26137 Int)) (Empty!12953) )
))
(declare-datatypes ((BalanceConc!25500 0))(
  ( (BalanceConc!25501 (c!690140 Conc!12953)) )
))
(declare-datatypes ((List!42759 0))(
  ( (Nil!42635) (Cons!42635 (h!48055 (_ BitVec 16)) (t!331558 List!42759)) )
))
(declare-datatypes ((TokenValue!6972 0))(
  ( (FloatLiteralValue!13944 (text!49249 List!42759)) (TokenValueExt!6971 (__x!26161 Int)) (Broken!34860 (value!212755 List!42759)) (Object!7095) (End!6972) (Def!6972) (Underscore!6972) (Match!6972) (Else!6972) (Error!6972) (Case!6972) (If!6972) (Extends!6972) (Abstract!6972) (Class!6972) (Val!6972) (DelimiterValue!13944 (del!7032 List!42759)) (KeywordValue!6978 (value!212756 List!42759)) (CommentValue!13944 (value!212757 List!42759)) (WhitespaceValue!13944 (value!212758 List!42759)) (IndentationValue!6972 (value!212759 List!42759)) (String!48577) (Int32!6972) (Broken!34861 (value!212760 List!42759)) (Boolean!6973) (Unit!61329) (OperatorValue!6975 (op!7032 List!42759)) (IdentifierValue!13944 (value!212761 List!42759)) (IdentifierValue!13945 (value!212762 List!42759)) (WhitespaceValue!13945 (value!212763 List!42759)) (True!13944) (False!13944) (Broken!34862 (value!212764 List!42759)) (Broken!34863 (value!212765 List!42759)) (True!13945) (RightBrace!6972) (RightBracket!6972) (Colon!6972) (Null!6972) (Comma!6972) (LeftBracket!6972) (False!13945) (LeftBrace!6972) (ImaginaryLiteralValue!6972 (text!49250 List!42759)) (StringLiteralValue!20916 (value!212766 List!42759)) (EOFValue!6972 (value!212767 List!42759)) (IdentValue!6972 (value!212768 List!42759)) (DelimiterValue!13945 (value!212769 List!42759)) (DedentValue!6972 (value!212770 List!42759)) (NewLineValue!6972 (value!212771 List!42759)) (IntegerValue!20916 (value!212772 (_ BitVec 32)) (text!49251 List!42759)) (IntegerValue!20917 (value!212773 Int) (text!49252 List!42759)) (Times!6972) (Or!6972) (Equal!6972) (Minus!6972) (Broken!34864 (value!212774 List!42759)) (And!6972) (Div!6972) (LessEqual!6972) (Mod!6972) (Concat!18619) (Not!6972) (Plus!6972) (SpaceValue!6972 (value!212775 List!42759)) (IntegerValue!20918 (value!212776 Int) (text!49253 List!42759)) (StringLiteralValue!20917 (text!49254 List!42759)) (FloatLiteralValue!13945 (text!49255 List!42759)) (BytesLiteralValue!6972 (value!212777 List!42759)) (CommentValue!13945 (value!212778 List!42759)) (StringLiteralValue!20918 (value!212779 List!42759)) (ErrorTokenValue!6972 (msg!7033 List!42759)) )
))
(declare-datatypes ((Regex!11647 0))(
  ( (ElementMatch!11647 (c!690141 C!23480)) (Concat!18620 (regOne!23806 Regex!11647) (regTwo!23806 Regex!11647)) (EmptyExpr!11647) (Star!11647 (reg!11976 Regex!11647)) (EmptyLang!11647) (Union!11647 (regOne!23807 Regex!11647) (regTwo!23807 Regex!11647)) )
))
(declare-datatypes ((String!48578 0))(
  ( (String!48579 (value!212780 String)) )
))
(declare-datatypes ((TokenValueInjection!13372 0))(
  ( (TokenValueInjection!13373 (toValue!9230 Int) (toChars!9089 Int)) )
))
(declare-datatypes ((Rule!13284 0))(
  ( (Rule!13285 (regex!6742 Regex!11647) (tag!7602 String!48578) (isSeparator!6742 Bool) (transformation!6742 TokenValueInjection!13372)) )
))
(declare-datatypes ((Token!12622 0))(
  ( (Token!12623 (value!212781 TokenValue!6972) (rule!9754 Rule!13284) (size!31888 Int) (originalCharacters!7342 List!42758)) )
))
(declare-fun token!484 () Token!12622)

(declare-fun tp!1214734 () Bool)

(declare-fun b!3986159 () Bool)

(declare-fun e!2470762 () Bool)

(declare-fun e!2470774 () Bool)

(declare-fun inv!56945 (String!48578) Bool)

(declare-fun inv!56948 (TokenValueInjection!13372) Bool)

(assert (=> b!3986159 (= e!2470774 (and tp!1214734 (inv!56945 (tag!7602 (rule!9754 token!484))) (inv!56948 (transformation!6742 (rule!9754 token!484))) e!2470762))))

(declare-fun b!3986160 () Bool)

(declare-fun res!1616754 () Bool)

(declare-fun e!2470754 () Bool)

(assert (=> b!3986160 (=> res!1616754 e!2470754)))

(declare-fun lt!1403154 () List!42758)

(assert (=> b!3986160 (= res!1616754 (not (= lt!1403154 lt!1403142)))))

(declare-fun b!3986161 () Bool)

(declare-fun e!2470771 () Bool)

(declare-fun e!2470777 () Bool)

(assert (=> b!3986161 (= e!2470771 (not e!2470777))))

(declare-fun res!1616748 () Bool)

(assert (=> b!3986161 (=> res!1616748 e!2470777)))

(declare-fun lt!1403162 () List!42758)

(assert (=> b!3986161 (= res!1616748 (not (= lt!1403162 lt!1403180)))))

(declare-fun suffixResult!105 () List!42758)

(assert (=> b!3986161 (= lt!1403162 (++!11144 lt!1403143 suffixResult!105))))

(declare-fun lt!1403148 () Unit!61327)

(declare-fun lemmaInv!957 (TokenValueInjection!13372) Unit!61327)

(assert (=> b!3986161 (= lt!1403148 (lemmaInv!957 (transformation!6742 (rule!9754 token!484))))))

(declare-datatypes ((LexerInterface!6331 0))(
  ( (LexerInterfaceExt!6328 (__x!26162 Int)) (Lexer!6329) )
))
(declare-fun thiss!21717 () LexerInterface!6331)

(declare-fun ruleValid!2674 (LexerInterface!6331 Rule!13284) Bool)

(assert (=> b!3986161 (ruleValid!2674 thiss!21717 (rule!9754 token!484))))

(declare-datatypes ((List!42760 0))(
  ( (Nil!42636) (Cons!42636 (h!48056 Rule!13284) (t!331559 List!42760)) )
))
(declare-fun rules!2999 () List!42760)

(declare-fun lt!1403165 () Unit!61327)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1748 (LexerInterface!6331 Rule!13284 List!42760) Unit!61327)

(assert (=> b!3986161 (= lt!1403165 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1748 thiss!21717 (rule!9754 token!484) rules!2999))))

(declare-fun b!3986162 () Bool)

(declare-fun e!2470770 () Bool)

(declare-fun e!2470775 () Bool)

(declare-fun tp!1214744 () Bool)

(assert (=> b!3986162 (= e!2470770 (and e!2470775 tp!1214744))))

(declare-fun b!3986164 () Bool)

(declare-fun e!2470779 () Unit!61327)

(declare-fun Unit!61330 () Unit!61327)

(assert (=> b!3986164 (= e!2470779 Unit!61330)))

(declare-fun b!3986165 () Bool)

(declare-fun e!2470782 () Bool)

(declare-fun e!2470773 () Bool)

(assert (=> b!3986165 (= e!2470782 e!2470773)))

(declare-fun res!1616765 () Bool)

(assert (=> b!3986165 (=> res!1616765 e!2470773)))

(declare-datatypes ((tuple2!41844 0))(
  ( (tuple2!41845 (_1!24056 Token!12622) (_2!24056 List!42758)) )
))
(declare-datatypes ((Option!9156 0))(
  ( (None!9155) (Some!9155 (v!39507 tuple2!41844)) )
))
(declare-fun lt!1403189 () Option!9156)

(get-info :version)

(assert (=> b!3986165 (= res!1616765 (not ((_ is Some!9155) lt!1403189)))))

(declare-fun maxPrefix!3629 (LexerInterface!6331 List!42760 List!42758) Option!9156)

(assert (=> b!3986165 (= lt!1403189 (maxPrefix!3629 thiss!21717 rules!2999 lt!1403142))))

(declare-fun lt!1403134 () tuple2!41844)

(declare-fun lt!1403159 () List!42758)

(declare-fun lt!1403164 () Token!12622)

(assert (=> b!3986165 (and (= suffixResult!105 lt!1403159) (= lt!1403134 (tuple2!41845 lt!1403164 lt!1403159)))))

(declare-fun lt!1403147 () Unit!61327)

(declare-fun lemmaSamePrefixThenSameSuffix!2016 (List!42758 List!42758 List!42758 List!42758 List!42758) Unit!61327)

(assert (=> b!3986165 (= lt!1403147 (lemmaSamePrefixThenSameSuffix!2016 lt!1403143 suffixResult!105 lt!1403143 lt!1403159 lt!1403180))))

(declare-fun lt!1403160 () List!42758)

(assert (=> b!3986165 (isPrefix!3829 lt!1403143 lt!1403160)))

(declare-fun lt!1403179 () Unit!61327)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2672 (List!42758 List!42758) Unit!61327)

(assert (=> b!3986165 (= lt!1403179 (lemmaConcatTwoListThenFirstIsPrefix!2672 lt!1403143 lt!1403159))))

(declare-fun b!3986166 () Bool)

(declare-fun e!2470752 () Bool)

(assert (=> b!3986166 (= e!2470764 e!2470752)))

(declare-fun res!1616755 () Bool)

(assert (=> b!3986166 (=> res!1616755 e!2470752)))

(declare-fun lt!1403192 () List!42758)

(declare-fun lt!1403172 () List!42758)

(assert (=> b!3986166 (= res!1616755 (or (not (= lt!1403180 lt!1403172)) (not (= lt!1403180 lt!1403192))))))

(assert (=> b!3986166 (= lt!1403172 lt!1403192)))

(declare-fun lt!1403153 () List!42758)

(assert (=> b!3986166 (= lt!1403192 (++!11144 lt!1403143 lt!1403153))))

(declare-fun suffix!1299 () List!42758)

(assert (=> b!3986166 (= lt!1403172 (++!11144 lt!1403166 suffix!1299))))

(assert (=> b!3986166 (= lt!1403153 (++!11144 lt!1403170 suffix!1299))))

(declare-fun lt!1403185 () Unit!61327)

(declare-fun lemmaConcatAssociativity!2464 (List!42758 List!42758 List!42758) Unit!61327)

(assert (=> b!3986166 (= lt!1403185 (lemmaConcatAssociativity!2464 lt!1403143 lt!1403170 suffix!1299))))

(declare-fun b!3986167 () Bool)

(declare-fun e!2470759 () Bool)

(assert (=> b!3986167 (= e!2470759 false)))

(declare-fun b!3986168 () Bool)

(declare-fun e!2470765 () Bool)

(assert (=> b!3986168 (= e!2470765 e!2470782)))

(declare-fun res!1616750 () Bool)

(assert (=> b!3986168 (=> res!1616750 e!2470782)))

(assert (=> b!3986168 (= res!1616750 (not (= lt!1403160 lt!1403180)))))

(assert (=> b!3986168 (= lt!1403160 (++!11144 lt!1403143 lt!1403159))))

(assert (=> b!3986168 (= lt!1403159 (getSuffix!2260 lt!1403180 lt!1403143))))

(declare-fun e!2470769 () Bool)

(assert (=> b!3986168 e!2470769))

(declare-fun res!1616751 () Bool)

(assert (=> b!3986168 (=> (not res!1616751) (not e!2470769))))

(assert (=> b!3986168 (= res!1616751 (isPrefix!3829 lt!1403180 lt!1403180))))

(declare-fun lt!1403150 () Unit!61327)

(declare-fun lemmaIsPrefixRefl!2421 (List!42758 List!42758) Unit!61327)

(assert (=> b!3986168 (= lt!1403150 (lemmaIsPrefixRefl!2421 lt!1403180 lt!1403180))))

(declare-fun b!3986169 () Bool)

(declare-fun e!2470781 () Bool)

(declare-fun tp_is_empty!20265 () Bool)

(declare-fun tp!1214737 () Bool)

(assert (=> b!3986169 (= e!2470781 (and tp_is_empty!20265 tp!1214737))))

(declare-fun b!3986170 () Bool)

(declare-fun e!2470751 () Bool)

(declare-fun tp!1214743 () Bool)

(assert (=> b!3986170 (= e!2470751 (and tp_is_empty!20265 tp!1214743))))

(declare-fun b!3986171 () Bool)

(declare-fun e!2470772 () Bool)

(assert (=> b!3986171 (= e!2470772 e!2470761)))

(declare-fun res!1616759 () Bool)

(assert (=> b!3986171 (=> (not res!1616759) (not e!2470761))))

(declare-fun lt!1403152 () Int)

(declare-fun lt!1403171 () Int)

(assert (=> b!3986171 (= res!1616759 (>= lt!1403152 lt!1403171))))

(declare-fun size!31889 (List!42758) Int)

(assert (=> b!3986171 (= lt!1403171 (size!31889 lt!1403143))))

(assert (=> b!3986171 (= lt!1403152 (size!31889 prefix!494))))

(declare-fun list!15826 (BalanceConc!25500) List!42758)

(declare-fun charsOf!4558 (Token!12622) BalanceConc!25500)

(assert (=> b!3986171 (= lt!1403143 (list!15826 (charsOf!4558 token!484)))))

(declare-fun b!3986172 () Bool)

(declare-fun e!2470760 () Bool)

(assert (=> b!3986172 (= e!2470760 e!2470765)))

(declare-fun res!1616744 () Bool)

(assert (=> b!3986172 (=> res!1616744 e!2470765)))

(declare-fun matchR!5624 (Regex!11647 List!42758) Bool)

(assert (=> b!3986172 (= res!1616744 (not (matchR!5624 (regex!6742 (rule!9754 token!484)) lt!1403143)))))

(assert (=> b!3986172 (isPrefix!3829 lt!1403143 lt!1403142)))

(declare-fun lt!1403193 () Unit!61327)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!662 (List!42758 List!42758 List!42758) Unit!61327)

(assert (=> b!3986172 (= lt!1403193 (lemmaPrefixStaysPrefixWhenAddingToSuffix!662 lt!1403143 prefix!494 newSuffix!27))))

(declare-fun lt!1403151 () Unit!61327)

(assert (=> b!3986172 (= lt!1403151 (lemmaPrefixStaysPrefixWhenAddingToSuffix!662 lt!1403143 prefix!494 suffix!1299))))

(declare-fun b!3986173 () Bool)

(declare-fun e!2470778 () Bool)

(declare-fun tp!1214736 () Bool)

(assert (=> b!3986173 (= e!2470778 (and tp_is_empty!20265 tp!1214736))))

(declare-fun b!3986174 () Bool)

(declare-fun e!2470750 () Bool)

(declare-fun tp!1214740 () Bool)

(assert (=> b!3986174 (= e!2470750 (and tp_is_empty!20265 tp!1214740))))

(declare-fun b!3986175 () Bool)

(declare-fun Unit!61331 () Unit!61327)

(assert (=> b!3986175 (= e!2470779 Unit!61331)))

(declare-fun lt!1403181 () Unit!61327)

(declare-fun lt!1403161 () List!42758)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!396 (LexerInterface!6331 List!42760 Rule!13284 List!42758 List!42758 List!42758 Rule!13284) Unit!61327)

(assert (=> b!3986175 (= lt!1403181 (lemmaMaxPrefixOutputsMaxPrefix!396 thiss!21717 rules!2999 (rule!9754 (_1!24056 (v!39507 lt!1403189))) lt!1403161 lt!1403142 lt!1403143 (rule!9754 token!484)))))

(assert (=> b!3986175 false))

(declare-fun b!3986176 () Bool)

(assert (=> b!3986176 (= e!2470777 e!2470780)))

(declare-fun res!1616758 () Bool)

(assert (=> b!3986176 (=> res!1616758 e!2470780)))

(assert (=> b!3986176 (= res!1616758 (not (isPrefix!3829 lt!1403143 lt!1403180)))))

(assert (=> b!3986176 (isPrefix!3829 prefix!494 lt!1403180)))

(declare-fun lt!1403136 () Unit!61327)

(assert (=> b!3986176 (= lt!1403136 (lemmaConcatTwoListThenFirstIsPrefix!2672 prefix!494 suffix!1299))))

(assert (=> b!3986176 (isPrefix!3829 lt!1403143 lt!1403162)))

(declare-fun lt!1403174 () Unit!61327)

(assert (=> b!3986176 (= lt!1403174 (lemmaConcatTwoListThenFirstIsPrefix!2672 lt!1403143 suffixResult!105))))

(declare-fun b!3986177 () Bool)

(declare-fun e!2470753 () Bool)

(declare-fun e!2470766 () Bool)

(assert (=> b!3986177 (= e!2470753 e!2470766)))

(declare-fun res!1616756 () Bool)

(assert (=> b!3986177 (=> res!1616756 e!2470766)))

(declare-fun lt!1403167 () Int)

(assert (=> b!3986177 (= res!1616756 (not (= lt!1403171 lt!1403167)))))

(declare-fun lt!1403188 () Unit!61327)

(assert (=> b!3986177 (= lt!1403188 e!2470779)))

(declare-fun c!690139 () Bool)

(assert (=> b!3986177 (= c!690139 (< lt!1403167 lt!1403171))))

(declare-fun lt!1403141 () Unit!61327)

(declare-fun e!2470748 () Unit!61327)

(assert (=> b!3986177 (= lt!1403141 e!2470748)))

(declare-fun c!690138 () Bool)

(assert (=> b!3986177 (= c!690138 (> lt!1403167 lt!1403171))))

(declare-fun lt!1403178 () List!42758)

(assert (=> b!3986177 (= (_2!24056 (v!39507 lt!1403189)) lt!1403178)))

(declare-fun lt!1403176 () Unit!61327)

(assert (=> b!3986177 (= lt!1403176 (lemmaSamePrefixThenSameSuffix!2016 lt!1403161 (_2!24056 (v!39507 lt!1403189)) lt!1403161 lt!1403178 lt!1403142))))

(declare-fun lt!1403169 () List!42758)

(assert (=> b!3986177 (isPrefix!3829 lt!1403161 lt!1403169)))

(declare-fun lt!1403173 () Unit!61327)

(assert (=> b!3986177 (= lt!1403173 (lemmaConcatTwoListThenFirstIsPrefix!2672 lt!1403161 lt!1403178))))

(declare-fun b!3986178 () Bool)

(declare-fun e!2470747 () Bool)

(assert (=> b!3986178 (= e!2470747 e!2470754)))

(declare-fun res!1616764 () Bool)

(assert (=> b!3986178 (=> res!1616764 e!2470754)))

(assert (=> b!3986178 (= res!1616764 (not (isPrefix!3829 lt!1403161 lt!1403180)))))

(declare-fun lt!1403191 () List!42758)

(assert (=> b!3986178 (isPrefix!3829 lt!1403161 lt!1403191)))

(declare-fun lt!1403156 () List!42758)

(declare-fun lt!1403135 () Unit!61327)

(assert (=> b!3986178 (= lt!1403135 (lemmaPrefixStaysPrefixWhenAddingToSuffix!662 lt!1403161 lt!1403142 lt!1403156))))

(declare-fun b!3986179 () Bool)

(declare-fun res!1616763 () Bool)

(assert (=> b!3986179 (=> (not res!1616763) (not e!2470769))))

(declare-fun lt!1403144 () TokenValue!6972)

(assert (=> b!3986179 (= res!1616763 (= (value!212781 token!484) lt!1403144))))

(declare-fun res!1616752 () Bool)

(assert (=> start!375116 (=> (not res!1616752) (not e!2470772))))

(assert (=> start!375116 (= res!1616752 ((_ is Lexer!6329) thiss!21717))))

(assert (=> start!375116 e!2470772))

(assert (=> start!375116 e!2470751))

(declare-fun e!2470755 () Bool)

(declare-fun inv!56949 (Token!12622) Bool)

(assert (=> start!375116 (and (inv!56949 token!484) e!2470755)))

(declare-fun e!2470749 () Bool)

(assert (=> start!375116 e!2470749))

(assert (=> start!375116 e!2470750))

(assert (=> start!375116 e!2470781))

(assert (=> start!375116 true))

(assert (=> start!375116 e!2470770))

(assert (=> start!375116 e!2470778))

(declare-fun b!3986163 () Bool)

(assert (=> b!3986163 (= e!2470752 e!2470760)))

(declare-fun res!1616766 () Bool)

(assert (=> b!3986163 (=> res!1616766 e!2470760)))

(declare-fun lt!1403140 () Option!9156)

(declare-fun lt!1403146 () Option!9156)

(assert (=> b!3986163 (= res!1616766 (not (= lt!1403140 lt!1403146)))))

(assert (=> b!3986163 (= lt!1403140 (Some!9155 (tuple2!41845 lt!1403164 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2663 (LexerInterface!6331 Rule!13284 List!42758) Option!9156)

(assert (=> b!3986163 (= lt!1403140 (maxPrefixOneRule!2663 thiss!21717 (rule!9754 token!484) lt!1403180))))

(assert (=> b!3986163 (= lt!1403164 (Token!12623 lt!1403144 (rule!9754 token!484) lt!1403171 lt!1403143))))

(declare-fun apply!9953 (TokenValueInjection!13372 BalanceConc!25500) TokenValue!6972)

(declare-fun seqFromList!4981 (List!42758) BalanceConc!25500)

(assert (=> b!3986163 (= lt!1403144 (apply!9953 (transformation!6742 (rule!9754 token!484)) (seqFromList!4981 lt!1403143)))))

(declare-fun lt!1403187 () Unit!61327)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1485 (LexerInterface!6331 List!42760 List!42758 List!42758 List!42758 Rule!13284) Unit!61327)

(assert (=> b!3986163 (= lt!1403187 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1485 thiss!21717 rules!2999 lt!1403143 lt!1403180 suffixResult!105 (rule!9754 token!484)))))

(assert (=> b!3986163 (= lt!1403153 suffixResult!105)))

(declare-fun lt!1403139 () Unit!61327)

(assert (=> b!3986163 (= lt!1403139 (lemmaSamePrefixThenSameSuffix!2016 lt!1403143 lt!1403153 lt!1403143 suffixResult!105 lt!1403180))))

(assert (=> b!3986163 (isPrefix!3829 lt!1403143 lt!1403192)))

(declare-fun lt!1403175 () Unit!61327)

(assert (=> b!3986163 (= lt!1403175 (lemmaConcatTwoListThenFirstIsPrefix!2672 lt!1403143 lt!1403153))))

(declare-fun b!3986180 () Bool)

(declare-fun Unit!61332 () Unit!61327)

(assert (=> b!3986180 (= e!2470748 Unit!61332)))

(declare-fun lt!1403168 () Unit!61327)

(assert (=> b!3986180 (= lt!1403168 (lemmaMaxPrefixOutputsMaxPrefix!396 thiss!21717 rules!2999 (rule!9754 token!484) lt!1403143 lt!1403180 lt!1403161 (rule!9754 (_1!24056 (v!39507 lt!1403189)))))))

(declare-fun res!1616757 () Bool)

(assert (=> b!3986180 (= res!1616757 (not (matchR!5624 (regex!6742 (rule!9754 (_1!24056 (v!39507 lt!1403189)))) lt!1403161)))))

(assert (=> b!3986180 (=> (not res!1616757) (not e!2470759))))

(assert (=> b!3986180 e!2470759))

(declare-fun b!3986181 () Bool)

(declare-fun e!2470767 () Bool)

(assert (=> b!3986181 (= e!2470773 e!2470767)))

(declare-fun res!1616760 () Bool)

(assert (=> b!3986181 (=> res!1616760 e!2470767)))

(declare-fun lt!1403184 () Option!9156)

(assert (=> b!3986181 (= res!1616760 (not (= lt!1403184 (Some!9155 (v!39507 lt!1403189)))))))

(assert (=> b!3986181 (isPrefix!3829 lt!1403161 (++!11144 lt!1403161 newSuffixResult!27))))

(declare-fun lt!1403137 () Unit!61327)

(assert (=> b!3986181 (= lt!1403137 (lemmaConcatTwoListThenFirstIsPrefix!2672 lt!1403161 newSuffixResult!27))))

(assert (=> b!3986181 (isPrefix!3829 lt!1403161 lt!1403154)))

(assert (=> b!3986181 (= lt!1403154 (++!11144 lt!1403161 (_2!24056 (v!39507 lt!1403189))))))

(declare-fun lt!1403186 () Unit!61327)

(assert (=> b!3986181 (= lt!1403186 (lemmaConcatTwoListThenFirstIsPrefix!2672 lt!1403161 (_2!24056 (v!39507 lt!1403189))))))

(declare-fun lt!1403155 () TokenValue!6972)

(assert (=> b!3986181 (= lt!1403184 (Some!9155 (tuple2!41845 (Token!12623 lt!1403155 (rule!9754 (_1!24056 (v!39507 lt!1403189))) lt!1403167 lt!1403161) (_2!24056 (v!39507 lt!1403189)))))))

(assert (=> b!3986181 (= lt!1403184 (maxPrefixOneRule!2663 thiss!21717 (rule!9754 (_1!24056 (v!39507 lt!1403189))) lt!1403142))))

(assert (=> b!3986181 (= lt!1403167 (size!31889 lt!1403161))))

(assert (=> b!3986181 (= lt!1403155 (apply!9953 (transformation!6742 (rule!9754 (_1!24056 (v!39507 lt!1403189)))) (seqFromList!4981 lt!1403161)))))

(declare-fun lt!1403158 () Unit!61327)

(assert (=> b!3986181 (= lt!1403158 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1485 thiss!21717 rules!2999 lt!1403161 lt!1403142 (_2!24056 (v!39507 lt!1403189)) (rule!9754 (_1!24056 (v!39507 lt!1403189)))))))

(assert (=> b!3986181 (= lt!1403161 (list!15826 (charsOf!4558 (_1!24056 (v!39507 lt!1403189)))))))

(declare-fun lt!1403190 () Unit!61327)

(assert (=> b!3986181 (= lt!1403190 (lemmaInv!957 (transformation!6742 (rule!9754 (_1!24056 (v!39507 lt!1403189))))))))

(assert (=> b!3986181 (ruleValid!2674 thiss!21717 (rule!9754 (_1!24056 (v!39507 lt!1403189))))))

(declare-fun lt!1403157 () Unit!61327)

(assert (=> b!3986181 (= lt!1403157 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1748 thiss!21717 (rule!9754 (_1!24056 (v!39507 lt!1403189))) rules!2999))))

(declare-fun lt!1403182 () Unit!61327)

(declare-fun lemmaCharactersSize!1337 (Token!12622) Unit!61327)

(assert (=> b!3986181 (= lt!1403182 (lemmaCharactersSize!1337 token!484))))

(declare-fun lt!1403177 () Unit!61327)

(assert (=> b!3986181 (= lt!1403177 (lemmaCharactersSize!1337 (_1!24056 (v!39507 lt!1403189))))))

(declare-fun b!3986182 () Bool)

(declare-fun tp!1214746 () Bool)

(assert (=> b!3986182 (= e!2470749 (and tp_is_empty!20265 tp!1214746))))

(declare-fun b!3986183 () Bool)

(declare-fun res!1616762 () Bool)

(assert (=> b!3986183 (=> (not res!1616762) (not e!2470772))))

(assert (=> b!3986183 (= res!1616762 (>= (size!31889 suffix!1299) (size!31889 newSuffix!27)))))

(declare-fun e!2470756 () Bool)

(assert (=> b!3986184 (= e!2470756 (and tp!1214741 tp!1214735))))

(declare-fun b!3986185 () Bool)

(declare-fun e!2470776 () Bool)

(assert (=> b!3986185 (= e!2470776 e!2470747)))

(declare-fun res!1616743 () Bool)

(assert (=> b!3986185 (=> res!1616743 e!2470747)))

(assert (=> b!3986185 (= res!1616743 (not (= lt!1403191 lt!1403180)))))

(declare-fun lt!1403145 () List!42758)

(assert (=> b!3986185 (= lt!1403191 (++!11144 prefix!494 lt!1403145))))

(assert (=> b!3986185 (= lt!1403191 (++!11144 lt!1403142 lt!1403156))))

(declare-fun lt!1403163 () Unit!61327)

(assert (=> b!3986185 (= lt!1403163 (lemmaConcatAssociativity!2464 prefix!494 newSuffix!27 lt!1403156))))

(declare-fun b!3986186 () Bool)

(assert (=> b!3986186 (= e!2470754 e!2470753)))

(declare-fun res!1616742 () Bool)

(assert (=> b!3986186 (=> res!1616742 e!2470753)))

(assert (=> b!3986186 (= res!1616742 (not (= lt!1403169 lt!1403142)))))

(assert (=> b!3986186 (= lt!1403169 (++!11144 lt!1403161 lt!1403178))))

(assert (=> b!3986186 (= lt!1403178 (getSuffix!2260 lt!1403142 lt!1403161))))

(declare-fun b!3986187 () Bool)

(declare-fun res!1616767 () Bool)

(assert (=> b!3986187 (=> (not res!1616767) (not e!2470769))))

(assert (=> b!3986187 (= res!1616767 (= (size!31888 token!484) (size!31889 (originalCharacters!7342 token!484))))))

(declare-fun b!3986188 () Bool)

(declare-fun Unit!61333 () Unit!61327)

(assert (=> b!3986188 (= e!2470748 Unit!61333)))

(assert (=> b!3986189 (= e!2470762 (and tp!1214745 tp!1214742))))

(declare-fun b!3986190 () Bool)

(assert (=> b!3986190 (= e!2470769 (and (= (size!31888 token!484) lt!1403171) (= (originalCharacters!7342 token!484) lt!1403143)))))

(declare-fun b!3986191 () Bool)

(declare-fun res!1616749 () Bool)

(assert (=> b!3986191 (=> (not res!1616749) (not e!2470772))))

(declare-fun isEmpty!25482 (List!42760) Bool)

(assert (=> b!3986191 (= res!1616749 (not (isEmpty!25482 rules!2999)))))

(declare-fun b!3986192 () Bool)

(assert (=> b!3986192 (= e!2470766 true)))

(declare-fun lt!1403149 () Bool)

(assert (=> b!3986192 (= lt!1403149 (isPrefix!3829 lt!1403161 lt!1403142))))

(declare-fun b!3986193 () Bool)

(assert (=> b!3986193 (= e!2470758 e!2470771)))

(declare-fun res!1616746 () Bool)

(assert (=> b!3986193 (=> (not res!1616746) (not e!2470771))))

(assert (=> b!3986193 (= res!1616746 (= (maxPrefix!3629 thiss!21717 rules!2999 lt!1403180) lt!1403146))))

(assert (=> b!3986193 (= lt!1403146 (Some!9155 lt!1403134))))

(assert (=> b!3986193 (= lt!1403134 (tuple2!41845 token!484 suffixResult!105))))

(assert (=> b!3986193 (= lt!1403180 (++!11144 prefix!494 suffix!1299))))

(declare-fun b!3986194 () Bool)

(assert (=> b!3986194 (= e!2470767 e!2470776)))

(declare-fun res!1616768 () Bool)

(assert (=> b!3986194 (=> res!1616768 e!2470776)))

(assert (=> b!3986194 (= res!1616768 (not (= lt!1403145 suffix!1299)))))

(assert (=> b!3986194 (= lt!1403145 (++!11144 newSuffix!27 lt!1403156))))

(assert (=> b!3986194 (= lt!1403156 (getSuffix!2260 suffix!1299 newSuffix!27))))

(declare-fun b!3986195 () Bool)

(declare-fun res!1616753 () Bool)

(assert (=> b!3986195 (=> (not res!1616753) (not e!2470772))))

(assert (=> b!3986195 (= res!1616753 (isPrefix!3829 newSuffix!27 suffix!1299))))

(declare-fun tp!1214738 () Bool)

(declare-fun b!3986196 () Bool)

(assert (=> b!3986196 (= e!2470775 (and tp!1214738 (inv!56945 (tag!7602 (h!48056 rules!2999))) (inv!56948 (transformation!6742 (h!48056 rules!2999))) e!2470756))))

(declare-fun b!3986197 () Bool)

(declare-fun res!1616745 () Bool)

(assert (=> b!3986197 (=> (not res!1616745) (not e!2470772))))

(declare-fun rulesInvariant!5674 (LexerInterface!6331 List!42760) Bool)

(assert (=> b!3986197 (= res!1616745 (rulesInvariant!5674 thiss!21717 rules!2999))))

(declare-fun tp!1214739 () Bool)

(declare-fun b!3986198 () Bool)

(declare-fun inv!21 (TokenValue!6972) Bool)

(assert (=> b!3986198 (= e!2470755 (and (inv!21 (value!212781 token!484)) e!2470774 tp!1214739))))

(assert (= (and start!375116 res!1616752) b!3986191))

(assert (= (and b!3986191 res!1616749) b!3986197))

(assert (= (and b!3986197 res!1616745) b!3986183))

(assert (= (and b!3986183 res!1616762) b!3986195))

(assert (= (and b!3986195 res!1616753) b!3986171))

(assert (= (and b!3986171 res!1616759) b!3986158))

(assert (= (and b!3986158 res!1616761) b!3986193))

(assert (= (and b!3986193 res!1616746) b!3986161))

(assert (= (and b!3986161 (not res!1616748)) b!3986176))

(assert (= (and b!3986176 (not res!1616758)) b!3986157))

(assert (= (and b!3986157 (not res!1616747)) b!3986166))

(assert (= (and b!3986166 (not res!1616755)) b!3986163))

(assert (= (and b!3986163 (not res!1616766)) b!3986172))

(assert (= (and b!3986172 (not res!1616744)) b!3986168))

(assert (= (and b!3986168 res!1616751) b!3986179))

(assert (= (and b!3986179 res!1616763) b!3986187))

(assert (= (and b!3986187 res!1616767) b!3986190))

(assert (= (and b!3986168 (not res!1616750)) b!3986165))

(assert (= (and b!3986165 (not res!1616765)) b!3986181))

(assert (= (and b!3986181 (not res!1616760)) b!3986194))

(assert (= (and b!3986194 (not res!1616768)) b!3986185))

(assert (= (and b!3986185 (not res!1616743)) b!3986178))

(assert (= (and b!3986178 (not res!1616764)) b!3986160))

(assert (= (and b!3986160 (not res!1616754)) b!3986186))

(assert (= (and b!3986186 (not res!1616742)) b!3986177))

(assert (= (and b!3986177 c!690138) b!3986180))

(assert (= (and b!3986177 (not c!690138)) b!3986188))

(assert (= (and b!3986180 res!1616757) b!3986167))

(assert (= (and b!3986177 c!690139) b!3986175))

(assert (= (and b!3986177 (not c!690139)) b!3986164))

(assert (= (and b!3986177 (not res!1616756)) b!3986192))

(assert (= (and start!375116 ((_ is Cons!42634) prefix!494)) b!3986170))

(assert (= b!3986159 b!3986189))

(assert (= b!3986198 b!3986159))

(assert (= start!375116 b!3986198))

(assert (= (and start!375116 ((_ is Cons!42634) suffixResult!105)) b!3986182))

(assert (= (and start!375116 ((_ is Cons!42634) suffix!1299)) b!3986174))

(assert (= (and start!375116 ((_ is Cons!42634) newSuffix!27)) b!3986169))

(assert (= b!3986196 b!3986184))

(assert (= b!3986162 b!3986196))

(assert (= (and start!375116 ((_ is Cons!42636) rules!2999)) b!3986162))

(assert (= (and start!375116 ((_ is Cons!42634) newSuffixResult!27)) b!3986173))

(declare-fun m!4562351 () Bool)

(assert (=> b!3986185 m!4562351))

(declare-fun m!4562353 () Bool)

(assert (=> b!3986185 m!4562353))

(declare-fun m!4562355 () Bool)

(assert (=> b!3986185 m!4562355))

(declare-fun m!4562357 () Bool)

(assert (=> b!3986158 m!4562357))

(declare-fun m!4562359 () Bool)

(assert (=> b!3986158 m!4562359))

(declare-fun m!4562361 () Bool)

(assert (=> b!3986176 m!4562361))

(declare-fun m!4562363 () Bool)

(assert (=> b!3986176 m!4562363))

(declare-fun m!4562365 () Bool)

(assert (=> b!3986176 m!4562365))

(declare-fun m!4562367 () Bool)

(assert (=> b!3986176 m!4562367))

(declare-fun m!4562369 () Bool)

(assert (=> b!3986176 m!4562369))

(declare-fun m!4562371 () Bool)

(assert (=> b!3986197 m!4562371))

(declare-fun m!4562373 () Bool)

(assert (=> b!3986168 m!4562373))

(declare-fun m!4562375 () Bool)

(assert (=> b!3986168 m!4562375))

(declare-fun m!4562377 () Bool)

(assert (=> b!3986168 m!4562377))

(declare-fun m!4562379 () Bool)

(assert (=> b!3986168 m!4562379))

(declare-fun m!4562381 () Bool)

(assert (=> b!3986198 m!4562381))

(declare-fun m!4562383 () Bool)

(assert (=> b!3986166 m!4562383))

(declare-fun m!4562385 () Bool)

(assert (=> b!3986166 m!4562385))

(declare-fun m!4562387 () Bool)

(assert (=> b!3986166 m!4562387))

(declare-fun m!4562389 () Bool)

(assert (=> b!3986166 m!4562389))

(declare-fun m!4562391 () Bool)

(assert (=> b!3986180 m!4562391))

(declare-fun m!4562393 () Bool)

(assert (=> b!3986180 m!4562393))

(declare-fun m!4562395 () Bool)

(assert (=> b!3986165 m!4562395))

(declare-fun m!4562397 () Bool)

(assert (=> b!3986165 m!4562397))

(declare-fun m!4562399 () Bool)

(assert (=> b!3986165 m!4562399))

(declare-fun m!4562401 () Bool)

(assert (=> b!3986165 m!4562401))

(declare-fun m!4562403 () Bool)

(assert (=> b!3986178 m!4562403))

(declare-fun m!4562405 () Bool)

(assert (=> b!3986178 m!4562405))

(declare-fun m!4562407 () Bool)

(assert (=> b!3986178 m!4562407))

(declare-fun m!4562409 () Bool)

(assert (=> b!3986171 m!4562409))

(declare-fun m!4562411 () Bool)

(assert (=> b!3986171 m!4562411))

(declare-fun m!4562413 () Bool)

(assert (=> b!3986171 m!4562413))

(assert (=> b!3986171 m!4562413))

(declare-fun m!4562415 () Bool)

(assert (=> b!3986171 m!4562415))

(declare-fun m!4562417 () Bool)

(assert (=> b!3986195 m!4562417))

(declare-fun m!4562419 () Bool)

(assert (=> b!3986183 m!4562419))

(declare-fun m!4562421 () Bool)

(assert (=> b!3986183 m!4562421))

(declare-fun m!4562423 () Bool)

(assert (=> b!3986181 m!4562423))

(declare-fun m!4562425 () Bool)

(assert (=> b!3986181 m!4562425))

(declare-fun m!4562427 () Bool)

(assert (=> b!3986181 m!4562427))

(declare-fun m!4562429 () Bool)

(assert (=> b!3986181 m!4562429))

(declare-fun m!4562431 () Bool)

(assert (=> b!3986181 m!4562431))

(declare-fun m!4562433 () Bool)

(assert (=> b!3986181 m!4562433))

(declare-fun m!4562435 () Bool)

(assert (=> b!3986181 m!4562435))

(declare-fun m!4562437 () Bool)

(assert (=> b!3986181 m!4562437))

(assert (=> b!3986181 m!4562437))

(declare-fun m!4562439 () Bool)

(assert (=> b!3986181 m!4562439))

(declare-fun m!4562441 () Bool)

(assert (=> b!3986181 m!4562441))

(declare-fun m!4562443 () Bool)

(assert (=> b!3986181 m!4562443))

(declare-fun m!4562445 () Bool)

(assert (=> b!3986181 m!4562445))

(declare-fun m!4562447 () Bool)

(assert (=> b!3986181 m!4562447))

(declare-fun m!4562449 () Bool)

(assert (=> b!3986181 m!4562449))

(declare-fun m!4562451 () Bool)

(assert (=> b!3986181 m!4562451))

(declare-fun m!4562453 () Bool)

(assert (=> b!3986181 m!4562453))

(assert (=> b!3986181 m!4562449))

(declare-fun m!4562455 () Bool)

(assert (=> b!3986181 m!4562455))

(assert (=> b!3986181 m!4562443))

(declare-fun m!4562457 () Bool)

(assert (=> b!3986181 m!4562457))

(declare-fun m!4562459 () Bool)

(assert (=> b!3986177 m!4562459))

(declare-fun m!4562461 () Bool)

(assert (=> b!3986177 m!4562461))

(declare-fun m!4562463 () Bool)

(assert (=> b!3986177 m!4562463))

(declare-fun m!4562465 () Bool)

(assert (=> b!3986192 m!4562465))

(declare-fun m!4562467 () Bool)

(assert (=> b!3986161 m!4562467))

(declare-fun m!4562469 () Bool)

(assert (=> b!3986161 m!4562469))

(declare-fun m!4562471 () Bool)

(assert (=> b!3986161 m!4562471))

(declare-fun m!4562473 () Bool)

(assert (=> b!3986161 m!4562473))

(declare-fun m!4562475 () Bool)

(assert (=> b!3986193 m!4562475))

(declare-fun m!4562477 () Bool)

(assert (=> b!3986193 m!4562477))

(declare-fun m!4562479 () Bool)

(assert (=> b!3986175 m!4562479))

(declare-fun m!4562481 () Bool)

(assert (=> b!3986172 m!4562481))

(declare-fun m!4562483 () Bool)

(assert (=> b!3986172 m!4562483))

(declare-fun m!4562485 () Bool)

(assert (=> b!3986172 m!4562485))

(declare-fun m!4562487 () Bool)

(assert (=> b!3986172 m!4562487))

(declare-fun m!4562489 () Bool)

(assert (=> b!3986191 m!4562489))

(declare-fun m!4562491 () Bool)

(assert (=> b!3986186 m!4562491))

(declare-fun m!4562493 () Bool)

(assert (=> b!3986186 m!4562493))

(declare-fun m!4562495 () Bool)

(assert (=> b!3986157 m!4562495))

(declare-fun m!4562497 () Bool)

(assert (=> b!3986157 m!4562497))

(declare-fun m!4562499 () Bool)

(assert (=> b!3986157 m!4562499))

(declare-fun m!4562501 () Bool)

(assert (=> b!3986157 m!4562501))

(declare-fun m!4562503 () Bool)

(assert (=> b!3986187 m!4562503))

(declare-fun m!4562505 () Bool)

(assert (=> b!3986196 m!4562505))

(declare-fun m!4562507 () Bool)

(assert (=> b!3986196 m!4562507))

(declare-fun m!4562509 () Bool)

(assert (=> b!3986159 m!4562509))

(declare-fun m!4562511 () Bool)

(assert (=> b!3986159 m!4562511))

(declare-fun m!4562513 () Bool)

(assert (=> b!3986163 m!4562513))

(declare-fun m!4562515 () Bool)

(assert (=> b!3986163 m!4562515))

(declare-fun m!4562517 () Bool)

(assert (=> b!3986163 m!4562517))

(assert (=> b!3986163 m!4562513))

(declare-fun m!4562519 () Bool)

(assert (=> b!3986163 m!4562519))

(declare-fun m!4562521 () Bool)

(assert (=> b!3986163 m!4562521))

(declare-fun m!4562523 () Bool)

(assert (=> b!3986163 m!4562523))

(declare-fun m!4562525 () Bool)

(assert (=> b!3986163 m!4562525))

(declare-fun m!4562527 () Bool)

(assert (=> start!375116 m!4562527))

(declare-fun m!4562529 () Bool)

(assert (=> b!3986194 m!4562529))

(declare-fun m!4562531 () Bool)

(assert (=> b!3986194 m!4562531))

(check-sat (not b!3986174) (not b!3986182) b_and!306339 (not b_next!111409) (not b!3986192) (not b!3986181) (not b!3986168) (not b!3986194) (not b!3986175) (not b!3986186) (not b!3986170) (not b!3986158) b_and!306337 (not b!3986171) b_and!306335 (not b!3986157) (not b!3986169) (not b!3986180) (not b!3986198) (not b!3986176) b_and!306341 tp_is_empty!20265 (not b!3986187) (not b!3986185) (not b!3986193) (not start!375116) (not b!3986162) (not b!3986178) (not b_next!111413) (not b!3986159) (not b!3986165) (not b!3986172) (not b!3986173) (not b!3986196) (not b!3986195) (not b!3986163) (not b_next!111411) (not b!3986197) (not b!3986191) (not b!3986161) (not b!3986177) (not b!3986183) (not b_next!111415) (not b!3986166))
(check-sat b_and!306335 b_and!306341 b_and!306339 (not b_next!111409) (not b_next!111413) (not b_next!111411) b_and!306337 (not b_next!111415))
