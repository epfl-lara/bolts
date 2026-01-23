; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!250144 () Bool)

(assert start!250144)

(declare-fun b!2583719 () Bool)

(declare-fun b_free!72709 () Bool)

(declare-fun b_next!73413 () Bool)

(assert (=> b!2583719 (= b_free!72709 (not b_next!73413))))

(declare-fun tp!820222 () Bool)

(declare-fun b_and!189243 () Bool)

(assert (=> b!2583719 (= tp!820222 b_and!189243)))

(declare-fun b_free!72711 () Bool)

(declare-fun b_next!73415 () Bool)

(assert (=> b!2583719 (= b_free!72711 (not b_next!73415))))

(declare-fun tp!820236 () Bool)

(declare-fun b_and!189245 () Bool)

(assert (=> b!2583719 (= tp!820236 b_and!189245)))

(declare-fun b!2583720 () Bool)

(declare-fun b_free!72713 () Bool)

(declare-fun b_next!73417 () Bool)

(assert (=> b!2583720 (= b_free!72713 (not b_next!73417))))

(declare-fun tp!820228 () Bool)

(declare-fun b_and!189247 () Bool)

(assert (=> b!2583720 (= tp!820228 b_and!189247)))

(declare-fun b_free!72715 () Bool)

(declare-fun b_next!73419 () Bool)

(assert (=> b!2583720 (= b_free!72715 (not b_next!73419))))

(declare-fun tp!820221 () Bool)

(declare-fun b_and!189249 () Bool)

(assert (=> b!2583720 (= tp!820221 b_and!189249)))

(declare-fun b!2583718 () Bool)

(declare-fun b_free!72717 () Bool)

(declare-fun b_next!73421 () Bool)

(assert (=> b!2583718 (= b_free!72717 (not b_next!73421))))

(declare-fun tp!820231 () Bool)

(declare-fun b_and!189251 () Bool)

(assert (=> b!2583718 (= tp!820231 b_and!189251)))

(declare-fun b_free!72719 () Bool)

(declare-fun b_next!73423 () Bool)

(assert (=> b!2583718 (= b_free!72719 (not b_next!73423))))

(declare-fun tp!820226 () Bool)

(declare-fun b_and!189253 () Bool)

(assert (=> b!2583718 (= tp!820226 b_and!189253)))

(declare-fun b!2583725 () Bool)

(declare-fun b_free!72721 () Bool)

(declare-fun b_next!73425 () Bool)

(assert (=> b!2583725 (= b_free!72721 (not b_next!73425))))

(declare-fun tp!820227 () Bool)

(declare-fun b_and!189255 () Bool)

(assert (=> b!2583725 (= tp!820227 b_and!189255)))

(declare-fun b_free!72723 () Bool)

(declare-fun b_next!73427 () Bool)

(assert (=> b!2583725 (= b_free!72723 (not b_next!73427))))

(declare-fun tp!820234 () Bool)

(declare-fun b_and!189257 () Bool)

(assert (=> b!2583725 (= tp!820234 b_and!189257)))

(declare-fun b!2583716 () Bool)

(declare-fun e!1630261 () Bool)

(declare-fun e!1630276 () Bool)

(assert (=> b!2583716 (= e!1630261 (not e!1630276))))

(declare-fun res!1086477 () Bool)

(assert (=> b!2583716 (=> res!1086477 e!1630276)))

(declare-datatypes ((List!29837 0))(
  ( (Nil!29737) (Cons!29737 (h!35157 (_ BitVec 16)) (t!212058 List!29837)) )
))
(declare-datatypes ((TokenValue!4737 0))(
  ( (FloatLiteralValue!9474 (text!33604 List!29837)) (TokenValueExt!4736 (__x!19307 Int)) (Broken!23685 (value!145899 List!29837)) (Object!4836) (End!4737) (Def!4737) (Underscore!4737) (Match!4737) (Else!4737) (Error!4737) (Case!4737) (If!4737) (Extends!4737) (Abstract!4737) (Class!4737) (Val!4737) (DelimiterValue!9474 (del!4797 List!29837)) (KeywordValue!4743 (value!145900 List!29837)) (CommentValue!9474 (value!145901 List!29837)) (WhitespaceValue!9474 (value!145902 List!29837)) (IndentationValue!4737 (value!145903 List!29837)) (String!33092) (Int32!4737) (Broken!23686 (value!145904 List!29837)) (Boolean!4738) (Unit!43581) (OperatorValue!4740 (op!4797 List!29837)) (IdentifierValue!9474 (value!145905 List!29837)) (IdentifierValue!9475 (value!145906 List!29837)) (WhitespaceValue!9475 (value!145907 List!29837)) (True!9474) (False!9474) (Broken!23687 (value!145908 List!29837)) (Broken!23688 (value!145909 List!29837)) (True!9475) (RightBrace!4737) (RightBracket!4737) (Colon!4737) (Null!4737) (Comma!4737) (LeftBracket!4737) (False!9475) (LeftBrace!4737) (ImaginaryLiteralValue!4737 (text!33605 List!29837)) (StringLiteralValue!14211 (value!145910 List!29837)) (EOFValue!4737 (value!145911 List!29837)) (IdentValue!4737 (value!145912 List!29837)) (DelimiterValue!9475 (value!145913 List!29837)) (DedentValue!4737 (value!145914 List!29837)) (NewLineValue!4737 (value!145915 List!29837)) (IntegerValue!14211 (value!145916 (_ BitVec 32)) (text!33606 List!29837)) (IntegerValue!14212 (value!145917 Int) (text!33607 List!29837)) (Times!4737) (Or!4737) (Equal!4737) (Minus!4737) (Broken!23689 (value!145918 List!29837)) (And!4737) (Div!4737) (LessEqual!4737) (Mod!4737) (Concat!12396) (Not!4737) (Plus!4737) (SpaceValue!4737 (value!145919 List!29837)) (IntegerValue!14213 (value!145920 Int) (text!33608 List!29837)) (StringLiteralValue!14212 (text!33609 List!29837)) (FloatLiteralValue!9475 (text!33610 List!29837)) (BytesLiteralValue!4737 (value!145921 List!29837)) (CommentValue!9475 (value!145922 List!29837)) (StringLiteralValue!14213 (value!145923 List!29837)) (ErrorTokenValue!4737 (msg!4798 List!29837)) )
))
(declare-datatypes ((C!15476 0))(
  ( (C!15477 (val!9434 Int)) )
))
(declare-datatypes ((List!29838 0))(
  ( (Nil!29738) (Cons!29738 (h!35158 C!15476) (t!212059 List!29838)) )
))
(declare-datatypes ((IArray!18567 0))(
  ( (IArray!18568 (innerList!9341 List!29838)) )
))
(declare-datatypes ((Conc!9281 0))(
  ( (Node!9281 (left!22667 Conc!9281) (right!22997 Conc!9281) (csize!18792 Int) (cheight!9492 Int)) (Leaf!14160 (xs!12265 IArray!18567) (csize!18793 Int)) (Empty!9281) )
))
(declare-datatypes ((BalanceConc!18176 0))(
  ( (BalanceConc!18177 (c!416601 Conc!9281)) )
))
(declare-datatypes ((TokenValueInjection!8914 0))(
  ( (TokenValueInjection!8915 (toValue!6405 Int) (toChars!6264 Int)) )
))
(declare-datatypes ((String!33093 0))(
  ( (String!33094 (value!145924 String)) )
))
(declare-datatypes ((Regex!7659 0))(
  ( (ElementMatch!7659 (c!416602 C!15476)) (Concat!12397 (regOne!15830 Regex!7659) (regTwo!15830 Regex!7659)) (EmptyExpr!7659) (Star!7659 (reg!7988 Regex!7659)) (EmptyLang!7659) (Union!7659 (regOne!15831 Regex!7659) (regTwo!15831 Regex!7659)) )
))
(declare-datatypes ((Rule!8830 0))(
  ( (Rule!8831 (regex!4515 Regex!7659) (tag!5005 String!33093) (isSeparator!4515 Bool) (transformation!4515 TokenValueInjection!8914)) )
))
(declare-datatypes ((Token!8500 0))(
  ( (Token!8501 (value!145925 TokenValue!4737) (rule!6875 Rule!8830) (size!23055 Int) (originalCharacters!5281 List!29838)) )
))
(declare-fun token!562 () Token!8500)

(declare-fun suffix!1684 () List!29838)

(declare-datatypes ((tuple2!29694 0))(
  ( (tuple2!29695 (_1!17389 Token!8500) (_2!17389 List!29838)) )
))
(declare-datatypes ((Option!5930 0))(
  ( (None!5929) (Some!5929 (v!32026 tuple2!29694)) )
))
(declare-fun lt!908761 () Option!5930)

(assert (=> b!2583716 (= res!1086477 (not (= lt!908761 (Some!5929 (tuple2!29695 token!562 suffix!1684)))))))

(declare-fun rule!570 () Rule!8830)

(declare-fun lt!908763 () TokenValue!4737)

(declare-fun lt!908759 () List!29838)

(declare-fun lt!908765 () Int)

(assert (=> b!2583716 (= lt!908761 (Some!5929 (tuple2!29695 (Token!8501 lt!908763 rule!570 lt!908765 lt!908759) suffix!1684)))))

(declare-datatypes ((LexerInterface!4112 0))(
  ( (LexerInterfaceExt!4109 (__x!19308 Int)) (Lexer!4110) )
))
(declare-fun thiss!28211 () LexerInterface!4112)

(declare-fun input!3654 () List!29838)

(declare-fun maxPrefixOneRule!1450 (LexerInterface!4112 Rule!8830 List!29838) Option!5930)

(assert (=> b!2583716 (= lt!908761 (maxPrefixOneRule!1450 thiss!28211 rule!570 input!3654))))

(declare-fun size!23056 (List!29838) Int)

(assert (=> b!2583716 (= lt!908765 (size!23056 lt!908759))))

(declare-fun apply!7020 (TokenValueInjection!8914 BalanceConc!18176) TokenValue!4737)

(declare-fun seqFromList!3155 (List!29838) BalanceConc!18176)

(assert (=> b!2583716 (= lt!908763 (apply!7020 (transformation!4515 rule!570) (seqFromList!3155 lt!908759)))))

(declare-datatypes ((List!29839 0))(
  ( (Nil!29739) (Cons!29739 (h!35159 Rule!8830) (t!212060 List!29839)) )
))
(declare-fun rules!4580 () List!29839)

(declare-datatypes ((Unit!43582 0))(
  ( (Unit!43583) )
))
(declare-fun lt!908760 () Unit!43582)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!613 (LexerInterface!4112 List!29839 List!29838 List!29838 List!29838 Rule!8830) Unit!43582)

(assert (=> b!2583716 (= lt!908760 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!613 thiss!28211 rules!4580 lt!908759 input!3654 suffix!1684 rule!570))))

(declare-fun list!11241 (BalanceConc!18176) List!29838)

(declare-fun charsOf!2844 (Token!8500) BalanceConc!18176)

(assert (=> b!2583716 (= lt!908759 (list!11241 (charsOf!2844 token!562)))))

(declare-fun b!2583717 () Bool)

(declare-fun e!1630259 () Bool)

(declare-fun tp_is_empty!13213 () Bool)

(declare-fun tp!820220 () Bool)

(assert (=> b!2583717 (= e!1630259 (and tp_is_empty!13213 tp!820220))))

(declare-fun e!1630268 () Bool)

(assert (=> b!2583718 (= e!1630268 (and tp!820231 tp!820226))))

(declare-fun e!1630272 () Bool)

(assert (=> b!2583719 (= e!1630272 (and tp!820222 tp!820236))))

(declare-fun e!1630270 () Bool)

(assert (=> b!2583720 (= e!1630270 (and tp!820228 tp!820221))))

(declare-fun b!2583721 () Bool)

(declare-fun e!1630274 () Bool)

(declare-fun e!1630277 () Bool)

(declare-fun tp!820225 () Bool)

(assert (=> b!2583721 (= e!1630274 (and e!1630277 tp!820225))))

(declare-fun b!2583722 () Bool)

(declare-fun res!1086480 () Bool)

(assert (=> b!2583722 (=> (not res!1086480) (not e!1630261))))

(declare-fun rulesInvariant!3612 (LexerInterface!4112 List!29839) Bool)

(assert (=> b!2583722 (= res!1086480 (rulesInvariant!3612 thiss!28211 rules!4580))))

(declare-fun b!2583723 () Bool)

(declare-fun res!1086478 () Bool)

(assert (=> b!2583723 (=> (not res!1086478) (not e!1630261))))

(declare-fun maxPrefix!2284 (LexerInterface!4112 List!29839 List!29838) Option!5930)

(assert (=> b!2583723 (= res!1086478 (= (maxPrefix!2284 thiss!28211 rules!4580 input!3654) (Some!5929 (tuple2!29695 token!562 suffix!1684))))))

(declare-fun e!1630271 () Bool)

(declare-fun e!1630273 () Bool)

(declare-fun tp!820235 () Bool)

(declare-fun b!2583724 () Bool)

(declare-fun inv!40160 (String!33093) Bool)

(declare-fun inv!40163 (TokenValueInjection!8914) Bool)

(assert (=> b!2583724 (= e!1630271 (and tp!820235 (inv!40160 (tag!5005 rule!570)) (inv!40163 (transformation!4515 rule!570)) e!1630273))))

(assert (=> b!2583725 (= e!1630273 (and tp!820227 tp!820234))))

(declare-fun b!2583726 () Bool)

(declare-fun e!1630267 () Bool)

(declare-fun lt!908764 () List!29838)

(declare-fun matchR!3592 (Regex!7659 List!29838) Bool)

(assert (=> b!2583726 (= e!1630267 (not (not (matchR!3592 (regex!4515 rule!570) lt!908764))))))

(declare-fun ruleValid!1521 (LexerInterface!4112 Rule!8830) Bool)

(assert (=> b!2583726 (ruleValid!1521 thiss!28211 rule!570)))

(declare-fun lt!908762 () Unit!43582)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!914 (LexerInterface!4112 Rule!8830 List!29839) Unit!43582)

(assert (=> b!2583726 (= lt!908762 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!914 thiss!28211 rule!570 rules!4580))))

(declare-fun e!1630264 () Bool)

(declare-fun tp!820224 () Bool)

(declare-fun b!2583727 () Bool)

(assert (=> b!2583727 (= e!1630264 (and tp!820224 (inv!40160 (tag!5005 (h!35159 rules!4580))) (inv!40163 (transformation!4515 (h!35159 rules!4580))) e!1630270))))

(declare-fun b!2583728 () Bool)

(declare-fun res!1086482 () Bool)

(assert (=> b!2583728 (=> res!1086482 e!1630276)))

(assert (=> b!2583728 (= res!1086482 (not (matchR!3592 (regex!4515 rule!570) lt!908759)))))

(declare-fun res!1086485 () Bool)

(assert (=> start!250144 (=> (not res!1086485) (not e!1630261))))

(get-info :version)

(assert (=> start!250144 (= res!1086485 ((_ is Lexer!4110) thiss!28211))))

(assert (=> start!250144 e!1630261))

(declare-fun e!1630275 () Bool)

(assert (=> start!250144 e!1630275))

(assert (=> start!250144 true))

(declare-fun e!1630258 () Bool)

(assert (=> start!250144 e!1630258))

(declare-fun e!1630263 () Bool)

(declare-fun inv!40164 (Token!8500) Bool)

(assert (=> start!250144 (and (inv!40164 token!562) e!1630263)))

(assert (=> start!250144 e!1630259))

(assert (=> start!250144 e!1630274))

(assert (=> start!250144 e!1630271))

(declare-fun b!2583729 () Bool)

(declare-fun res!1086475 () Bool)

(assert (=> b!2583729 (=> (not res!1086475) (not e!1630261))))

(assert (=> b!2583729 (= res!1086475 e!1630267)))

(declare-fun res!1086484 () Bool)

(assert (=> b!2583729 (=> (not res!1086484) (not e!1630267))))

(declare-fun ++!7305 (List!29838 List!29838) List!29838)

(assert (=> b!2583729 (= res!1086484 (= input!3654 (++!7305 lt!908764 suffix!1684)))))

(assert (=> b!2583729 (= lt!908764 (list!11241 (charsOf!2844 token!562)))))

(declare-fun tp!820229 () Bool)

(declare-fun b!2583730 () Bool)

(declare-fun e!1630265 () Bool)

(assert (=> b!2583730 (= e!1630265 (and tp!820229 (inv!40160 (tag!5005 (rule!6875 token!562))) (inv!40163 (transformation!4515 (rule!6875 token!562))) e!1630268))))

(declare-fun b!2583731 () Bool)

(declare-fun res!1086476 () Bool)

(assert (=> b!2583731 (=> (not res!1086476) (not e!1630261))))

(declare-fun contains!5319 (List!29839 Rule!8830) Bool)

(assert (=> b!2583731 (= res!1086476 (contains!5319 rules!4580 rule!570))))

(declare-fun b!2583732 () Bool)

(declare-fun rs!798 () List!29839)

(declare-fun ListPrimitiveSize!177 (List!29839) Int)

(assert (=> b!2583732 (= e!1630276 (>= (ListPrimitiveSize!177 rs!798) 0))))

(declare-fun b!2583733 () Bool)

(declare-fun tp!820223 () Bool)

(assert (=> b!2583733 (= e!1630275 (and e!1630264 tp!820223))))

(declare-fun b!2583734 () Bool)

(declare-fun res!1086479 () Bool)

(assert (=> b!2583734 (=> (not res!1086479) (not e!1630261))))

(assert (=> b!2583734 (= res!1086479 (= (rule!6875 token!562) rule!570))))

(declare-fun tp!820232 () Bool)

(declare-fun b!2583735 () Bool)

(assert (=> b!2583735 (= e!1630277 (and tp!820232 (inv!40160 (tag!5005 (h!35159 rs!798))) (inv!40163 (transformation!4515 (h!35159 rs!798))) e!1630272))))

(declare-fun b!2583736 () Bool)

(declare-fun tp!820233 () Bool)

(assert (=> b!2583736 (= e!1630258 (and tp_is_empty!13213 tp!820233))))

(declare-fun tp!820230 () Bool)

(declare-fun b!2583737 () Bool)

(declare-fun inv!21 (TokenValue!4737) Bool)

(assert (=> b!2583737 (= e!1630263 (and (inv!21 (value!145925 token!562)) e!1630265 tp!820230))))

(declare-fun b!2583738 () Bool)

(declare-fun res!1086483 () Bool)

(assert (=> b!2583738 (=> res!1086483 e!1630276)))

(declare-fun rulesValid!1687 (LexerInterface!4112 List!29839) Bool)

(assert (=> b!2583738 (= res!1086483 (not (rulesValid!1687 thiss!28211 rs!798)))))

(declare-fun b!2583739 () Bool)

(declare-fun res!1086481 () Bool)

(assert (=> b!2583739 (=> (not res!1086481) (not e!1630261))))

(declare-fun isEmpty!17091 (List!29839) Bool)

(assert (=> b!2583739 (= res!1086481 (not (isEmpty!17091 rules!4580)))))

(assert (= (and start!250144 res!1086485) b!2583739))

(assert (= (and b!2583739 res!1086481) b!2583722))

(assert (= (and b!2583722 res!1086480) b!2583731))

(assert (= (and b!2583731 res!1086476) b!2583723))

(assert (= (and b!2583723 res!1086478) b!2583734))

(assert (= (and b!2583734 res!1086479) b!2583729))

(assert (= (and b!2583729 res!1086484) b!2583726))

(assert (= (and b!2583729 res!1086475) b!2583716))

(assert (= (and b!2583716 (not res!1086477)) b!2583728))

(assert (= (and b!2583728 (not res!1086482)) b!2583738))

(assert (= (and b!2583738 (not res!1086483)) b!2583732))

(assert (= b!2583727 b!2583720))

(assert (= b!2583733 b!2583727))

(assert (= (and start!250144 ((_ is Cons!29739) rules!4580)) b!2583733))

(assert (= (and start!250144 ((_ is Cons!29738) input!3654)) b!2583736))

(assert (= b!2583730 b!2583718))

(assert (= b!2583737 b!2583730))

(assert (= start!250144 b!2583737))

(assert (= (and start!250144 ((_ is Cons!29738) suffix!1684)) b!2583717))

(assert (= b!2583735 b!2583719))

(assert (= b!2583721 b!2583735))

(assert (= (and start!250144 ((_ is Cons!29739) rs!798)) b!2583721))

(assert (= b!2583724 b!2583725))

(assert (= start!250144 b!2583724))

(declare-fun m!2920153 () Bool)

(assert (=> b!2583739 m!2920153))

(declare-fun m!2920155 () Bool)

(assert (=> b!2583726 m!2920155))

(declare-fun m!2920157 () Bool)

(assert (=> b!2583726 m!2920157))

(declare-fun m!2920159 () Bool)

(assert (=> b!2583726 m!2920159))

(declare-fun m!2920161 () Bool)

(assert (=> b!2583722 m!2920161))

(declare-fun m!2920163 () Bool)

(assert (=> b!2583724 m!2920163))

(declare-fun m!2920165 () Bool)

(assert (=> b!2583724 m!2920165))

(declare-fun m!2920167 () Bool)

(assert (=> start!250144 m!2920167))

(declare-fun m!2920169 () Bool)

(assert (=> b!2583737 m!2920169))

(declare-fun m!2920171 () Bool)

(assert (=> b!2583716 m!2920171))

(declare-fun m!2920173 () Bool)

(assert (=> b!2583716 m!2920173))

(assert (=> b!2583716 m!2920171))

(declare-fun m!2920175 () Bool)

(assert (=> b!2583716 m!2920175))

(declare-fun m!2920177 () Bool)

(assert (=> b!2583716 m!2920177))

(declare-fun m!2920179 () Bool)

(assert (=> b!2583716 m!2920179))

(assert (=> b!2583716 m!2920179))

(declare-fun m!2920181 () Bool)

(assert (=> b!2583716 m!2920181))

(declare-fun m!2920183 () Bool)

(assert (=> b!2583716 m!2920183))

(declare-fun m!2920185 () Bool)

(assert (=> b!2583728 m!2920185))

(declare-fun m!2920187 () Bool)

(assert (=> b!2583729 m!2920187))

(assert (=> b!2583729 m!2920171))

(assert (=> b!2583729 m!2920171))

(assert (=> b!2583729 m!2920173))

(declare-fun m!2920189 () Bool)

(assert (=> b!2583732 m!2920189))

(declare-fun m!2920191 () Bool)

(assert (=> b!2583735 m!2920191))

(declare-fun m!2920193 () Bool)

(assert (=> b!2583735 m!2920193))

(declare-fun m!2920195 () Bool)

(assert (=> b!2583731 m!2920195))

(declare-fun m!2920197 () Bool)

(assert (=> b!2583723 m!2920197))

(declare-fun m!2920199 () Bool)

(assert (=> b!2583738 m!2920199))

(declare-fun m!2920201 () Bool)

(assert (=> b!2583730 m!2920201))

(declare-fun m!2920203 () Bool)

(assert (=> b!2583730 m!2920203))

(declare-fun m!2920205 () Bool)

(assert (=> b!2583727 m!2920205))

(declare-fun m!2920207 () Bool)

(assert (=> b!2583727 m!2920207))

(check-sat (not b!2583723) b_and!189247 (not b_next!73423) b_and!189253 (not b!2583731) (not b!2583717) (not b!2583716) (not start!250144) b_and!189249 (not b!2583737) b_and!189251 (not b!2583724) (not b!2583735) (not b_next!73413) (not b!2583726) b_and!189255 (not b!2583722) (not b_next!73415) (not b_next!73425) tp_is_empty!13213 (not b!2583729) (not b_next!73427) (not b!2583736) b_and!189257 b_and!189243 (not b!2583728) (not b!2583727) (not b!2583721) (not b!2583733) (not b_next!73421) (not b!2583739) (not b!2583732) (not b_next!73417) (not b!2583738) (not b!2583730) (not b_next!73419) b_and!189245)
(check-sat b_and!189247 (not b_next!73423) b_and!189255 (not b_next!73415) b_and!189253 (not b_next!73425) (not b_next!73427) b_and!189257 b_and!189243 (not b_next!73421) b_and!189249 b_and!189251 (not b_next!73413) (not b_next!73417) (not b_next!73419) b_and!189245)
(get-model)

(declare-fun b!2583768 () Bool)

(declare-fun res!1086512 () Bool)

(declare-fun e!1630293 () Bool)

(assert (=> b!2583768 (=> res!1086512 e!1630293)))

(declare-fun isEmpty!17094 (List!29838) Bool)

(declare-fun tail!4129 (List!29838) List!29838)

(assert (=> b!2583768 (= res!1086512 (not (isEmpty!17094 (tail!4129 lt!908764))))))

(declare-fun b!2583769 () Bool)

(declare-fun head!5856 (List!29838) C!15476)

(assert (=> b!2583769 (= e!1630293 (not (= (head!5856 lt!908764) (c!416602 (regex!4515 rule!570)))))))

(declare-fun b!2583770 () Bool)

(declare-fun e!1630295 () Bool)

(declare-fun lt!908770 () Bool)

(declare-fun call!166903 () Bool)

(assert (=> b!2583770 (= e!1630295 (= lt!908770 call!166903))))

(declare-fun bm!166898 () Bool)

(assert (=> bm!166898 (= call!166903 (isEmpty!17094 lt!908764))))

(declare-fun b!2583771 () Bool)

(declare-fun e!1630294 () Bool)

(declare-fun derivativeStep!2216 (Regex!7659 C!15476) Regex!7659)

(assert (=> b!2583771 (= e!1630294 (matchR!3592 (derivativeStep!2216 (regex!4515 rule!570) (head!5856 lt!908764)) (tail!4129 lt!908764)))))

(declare-fun d!731725 () Bool)

(assert (=> d!731725 e!1630295))

(declare-fun c!416610 () Bool)

(assert (=> d!731725 (= c!416610 ((_ is EmptyExpr!7659) (regex!4515 rule!570)))))

(assert (=> d!731725 (= lt!908770 e!1630294)))

(declare-fun c!416611 () Bool)

(assert (=> d!731725 (= c!416611 (isEmpty!17094 lt!908764))))

(declare-fun validRegex!3273 (Regex!7659) Bool)

(assert (=> d!731725 (validRegex!3273 (regex!4515 rule!570))))

(assert (=> d!731725 (= (matchR!3592 (regex!4515 rule!570) lt!908764) lt!908770)))

(declare-fun b!2583772 () Bool)

(declare-fun e!1630296 () Bool)

(assert (=> b!2583772 (= e!1630296 e!1630293)))

(declare-fun res!1086508 () Bool)

(assert (=> b!2583772 (=> res!1086508 e!1630293)))

(assert (=> b!2583772 (= res!1086508 call!166903)))

(declare-fun b!2583773 () Bool)

(declare-fun e!1630298 () Bool)

(assert (=> b!2583773 (= e!1630298 e!1630296)))

(declare-fun res!1086507 () Bool)

(assert (=> b!2583773 (=> (not res!1086507) (not e!1630296))))

(assert (=> b!2583773 (= res!1086507 (not lt!908770))))

(declare-fun b!2583774 () Bool)

(declare-fun res!1086511 () Bool)

(declare-fun e!1630292 () Bool)

(assert (=> b!2583774 (=> (not res!1086511) (not e!1630292))))

(assert (=> b!2583774 (= res!1086511 (not call!166903))))

(declare-fun b!2583775 () Bool)

(declare-fun e!1630297 () Bool)

(assert (=> b!2583775 (= e!1630295 e!1630297)))

(declare-fun c!416609 () Bool)

(assert (=> b!2583775 (= c!416609 ((_ is EmptyLang!7659) (regex!4515 rule!570)))))

(declare-fun b!2583776 () Bool)

(declare-fun nullable!2564 (Regex!7659) Bool)

(assert (=> b!2583776 (= e!1630294 (nullable!2564 (regex!4515 rule!570)))))

(declare-fun b!2583777 () Bool)

(declare-fun res!1086513 () Bool)

(assert (=> b!2583777 (=> (not res!1086513) (not e!1630292))))

(assert (=> b!2583777 (= res!1086513 (isEmpty!17094 (tail!4129 lt!908764)))))

(declare-fun b!2583778 () Bool)

(assert (=> b!2583778 (= e!1630292 (= (head!5856 lt!908764) (c!416602 (regex!4515 rule!570))))))

(declare-fun b!2583779 () Bool)

(declare-fun res!1086506 () Bool)

(assert (=> b!2583779 (=> res!1086506 e!1630298)))

(assert (=> b!2583779 (= res!1086506 (not ((_ is ElementMatch!7659) (regex!4515 rule!570))))))

(assert (=> b!2583779 (= e!1630297 e!1630298)))

(declare-fun b!2583780 () Bool)

(assert (=> b!2583780 (= e!1630297 (not lt!908770))))

(declare-fun b!2583781 () Bool)

(declare-fun res!1086510 () Bool)

(assert (=> b!2583781 (=> res!1086510 e!1630298)))

(assert (=> b!2583781 (= res!1086510 e!1630292)))

(declare-fun res!1086509 () Bool)

(assert (=> b!2583781 (=> (not res!1086509) (not e!1630292))))

(assert (=> b!2583781 (= res!1086509 lt!908770)))

(assert (= (and d!731725 c!416611) b!2583776))

(assert (= (and d!731725 (not c!416611)) b!2583771))

(assert (= (and d!731725 c!416610) b!2583770))

(assert (= (and d!731725 (not c!416610)) b!2583775))

(assert (= (and b!2583775 c!416609) b!2583780))

(assert (= (and b!2583775 (not c!416609)) b!2583779))

(assert (= (and b!2583779 (not res!1086506)) b!2583781))

(assert (= (and b!2583781 res!1086509) b!2583774))

(assert (= (and b!2583774 res!1086511) b!2583777))

(assert (= (and b!2583777 res!1086513) b!2583778))

(assert (= (and b!2583781 (not res!1086510)) b!2583773))

(assert (= (and b!2583773 res!1086507) b!2583772))

(assert (= (and b!2583772 (not res!1086508)) b!2583768))

(assert (= (and b!2583768 (not res!1086512)) b!2583769))

(assert (= (or b!2583770 b!2583772 b!2583774) bm!166898))

(declare-fun m!2920209 () Bool)

(assert (=> d!731725 m!2920209))

(declare-fun m!2920211 () Bool)

(assert (=> d!731725 m!2920211))

(declare-fun m!2920213 () Bool)

(assert (=> b!2583768 m!2920213))

(assert (=> b!2583768 m!2920213))

(declare-fun m!2920215 () Bool)

(assert (=> b!2583768 m!2920215))

(declare-fun m!2920217 () Bool)

(assert (=> b!2583771 m!2920217))

(assert (=> b!2583771 m!2920217))

(declare-fun m!2920219 () Bool)

(assert (=> b!2583771 m!2920219))

(assert (=> b!2583771 m!2920213))

(assert (=> b!2583771 m!2920219))

(assert (=> b!2583771 m!2920213))

(declare-fun m!2920221 () Bool)

(assert (=> b!2583771 m!2920221))

(assert (=> b!2583769 m!2920217))

(assert (=> b!2583777 m!2920213))

(assert (=> b!2583777 m!2920213))

(assert (=> b!2583777 m!2920215))

(declare-fun m!2920223 () Bool)

(assert (=> b!2583776 m!2920223))

(assert (=> b!2583778 m!2920217))

(assert (=> bm!166898 m!2920209))

(assert (=> b!2583726 d!731725))

(declare-fun d!731727 () Bool)

(declare-fun res!1086518 () Bool)

(declare-fun e!1630301 () Bool)

(assert (=> d!731727 (=> (not res!1086518) (not e!1630301))))

(assert (=> d!731727 (= res!1086518 (validRegex!3273 (regex!4515 rule!570)))))

(assert (=> d!731727 (= (ruleValid!1521 thiss!28211 rule!570) e!1630301)))

(declare-fun b!2583786 () Bool)

(declare-fun res!1086519 () Bool)

(assert (=> b!2583786 (=> (not res!1086519) (not e!1630301))))

(assert (=> b!2583786 (= res!1086519 (not (nullable!2564 (regex!4515 rule!570))))))

(declare-fun b!2583787 () Bool)

(assert (=> b!2583787 (= e!1630301 (not (= (tag!5005 rule!570) (String!33094 ""))))))

(assert (= (and d!731727 res!1086518) b!2583786))

(assert (= (and b!2583786 res!1086519) b!2583787))

(assert (=> d!731727 m!2920211))

(assert (=> b!2583786 m!2920223))

(assert (=> b!2583726 d!731727))

(declare-fun d!731729 () Bool)

(assert (=> d!731729 (ruleValid!1521 thiss!28211 rule!570)))

(declare-fun lt!908773 () Unit!43582)

(declare-fun choose!15229 (LexerInterface!4112 Rule!8830 List!29839) Unit!43582)

(assert (=> d!731729 (= lt!908773 (choose!15229 thiss!28211 rule!570 rules!4580))))

(assert (=> d!731729 (contains!5319 rules!4580 rule!570)))

(assert (=> d!731729 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!914 thiss!28211 rule!570 rules!4580) lt!908773)))

(declare-fun bs!471649 () Bool)

(assert (= bs!471649 d!731729))

(assert (=> bs!471649 m!2920157))

(declare-fun m!2920225 () Bool)

(assert (=> bs!471649 m!2920225))

(assert (=> bs!471649 m!2920195))

(assert (=> b!2583726 d!731729))

(declare-fun d!731731 () Bool)

(assert (=> d!731731 (= (inv!40160 (tag!5005 rule!570)) (= (mod (str.len (value!145924 (tag!5005 rule!570))) 2) 0))))

(assert (=> b!2583724 d!731731))

(declare-fun d!731733 () Bool)

(declare-fun res!1086522 () Bool)

(declare-fun e!1630304 () Bool)

(assert (=> d!731733 (=> (not res!1086522) (not e!1630304))))

(declare-fun semiInverseModEq!1884 (Int Int) Bool)

(assert (=> d!731733 (= res!1086522 (semiInverseModEq!1884 (toChars!6264 (transformation!4515 rule!570)) (toValue!6405 (transformation!4515 rule!570))))))

(assert (=> d!731733 (= (inv!40163 (transformation!4515 rule!570)) e!1630304)))

(declare-fun b!2583790 () Bool)

(declare-fun equivClasses!1785 (Int Int) Bool)

(assert (=> b!2583790 (= e!1630304 (equivClasses!1785 (toChars!6264 (transformation!4515 rule!570)) (toValue!6405 (transformation!4515 rule!570))))))

(assert (= (and d!731733 res!1086522) b!2583790))

(declare-fun m!2920227 () Bool)

(assert (=> d!731733 m!2920227))

(declare-fun m!2920229 () Bool)

(assert (=> b!2583790 m!2920229))

(assert (=> b!2583724 d!731733))

(declare-fun d!731735 () Bool)

(assert (=> d!731735 (= (inv!40160 (tag!5005 (h!35159 rs!798))) (= (mod (str.len (value!145924 (tag!5005 (h!35159 rs!798)))) 2) 0))))

(assert (=> b!2583735 d!731735))

(declare-fun d!731737 () Bool)

(declare-fun res!1086523 () Bool)

(declare-fun e!1630305 () Bool)

(assert (=> d!731737 (=> (not res!1086523) (not e!1630305))))

(assert (=> d!731737 (= res!1086523 (semiInverseModEq!1884 (toChars!6264 (transformation!4515 (h!35159 rs!798))) (toValue!6405 (transformation!4515 (h!35159 rs!798)))))))

(assert (=> d!731737 (= (inv!40163 (transformation!4515 (h!35159 rs!798))) e!1630305)))

(declare-fun b!2583791 () Bool)

(assert (=> b!2583791 (= e!1630305 (equivClasses!1785 (toChars!6264 (transformation!4515 (h!35159 rs!798))) (toValue!6405 (transformation!4515 (h!35159 rs!798)))))))

(assert (= (and d!731737 res!1086523) b!2583791))

(declare-fun m!2920231 () Bool)

(assert (=> d!731737 m!2920231))

(declare-fun m!2920233 () Bool)

(assert (=> b!2583791 m!2920233))

(assert (=> b!2583735 d!731737))

(declare-fun b!2583810 () Bool)

(declare-fun res!1086540 () Bool)

(declare-fun e!1630312 () Bool)

(assert (=> b!2583810 (=> (not res!1086540) (not e!1630312))))

(declare-fun lt!908788 () Option!5930)

(declare-fun get!9372 (Option!5930) tuple2!29694)

(assert (=> b!2583810 (= res!1086540 (= (value!145925 (_1!17389 (get!9372 lt!908788))) (apply!7020 (transformation!4515 (rule!6875 (_1!17389 (get!9372 lt!908788)))) (seqFromList!3155 (originalCharacters!5281 (_1!17389 (get!9372 lt!908788)))))))))

(declare-fun b!2583811 () Bool)

(declare-fun e!1630313 () Option!5930)

(declare-fun lt!908785 () Option!5930)

(declare-fun lt!908786 () Option!5930)

(assert (=> b!2583811 (= e!1630313 (ite (and ((_ is None!5929) lt!908785) ((_ is None!5929) lt!908786)) None!5929 (ite ((_ is None!5929) lt!908786) lt!908785 (ite ((_ is None!5929) lt!908785) lt!908786 (ite (>= (size!23055 (_1!17389 (v!32026 lt!908785))) (size!23055 (_1!17389 (v!32026 lt!908786)))) lt!908785 lt!908786)))))))

(declare-fun call!166906 () Option!5930)

(assert (=> b!2583811 (= lt!908785 call!166906)))

(assert (=> b!2583811 (= lt!908786 (maxPrefix!2284 thiss!28211 (t!212060 rules!4580) input!3654))))

(declare-fun b!2583812 () Bool)

(declare-fun e!1630314 () Bool)

(assert (=> b!2583812 (= e!1630314 e!1630312)))

(declare-fun res!1086544 () Bool)

(assert (=> b!2583812 (=> (not res!1086544) (not e!1630312))))

(declare-fun isDefined!4750 (Option!5930) Bool)

(assert (=> b!2583812 (= res!1086544 (isDefined!4750 lt!908788))))

(declare-fun b!2583813 () Bool)

(declare-fun res!1086539 () Bool)

(assert (=> b!2583813 (=> (not res!1086539) (not e!1630312))))

(assert (=> b!2583813 (= res!1086539 (< (size!23056 (_2!17389 (get!9372 lt!908788))) (size!23056 input!3654)))))

(declare-fun b!2583814 () Bool)

(declare-fun res!1086542 () Bool)

(assert (=> b!2583814 (=> (not res!1086542) (not e!1630312))))

(assert (=> b!2583814 (= res!1086542 (= (list!11241 (charsOf!2844 (_1!17389 (get!9372 lt!908788)))) (originalCharacters!5281 (_1!17389 (get!9372 lt!908788)))))))

(declare-fun b!2583815 () Bool)

(declare-fun res!1086541 () Bool)

(assert (=> b!2583815 (=> (not res!1086541) (not e!1630312))))

(assert (=> b!2583815 (= res!1086541 (= (++!7305 (list!11241 (charsOf!2844 (_1!17389 (get!9372 lt!908788)))) (_2!17389 (get!9372 lt!908788))) input!3654))))

(declare-fun d!731739 () Bool)

(assert (=> d!731739 e!1630314))

(declare-fun res!1086543 () Bool)

(assert (=> d!731739 (=> res!1086543 e!1630314)))

(declare-fun isEmpty!17095 (Option!5930) Bool)

(assert (=> d!731739 (= res!1086543 (isEmpty!17095 lt!908788))))

(assert (=> d!731739 (= lt!908788 e!1630313)))

(declare-fun c!416614 () Bool)

(assert (=> d!731739 (= c!416614 (and ((_ is Cons!29739) rules!4580) ((_ is Nil!29739) (t!212060 rules!4580))))))

(declare-fun lt!908784 () Unit!43582)

(declare-fun lt!908787 () Unit!43582)

(assert (=> d!731739 (= lt!908784 lt!908787)))

(declare-fun isPrefix!2415 (List!29838 List!29838) Bool)

(assert (=> d!731739 (isPrefix!2415 input!3654 input!3654)))

(declare-fun lemmaIsPrefixRefl!1541 (List!29838 List!29838) Unit!43582)

(assert (=> d!731739 (= lt!908787 (lemmaIsPrefixRefl!1541 input!3654 input!3654))))

(declare-fun rulesValidInductive!1589 (LexerInterface!4112 List!29839) Bool)

(assert (=> d!731739 (rulesValidInductive!1589 thiss!28211 rules!4580)))

(assert (=> d!731739 (= (maxPrefix!2284 thiss!28211 rules!4580 input!3654) lt!908788)))

(declare-fun bm!166901 () Bool)

(assert (=> bm!166901 (= call!166906 (maxPrefixOneRule!1450 thiss!28211 (h!35159 rules!4580) input!3654))))

(declare-fun b!2583816 () Bool)

(declare-fun res!1086538 () Bool)

(assert (=> b!2583816 (=> (not res!1086538) (not e!1630312))))

(assert (=> b!2583816 (= res!1086538 (matchR!3592 (regex!4515 (rule!6875 (_1!17389 (get!9372 lt!908788)))) (list!11241 (charsOf!2844 (_1!17389 (get!9372 lt!908788))))))))

(declare-fun b!2583817 () Bool)

(assert (=> b!2583817 (= e!1630312 (contains!5319 rules!4580 (rule!6875 (_1!17389 (get!9372 lt!908788)))))))

(declare-fun b!2583818 () Bool)

(assert (=> b!2583818 (= e!1630313 call!166906)))

(assert (= (and d!731739 c!416614) b!2583818))

(assert (= (and d!731739 (not c!416614)) b!2583811))

(assert (= (or b!2583818 b!2583811) bm!166901))

(assert (= (and d!731739 (not res!1086543)) b!2583812))

(assert (= (and b!2583812 res!1086544) b!2583814))

(assert (= (and b!2583814 res!1086542) b!2583813))

(assert (= (and b!2583813 res!1086539) b!2583815))

(assert (= (and b!2583815 res!1086541) b!2583810))

(assert (= (and b!2583810 res!1086540) b!2583816))

(assert (= (and b!2583816 res!1086538) b!2583817))

(declare-fun m!2920235 () Bool)

(assert (=> bm!166901 m!2920235))

(declare-fun m!2920237 () Bool)

(assert (=> d!731739 m!2920237))

(declare-fun m!2920239 () Bool)

(assert (=> d!731739 m!2920239))

(declare-fun m!2920241 () Bool)

(assert (=> d!731739 m!2920241))

(declare-fun m!2920243 () Bool)

(assert (=> d!731739 m!2920243))

(declare-fun m!2920245 () Bool)

(assert (=> b!2583817 m!2920245))

(declare-fun m!2920247 () Bool)

(assert (=> b!2583817 m!2920247))

(declare-fun m!2920249 () Bool)

(assert (=> b!2583812 m!2920249))

(assert (=> b!2583814 m!2920245))

(declare-fun m!2920251 () Bool)

(assert (=> b!2583814 m!2920251))

(assert (=> b!2583814 m!2920251))

(declare-fun m!2920253 () Bool)

(assert (=> b!2583814 m!2920253))

(assert (=> b!2583815 m!2920245))

(assert (=> b!2583815 m!2920251))

(assert (=> b!2583815 m!2920251))

(assert (=> b!2583815 m!2920253))

(assert (=> b!2583815 m!2920253))

(declare-fun m!2920255 () Bool)

(assert (=> b!2583815 m!2920255))

(assert (=> b!2583810 m!2920245))

(declare-fun m!2920257 () Bool)

(assert (=> b!2583810 m!2920257))

(assert (=> b!2583810 m!2920257))

(declare-fun m!2920259 () Bool)

(assert (=> b!2583810 m!2920259))

(assert (=> b!2583813 m!2920245))

(declare-fun m!2920261 () Bool)

(assert (=> b!2583813 m!2920261))

(declare-fun m!2920263 () Bool)

(assert (=> b!2583813 m!2920263))

(assert (=> b!2583816 m!2920245))

(assert (=> b!2583816 m!2920251))

(assert (=> b!2583816 m!2920251))

(assert (=> b!2583816 m!2920253))

(assert (=> b!2583816 m!2920253))

(declare-fun m!2920265 () Bool)

(assert (=> b!2583816 m!2920265))

(declare-fun m!2920267 () Bool)

(assert (=> b!2583811 m!2920267))

(assert (=> b!2583723 d!731739))

(declare-fun d!731741 () Bool)

(declare-fun lt!908791 () Int)

(assert (=> d!731741 (>= lt!908791 0)))

(declare-fun e!1630317 () Int)

(assert (=> d!731741 (= lt!908791 e!1630317)))

(declare-fun c!416617 () Bool)

(assert (=> d!731741 (= c!416617 ((_ is Nil!29739) rs!798))))

(assert (=> d!731741 (= (ListPrimitiveSize!177 rs!798) lt!908791)))

(declare-fun b!2583823 () Bool)

(assert (=> b!2583823 (= e!1630317 0)))

(declare-fun b!2583824 () Bool)

(assert (=> b!2583824 (= e!1630317 (+ 1 (ListPrimitiveSize!177 (t!212060 rs!798))))))

(assert (= (and d!731741 c!416617) b!2583823))

(assert (= (and d!731741 (not c!416617)) b!2583824))

(declare-fun m!2920269 () Bool)

(assert (=> b!2583824 m!2920269))

(assert (=> b!2583732 d!731741))

(declare-fun d!731743 () Bool)

(declare-fun res!1086547 () Bool)

(declare-fun e!1630320 () Bool)

(assert (=> d!731743 (=> (not res!1086547) (not e!1630320))))

(assert (=> d!731743 (= res!1086547 (rulesValid!1687 thiss!28211 rules!4580))))

(assert (=> d!731743 (= (rulesInvariant!3612 thiss!28211 rules!4580) e!1630320)))

(declare-fun b!2583827 () Bool)

(declare-datatypes ((List!29841 0))(
  ( (Nil!29741) (Cons!29741 (h!35161 String!33093) (t!212110 List!29841)) )
))
(declare-fun noDuplicateTag!1685 (LexerInterface!4112 List!29839 List!29841) Bool)

(assert (=> b!2583827 (= e!1630320 (noDuplicateTag!1685 thiss!28211 rules!4580 Nil!29741))))

(assert (= (and d!731743 res!1086547) b!2583827))

(declare-fun m!2920271 () Bool)

(assert (=> d!731743 m!2920271))

(declare-fun m!2920273 () Bool)

(assert (=> b!2583827 m!2920273))

(assert (=> b!2583722 d!731743))

(declare-fun d!731745 () Bool)

(declare-fun res!1086552 () Bool)

(declare-fun e!1630323 () Bool)

(assert (=> d!731745 (=> (not res!1086552) (not e!1630323))))

(assert (=> d!731745 (= res!1086552 (not (isEmpty!17094 (originalCharacters!5281 token!562))))))

(assert (=> d!731745 (= (inv!40164 token!562) e!1630323)))

(declare-fun b!2583832 () Bool)

(declare-fun res!1086553 () Bool)

(assert (=> b!2583832 (=> (not res!1086553) (not e!1630323))))

(declare-fun dynLambda!12567 (Int TokenValue!4737) BalanceConc!18176)

(assert (=> b!2583832 (= res!1086553 (= (originalCharacters!5281 token!562) (list!11241 (dynLambda!12567 (toChars!6264 (transformation!4515 (rule!6875 token!562))) (value!145925 token!562)))))))

(declare-fun b!2583833 () Bool)

(assert (=> b!2583833 (= e!1630323 (= (size!23055 token!562) (size!23056 (originalCharacters!5281 token!562))))))

(assert (= (and d!731745 res!1086552) b!2583832))

(assert (= (and b!2583832 res!1086553) b!2583833))

(declare-fun b_lambda!76687 () Bool)

(assert (=> (not b_lambda!76687) (not b!2583832)))

(declare-fun t!212062 () Bool)

(declare-fun tb!140697 () Bool)

(assert (=> (and b!2583719 (= (toChars!6264 (transformation!4515 (h!35159 rs!798))) (toChars!6264 (transformation!4515 (rule!6875 token!562)))) t!212062) tb!140697))

(declare-fun b!2583838 () Bool)

(declare-fun e!1630326 () Bool)

(declare-fun tp!820239 () Bool)

(declare-fun inv!40167 (Conc!9281) Bool)

(assert (=> b!2583838 (= e!1630326 (and (inv!40167 (c!416601 (dynLambda!12567 (toChars!6264 (transformation!4515 (rule!6875 token!562))) (value!145925 token!562)))) tp!820239))))

(declare-fun result!174900 () Bool)

(declare-fun inv!40168 (BalanceConc!18176) Bool)

(assert (=> tb!140697 (= result!174900 (and (inv!40168 (dynLambda!12567 (toChars!6264 (transformation!4515 (rule!6875 token!562))) (value!145925 token!562))) e!1630326))))

(assert (= tb!140697 b!2583838))

(declare-fun m!2920275 () Bool)

(assert (=> b!2583838 m!2920275))

(declare-fun m!2920277 () Bool)

(assert (=> tb!140697 m!2920277))

(assert (=> b!2583832 t!212062))

(declare-fun b_and!189259 () Bool)

(assert (= b_and!189245 (and (=> t!212062 result!174900) b_and!189259)))

(declare-fun tb!140699 () Bool)

(declare-fun t!212064 () Bool)

(assert (=> (and b!2583720 (= (toChars!6264 (transformation!4515 (h!35159 rules!4580))) (toChars!6264 (transformation!4515 (rule!6875 token!562)))) t!212064) tb!140699))

(declare-fun result!174904 () Bool)

(assert (= result!174904 result!174900))

(assert (=> b!2583832 t!212064))

(declare-fun b_and!189261 () Bool)

(assert (= b_and!189249 (and (=> t!212064 result!174904) b_and!189261)))

(declare-fun t!212066 () Bool)

(declare-fun tb!140701 () Bool)

(assert (=> (and b!2583718 (= (toChars!6264 (transformation!4515 (rule!6875 token!562))) (toChars!6264 (transformation!4515 (rule!6875 token!562)))) t!212066) tb!140701))

(declare-fun result!174906 () Bool)

(assert (= result!174906 result!174900))

(assert (=> b!2583832 t!212066))

(declare-fun b_and!189263 () Bool)

(assert (= b_and!189253 (and (=> t!212066 result!174906) b_and!189263)))

(declare-fun tb!140703 () Bool)

(declare-fun t!212068 () Bool)

(assert (=> (and b!2583725 (= (toChars!6264 (transformation!4515 rule!570)) (toChars!6264 (transformation!4515 (rule!6875 token!562)))) t!212068) tb!140703))

(declare-fun result!174908 () Bool)

(assert (= result!174908 result!174900))

(assert (=> b!2583832 t!212068))

(declare-fun b_and!189265 () Bool)

(assert (= b_and!189257 (and (=> t!212068 result!174908) b_and!189265)))

(declare-fun m!2920279 () Bool)

(assert (=> d!731745 m!2920279))

(declare-fun m!2920281 () Bool)

(assert (=> b!2583832 m!2920281))

(assert (=> b!2583832 m!2920281))

(declare-fun m!2920283 () Bool)

(assert (=> b!2583832 m!2920283))

(declare-fun m!2920285 () Bool)

(assert (=> b!2583833 m!2920285))

(assert (=> start!250144 d!731745))

(declare-fun d!731747 () Bool)

(declare-fun lt!908794 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4103 (List!29839) (InoxSet Rule!8830))

(assert (=> d!731747 (= lt!908794 (select (content!4103 rules!4580) rule!570))))

(declare-fun e!1630332 () Bool)

(assert (=> d!731747 (= lt!908794 e!1630332)))

(declare-fun res!1086558 () Bool)

(assert (=> d!731747 (=> (not res!1086558) (not e!1630332))))

(assert (=> d!731747 (= res!1086558 ((_ is Cons!29739) rules!4580))))

(assert (=> d!731747 (= (contains!5319 rules!4580 rule!570) lt!908794)))

(declare-fun b!2583843 () Bool)

(declare-fun e!1630331 () Bool)

(assert (=> b!2583843 (= e!1630332 e!1630331)))

(declare-fun res!1086559 () Bool)

(assert (=> b!2583843 (=> res!1086559 e!1630331)))

(assert (=> b!2583843 (= res!1086559 (= (h!35159 rules!4580) rule!570))))

(declare-fun b!2583844 () Bool)

(assert (=> b!2583844 (= e!1630331 (contains!5319 (t!212060 rules!4580) rule!570))))

(assert (= (and d!731747 res!1086558) b!2583843))

(assert (= (and b!2583843 (not res!1086559)) b!2583844))

(declare-fun m!2920287 () Bool)

(assert (=> d!731747 m!2920287))

(declare-fun m!2920289 () Bool)

(assert (=> d!731747 m!2920289))

(declare-fun m!2920291 () Bool)

(assert (=> b!2583844 m!2920291))

(assert (=> b!2583731 d!731747))

(declare-fun b!2583854 () Bool)

(declare-fun e!1630338 () List!29838)

(assert (=> b!2583854 (= e!1630338 (Cons!29738 (h!35158 lt!908764) (++!7305 (t!212059 lt!908764) suffix!1684)))))

(declare-fun lt!908797 () List!29838)

(declare-fun b!2583856 () Bool)

(declare-fun e!1630337 () Bool)

(assert (=> b!2583856 (= e!1630337 (or (not (= suffix!1684 Nil!29738)) (= lt!908797 lt!908764)))))

(declare-fun b!2583855 () Bool)

(declare-fun res!1086564 () Bool)

(assert (=> b!2583855 (=> (not res!1086564) (not e!1630337))))

(assert (=> b!2583855 (= res!1086564 (= (size!23056 lt!908797) (+ (size!23056 lt!908764) (size!23056 suffix!1684))))))

(declare-fun d!731749 () Bool)

(assert (=> d!731749 e!1630337))

(declare-fun res!1086565 () Bool)

(assert (=> d!731749 (=> (not res!1086565) (not e!1630337))))

(declare-fun content!4104 (List!29838) (InoxSet C!15476))

(assert (=> d!731749 (= res!1086565 (= (content!4104 lt!908797) ((_ map or) (content!4104 lt!908764) (content!4104 suffix!1684))))))

(assert (=> d!731749 (= lt!908797 e!1630338)))

(declare-fun c!416620 () Bool)

(assert (=> d!731749 (= c!416620 ((_ is Nil!29738) lt!908764))))

(assert (=> d!731749 (= (++!7305 lt!908764 suffix!1684) lt!908797)))

(declare-fun b!2583853 () Bool)

(assert (=> b!2583853 (= e!1630338 suffix!1684)))

(assert (= (and d!731749 c!416620) b!2583853))

(assert (= (and d!731749 (not c!416620)) b!2583854))

(assert (= (and d!731749 res!1086565) b!2583855))

(assert (= (and b!2583855 res!1086564) b!2583856))

(declare-fun m!2920293 () Bool)

(assert (=> b!2583854 m!2920293))

(declare-fun m!2920295 () Bool)

(assert (=> b!2583855 m!2920295))

(declare-fun m!2920297 () Bool)

(assert (=> b!2583855 m!2920297))

(declare-fun m!2920299 () Bool)

(assert (=> b!2583855 m!2920299))

(declare-fun m!2920301 () Bool)

(assert (=> d!731749 m!2920301))

(declare-fun m!2920303 () Bool)

(assert (=> d!731749 m!2920303))

(declare-fun m!2920305 () Bool)

(assert (=> d!731749 m!2920305))

(assert (=> b!2583729 d!731749))

(declare-fun d!731751 () Bool)

(declare-fun list!11243 (Conc!9281) List!29838)

(assert (=> d!731751 (= (list!11241 (charsOf!2844 token!562)) (list!11243 (c!416601 (charsOf!2844 token!562))))))

(declare-fun bs!471650 () Bool)

(assert (= bs!471650 d!731751))

(declare-fun m!2920307 () Bool)

(assert (=> bs!471650 m!2920307))

(assert (=> b!2583729 d!731751))

(declare-fun d!731753 () Bool)

(declare-fun lt!908800 () BalanceConc!18176)

(assert (=> d!731753 (= (list!11241 lt!908800) (originalCharacters!5281 token!562))))

(assert (=> d!731753 (= lt!908800 (dynLambda!12567 (toChars!6264 (transformation!4515 (rule!6875 token!562))) (value!145925 token!562)))))

(assert (=> d!731753 (= (charsOf!2844 token!562) lt!908800)))

(declare-fun b_lambda!76689 () Bool)

(assert (=> (not b_lambda!76689) (not d!731753)))

(assert (=> d!731753 t!212062))

(declare-fun b_and!189267 () Bool)

(assert (= b_and!189259 (and (=> t!212062 result!174900) b_and!189267)))

(assert (=> d!731753 t!212064))

(declare-fun b_and!189269 () Bool)

(assert (= b_and!189261 (and (=> t!212064 result!174904) b_and!189269)))

(assert (=> d!731753 t!212066))

(declare-fun b_and!189271 () Bool)

(assert (= b_and!189263 (and (=> t!212066 result!174906) b_and!189271)))

(assert (=> d!731753 t!212068))

(declare-fun b_and!189273 () Bool)

(assert (= b_and!189265 (and (=> t!212068 result!174908) b_and!189273)))

(declare-fun m!2920309 () Bool)

(assert (=> d!731753 m!2920309))

(assert (=> d!731753 m!2920281))

(assert (=> b!2583729 d!731753))

(declare-fun d!731755 () Bool)

(assert (=> d!731755 (= (inv!40160 (tag!5005 (rule!6875 token!562))) (= (mod (str.len (value!145924 (tag!5005 (rule!6875 token!562)))) 2) 0))))

(assert (=> b!2583730 d!731755))

(declare-fun d!731757 () Bool)

(declare-fun res!1086566 () Bool)

(declare-fun e!1630339 () Bool)

(assert (=> d!731757 (=> (not res!1086566) (not e!1630339))))

(assert (=> d!731757 (= res!1086566 (semiInverseModEq!1884 (toChars!6264 (transformation!4515 (rule!6875 token!562))) (toValue!6405 (transformation!4515 (rule!6875 token!562)))))))

(assert (=> d!731757 (= (inv!40163 (transformation!4515 (rule!6875 token!562))) e!1630339)))

(declare-fun b!2583857 () Bool)

(assert (=> b!2583857 (= e!1630339 (equivClasses!1785 (toChars!6264 (transformation!4515 (rule!6875 token!562))) (toValue!6405 (transformation!4515 (rule!6875 token!562)))))))

(assert (= (and d!731757 res!1086566) b!2583857))

(declare-fun m!2920311 () Bool)

(assert (=> d!731757 m!2920311))

(declare-fun m!2920313 () Bool)

(assert (=> b!2583857 m!2920313))

(assert (=> b!2583730 d!731757))

(declare-fun b!2583858 () Bool)

(declare-fun res!1086573 () Bool)

(declare-fun e!1630341 () Bool)

(assert (=> b!2583858 (=> res!1086573 e!1630341)))

(assert (=> b!2583858 (= res!1086573 (not (isEmpty!17094 (tail!4129 lt!908759))))))

(declare-fun b!2583859 () Bool)

(assert (=> b!2583859 (= e!1630341 (not (= (head!5856 lt!908759) (c!416602 (regex!4515 rule!570)))))))

(declare-fun b!2583860 () Bool)

(declare-fun e!1630343 () Bool)

(declare-fun lt!908801 () Bool)

(declare-fun call!166907 () Bool)

(assert (=> b!2583860 (= e!1630343 (= lt!908801 call!166907))))

(declare-fun bm!166902 () Bool)

(assert (=> bm!166902 (= call!166907 (isEmpty!17094 lt!908759))))

(declare-fun b!2583861 () Bool)

(declare-fun e!1630342 () Bool)

(assert (=> b!2583861 (= e!1630342 (matchR!3592 (derivativeStep!2216 (regex!4515 rule!570) (head!5856 lt!908759)) (tail!4129 lt!908759)))))

(declare-fun d!731759 () Bool)

(assert (=> d!731759 e!1630343))

(declare-fun c!416622 () Bool)

(assert (=> d!731759 (= c!416622 ((_ is EmptyExpr!7659) (regex!4515 rule!570)))))

(assert (=> d!731759 (= lt!908801 e!1630342)))

(declare-fun c!416623 () Bool)

(assert (=> d!731759 (= c!416623 (isEmpty!17094 lt!908759))))

(assert (=> d!731759 (validRegex!3273 (regex!4515 rule!570))))

(assert (=> d!731759 (= (matchR!3592 (regex!4515 rule!570) lt!908759) lt!908801)))

(declare-fun b!2583862 () Bool)

(declare-fun e!1630344 () Bool)

(assert (=> b!2583862 (= e!1630344 e!1630341)))

(declare-fun res!1086569 () Bool)

(assert (=> b!2583862 (=> res!1086569 e!1630341)))

(assert (=> b!2583862 (= res!1086569 call!166907)))

(declare-fun b!2583863 () Bool)

(declare-fun e!1630346 () Bool)

(assert (=> b!2583863 (= e!1630346 e!1630344)))

(declare-fun res!1086568 () Bool)

(assert (=> b!2583863 (=> (not res!1086568) (not e!1630344))))

(assert (=> b!2583863 (= res!1086568 (not lt!908801))))

(declare-fun b!2583864 () Bool)

(declare-fun res!1086572 () Bool)

(declare-fun e!1630340 () Bool)

(assert (=> b!2583864 (=> (not res!1086572) (not e!1630340))))

(assert (=> b!2583864 (= res!1086572 (not call!166907))))

(declare-fun b!2583865 () Bool)

(declare-fun e!1630345 () Bool)

(assert (=> b!2583865 (= e!1630343 e!1630345)))

(declare-fun c!416621 () Bool)

(assert (=> b!2583865 (= c!416621 ((_ is EmptyLang!7659) (regex!4515 rule!570)))))

(declare-fun b!2583866 () Bool)

(assert (=> b!2583866 (= e!1630342 (nullable!2564 (regex!4515 rule!570)))))

(declare-fun b!2583867 () Bool)

(declare-fun res!1086574 () Bool)

(assert (=> b!2583867 (=> (not res!1086574) (not e!1630340))))

(assert (=> b!2583867 (= res!1086574 (isEmpty!17094 (tail!4129 lt!908759)))))

(declare-fun b!2583868 () Bool)

(assert (=> b!2583868 (= e!1630340 (= (head!5856 lt!908759) (c!416602 (regex!4515 rule!570))))))

(declare-fun b!2583869 () Bool)

(declare-fun res!1086567 () Bool)

(assert (=> b!2583869 (=> res!1086567 e!1630346)))

(assert (=> b!2583869 (= res!1086567 (not ((_ is ElementMatch!7659) (regex!4515 rule!570))))))

(assert (=> b!2583869 (= e!1630345 e!1630346)))

(declare-fun b!2583870 () Bool)

(assert (=> b!2583870 (= e!1630345 (not lt!908801))))

(declare-fun b!2583871 () Bool)

(declare-fun res!1086571 () Bool)

(assert (=> b!2583871 (=> res!1086571 e!1630346)))

(assert (=> b!2583871 (= res!1086571 e!1630340)))

(declare-fun res!1086570 () Bool)

(assert (=> b!2583871 (=> (not res!1086570) (not e!1630340))))

(assert (=> b!2583871 (= res!1086570 lt!908801)))

(assert (= (and d!731759 c!416623) b!2583866))

(assert (= (and d!731759 (not c!416623)) b!2583861))

(assert (= (and d!731759 c!416622) b!2583860))

(assert (= (and d!731759 (not c!416622)) b!2583865))

(assert (= (and b!2583865 c!416621) b!2583870))

(assert (= (and b!2583865 (not c!416621)) b!2583869))

(assert (= (and b!2583869 (not res!1086567)) b!2583871))

(assert (= (and b!2583871 res!1086570) b!2583864))

(assert (= (and b!2583864 res!1086572) b!2583867))

(assert (= (and b!2583867 res!1086574) b!2583868))

(assert (= (and b!2583871 (not res!1086571)) b!2583863))

(assert (= (and b!2583863 res!1086568) b!2583862))

(assert (= (and b!2583862 (not res!1086569)) b!2583858))

(assert (= (and b!2583858 (not res!1086573)) b!2583859))

(assert (= (or b!2583860 b!2583862 b!2583864) bm!166902))

(declare-fun m!2920315 () Bool)

(assert (=> d!731759 m!2920315))

(assert (=> d!731759 m!2920211))

(declare-fun m!2920317 () Bool)

(assert (=> b!2583858 m!2920317))

(assert (=> b!2583858 m!2920317))

(declare-fun m!2920319 () Bool)

(assert (=> b!2583858 m!2920319))

(declare-fun m!2920321 () Bool)

(assert (=> b!2583861 m!2920321))

(assert (=> b!2583861 m!2920321))

(declare-fun m!2920323 () Bool)

(assert (=> b!2583861 m!2920323))

(assert (=> b!2583861 m!2920317))

(assert (=> b!2583861 m!2920323))

(assert (=> b!2583861 m!2920317))

(declare-fun m!2920325 () Bool)

(assert (=> b!2583861 m!2920325))

(assert (=> b!2583859 m!2920321))

(assert (=> b!2583867 m!2920317))

(assert (=> b!2583867 m!2920317))

(assert (=> b!2583867 m!2920319))

(assert (=> b!2583866 m!2920223))

(assert (=> b!2583868 m!2920321))

(assert (=> bm!166902 m!2920315))

(assert (=> b!2583728 d!731759))

(declare-fun d!731761 () Bool)

(assert (=> d!731761 (= (isEmpty!17091 rules!4580) ((_ is Nil!29739) rules!4580))))

(assert (=> b!2583739 d!731761))

(declare-fun b!2583964 () Bool)

(declare-fun e!1630394 () Option!5930)

(declare-datatypes ((tuple2!29698 0))(
  ( (tuple2!29699 (_1!17391 List!29838) (_2!17391 List!29838)) )
))
(declare-fun lt!908822 () tuple2!29698)

(declare-fun size!23058 (BalanceConc!18176) Int)

(assert (=> b!2583964 (= e!1630394 (Some!5929 (tuple2!29695 (Token!8501 (apply!7020 (transformation!4515 rule!570) (seqFromList!3155 (_1!17391 lt!908822))) rule!570 (size!23058 (seqFromList!3155 (_1!17391 lt!908822))) (_1!17391 lt!908822)) (_2!17391 lt!908822))))))

(declare-fun lt!908823 () Unit!43582)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!724 (Regex!7659 List!29838) Unit!43582)

(assert (=> b!2583964 (= lt!908823 (longestMatchIsAcceptedByMatchOrIsEmpty!724 (regex!4515 rule!570) input!3654))))

(declare-fun res!1086626 () Bool)

(declare-fun findLongestMatchInner!751 (Regex!7659 List!29838 Int List!29838 List!29838 Int) tuple2!29698)

(assert (=> b!2583964 (= res!1086626 (isEmpty!17094 (_1!17391 (findLongestMatchInner!751 (regex!4515 rule!570) Nil!29738 (size!23056 Nil!29738) input!3654 input!3654 (size!23056 input!3654)))))))

(declare-fun e!1630397 () Bool)

(assert (=> b!2583964 (=> res!1086626 e!1630397)))

(assert (=> b!2583964 e!1630397))

(declare-fun lt!908826 () Unit!43582)

(assert (=> b!2583964 (= lt!908826 lt!908823)))

(declare-fun lt!908825 () Unit!43582)

(declare-fun lemmaSemiInverse!1102 (TokenValueInjection!8914 BalanceConc!18176) Unit!43582)

(assert (=> b!2583964 (= lt!908825 (lemmaSemiInverse!1102 (transformation!4515 rule!570) (seqFromList!3155 (_1!17391 lt!908822))))))

(declare-fun b!2583965 () Bool)

(declare-fun res!1086629 () Bool)

(declare-fun e!1630396 () Bool)

(assert (=> b!2583965 (=> (not res!1086629) (not e!1630396))))

(declare-fun lt!908824 () Option!5930)

(assert (=> b!2583965 (= res!1086629 (= (value!145925 (_1!17389 (get!9372 lt!908824))) (apply!7020 (transformation!4515 (rule!6875 (_1!17389 (get!9372 lt!908824)))) (seqFromList!3155 (originalCharacters!5281 (_1!17389 (get!9372 lt!908824)))))))))

(declare-fun b!2583966 () Bool)

(declare-fun res!1086631 () Bool)

(assert (=> b!2583966 (=> (not res!1086631) (not e!1630396))))

(assert (=> b!2583966 (= res!1086631 (< (size!23056 (_2!17389 (get!9372 lt!908824))) (size!23056 input!3654)))))

(declare-fun b!2583967 () Bool)

(declare-fun res!1086627 () Bool)

(assert (=> b!2583967 (=> (not res!1086627) (not e!1630396))))

(assert (=> b!2583967 (= res!1086627 (= (rule!6875 (_1!17389 (get!9372 lt!908824))) rule!570))))

(declare-fun b!2583968 () Bool)

(assert (=> b!2583968 (= e!1630396 (= (size!23055 (_1!17389 (get!9372 lt!908824))) (size!23056 (originalCharacters!5281 (_1!17389 (get!9372 lt!908824))))))))

(declare-fun b!2583969 () Bool)

(assert (=> b!2583969 (= e!1630397 (matchR!3592 (regex!4515 rule!570) (_1!17391 (findLongestMatchInner!751 (regex!4515 rule!570) Nil!29738 (size!23056 Nil!29738) input!3654 input!3654 (size!23056 input!3654)))))))

(declare-fun d!731763 () Bool)

(declare-fun e!1630395 () Bool)

(assert (=> d!731763 e!1630395))

(declare-fun res!1086628 () Bool)

(assert (=> d!731763 (=> res!1086628 e!1630395)))

(assert (=> d!731763 (= res!1086628 (isEmpty!17095 lt!908824))))

(assert (=> d!731763 (= lt!908824 e!1630394)))

(declare-fun c!416644 () Bool)

(assert (=> d!731763 (= c!416644 (isEmpty!17094 (_1!17391 lt!908822)))))

(declare-fun findLongestMatch!680 (Regex!7659 List!29838) tuple2!29698)

(assert (=> d!731763 (= lt!908822 (findLongestMatch!680 (regex!4515 rule!570) input!3654))))

(assert (=> d!731763 (ruleValid!1521 thiss!28211 rule!570)))

(assert (=> d!731763 (= (maxPrefixOneRule!1450 thiss!28211 rule!570 input!3654) lt!908824)))

(declare-fun b!2583970 () Bool)

(declare-fun res!1086625 () Bool)

(assert (=> b!2583970 (=> (not res!1086625) (not e!1630396))))

(assert (=> b!2583970 (= res!1086625 (= (++!7305 (list!11241 (charsOf!2844 (_1!17389 (get!9372 lt!908824)))) (_2!17389 (get!9372 lt!908824))) input!3654))))

(declare-fun b!2583971 () Bool)

(assert (=> b!2583971 (= e!1630394 None!5929)))

(declare-fun b!2583972 () Bool)

(assert (=> b!2583972 (= e!1630395 e!1630396)))

(declare-fun res!1086630 () Bool)

(assert (=> b!2583972 (=> (not res!1086630) (not e!1630396))))

(assert (=> b!2583972 (= res!1086630 (matchR!3592 (regex!4515 rule!570) (list!11241 (charsOf!2844 (_1!17389 (get!9372 lt!908824))))))))

(assert (= (and d!731763 c!416644) b!2583971))

(assert (= (and d!731763 (not c!416644)) b!2583964))

(assert (= (and b!2583964 (not res!1086626)) b!2583969))

(assert (= (and d!731763 (not res!1086628)) b!2583972))

(assert (= (and b!2583972 res!1086630) b!2583970))

(assert (= (and b!2583970 res!1086625) b!2583966))

(assert (= (and b!2583966 res!1086631) b!2583967))

(assert (= (and b!2583967 res!1086627) b!2583965))

(assert (= (and b!2583965 res!1086629) b!2583968))

(declare-fun m!2920361 () Bool)

(assert (=> b!2583967 m!2920361))

(declare-fun m!2920363 () Bool)

(assert (=> b!2583964 m!2920363))

(declare-fun m!2920365 () Bool)

(assert (=> b!2583964 m!2920365))

(assert (=> b!2583964 m!2920363))

(declare-fun m!2920367 () Bool)

(assert (=> b!2583964 m!2920367))

(declare-fun m!2920369 () Bool)

(assert (=> b!2583964 m!2920369))

(declare-fun m!2920371 () Bool)

(assert (=> b!2583964 m!2920371))

(assert (=> b!2583964 m!2920371))

(assert (=> b!2583964 m!2920263))

(declare-fun m!2920373 () Bool)

(assert (=> b!2583964 m!2920373))

(assert (=> b!2583964 m!2920263))

(declare-fun m!2920375 () Bool)

(assert (=> b!2583964 m!2920375))

(assert (=> b!2583964 m!2920363))

(declare-fun m!2920377 () Bool)

(assert (=> b!2583964 m!2920377))

(assert (=> b!2583964 m!2920363))

(assert (=> b!2583972 m!2920361))

(declare-fun m!2920379 () Bool)

(assert (=> b!2583972 m!2920379))

(assert (=> b!2583972 m!2920379))

(declare-fun m!2920381 () Bool)

(assert (=> b!2583972 m!2920381))

(assert (=> b!2583972 m!2920381))

(declare-fun m!2920383 () Bool)

(assert (=> b!2583972 m!2920383))

(declare-fun m!2920385 () Bool)

(assert (=> d!731763 m!2920385))

(declare-fun m!2920387 () Bool)

(assert (=> d!731763 m!2920387))

(declare-fun m!2920389 () Bool)

(assert (=> d!731763 m!2920389))

(assert (=> d!731763 m!2920157))

(assert (=> b!2583968 m!2920361))

(declare-fun m!2920391 () Bool)

(assert (=> b!2583968 m!2920391))

(assert (=> b!2583966 m!2920361))

(declare-fun m!2920393 () Bool)

(assert (=> b!2583966 m!2920393))

(assert (=> b!2583966 m!2920263))

(assert (=> b!2583969 m!2920371))

(assert (=> b!2583969 m!2920263))

(assert (=> b!2583969 m!2920371))

(assert (=> b!2583969 m!2920263))

(assert (=> b!2583969 m!2920373))

(declare-fun m!2920395 () Bool)

(assert (=> b!2583969 m!2920395))

(assert (=> b!2583970 m!2920361))

(assert (=> b!2583970 m!2920379))

(assert (=> b!2583970 m!2920379))

(assert (=> b!2583970 m!2920381))

(assert (=> b!2583970 m!2920381))

(declare-fun m!2920397 () Bool)

(assert (=> b!2583970 m!2920397))

(assert (=> b!2583965 m!2920361))

(declare-fun m!2920399 () Bool)

(assert (=> b!2583965 m!2920399))

(assert (=> b!2583965 m!2920399))

(declare-fun m!2920401 () Bool)

(assert (=> b!2583965 m!2920401))

(assert (=> b!2583716 d!731763))

(assert (=> b!2583716 d!731753))

(declare-fun d!731781 () Bool)

(declare-fun fromListB!1426 (List!29838) BalanceConc!18176)

(assert (=> d!731781 (= (seqFromList!3155 lt!908759) (fromListB!1426 lt!908759))))

(declare-fun bs!471653 () Bool)

(assert (= bs!471653 d!731781))

(declare-fun m!2920403 () Bool)

(assert (=> bs!471653 m!2920403))

(assert (=> b!2583716 d!731781))

(declare-fun d!731783 () Bool)

(declare-fun lt!908829 () Int)

(assert (=> d!731783 (>= lt!908829 0)))

(declare-fun e!1630400 () Int)

(assert (=> d!731783 (= lt!908829 e!1630400)))

(declare-fun c!416647 () Bool)

(assert (=> d!731783 (= c!416647 ((_ is Nil!29738) lt!908759))))

(assert (=> d!731783 (= (size!23056 lt!908759) lt!908829)))

(declare-fun b!2583977 () Bool)

(assert (=> b!2583977 (= e!1630400 0)))

(declare-fun b!2583978 () Bool)

(assert (=> b!2583978 (= e!1630400 (+ 1 (size!23056 (t!212059 lt!908759))))))

(assert (= (and d!731783 c!416647) b!2583977))

(assert (= (and d!731783 (not c!416647)) b!2583978))

(declare-fun m!2920405 () Bool)

(assert (=> b!2583978 m!2920405))

(assert (=> b!2583716 d!731783))

(declare-fun d!731785 () Bool)

(assert (=> d!731785 (= (maxPrefixOneRule!1450 thiss!28211 rule!570 input!3654) (Some!5929 (tuple2!29695 (Token!8501 (apply!7020 (transformation!4515 rule!570) (seqFromList!3155 lt!908759)) rule!570 (size!23056 lt!908759) lt!908759) suffix!1684)))))

(declare-fun lt!908832 () Unit!43582)

(declare-fun choose!15230 (LexerInterface!4112 List!29839 List!29838 List!29838 List!29838 Rule!8830) Unit!43582)

(assert (=> d!731785 (= lt!908832 (choose!15230 thiss!28211 rules!4580 lt!908759 input!3654 suffix!1684 rule!570))))

(assert (=> d!731785 (not (isEmpty!17091 rules!4580))))

(assert (=> d!731785 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!613 thiss!28211 rules!4580 lt!908759 input!3654 suffix!1684 rule!570) lt!908832)))

(declare-fun bs!471654 () Bool)

(assert (= bs!471654 d!731785))

(assert (=> bs!471654 m!2920177))

(declare-fun m!2920407 () Bool)

(assert (=> bs!471654 m!2920407))

(assert (=> bs!471654 m!2920175))

(assert (=> bs!471654 m!2920179))

(assert (=> bs!471654 m!2920153))

(assert (=> bs!471654 m!2920179))

(assert (=> bs!471654 m!2920181))

(assert (=> b!2583716 d!731785))

(assert (=> b!2583716 d!731751))

(declare-fun d!731787 () Bool)

(declare-fun dynLambda!12568 (Int BalanceConc!18176) TokenValue!4737)

(assert (=> d!731787 (= (apply!7020 (transformation!4515 rule!570) (seqFromList!3155 lt!908759)) (dynLambda!12568 (toValue!6405 (transformation!4515 rule!570)) (seqFromList!3155 lt!908759)))))

(declare-fun b_lambda!76691 () Bool)

(assert (=> (not b_lambda!76691) (not d!731787)))

(declare-fun t!212070 () Bool)

(declare-fun tb!140705 () Bool)

(assert (=> (and b!2583719 (= (toValue!6405 (transformation!4515 (h!35159 rs!798))) (toValue!6405 (transformation!4515 rule!570))) t!212070) tb!140705))

(declare-fun result!174910 () Bool)

(assert (=> tb!140705 (= result!174910 (inv!21 (dynLambda!12568 (toValue!6405 (transformation!4515 rule!570)) (seqFromList!3155 lt!908759))))))

(declare-fun m!2920409 () Bool)

(assert (=> tb!140705 m!2920409))

(assert (=> d!731787 t!212070))

(declare-fun b_and!189275 () Bool)

(assert (= b_and!189243 (and (=> t!212070 result!174910) b_and!189275)))

(declare-fun t!212072 () Bool)

(declare-fun tb!140707 () Bool)

(assert (=> (and b!2583720 (= (toValue!6405 (transformation!4515 (h!35159 rules!4580))) (toValue!6405 (transformation!4515 rule!570))) t!212072) tb!140707))

(declare-fun result!174914 () Bool)

(assert (= result!174914 result!174910))

(assert (=> d!731787 t!212072))

(declare-fun b_and!189277 () Bool)

(assert (= b_and!189247 (and (=> t!212072 result!174914) b_and!189277)))

(declare-fun tb!140709 () Bool)

(declare-fun t!212074 () Bool)

(assert (=> (and b!2583718 (= (toValue!6405 (transformation!4515 (rule!6875 token!562))) (toValue!6405 (transformation!4515 rule!570))) t!212074) tb!140709))

(declare-fun result!174916 () Bool)

(assert (= result!174916 result!174910))

(assert (=> d!731787 t!212074))

(declare-fun b_and!189279 () Bool)

(assert (= b_and!189251 (and (=> t!212074 result!174916) b_and!189279)))

(declare-fun t!212076 () Bool)

(declare-fun tb!140711 () Bool)

(assert (=> (and b!2583725 (= (toValue!6405 (transformation!4515 rule!570)) (toValue!6405 (transformation!4515 rule!570))) t!212076) tb!140711))

(declare-fun result!174918 () Bool)

(assert (= result!174918 result!174910))

(assert (=> d!731787 t!212076))

(declare-fun b_and!189281 () Bool)

(assert (= b_and!189255 (and (=> t!212076 result!174918) b_and!189281)))

(assert (=> d!731787 m!2920179))

(declare-fun m!2920411 () Bool)

(assert (=> d!731787 m!2920411))

(assert (=> b!2583716 d!731787))

(declare-fun b!2584009 () Bool)

(declare-fun e!1630417 () Bool)

(declare-fun inv!16 (TokenValue!4737) Bool)

(assert (=> b!2584009 (= e!1630417 (inv!16 (value!145925 token!562)))))

(declare-fun d!731789 () Bool)

(declare-fun c!416654 () Bool)

(assert (=> d!731789 (= c!416654 ((_ is IntegerValue!14211) (value!145925 token!562)))))

(assert (=> d!731789 (= (inv!21 (value!145925 token!562)) e!1630417)))

(declare-fun b!2584010 () Bool)

(declare-fun e!1630418 () Bool)

(declare-fun inv!17 (TokenValue!4737) Bool)

(assert (=> b!2584010 (= e!1630418 (inv!17 (value!145925 token!562)))))

(declare-fun b!2584011 () Bool)

(assert (=> b!2584011 (= e!1630417 e!1630418)))

(declare-fun c!416655 () Bool)

(assert (=> b!2584011 (= c!416655 ((_ is IntegerValue!14212) (value!145925 token!562)))))

(declare-fun b!2584012 () Bool)

(declare-fun res!1086648 () Bool)

(declare-fun e!1630416 () Bool)

(assert (=> b!2584012 (=> res!1086648 e!1630416)))

(assert (=> b!2584012 (= res!1086648 (not ((_ is IntegerValue!14213) (value!145925 token!562))))))

(assert (=> b!2584012 (= e!1630418 e!1630416)))

(declare-fun b!2584013 () Bool)

(declare-fun inv!15 (TokenValue!4737) Bool)

(assert (=> b!2584013 (= e!1630416 (inv!15 (value!145925 token!562)))))

(assert (= (and d!731789 c!416654) b!2584009))

(assert (= (and d!731789 (not c!416654)) b!2584011))

(assert (= (and b!2584011 c!416655) b!2584010))

(assert (= (and b!2584011 (not c!416655)) b!2584012))

(assert (= (and b!2584012 (not res!1086648)) b!2584013))

(declare-fun m!2920413 () Bool)

(assert (=> b!2584009 m!2920413))

(declare-fun m!2920415 () Bool)

(assert (=> b!2584010 m!2920415))

(declare-fun m!2920417 () Bool)

(assert (=> b!2584013 m!2920417))

(assert (=> b!2583737 d!731789))

(declare-fun d!731791 () Bool)

(assert (=> d!731791 true))

(declare-fun lt!908881 () Bool)

(assert (=> d!731791 (= lt!908881 (rulesValidInductive!1589 thiss!28211 rs!798))))

(declare-fun lambda!95748 () Int)

(declare-fun forall!6057 (List!29839 Int) Bool)

(assert (=> d!731791 (= lt!908881 (forall!6057 rs!798 lambda!95748))))

(assert (=> d!731791 (= (rulesValid!1687 thiss!28211 rs!798) lt!908881)))

(declare-fun bs!471658 () Bool)

(assert (= bs!471658 d!731791))

(declare-fun m!2920577 () Bool)

(assert (=> bs!471658 m!2920577))

(declare-fun m!2920579 () Bool)

(assert (=> bs!471658 m!2920579))

(assert (=> b!2583738 d!731791))

(declare-fun d!731831 () Bool)

(assert (=> d!731831 (= (inv!40160 (tag!5005 (h!35159 rules!4580))) (= (mod (str.len (value!145924 (tag!5005 (h!35159 rules!4580)))) 2) 0))))

(assert (=> b!2583727 d!731831))

(declare-fun d!731833 () Bool)

(declare-fun res!1086709 () Bool)

(declare-fun e!1630498 () Bool)

(assert (=> d!731833 (=> (not res!1086709) (not e!1630498))))

(assert (=> d!731833 (= res!1086709 (semiInverseModEq!1884 (toChars!6264 (transformation!4515 (h!35159 rules!4580))) (toValue!6405 (transformation!4515 (h!35159 rules!4580)))))))

(assert (=> d!731833 (= (inv!40163 (transformation!4515 (h!35159 rules!4580))) e!1630498)))

(declare-fun b!2584156 () Bool)

(assert (=> b!2584156 (= e!1630498 (equivClasses!1785 (toChars!6264 (transformation!4515 (h!35159 rules!4580))) (toValue!6405 (transformation!4515 (h!35159 rules!4580)))))))

(assert (= (and d!731833 res!1086709) b!2584156))

(declare-fun m!2920581 () Bool)

(assert (=> d!731833 m!2920581))

(declare-fun m!2920583 () Bool)

(assert (=> b!2584156 m!2920583))

(assert (=> b!2583727 d!731833))

(declare-fun b!2584161 () Bool)

(declare-fun e!1630501 () Bool)

(declare-fun tp!820296 () Bool)

(assert (=> b!2584161 (= e!1630501 (and tp_is_empty!13213 tp!820296))))

(assert (=> b!2583736 (= tp!820233 e!1630501)))

(assert (= (and b!2583736 ((_ is Cons!29738) (t!212059 input!3654))) b!2584161))

(declare-fun b!2584174 () Bool)

(declare-fun e!1630504 () Bool)

(declare-fun tp!820308 () Bool)

(assert (=> b!2584174 (= e!1630504 tp!820308)))

(assert (=> b!2583724 (= tp!820235 e!1630504)))

(declare-fun b!2584175 () Bool)

(declare-fun tp!820307 () Bool)

(declare-fun tp!820310 () Bool)

(assert (=> b!2584175 (= e!1630504 (and tp!820307 tp!820310))))

(declare-fun b!2584173 () Bool)

(declare-fun tp!820309 () Bool)

(declare-fun tp!820311 () Bool)

(assert (=> b!2584173 (= e!1630504 (and tp!820309 tp!820311))))

(declare-fun b!2584172 () Bool)

(assert (=> b!2584172 (= e!1630504 tp_is_empty!13213)))

(assert (= (and b!2583724 ((_ is ElementMatch!7659) (regex!4515 rule!570))) b!2584172))

(assert (= (and b!2583724 ((_ is Concat!12397) (regex!4515 rule!570))) b!2584173))

(assert (= (and b!2583724 ((_ is Star!7659) (regex!4515 rule!570))) b!2584174))

(assert (= (and b!2583724 ((_ is Union!7659) (regex!4515 rule!570))) b!2584175))

(declare-fun b!2584178 () Bool)

(declare-fun e!1630505 () Bool)

(declare-fun tp!820313 () Bool)

(assert (=> b!2584178 (= e!1630505 tp!820313)))

(assert (=> b!2583730 (= tp!820229 e!1630505)))

(declare-fun b!2584179 () Bool)

(declare-fun tp!820312 () Bool)

(declare-fun tp!820315 () Bool)

(assert (=> b!2584179 (= e!1630505 (and tp!820312 tp!820315))))

(declare-fun b!2584177 () Bool)

(declare-fun tp!820314 () Bool)

(declare-fun tp!820316 () Bool)

(assert (=> b!2584177 (= e!1630505 (and tp!820314 tp!820316))))

(declare-fun b!2584176 () Bool)

(assert (=> b!2584176 (= e!1630505 tp_is_empty!13213)))

(assert (= (and b!2583730 ((_ is ElementMatch!7659) (regex!4515 (rule!6875 token!562)))) b!2584176))

(assert (= (and b!2583730 ((_ is Concat!12397) (regex!4515 (rule!6875 token!562)))) b!2584177))

(assert (= (and b!2583730 ((_ is Star!7659) (regex!4515 (rule!6875 token!562)))) b!2584178))

(assert (= (and b!2583730 ((_ is Union!7659) (regex!4515 (rule!6875 token!562)))) b!2584179))

(declare-fun b!2584182 () Bool)

(declare-fun e!1630506 () Bool)

(declare-fun tp!820318 () Bool)

(assert (=> b!2584182 (= e!1630506 tp!820318)))

(assert (=> b!2583735 (= tp!820232 e!1630506)))

(declare-fun b!2584183 () Bool)

(declare-fun tp!820317 () Bool)

(declare-fun tp!820320 () Bool)

(assert (=> b!2584183 (= e!1630506 (and tp!820317 tp!820320))))

(declare-fun b!2584181 () Bool)

(declare-fun tp!820319 () Bool)

(declare-fun tp!820321 () Bool)

(assert (=> b!2584181 (= e!1630506 (and tp!820319 tp!820321))))

(declare-fun b!2584180 () Bool)

(assert (=> b!2584180 (= e!1630506 tp_is_empty!13213)))

(assert (= (and b!2583735 ((_ is ElementMatch!7659) (regex!4515 (h!35159 rs!798)))) b!2584180))

(assert (= (and b!2583735 ((_ is Concat!12397) (regex!4515 (h!35159 rs!798)))) b!2584181))

(assert (= (and b!2583735 ((_ is Star!7659) (regex!4515 (h!35159 rs!798)))) b!2584182))

(assert (= (and b!2583735 ((_ is Union!7659) (regex!4515 (h!35159 rs!798)))) b!2584183))

(declare-fun b!2584194 () Bool)

(declare-fun b_free!72733 () Bool)

(declare-fun b_next!73437 () Bool)

(assert (=> b!2584194 (= b_free!72733 (not b_next!73437))))

(declare-fun tb!140737 () Bool)

(declare-fun t!212103 () Bool)

(assert (=> (and b!2584194 (= (toValue!6405 (transformation!4515 (h!35159 (t!212060 rules!4580)))) (toValue!6405 (transformation!4515 rule!570))) t!212103) tb!140737))

(declare-fun result!174960 () Bool)

(assert (= result!174960 result!174910))

(assert (=> d!731787 t!212103))

(declare-fun tp!820333 () Bool)

(declare-fun b_and!189315 () Bool)

(assert (=> b!2584194 (= tp!820333 (and (=> t!212103 result!174960) b_and!189315))))

(declare-fun b_free!72735 () Bool)

(declare-fun b_next!73439 () Bool)

(assert (=> b!2584194 (= b_free!72735 (not b_next!73439))))

(declare-fun tb!140739 () Bool)

(declare-fun t!212105 () Bool)

(assert (=> (and b!2584194 (= (toChars!6264 (transformation!4515 (h!35159 (t!212060 rules!4580)))) (toChars!6264 (transformation!4515 (rule!6875 token!562)))) t!212105) tb!140739))

(declare-fun result!174962 () Bool)

(assert (= result!174962 result!174900))

(assert (=> b!2583832 t!212105))

(assert (=> d!731753 t!212105))

(declare-fun tp!820330 () Bool)

(declare-fun b_and!189317 () Bool)

(assert (=> b!2584194 (= tp!820330 (and (=> t!212105 result!174962) b_and!189317))))

(declare-fun e!1630516 () Bool)

(assert (=> b!2584194 (= e!1630516 (and tp!820333 tp!820330))))

(declare-fun e!1630518 () Bool)

(declare-fun tp!820331 () Bool)

(declare-fun b!2584193 () Bool)

(assert (=> b!2584193 (= e!1630518 (and tp!820331 (inv!40160 (tag!5005 (h!35159 (t!212060 rules!4580)))) (inv!40163 (transformation!4515 (h!35159 (t!212060 rules!4580)))) e!1630516))))

(declare-fun b!2584192 () Bool)

(declare-fun e!1630517 () Bool)

(declare-fun tp!820332 () Bool)

(assert (=> b!2584192 (= e!1630517 (and e!1630518 tp!820332))))

(assert (=> b!2583733 (= tp!820223 e!1630517)))

(assert (= b!2584193 b!2584194))

(assert (= b!2584192 b!2584193))

(assert (= (and b!2583733 ((_ is Cons!29739) (t!212060 rules!4580))) b!2584192))

(declare-fun m!2920585 () Bool)

(assert (=> b!2584193 m!2920585))

(declare-fun m!2920587 () Bool)

(assert (=> b!2584193 m!2920587))

(declare-fun b!2584195 () Bool)

(declare-fun e!1630519 () Bool)

(declare-fun tp!820334 () Bool)

(assert (=> b!2584195 (= e!1630519 (and tp_is_empty!13213 tp!820334))))

(assert (=> b!2583717 (= tp!820220 e!1630519)))

(assert (= (and b!2583717 ((_ is Cons!29738) (t!212059 suffix!1684))) b!2584195))

(declare-fun b!2584196 () Bool)

(declare-fun e!1630520 () Bool)

(declare-fun tp!820335 () Bool)

(assert (=> b!2584196 (= e!1630520 (and tp_is_empty!13213 tp!820335))))

(assert (=> b!2583737 (= tp!820230 e!1630520)))

(assert (= (and b!2583737 ((_ is Cons!29738) (originalCharacters!5281 token!562))) b!2584196))

(declare-fun b!2584199 () Bool)

(declare-fun b_free!72737 () Bool)

(declare-fun b_next!73441 () Bool)

(assert (=> b!2584199 (= b_free!72737 (not b_next!73441))))

(declare-fun tb!140741 () Bool)

(declare-fun t!212107 () Bool)

(assert (=> (and b!2584199 (= (toValue!6405 (transformation!4515 (h!35159 (t!212060 rs!798)))) (toValue!6405 (transformation!4515 rule!570))) t!212107) tb!140741))

(declare-fun result!174964 () Bool)

(assert (= result!174964 result!174910))

(assert (=> d!731787 t!212107))

(declare-fun tp!820339 () Bool)

(declare-fun b_and!189319 () Bool)

(assert (=> b!2584199 (= tp!820339 (and (=> t!212107 result!174964) b_and!189319))))

(declare-fun b_free!72739 () Bool)

(declare-fun b_next!73443 () Bool)

(assert (=> b!2584199 (= b_free!72739 (not b_next!73443))))

(declare-fun tb!140743 () Bool)

(declare-fun t!212109 () Bool)

(assert (=> (and b!2584199 (= (toChars!6264 (transformation!4515 (h!35159 (t!212060 rs!798)))) (toChars!6264 (transformation!4515 (rule!6875 token!562)))) t!212109) tb!140743))

(declare-fun result!174966 () Bool)

(assert (= result!174966 result!174900))

(assert (=> b!2583832 t!212109))

(assert (=> d!731753 t!212109))

(declare-fun b_and!189321 () Bool)

(declare-fun tp!820336 () Bool)

(assert (=> b!2584199 (= tp!820336 (and (=> t!212109 result!174966) b_and!189321))))

(declare-fun e!1630522 () Bool)

(assert (=> b!2584199 (= e!1630522 (and tp!820339 tp!820336))))

(declare-fun tp!820337 () Bool)

(declare-fun e!1630524 () Bool)

(declare-fun b!2584198 () Bool)

(assert (=> b!2584198 (= e!1630524 (and tp!820337 (inv!40160 (tag!5005 (h!35159 (t!212060 rs!798)))) (inv!40163 (transformation!4515 (h!35159 (t!212060 rs!798)))) e!1630522))))

(declare-fun b!2584197 () Bool)

(declare-fun e!1630523 () Bool)

(declare-fun tp!820338 () Bool)

(assert (=> b!2584197 (= e!1630523 (and e!1630524 tp!820338))))

(assert (=> b!2583721 (= tp!820225 e!1630523)))

(assert (= b!2584198 b!2584199))

(assert (= b!2584197 b!2584198))

(assert (= (and b!2583721 ((_ is Cons!29739) (t!212060 rs!798))) b!2584197))

(declare-fun m!2920589 () Bool)

(assert (=> b!2584198 m!2920589))

(declare-fun m!2920591 () Bool)

(assert (=> b!2584198 m!2920591))

(declare-fun b!2584202 () Bool)

(declare-fun e!1630525 () Bool)

(declare-fun tp!820341 () Bool)

(assert (=> b!2584202 (= e!1630525 tp!820341)))

(assert (=> b!2583727 (= tp!820224 e!1630525)))

(declare-fun b!2584203 () Bool)

(declare-fun tp!820340 () Bool)

(declare-fun tp!820343 () Bool)

(assert (=> b!2584203 (= e!1630525 (and tp!820340 tp!820343))))

(declare-fun b!2584201 () Bool)

(declare-fun tp!820342 () Bool)

(declare-fun tp!820344 () Bool)

(assert (=> b!2584201 (= e!1630525 (and tp!820342 tp!820344))))

(declare-fun b!2584200 () Bool)

(assert (=> b!2584200 (= e!1630525 tp_is_empty!13213)))

(assert (= (and b!2583727 ((_ is ElementMatch!7659) (regex!4515 (h!35159 rules!4580)))) b!2584200))

(assert (= (and b!2583727 ((_ is Concat!12397) (regex!4515 (h!35159 rules!4580)))) b!2584201))

(assert (= (and b!2583727 ((_ is Star!7659) (regex!4515 (h!35159 rules!4580)))) b!2584202))

(assert (= (and b!2583727 ((_ is Union!7659) (regex!4515 (h!35159 rules!4580)))) b!2584203))

(declare-fun b_lambda!76705 () Bool)

(assert (= b_lambda!76687 (or (and b!2583718 b_free!72719) (and b!2584194 b_free!72735 (= (toChars!6264 (transformation!4515 (h!35159 (t!212060 rules!4580)))) (toChars!6264 (transformation!4515 (rule!6875 token!562))))) (and b!2584199 b_free!72739 (= (toChars!6264 (transformation!4515 (h!35159 (t!212060 rs!798)))) (toChars!6264 (transformation!4515 (rule!6875 token!562))))) (and b!2583720 b_free!72715 (= (toChars!6264 (transformation!4515 (h!35159 rules!4580))) (toChars!6264 (transformation!4515 (rule!6875 token!562))))) (and b!2583719 b_free!72711 (= (toChars!6264 (transformation!4515 (h!35159 rs!798))) (toChars!6264 (transformation!4515 (rule!6875 token!562))))) (and b!2583725 b_free!72723 (= (toChars!6264 (transformation!4515 rule!570)) (toChars!6264 (transformation!4515 (rule!6875 token!562))))) b_lambda!76705)))

(declare-fun b_lambda!76707 () Bool)

(assert (= b_lambda!76691 (or (and b!2583719 b_free!72709 (= (toValue!6405 (transformation!4515 (h!35159 rs!798))) (toValue!6405 (transformation!4515 rule!570)))) (and b!2583720 b_free!72713 (= (toValue!6405 (transformation!4515 (h!35159 rules!4580))) (toValue!6405 (transformation!4515 rule!570)))) (and b!2583725 b_free!72721) (and b!2584199 b_free!72737 (= (toValue!6405 (transformation!4515 (h!35159 (t!212060 rs!798)))) (toValue!6405 (transformation!4515 rule!570)))) (and b!2584194 b_free!72733 (= (toValue!6405 (transformation!4515 (h!35159 (t!212060 rules!4580)))) (toValue!6405 (transformation!4515 rule!570)))) (and b!2583718 b_free!72717 (= (toValue!6405 (transformation!4515 (rule!6875 token!562))) (toValue!6405 (transformation!4515 rule!570)))) b_lambda!76707)))

(declare-fun b_lambda!76709 () Bool)

(assert (= b_lambda!76689 (or (and b!2583718 b_free!72719) (and b!2584194 b_free!72735 (= (toChars!6264 (transformation!4515 (h!35159 (t!212060 rules!4580)))) (toChars!6264 (transformation!4515 (rule!6875 token!562))))) (and b!2584199 b_free!72739 (= (toChars!6264 (transformation!4515 (h!35159 (t!212060 rs!798)))) (toChars!6264 (transformation!4515 (rule!6875 token!562))))) (and b!2583720 b_free!72715 (= (toChars!6264 (transformation!4515 (h!35159 rules!4580))) (toChars!6264 (transformation!4515 (rule!6875 token!562))))) (and b!2583719 b_free!72711 (= (toChars!6264 (transformation!4515 (h!35159 rs!798))) (toChars!6264 (transformation!4515 (rule!6875 token!562))))) (and b!2583725 b_free!72723 (= (toChars!6264 (transformation!4515 rule!570)) (toChars!6264 (transformation!4515 (rule!6875 token!562))))) b_lambda!76709)))

(check-sat (not bm!166902) (not b!2584010) (not b!2584202) (not b!2584013) (not d!731751) (not d!731781) (not b!2584196) b_and!189279 (not b!2584156) (not b!2583857) (not bm!166898) (not d!731747) (not b!2584173) (not b!2584198) (not b!2584178) (not b!2584192) (not b_next!73423) (not b!2584174) (not b!2584197) (not d!731791) (not b!2583791) (not b_next!73415) (not d!731745) (not d!731753) (not b_next!73443) (not b!2583810) (not b!2583790) (not tb!140697) b_and!189319 (not b!2583964) (not b!2583814) (not b!2583854) (not b!2583811) (not b!2583815) (not b!2583816) (not b!2584179) (not b!2583817) (not b_next!73425) (not b!2583812) tp_is_empty!13213 (not d!731727) (not d!731725) (not b_next!73427) (not b_next!73439) b_and!189315 (not b!2583970) (not d!731785) b_and!189321 (not b_lambda!76707) (not b!2583978) (not b!2583824) (not d!731833) (not b!2583858) b_and!189277 (not b!2583776) (not b!2584009) b_and!189269 (not b!2584182) (not bm!166901) (not b!2584175) (not b!2583778) (not d!731743) (not b!2583968) (not b!2584177) (not b!2583868) (not tb!140705) (not b!2584193) (not b!2584203) (not b!2584195) (not b!2583855) (not b!2583967) (not b_next!73437) (not d!731759) (not d!731757) (not b!2583966) (not b_next!73421) b_and!189275 (not b!2583859) b_and!189281 (not b!2583861) (not d!731763) b_and!189317 (not b!2583969) (not b!2584181) (not b!2583867) (not b!2584183) (not b!2583833) (not b!2583866) (not d!731733) (not b_lambda!76709) (not b!2584161) (not d!731729) (not d!731737) (not b!2584201) (not d!731739) (not b_next!73441) (not b!2583832) b_and!189267 (not b!2583786) (not b!2583838) (not b_lambda!76705) (not b_next!73413) (not b!2583844) b_and!189273 (not b!2583771) (not b!2583965) (not b!2583972) (not b_next!73417) (not d!731749) b_and!189271 (not b!2583777) (not b!2583769) (not b_next!73419) (not b!2583768) (not b!2583827) (not b!2583813))
(check-sat b_and!189279 (not b_next!73423) (not b_next!73415) (not b_next!73443) b_and!189319 (not b_next!73425) (not b_next!73437) (not b_next!73441) b_and!189267 (not b_next!73417) (not b_next!73427) (not b_next!73439) b_and!189315 b_and!189321 b_and!189277 b_and!189269 b_and!189275 (not b_next!73421) b_and!189281 b_and!189317 (not b_next!73413) b_and!189273 b_and!189271 (not b_next!73419))
