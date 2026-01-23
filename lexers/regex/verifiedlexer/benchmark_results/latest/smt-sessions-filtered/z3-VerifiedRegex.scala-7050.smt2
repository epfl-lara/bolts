; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374104 () Bool)

(assert start!374104)

(declare-fun b!3974839 () Bool)

(declare-fun b_free!110209 () Bool)

(declare-fun b_next!110913 () Bool)

(assert (=> b!3974839 (= b_free!110209 (not b_next!110913))))

(declare-fun tp!1211932 () Bool)

(declare-fun b_and!305551 () Bool)

(assert (=> b!3974839 (= tp!1211932 b_and!305551)))

(declare-fun b_free!110211 () Bool)

(declare-fun b_next!110915 () Bool)

(assert (=> b!3974839 (= b_free!110211 (not b_next!110915))))

(declare-fun tp!1211940 () Bool)

(declare-fun b_and!305553 () Bool)

(assert (=> b!3974839 (= tp!1211940 b_and!305553)))

(declare-fun b!3974857 () Bool)

(declare-fun b_free!110213 () Bool)

(declare-fun b_next!110917 () Bool)

(assert (=> b!3974857 (= b_free!110213 (not b_next!110917))))

(declare-fun tp!1211929 () Bool)

(declare-fun b_and!305555 () Bool)

(assert (=> b!3974857 (= tp!1211929 b_and!305555)))

(declare-fun b_free!110215 () Bool)

(declare-fun b_next!110919 () Bool)

(assert (=> b!3974857 (= b_free!110215 (not b_next!110919))))

(declare-fun tp!1211930 () Bool)

(declare-fun b_and!305557 () Bool)

(assert (=> b!3974857 (= tp!1211930 b_and!305557)))

(declare-fun b!3974834 () Bool)

(declare-fun e!2462614 () Bool)

(declare-fun tp_is_empty!20157 () Bool)

(declare-fun tp!1211935 () Bool)

(assert (=> b!3974834 (= e!2462614 (and tp_is_empty!20157 tp!1211935))))

(declare-fun b!3974835 () Bool)

(declare-fun e!2462604 () Bool)

(declare-fun tp!1211934 () Bool)

(assert (=> b!3974835 (= e!2462604 (and tp_is_empty!20157 tp!1211934))))

(declare-fun b!3974836 () Bool)

(declare-fun e!2462620 () Bool)

(declare-fun e!2462618 () Bool)

(assert (=> b!3974836 (= e!2462620 e!2462618)))

(declare-fun res!1609615 () Bool)

(assert (=> b!3974836 (=> res!1609615 e!2462618)))

(declare-datatypes ((C!23372 0))(
  ( (C!23373 (val!13780 Int)) )
))
(declare-datatypes ((List!42580 0))(
  ( (Nil!42456) (Cons!42456 (h!47876 C!23372) (t!331043 List!42580)) )
))
(declare-fun lt!1393241 () List!42580)

(declare-fun lt!1393236 () List!42580)

(declare-fun isPrefix!3775 (List!42580 List!42580) Bool)

(assert (=> b!3974836 (= res!1609615 (not (isPrefix!3775 lt!1393241 lt!1393236)))))

(declare-fun prefix!494 () List!42580)

(assert (=> b!3974836 (isPrefix!3775 prefix!494 lt!1393236)))

(declare-datatypes ((Unit!61106 0))(
  ( (Unit!61107) )
))
(declare-fun lt!1393262 () Unit!61106)

(declare-fun suffix!1299 () List!42580)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2618 (List!42580 List!42580) Unit!61106)

(assert (=> b!3974836 (= lt!1393262 (lemmaConcatTwoListThenFirstIsPrefix!2618 prefix!494 suffix!1299))))

(declare-fun lt!1393252 () List!42580)

(assert (=> b!3974836 (isPrefix!3775 lt!1393241 lt!1393252)))

(declare-fun lt!1393243 () Unit!61106)

(declare-fun suffixResult!105 () List!42580)

(assert (=> b!3974836 (= lt!1393243 (lemmaConcatTwoListThenFirstIsPrefix!2618 lt!1393241 suffixResult!105))))

(declare-fun b!3974837 () Bool)

(declare-fun e!2462616 () Bool)

(assert (=> b!3974837 (= e!2462616 true)))

(declare-fun lt!1393261 () List!42580)

(assert (=> b!3974837 (isPrefix!3775 lt!1393241 lt!1393261)))

(declare-fun lt!1393258 () Unit!61106)

(declare-fun lt!1393259 () List!42580)

(assert (=> b!3974837 (= lt!1393258 (lemmaConcatTwoListThenFirstIsPrefix!2618 lt!1393241 lt!1393259))))

(declare-fun b!3974838 () Bool)

(declare-fun e!2462615 () Bool)

(declare-fun e!2462627 () Bool)

(assert (=> b!3974838 (= e!2462615 e!2462627)))

(declare-fun res!1609622 () Bool)

(assert (=> b!3974838 (=> (not res!1609622) (not e!2462627))))

(declare-fun lt!1393249 () Int)

(declare-fun lt!1393251 () Int)

(assert (=> b!3974838 (= res!1609622 (>= lt!1393249 lt!1393251))))

(declare-fun size!31764 (List!42580) Int)

(assert (=> b!3974838 (= lt!1393251 (size!31764 lt!1393241))))

(assert (=> b!3974838 (= lt!1393249 (size!31764 prefix!494))))

(declare-datatypes ((IArray!25803 0))(
  ( (IArray!25804 (innerList!12959 List!42580)) )
))
(declare-datatypes ((Conc!12899 0))(
  ( (Node!12899 (left!32137 Conc!12899) (right!32467 Conc!12899) (csize!26028 Int) (cheight!13110 Int)) (Leaf!19950 (xs!16205 IArray!25803) (csize!26029 Int)) (Empty!12899) )
))
(declare-datatypes ((BalanceConc!25392 0))(
  ( (BalanceConc!25393 (c!689132 Conc!12899)) )
))
(declare-datatypes ((List!42581 0))(
  ( (Nil!42457) (Cons!42457 (h!47877 (_ BitVec 16)) (t!331044 List!42581)) )
))
(declare-datatypes ((TokenValue!6918 0))(
  ( (FloatLiteralValue!13836 (text!48871 List!42581)) (TokenValueExt!6917 (__x!26053 Int)) (Broken!34590 (value!211216 List!42581)) (Object!7041) (End!6918) (Def!6918) (Underscore!6918) (Match!6918) (Else!6918) (Error!6918) (Case!6918) (If!6918) (Extends!6918) (Abstract!6918) (Class!6918) (Val!6918) (DelimiterValue!13836 (del!6978 List!42581)) (KeywordValue!6924 (value!211217 List!42581)) (CommentValue!13836 (value!211218 List!42581)) (WhitespaceValue!13836 (value!211219 List!42581)) (IndentationValue!6918 (value!211220 List!42581)) (String!48307) (Int32!6918) (Broken!34591 (value!211221 List!42581)) (Boolean!6919) (Unit!61108) (OperatorValue!6921 (op!6978 List!42581)) (IdentifierValue!13836 (value!211222 List!42581)) (IdentifierValue!13837 (value!211223 List!42581)) (WhitespaceValue!13837 (value!211224 List!42581)) (True!13836) (False!13836) (Broken!34592 (value!211225 List!42581)) (Broken!34593 (value!211226 List!42581)) (True!13837) (RightBrace!6918) (RightBracket!6918) (Colon!6918) (Null!6918) (Comma!6918) (LeftBracket!6918) (False!13837) (LeftBrace!6918) (ImaginaryLiteralValue!6918 (text!48872 List!42581)) (StringLiteralValue!20754 (value!211227 List!42581)) (EOFValue!6918 (value!211228 List!42581)) (IdentValue!6918 (value!211229 List!42581)) (DelimiterValue!13837 (value!211230 List!42581)) (DedentValue!6918 (value!211231 List!42581)) (NewLineValue!6918 (value!211232 List!42581)) (IntegerValue!20754 (value!211233 (_ BitVec 32)) (text!48873 List!42581)) (IntegerValue!20755 (value!211234 Int) (text!48874 List!42581)) (Times!6918) (Or!6918) (Equal!6918) (Minus!6918) (Broken!34594 (value!211235 List!42581)) (And!6918) (Div!6918) (LessEqual!6918) (Mod!6918) (Concat!18511) (Not!6918) (Plus!6918) (SpaceValue!6918 (value!211236 List!42581)) (IntegerValue!20756 (value!211237 Int) (text!48875 List!42581)) (StringLiteralValue!20755 (text!48876 List!42581)) (FloatLiteralValue!13837 (text!48877 List!42581)) (BytesLiteralValue!6918 (value!211238 List!42581)) (CommentValue!13837 (value!211239 List!42581)) (StringLiteralValue!20756 (value!211240 List!42581)) (ErrorTokenValue!6918 (msg!6979 List!42581)) )
))
(declare-datatypes ((Regex!11593 0))(
  ( (ElementMatch!11593 (c!689133 C!23372)) (Concat!18512 (regOne!23698 Regex!11593) (regTwo!23698 Regex!11593)) (EmptyExpr!11593) (Star!11593 (reg!11922 Regex!11593)) (EmptyLang!11593) (Union!11593 (regOne!23699 Regex!11593) (regTwo!23699 Regex!11593)) )
))
(declare-datatypes ((String!48308 0))(
  ( (String!48309 (value!211241 String)) )
))
(declare-datatypes ((TokenValueInjection!13264 0))(
  ( (TokenValueInjection!13265 (toValue!9176 Int) (toChars!9035 Int)) )
))
(declare-datatypes ((Rule!13176 0))(
  ( (Rule!13177 (regex!6688 Regex!11593) (tag!7548 String!48308) (isSeparator!6688 Bool) (transformation!6688 TokenValueInjection!13264)) )
))
(declare-datatypes ((Token!12514 0))(
  ( (Token!12515 (value!211242 TokenValue!6918) (rule!9684 Rule!13176) (size!31765 Int) (originalCharacters!7288 List!42580)) )
))
(declare-fun token!484 () Token!12514)

(declare-fun list!15756 (BalanceConc!25392) List!42580)

(declare-fun charsOf!4504 (Token!12514) BalanceConc!25392)

(assert (=> b!3974838 (= lt!1393241 (list!15756 (charsOf!4504 token!484)))))

(declare-fun e!2462617 () Bool)

(assert (=> b!3974839 (= e!2462617 (and tp!1211932 tp!1211940))))

(declare-fun b!3974840 () Bool)

(declare-fun res!1609612 () Bool)

(assert (=> b!3974840 (=> (not res!1609612) (not e!2462615))))

(declare-datatypes ((LexerInterface!6277 0))(
  ( (LexerInterfaceExt!6274 (__x!26054 Int)) (Lexer!6275) )
))
(declare-fun thiss!21717 () LexerInterface!6277)

(declare-datatypes ((List!42582 0))(
  ( (Nil!42458) (Cons!42458 (h!47878 Rule!13176) (t!331045 List!42582)) )
))
(declare-fun rules!2999 () List!42582)

(declare-fun rulesInvariant!5620 (LexerInterface!6277 List!42582) Bool)

(assert (=> b!3974840 (= res!1609612 (rulesInvariant!5620 thiss!21717 rules!2999))))

(declare-fun b!3974841 () Bool)

(declare-fun e!2462605 () Bool)

(declare-fun e!2462603 () Bool)

(assert (=> b!3974841 (= e!2462605 e!2462603)))

(declare-fun res!1609616 () Bool)

(assert (=> b!3974841 (=> res!1609616 e!2462603)))

(declare-fun matchR!5570 (Regex!11593 List!42580) Bool)

(assert (=> b!3974841 (= res!1609616 (not (matchR!5570 (regex!6688 (rule!9684 token!484)) lt!1393241)))))

(declare-fun lt!1393240 () List!42580)

(assert (=> b!3974841 (isPrefix!3775 lt!1393241 lt!1393240)))

(declare-fun newSuffix!27 () List!42580)

(declare-fun lt!1393248 () Unit!61106)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!608 (List!42580 List!42580 List!42580) Unit!61106)

(assert (=> b!3974841 (= lt!1393248 (lemmaPrefixStaysPrefixWhenAddingToSuffix!608 lt!1393241 prefix!494 newSuffix!27))))

(declare-fun lt!1393247 () Unit!61106)

(assert (=> b!3974841 (= lt!1393247 (lemmaPrefixStaysPrefixWhenAddingToSuffix!608 lt!1393241 prefix!494 suffix!1299))))

(declare-fun b!3974842 () Bool)

(declare-fun e!2462612 () Bool)

(declare-fun tp!1211939 () Bool)

(assert (=> b!3974842 (= e!2462612 (and tp_is_empty!20157 tp!1211939))))

(declare-fun b!3974843 () Bool)

(declare-fun e!2462613 () Bool)

(declare-fun e!2462607 () Bool)

(assert (=> b!3974843 (= e!2462613 e!2462607)))

(declare-fun res!1609618 () Bool)

(assert (=> b!3974843 (=> res!1609618 e!2462607)))

(declare-fun lt!1393250 () List!42580)

(declare-fun lt!1393257 () List!42580)

(assert (=> b!3974843 (= res!1609618 (or (not (= lt!1393236 lt!1393257)) (not (= lt!1393236 lt!1393250))))))

(assert (=> b!3974843 (= lt!1393257 lt!1393250)))

(declare-fun lt!1393246 () List!42580)

(declare-fun ++!11090 (List!42580 List!42580) List!42580)

(assert (=> b!3974843 (= lt!1393250 (++!11090 lt!1393241 lt!1393246))))

(declare-fun lt!1393264 () List!42580)

(assert (=> b!3974843 (= lt!1393257 (++!11090 lt!1393264 suffix!1299))))

(declare-fun lt!1393263 () List!42580)

(assert (=> b!3974843 (= lt!1393246 (++!11090 lt!1393263 suffix!1299))))

(declare-fun lt!1393254 () Unit!61106)

(declare-fun lemmaConcatAssociativity!2410 (List!42580 List!42580 List!42580) Unit!61106)

(assert (=> b!3974843 (= lt!1393254 (lemmaConcatAssociativity!2410 lt!1393241 lt!1393263 suffix!1299))))

(declare-fun b!3974844 () Bool)

(assert (=> b!3974844 (= e!2462607 e!2462605)))

(declare-fun res!1609605 () Bool)

(assert (=> b!3974844 (=> res!1609605 e!2462605)))

(declare-datatypes ((tuple2!41704 0))(
  ( (tuple2!41705 (_1!23986 Token!12514) (_2!23986 List!42580)) )
))
(declare-datatypes ((Option!9102 0))(
  ( (None!9101) (Some!9101 (v!39449 tuple2!41704)) )
))
(declare-fun lt!1393242 () Option!9102)

(declare-fun lt!1393260 () Option!9102)

(assert (=> b!3974844 (= res!1609605 (not (= lt!1393242 lt!1393260)))))

(declare-fun lt!1393238 () TokenValue!6918)

(assert (=> b!3974844 (= lt!1393242 (Some!9101 (tuple2!41705 (Token!12515 lt!1393238 (rule!9684 token!484) lt!1393251 lt!1393241) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2609 (LexerInterface!6277 Rule!13176 List!42580) Option!9102)

(assert (=> b!3974844 (= lt!1393242 (maxPrefixOneRule!2609 thiss!21717 (rule!9684 token!484) lt!1393236))))

(declare-fun apply!9899 (TokenValueInjection!13264 BalanceConc!25392) TokenValue!6918)

(declare-fun seqFromList!4927 (List!42580) BalanceConc!25392)

(assert (=> b!3974844 (= lt!1393238 (apply!9899 (transformation!6688 (rule!9684 token!484)) (seqFromList!4927 lt!1393241)))))

(declare-fun lt!1393255 () Unit!61106)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1431 (LexerInterface!6277 List!42582 List!42580 List!42580 List!42580 Rule!13176) Unit!61106)

(assert (=> b!3974844 (= lt!1393255 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1431 thiss!21717 rules!2999 lt!1393241 lt!1393236 suffixResult!105 (rule!9684 token!484)))))

(assert (=> b!3974844 (= lt!1393246 suffixResult!105)))

(declare-fun lt!1393265 () Unit!61106)

(declare-fun lemmaSamePrefixThenSameSuffix!1962 (List!42580 List!42580 List!42580 List!42580 List!42580) Unit!61106)

(assert (=> b!3974844 (= lt!1393265 (lemmaSamePrefixThenSameSuffix!1962 lt!1393241 lt!1393246 lt!1393241 suffixResult!105 lt!1393236))))

(assert (=> b!3974844 (isPrefix!3775 lt!1393241 lt!1393250)))

(declare-fun lt!1393244 () Unit!61106)

(assert (=> b!3974844 (= lt!1393244 (lemmaConcatTwoListThenFirstIsPrefix!2618 lt!1393241 lt!1393246))))

(declare-fun b!3974845 () Bool)

(declare-fun e!2462625 () Bool)

(declare-fun tp!1211937 () Bool)

(assert (=> b!3974845 (= e!2462625 (and tp_is_empty!20157 tp!1211937))))

(declare-fun b!3974846 () Bool)

(declare-fun res!1609614 () Bool)

(declare-fun e!2462624 () Bool)

(assert (=> b!3974846 (=> (not res!1609614) (not e!2462624))))

(assert (=> b!3974846 (= res!1609614 (= (value!211242 token!484) lt!1393238))))

(declare-fun b!3974847 () Bool)

(declare-fun e!2462608 () Bool)

(declare-fun e!2462621 () Bool)

(declare-fun tp!1211936 () Bool)

(assert (=> b!3974847 (= e!2462608 (and e!2462621 tp!1211936))))

(declare-fun b!3974848 () Bool)

(declare-fun e!2462622 () Bool)

(declare-fun e!2462623 () Bool)

(assert (=> b!3974848 (= e!2462622 e!2462623)))

(declare-fun res!1609606 () Bool)

(assert (=> b!3974848 (=> (not res!1609606) (not e!2462623))))

(declare-fun maxPrefix!3575 (LexerInterface!6277 List!42582 List!42580) Option!9102)

(assert (=> b!3974848 (= res!1609606 (= (maxPrefix!3575 thiss!21717 rules!2999 lt!1393236) lt!1393260))))

(assert (=> b!3974848 (= lt!1393260 (Some!9101 (tuple2!41705 token!484 suffixResult!105)))))

(assert (=> b!3974848 (= lt!1393236 (++!11090 prefix!494 suffix!1299))))

(declare-fun tp!1211933 () Bool)

(declare-fun b!3974849 () Bool)

(declare-fun inv!56724 (String!48308) Bool)

(declare-fun inv!56727 (TokenValueInjection!13264) Bool)

(assert (=> b!3974849 (= e!2462621 (and tp!1211933 (inv!56724 (tag!7548 (h!47878 rules!2999))) (inv!56727 (transformation!6688 (h!47878 rules!2999))) e!2462617))))

(declare-fun tp!1211931 () Bool)

(declare-fun e!2462619 () Bool)

(declare-fun b!3974850 () Bool)

(declare-fun e!2462610 () Bool)

(assert (=> b!3974850 (= e!2462619 (and tp!1211931 (inv!56724 (tag!7548 (rule!9684 token!484))) (inv!56727 (transformation!6688 (rule!9684 token!484))) e!2462610))))

(declare-fun b!3974851 () Bool)

(declare-fun res!1609617 () Bool)

(assert (=> b!3974851 (=> (not res!1609617) (not e!2462615))))

(assert (=> b!3974851 (= res!1609617 (>= (size!31764 suffix!1299) (size!31764 newSuffix!27)))))

(declare-fun b!3974852 () Bool)

(declare-fun res!1609607 () Bool)

(assert (=> b!3974852 (=> (not res!1609607) (not e!2462615))))

(assert (=> b!3974852 (= res!1609607 (isPrefix!3775 newSuffix!27 suffix!1299))))

(declare-fun b!3974853 () Bool)

(declare-fun e!2462626 () Bool)

(declare-fun tp!1211928 () Bool)

(assert (=> b!3974853 (= e!2462626 (and tp_is_empty!20157 tp!1211928))))

(declare-fun b!3974854 () Bool)

(assert (=> b!3974854 (= e!2462624 (and (= (size!31765 token!484) lt!1393251) (= (originalCharacters!7288 token!484) lt!1393241)))))

(declare-fun b!3974855 () Bool)

(declare-fun res!1609608 () Bool)

(assert (=> b!3974855 (=> (not res!1609608) (not e!2462624))))

(assert (=> b!3974855 (= res!1609608 (= (size!31765 token!484) (size!31764 (originalCharacters!7288 token!484))))))

(declare-fun b!3974856 () Bool)

(assert (=> b!3974856 (= e!2462627 e!2462622)))

(declare-fun res!1609620 () Bool)

(assert (=> b!3974856 (=> (not res!1609620) (not e!2462622))))

(declare-fun lt!1393253 () List!42580)

(assert (=> b!3974856 (= res!1609620 (= lt!1393253 lt!1393240))))

(assert (=> b!3974856 (= lt!1393240 (++!11090 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42580)

(assert (=> b!3974856 (= lt!1393253 (++!11090 lt!1393241 newSuffixResult!27))))

(assert (=> b!3974857 (= e!2462610 (and tp!1211929 tp!1211930))))

(declare-fun b!3974858 () Bool)

(assert (=> b!3974858 (= e!2462618 e!2462613)))

(declare-fun res!1609621 () Bool)

(assert (=> b!3974858 (=> res!1609621 e!2462613)))

(assert (=> b!3974858 (= res!1609621 (not (= lt!1393264 prefix!494)))))

(assert (=> b!3974858 (= lt!1393264 (++!11090 lt!1393241 lt!1393263))))

(declare-fun getSuffix!2206 (List!42580 List!42580) List!42580)

(assert (=> b!3974858 (= lt!1393263 (getSuffix!2206 prefix!494 lt!1393241))))

(assert (=> b!3974858 (isPrefix!3775 lt!1393241 prefix!494)))

(declare-fun lt!1393245 () Unit!61106)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!353 (List!42580 List!42580 List!42580) Unit!61106)

(assert (=> b!3974858 (= lt!1393245 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!353 prefix!494 lt!1393241 lt!1393236))))

(declare-fun b!3974859 () Bool)

(assert (=> b!3974859 (= e!2462603 e!2462616)))

(declare-fun res!1609619 () Bool)

(assert (=> b!3974859 (=> res!1609619 e!2462616)))

(assert (=> b!3974859 (= res!1609619 (not (= lt!1393261 lt!1393236)))))

(assert (=> b!3974859 (= lt!1393261 (++!11090 lt!1393241 lt!1393259))))

(assert (=> b!3974859 (= lt!1393259 (getSuffix!2206 lt!1393236 lt!1393241))))

(assert (=> b!3974859 e!2462624))

(declare-fun res!1609611 () Bool)

(assert (=> b!3974859 (=> (not res!1609611) (not e!2462624))))

(assert (=> b!3974859 (= res!1609611 (isPrefix!3775 lt!1393236 lt!1393236))))

(declare-fun lt!1393237 () Unit!61106)

(declare-fun lemmaIsPrefixRefl!2367 (List!42580 List!42580) Unit!61106)

(assert (=> b!3974859 (= lt!1393237 (lemmaIsPrefixRefl!2367 lt!1393236 lt!1393236))))

(declare-fun b!3974860 () Bool)

(declare-fun e!2462609 () Bool)

(declare-fun tp!1211938 () Bool)

(declare-fun inv!21 (TokenValue!6918) Bool)

(assert (=> b!3974860 (= e!2462609 (and (inv!21 (value!211242 token!484)) e!2462619 tp!1211938))))

(declare-fun b!3974861 () Bool)

(declare-fun res!1609610 () Bool)

(assert (=> b!3974861 (=> (not res!1609610) (not e!2462615))))

(declare-fun isEmpty!25394 (List!42582) Bool)

(assert (=> b!3974861 (= res!1609610 (not (isEmpty!25394 rules!2999)))))

(declare-fun res!1609613 () Bool)

(assert (=> start!374104 (=> (not res!1609613) (not e!2462615))))

(get-info :version)

(assert (=> start!374104 (= res!1609613 ((_ is Lexer!6275) thiss!21717))))

(assert (=> start!374104 e!2462615))

(assert (=> start!374104 e!2462614))

(declare-fun inv!56728 (Token!12514) Bool)

(assert (=> start!374104 (and (inv!56728 token!484) e!2462609)))

(assert (=> start!374104 e!2462612))

(assert (=> start!374104 e!2462604))

(assert (=> start!374104 e!2462626))

(assert (=> start!374104 true))

(assert (=> start!374104 e!2462608))

(assert (=> start!374104 e!2462625))

(declare-fun b!3974862 () Bool)

(assert (=> b!3974862 (= e!2462623 (not e!2462620))))

(declare-fun res!1609609 () Bool)

(assert (=> b!3974862 (=> res!1609609 e!2462620)))

(assert (=> b!3974862 (= res!1609609 (not (= lt!1393252 lt!1393236)))))

(assert (=> b!3974862 (= lt!1393252 (++!11090 lt!1393241 suffixResult!105))))

(declare-fun lt!1393256 () Unit!61106)

(declare-fun lemmaInv!903 (TokenValueInjection!13264) Unit!61106)

(assert (=> b!3974862 (= lt!1393256 (lemmaInv!903 (transformation!6688 (rule!9684 token!484))))))

(declare-fun ruleValid!2620 (LexerInterface!6277 Rule!13176) Bool)

(assert (=> b!3974862 (ruleValid!2620 thiss!21717 (rule!9684 token!484))))

(declare-fun lt!1393239 () Unit!61106)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1694 (LexerInterface!6277 Rule!13176 List!42582) Unit!61106)

(assert (=> b!3974862 (= lt!1393239 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1694 thiss!21717 (rule!9684 token!484) rules!2999))))

(assert (= (and start!374104 res!1609613) b!3974861))

(assert (= (and b!3974861 res!1609610) b!3974840))

(assert (= (and b!3974840 res!1609612) b!3974851))

(assert (= (and b!3974851 res!1609617) b!3974852))

(assert (= (and b!3974852 res!1609607) b!3974838))

(assert (= (and b!3974838 res!1609622) b!3974856))

(assert (= (and b!3974856 res!1609620) b!3974848))

(assert (= (and b!3974848 res!1609606) b!3974862))

(assert (= (and b!3974862 (not res!1609609)) b!3974836))

(assert (= (and b!3974836 (not res!1609615)) b!3974858))

(assert (= (and b!3974858 (not res!1609621)) b!3974843))

(assert (= (and b!3974843 (not res!1609618)) b!3974844))

(assert (= (and b!3974844 (not res!1609605)) b!3974841))

(assert (= (and b!3974841 (not res!1609616)) b!3974859))

(assert (= (and b!3974859 res!1609611) b!3974846))

(assert (= (and b!3974846 res!1609614) b!3974855))

(assert (= (and b!3974855 res!1609608) b!3974854))

(assert (= (and b!3974859 (not res!1609619)) b!3974837))

(assert (= (and start!374104 ((_ is Cons!42456) prefix!494)) b!3974834))

(assert (= b!3974850 b!3974857))

(assert (= b!3974860 b!3974850))

(assert (= start!374104 b!3974860))

(assert (= (and start!374104 ((_ is Cons!42456) suffixResult!105)) b!3974842))

(assert (= (and start!374104 ((_ is Cons!42456) suffix!1299)) b!3974835))

(assert (= (and start!374104 ((_ is Cons!42456) newSuffix!27)) b!3974853))

(assert (= b!3974849 b!3974839))

(assert (= b!3974847 b!3974849))

(assert (= (and start!374104 ((_ is Cons!42458) rules!2999)) b!3974847))

(assert (= (and start!374104 ((_ is Cons!42456) newSuffixResult!27)) b!3974845))

(declare-fun m!4545697 () Bool)

(assert (=> b!3974858 m!4545697))

(declare-fun m!4545699 () Bool)

(assert (=> b!3974858 m!4545699))

(declare-fun m!4545701 () Bool)

(assert (=> b!3974858 m!4545701))

(declare-fun m!4545703 () Bool)

(assert (=> b!3974858 m!4545703))

(declare-fun m!4545705 () Bool)

(assert (=> b!3974843 m!4545705))

(declare-fun m!4545707 () Bool)

(assert (=> b!3974843 m!4545707))

(declare-fun m!4545709 () Bool)

(assert (=> b!3974843 m!4545709))

(declare-fun m!4545711 () Bool)

(assert (=> b!3974843 m!4545711))

(declare-fun m!4545713 () Bool)

(assert (=> b!3974860 m!4545713))

(declare-fun m!4545715 () Bool)

(assert (=> b!3974855 m!4545715))

(declare-fun m!4545717 () Bool)

(assert (=> b!3974837 m!4545717))

(declare-fun m!4545719 () Bool)

(assert (=> b!3974837 m!4545719))

(declare-fun m!4545721 () Bool)

(assert (=> b!3974851 m!4545721))

(declare-fun m!4545723 () Bool)

(assert (=> b!3974851 m!4545723))

(declare-fun m!4545725 () Bool)

(assert (=> b!3974859 m!4545725))

(declare-fun m!4545727 () Bool)

(assert (=> b!3974859 m!4545727))

(declare-fun m!4545729 () Bool)

(assert (=> b!3974859 m!4545729))

(declare-fun m!4545731 () Bool)

(assert (=> b!3974859 m!4545731))

(declare-fun m!4545733 () Bool)

(assert (=> b!3974838 m!4545733))

(declare-fun m!4545735 () Bool)

(assert (=> b!3974838 m!4545735))

(declare-fun m!4545737 () Bool)

(assert (=> b!3974838 m!4545737))

(assert (=> b!3974838 m!4545737))

(declare-fun m!4545739 () Bool)

(assert (=> b!3974838 m!4545739))

(declare-fun m!4545741 () Bool)

(assert (=> b!3974862 m!4545741))

(declare-fun m!4545743 () Bool)

(assert (=> b!3974862 m!4545743))

(declare-fun m!4545745 () Bool)

(assert (=> b!3974862 m!4545745))

(declare-fun m!4545747 () Bool)

(assert (=> b!3974862 m!4545747))

(declare-fun m!4545749 () Bool)

(assert (=> start!374104 m!4545749))

(declare-fun m!4545751 () Bool)

(assert (=> b!3974841 m!4545751))

(declare-fun m!4545753 () Bool)

(assert (=> b!3974841 m!4545753))

(declare-fun m!4545755 () Bool)

(assert (=> b!3974841 m!4545755))

(declare-fun m!4545757 () Bool)

(assert (=> b!3974841 m!4545757))

(declare-fun m!4545759 () Bool)

(assert (=> b!3974852 m!4545759))

(declare-fun m!4545761 () Bool)

(assert (=> b!3974856 m!4545761))

(declare-fun m!4545763 () Bool)

(assert (=> b!3974856 m!4545763))

(declare-fun m!4545765 () Bool)

(assert (=> b!3974861 m!4545765))

(declare-fun m!4545767 () Bool)

(assert (=> b!3974844 m!4545767))

(declare-fun m!4545769 () Bool)

(assert (=> b!3974844 m!4545769))

(declare-fun m!4545771 () Bool)

(assert (=> b!3974844 m!4545771))

(declare-fun m!4545773 () Bool)

(assert (=> b!3974844 m!4545773))

(declare-fun m!4545775 () Bool)

(assert (=> b!3974844 m!4545775))

(declare-fun m!4545777 () Bool)

(assert (=> b!3974844 m!4545777))

(declare-fun m!4545779 () Bool)

(assert (=> b!3974844 m!4545779))

(assert (=> b!3974844 m!4545771))

(declare-fun m!4545781 () Bool)

(assert (=> b!3974836 m!4545781))

(declare-fun m!4545783 () Bool)

(assert (=> b!3974836 m!4545783))

(declare-fun m!4545785 () Bool)

(assert (=> b!3974836 m!4545785))

(declare-fun m!4545787 () Bool)

(assert (=> b!3974836 m!4545787))

(declare-fun m!4545789 () Bool)

(assert (=> b!3974836 m!4545789))

(declare-fun m!4545791 () Bool)

(assert (=> b!3974849 m!4545791))

(declare-fun m!4545793 () Bool)

(assert (=> b!3974849 m!4545793))

(declare-fun m!4545795 () Bool)

(assert (=> b!3974840 m!4545795))

(declare-fun m!4545797 () Bool)

(assert (=> b!3974850 m!4545797))

(declare-fun m!4545799 () Bool)

(assert (=> b!3974850 m!4545799))

(declare-fun m!4545801 () Bool)

(assert (=> b!3974848 m!4545801))

(declare-fun m!4545803 () Bool)

(assert (=> b!3974848 m!4545803))

(check-sat (not b!3974855) (not b_next!110917) (not b!3974844) (not start!374104) (not b!3974860) (not b_next!110915) (not b!3974845) (not b!3974862) b_and!305551 (not b!3974861) (not b!3974859) (not b!3974850) (not b_next!110913) (not b!3974848) (not b!3974841) (not b!3974856) b_and!305557 (not b!3974843) (not b!3974840) (not b!3974847) (not b!3974858) (not b!3974834) (not b!3974835) (not b!3974849) (not b!3974852) (not b!3974853) b_and!305555 b_and!305553 (not b!3974838) (not b_next!110919) (not b!3974842) (not b!3974837) tp_is_empty!20157 (not b!3974836) (not b!3974851))
(check-sat (not b_next!110917) (not b_next!110915) b_and!305557 b_and!305551 (not b_next!110913) b_and!305555 b_and!305553 (not b_next!110919))
