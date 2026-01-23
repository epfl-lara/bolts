; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241262 () Bool)

(assert start!241262)

(declare-fun b!2473702 () Bool)

(declare-fun b_free!71621 () Bool)

(declare-fun b_next!72325 () Bool)

(assert (=> b!2473702 (= b_free!71621 (not b_next!72325))))

(declare-fun tp!790796 () Bool)

(declare-fun b_and!187701 () Bool)

(assert (=> b!2473702 (= tp!790796 b_and!187701)))

(declare-fun b_free!71623 () Bool)

(declare-fun b_next!72327 () Bool)

(assert (=> b!2473702 (= b_free!71623 (not b_next!72327))))

(declare-fun tp!790792 () Bool)

(declare-fun b_and!187703 () Bool)

(assert (=> b!2473702 (= tp!790792 b_and!187703)))

(declare-fun b!2473703 () Bool)

(declare-fun b_free!71625 () Bool)

(declare-fun b_next!72329 () Bool)

(assert (=> b!2473703 (= b_free!71625 (not b_next!72329))))

(declare-fun tp!790798 () Bool)

(declare-fun b_and!187705 () Bool)

(assert (=> b!2473703 (= tp!790798 b_and!187705)))

(declare-fun b_free!71627 () Bool)

(declare-fun b_next!72331 () Bool)

(assert (=> b!2473703 (= b_free!71627 (not b_next!72331))))

(declare-fun tp!790803 () Bool)

(declare-fun b_and!187707 () Bool)

(assert (=> b!2473703 (= tp!790803 b_and!187707)))

(declare-fun b!2473695 () Bool)

(declare-fun b_free!71629 () Bool)

(declare-fun b_next!72333 () Bool)

(assert (=> b!2473695 (= b_free!71629 (not b_next!72333))))

(declare-fun tp!790805 () Bool)

(declare-fun b_and!187709 () Bool)

(assert (=> b!2473695 (= tp!790805 b_and!187709)))

(declare-fun b_free!71631 () Bool)

(declare-fun b_next!72335 () Bool)

(assert (=> b!2473695 (= b_free!71631 (not b_next!72335))))

(declare-fun tp!790794 () Bool)

(declare-fun b_and!187711 () Bool)

(assert (=> b!2473695 (= tp!790794 b_and!187711)))

(declare-fun b!2473680 () Bool)

(declare-fun b_free!71633 () Bool)

(declare-fun b_next!72337 () Bool)

(assert (=> b!2473680 (= b_free!71633 (not b_next!72337))))

(declare-fun tp!790801 () Bool)

(declare-fun b_and!187713 () Bool)

(assert (=> b!2473680 (= tp!790801 b_and!187713)))

(declare-fun b_free!71635 () Bool)

(declare-fun b_next!72339 () Bool)

(assert (=> b!2473680 (= b_free!71635 (not b_next!72339))))

(declare-fun tp!790804 () Bool)

(declare-fun b_and!187715 () Bool)

(assert (=> b!2473680 (= tp!790804 b_and!187715)))

(declare-fun b!2473677 () Bool)

(declare-datatypes ((List!28960 0))(
  ( (Nil!28860) (Cons!28860 (h!34261 (_ BitVec 16)) (t!210355 List!28960)) )
))
(declare-datatypes ((TokenValue!4685 0))(
  ( (FloatLiteralValue!9370 (text!33240 List!28960)) (TokenValueExt!4684 (__x!18625 Int)) (Broken!23425 (value!143601 List!28960)) (Object!4784) (End!4685) (Def!4685) (Underscore!4685) (Match!4685) (Else!4685) (Error!4685) (Case!4685) (If!4685) (Extends!4685) (Abstract!4685) (Class!4685) (Val!4685) (DelimiterValue!9370 (del!4745 List!28960)) (KeywordValue!4691 (value!143602 List!28960)) (CommentValue!9370 (value!143603 List!28960)) (WhitespaceValue!9370 (value!143604 List!28960)) (IndentationValue!4685 (value!143605 List!28960)) (String!31720) (Int32!4685) (Broken!23426 (value!143606 List!28960)) (Boolean!4686) (Unit!42223) (OperatorValue!4688 (op!4745 List!28960)) (IdentifierValue!9370 (value!143607 List!28960)) (IdentifierValue!9371 (value!143608 List!28960)) (WhitespaceValue!9371 (value!143609 List!28960)) (True!9370) (False!9370) (Broken!23427 (value!143610 List!28960)) (Broken!23428 (value!143611 List!28960)) (True!9371) (RightBrace!4685) (RightBracket!4685) (Colon!4685) (Null!4685) (Comma!4685) (LeftBracket!4685) (False!9371) (LeftBrace!4685) (ImaginaryLiteralValue!4685 (text!33241 List!28960)) (StringLiteralValue!14055 (value!143612 List!28960)) (EOFValue!4685 (value!143613 List!28960)) (IdentValue!4685 (value!143614 List!28960)) (DelimiterValue!9371 (value!143615 List!28960)) (DedentValue!4685 (value!143616 List!28960)) (NewLineValue!4685 (value!143617 List!28960)) (IntegerValue!14055 (value!143618 (_ BitVec 32)) (text!33242 List!28960)) (IntegerValue!14056 (value!143619 Int) (text!33243 List!28960)) (Times!4685) (Or!4685) (Equal!4685) (Minus!4685) (Broken!23429 (value!143620 List!28960)) (And!4685) (Div!4685) (LessEqual!4685) (Mod!4685) (Concat!11972) (Not!4685) (Plus!4685) (SpaceValue!4685 (value!143621 List!28960)) (IntegerValue!14057 (value!143622 Int) (text!33244 List!28960)) (StringLiteralValue!14056 (text!33245 List!28960)) (FloatLiteralValue!9371 (text!33246 List!28960)) (BytesLiteralValue!4685 (value!143623 List!28960)) (CommentValue!9371 (value!143624 List!28960)) (StringLiteralValue!14057 (value!143625 List!28960)) (ErrorTokenValue!4685 (msg!4746 List!28960)) )
))
(declare-datatypes ((C!14732 0))(
  ( (C!14733 (val!8626 Int)) )
))
(declare-datatypes ((List!28961 0))(
  ( (Nil!28861) (Cons!28861 (h!34262 C!14732) (t!210356 List!28961)) )
))
(declare-datatypes ((IArray!18439 0))(
  ( (IArray!18440 (innerList!9277 List!28961)) )
))
(declare-datatypes ((Conc!9217 0))(
  ( (Node!9217 (left!22137 Conc!9217) (right!22467 Conc!9217) (csize!18664 Int) (cheight!9428 Int)) (Leaf!13774 (xs!12201 IArray!18439) (csize!18665 Int)) (Empty!9217) )
))
(declare-datatypes ((BalanceConc!18048 0))(
  ( (BalanceConc!18049 (c!393890 Conc!9217)) )
))
(declare-datatypes ((Regex!7287 0))(
  ( (ElementMatch!7287 (c!393891 C!14732)) (Concat!11973 (regOne!15086 Regex!7287) (regTwo!15086 Regex!7287)) (EmptyExpr!7287) (Star!7287 (reg!7616 Regex!7287)) (EmptyLang!7287) (Union!7287 (regOne!15087 Regex!7287) (regTwo!15087 Regex!7287)) )
))
(declare-datatypes ((String!31721 0))(
  ( (String!31722 (value!143626 String)) )
))
(declare-datatypes ((TokenValueInjection!8870 0))(
  ( (TokenValueInjection!8871 (toValue!6363 Int) (toChars!6222 Int)) )
))
(declare-datatypes ((Rule!8798 0))(
  ( (Rule!8799 (regex!4499 Regex!7287) (tag!4989 String!31721) (isSeparator!4499 Bool) (transformation!4499 TokenValueInjection!8870)) )
))
(declare-datatypes ((Token!8468 0))(
  ( (Token!8469 (value!143627 TokenValue!4685) (rule!6857 Rule!8798) (size!22461 Int) (originalCharacters!5265 List!28961)) )
))
(declare-fun t2!67 () Token!8468)

(declare-fun e!1569154 () Bool)

(declare-fun e!1569156 () Bool)

(declare-fun tp!790795 () Bool)

(declare-fun inv!38951 (String!31721) Bool)

(declare-fun inv!38954 (TokenValueInjection!8870) Bool)

(assert (=> b!2473677 (= e!1569156 (and tp!790795 (inv!38951 (tag!4989 (rule!6857 t2!67))) (inv!38954 (transformation!4499 (rule!6857 t2!67))) e!1569154))))

(declare-fun b!2473678 () Bool)

(declare-fun res!1047266 () Bool)

(declare-fun e!1569155 () Bool)

(assert (=> b!2473678 (=> (not res!1047266) (not e!1569155))))

(declare-datatypes ((LexerInterface!4096 0))(
  ( (LexerInterfaceExt!4093 (__x!18626 Int)) (Lexer!4094) )
))
(declare-fun thiss!27932 () LexerInterface!4096)

(declare-datatypes ((List!28962 0))(
  ( (Nil!28862) (Cons!28862 (h!34263 Rule!8798) (t!210357 List!28962)) )
))
(declare-fun rules!4472 () List!28962)

(declare-fun rulesInvariant!3596 (LexerInterface!4096 List!28962) Bool)

(assert (=> b!2473678 (= res!1047266 (rulesInvariant!3596 thiss!27932 rules!4472))))

(declare-fun b!2473679 () Bool)

(declare-fun res!1047264 () Bool)

(assert (=> b!2473679 (=> (not res!1047264) (not e!1569155))))

(declare-datatypes ((List!28963 0))(
  ( (Nil!28863) (Cons!28863 (h!34264 Token!8468) (t!210358 List!28963)) )
))
(declare-fun l!6611 () List!28963)

(declare-fun rulesProduceEachTokenIndividuallyList!1412 (LexerInterface!4096 List!28962 List!28963) Bool)

(assert (=> b!2473679 (= res!1047264 (rulesProduceEachTokenIndividuallyList!1412 thiss!27932 rules!4472 l!6611))))

(declare-fun e!1569166 () Bool)

(assert (=> b!2473680 (= e!1569166 (and tp!790801 tp!790804))))

(declare-fun b!2473681 () Bool)

(declare-fun res!1047255 () Bool)

(assert (=> b!2473681 (=> (not res!1047255) (not e!1569155))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!635 (LexerInterface!4096 List!28963 List!28962) Bool)

(assert (=> b!2473681 (= res!1047255 (tokensListTwoByTwoPredicateSeparableList!635 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2473682 () Bool)

(declare-fun res!1047261 () Bool)

(assert (=> b!2473682 (=> (not res!1047261) (not e!1569155))))

(declare-fun i!1803 () Int)

(declare-fun apply!6808 (List!28963 Int) Token!8468)

(assert (=> b!2473682 (= res!1047261 (= (apply!6808 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun b!2473683 () Bool)

(declare-fun e!1569153 () Bool)

(declare-fun e!1569169 () Bool)

(assert (=> b!2473683 (= e!1569153 e!1569169)))

(declare-fun res!1047265 () Bool)

(assert (=> b!2473683 (=> (not res!1047265) (not e!1569169))))

(declare-fun lt!883612 () Int)

(declare-fun lt!883611 () List!28963)

(declare-fun size!22462 (List!28963) Int)

(assert (=> b!2473683 (= res!1047265 (< lt!883612 (size!22462 lt!883611)))))

(assert (=> b!2473683 (= lt!883612 (+ 1 (- i!1803 1)))))

(declare-fun b!2473684 () Bool)

(declare-fun res!1047258 () Bool)

(assert (=> b!2473684 (=> (not res!1047258) (not e!1569155))))

(declare-fun isEmpty!16756 (List!28962) Bool)

(assert (=> b!2473684 (= res!1047258 (not (isEmpty!16756 rules!4472)))))

(declare-fun b!2473685 () Bool)

(declare-fun tp!790800 () Bool)

(declare-fun e!1569150 () Bool)

(declare-fun t1!67 () Token!8468)

(assert (=> b!2473685 (= e!1569150 (and tp!790800 (inv!38951 (tag!4989 (rule!6857 t1!67))) (inv!38954 (transformation!4499 (rule!6857 t1!67))) e!1569166))))

(declare-fun b!2473686 () Bool)

(assert (=> b!2473686 (= e!1569155 e!1569153)))

(declare-fun res!1047269 () Bool)

(assert (=> b!2473686 (=> (not res!1047269) (not e!1569153))))

(assert (=> b!2473686 (= res!1047269 (rulesProduceEachTokenIndividuallyList!1412 thiss!27932 rules!4472 lt!883611))))

(declare-fun tail!3932 (List!28963) List!28963)

(assert (=> b!2473686 (= lt!883611 (tail!3932 l!6611))))

(declare-fun b!2473687 () Bool)

(declare-fun res!1047257 () Bool)

(assert (=> b!2473687 (=> (not res!1047257) (not e!1569155))))

(assert (=> b!2473687 (= res!1047257 (= (apply!6808 l!6611 i!1803) t1!67))))

(declare-fun e!1569170 () Bool)

(declare-fun b!2473688 () Bool)

(assert (=> b!2473688 (= e!1569170 (not (= (apply!6808 lt!883611 lt!883612) t2!67)))))

(declare-fun tp!790790 () Bool)

(declare-fun b!2473689 () Bool)

(declare-fun e!1569165 () Bool)

(declare-fun e!1569151 () Bool)

(declare-fun inv!21 (TokenValue!4685) Bool)

(assert (=> b!2473689 (= e!1569165 (and (inv!21 (value!143627 (h!34264 l!6611))) e!1569151 tp!790790))))

(declare-fun e!1569159 () Bool)

(declare-fun tp!790802 () Bool)

(declare-fun b!2473690 () Bool)

(assert (=> b!2473690 (= e!1569151 (and tp!790802 (inv!38951 (tag!4989 (rule!6857 (h!34264 l!6611)))) (inv!38954 (transformation!4499 (rule!6857 (h!34264 l!6611)))) e!1569159))))

(declare-fun b!2473691 () Bool)

(declare-fun tp!790789 () Bool)

(declare-fun e!1569149 () Bool)

(assert (=> b!2473691 (= e!1569149 (and (inv!21 (value!143627 t2!67)) e!1569156 tp!790789))))

(declare-fun b!2473692 () Bool)

(declare-fun e!1569162 () Bool)

(declare-fun e!1569160 () Bool)

(declare-fun tp!790797 () Bool)

(assert (=> b!2473692 (= e!1569162 (and e!1569160 tp!790797))))

(declare-fun b!2473693 () Bool)

(declare-fun res!1047260 () Bool)

(assert (=> b!2473693 (=> (not res!1047260) (not e!1569155))))

(assert (=> b!2473693 (= res!1047260 (< (+ 1 i!1803) (size!22462 l!6611)))))

(declare-fun b!2473694 () Bool)

(declare-fun res!1047267 () Bool)

(assert (=> b!2473694 (=> (not res!1047267) (not e!1569155))))

(assert (=> b!2473694 (= res!1047267 (not (= i!1803 0)))))

(assert (=> b!2473695 (= e!1569159 (and tp!790805 tp!790794))))

(declare-fun b!2473696 () Bool)

(declare-fun res!1047268 () Bool)

(assert (=> b!2473696 (=> (not res!1047268) (not e!1569155))))

(assert (=> b!2473696 (= res!1047268 (>= i!1803 0))))

(declare-fun tp!790791 () Bool)

(declare-fun b!2473697 () Bool)

(declare-fun e!1569164 () Bool)

(assert (=> b!2473697 (= e!1569160 (and tp!790791 (inv!38951 (tag!4989 (h!34263 rules!4472))) (inv!38954 (transformation!4499 (h!34263 rules!4472))) e!1569164))))

(declare-fun res!1047263 () Bool)

(assert (=> start!241262 (=> (not res!1047263) (not e!1569155))))

(get-info :version)

(assert (=> start!241262 (= res!1047263 ((_ is Lexer!4094) thiss!27932))))

(assert (=> start!241262 e!1569155))

(assert (=> start!241262 true))

(assert (=> start!241262 e!1569162))

(declare-fun inv!38955 (Token!8468) Bool)

(assert (=> start!241262 (and (inv!38955 t2!67) e!1569149)))

(declare-fun e!1569158 () Bool)

(assert (=> start!241262 e!1569158))

(declare-fun e!1569152 () Bool)

(assert (=> start!241262 (and (inv!38955 t1!67) e!1569152)))

(declare-fun tp!790793 () Bool)

(declare-fun b!2473698 () Bool)

(assert (=> b!2473698 (= e!1569158 (and (inv!38955 (h!34264 l!6611)) e!1569165 tp!790793))))

(declare-fun tp!790799 () Bool)

(declare-fun b!2473699 () Bool)

(assert (=> b!2473699 (= e!1569152 (and (inv!21 (value!143627 t1!67)) e!1569150 tp!790799))))

(declare-fun b!2473700 () Bool)

(assert (=> b!2473700 (= e!1569169 e!1569170)))

(declare-fun res!1047256 () Bool)

(assert (=> b!2473700 (=> res!1047256 e!1569170)))

(assert (=> b!2473700 (= res!1047256 (not (= (apply!6808 lt!883611 (- i!1803 1)) t1!67)))))

(declare-fun b!2473701 () Bool)

(declare-fun res!1047259 () Bool)

(assert (=> b!2473701 (=> (not res!1047259) (not e!1569153))))

(assert (=> b!2473701 (= res!1047259 (>= (- i!1803 1) 0))))

(assert (=> b!2473702 (= e!1569164 (and tp!790796 tp!790792))))

(assert (=> b!2473703 (= e!1569154 (and tp!790798 tp!790803))))

(declare-fun b!2473704 () Bool)

(declare-fun res!1047262 () Bool)

(assert (=> b!2473704 (=> (not res!1047262) (not e!1569153))))

(assert (=> b!2473704 (= res!1047262 (tokensListTwoByTwoPredicateSeparableList!635 thiss!27932 lt!883611 rules!4472))))

(assert (= (and start!241262 res!1047263) b!2473684))

(assert (= (and b!2473684 res!1047258) b!2473678))

(assert (= (and b!2473678 res!1047266) b!2473679))

(assert (= (and b!2473679 res!1047264) b!2473681))

(assert (= (and b!2473681 res!1047255) b!2473696))

(assert (= (and b!2473696 res!1047268) b!2473693))

(assert (= (and b!2473693 res!1047260) b!2473687))

(assert (= (and b!2473687 res!1047257) b!2473682))

(assert (= (and b!2473682 res!1047261) b!2473694))

(assert (= (and b!2473694 res!1047267) b!2473686))

(assert (= (and b!2473686 res!1047269) b!2473704))

(assert (= (and b!2473704 res!1047262) b!2473701))

(assert (= (and b!2473701 res!1047259) b!2473683))

(assert (= (and b!2473683 res!1047265) b!2473700))

(assert (= (and b!2473700 (not res!1047256)) b!2473688))

(assert (= b!2473697 b!2473702))

(assert (= b!2473692 b!2473697))

(assert (= (and start!241262 ((_ is Cons!28862) rules!4472)) b!2473692))

(assert (= b!2473677 b!2473703))

(assert (= b!2473691 b!2473677))

(assert (= start!241262 b!2473691))

(assert (= b!2473690 b!2473695))

(assert (= b!2473689 b!2473690))

(assert (= b!2473698 b!2473689))

(assert (= (and start!241262 ((_ is Cons!28863) l!6611)) b!2473698))

(assert (= b!2473685 b!2473680))

(assert (= b!2473699 b!2473685))

(assert (= start!241262 b!2473699))

(declare-fun m!2842105 () Bool)

(assert (=> b!2473689 m!2842105))

(declare-fun m!2842107 () Bool)

(assert (=> b!2473691 m!2842107))

(declare-fun m!2842109 () Bool)

(assert (=> b!2473678 m!2842109))

(declare-fun m!2842111 () Bool)

(assert (=> b!2473677 m!2842111))

(declare-fun m!2842113 () Bool)

(assert (=> b!2473677 m!2842113))

(declare-fun m!2842115 () Bool)

(assert (=> b!2473690 m!2842115))

(declare-fun m!2842117 () Bool)

(assert (=> b!2473690 m!2842117))

(declare-fun m!2842119 () Bool)

(assert (=> start!241262 m!2842119))

(declare-fun m!2842121 () Bool)

(assert (=> start!241262 m!2842121))

(declare-fun m!2842123 () Bool)

(assert (=> b!2473686 m!2842123))

(declare-fun m!2842125 () Bool)

(assert (=> b!2473686 m!2842125))

(declare-fun m!2842127 () Bool)

(assert (=> b!2473700 m!2842127))

(declare-fun m!2842129 () Bool)

(assert (=> b!2473697 m!2842129))

(declare-fun m!2842131 () Bool)

(assert (=> b!2473697 m!2842131))

(declare-fun m!2842133 () Bool)

(assert (=> b!2473688 m!2842133))

(declare-fun m!2842135 () Bool)

(assert (=> b!2473687 m!2842135))

(declare-fun m!2842137 () Bool)

(assert (=> b!2473698 m!2842137))

(declare-fun m!2842139 () Bool)

(assert (=> b!2473699 m!2842139))

(declare-fun m!2842141 () Bool)

(assert (=> b!2473693 m!2842141))

(declare-fun m!2842143 () Bool)

(assert (=> b!2473685 m!2842143))

(declare-fun m!2842145 () Bool)

(assert (=> b!2473685 m!2842145))

(declare-fun m!2842147 () Bool)

(assert (=> b!2473683 m!2842147))

(declare-fun m!2842149 () Bool)

(assert (=> b!2473679 m!2842149))

(declare-fun m!2842151 () Bool)

(assert (=> b!2473684 m!2842151))

(declare-fun m!2842153 () Bool)

(assert (=> b!2473682 m!2842153))

(declare-fun m!2842155 () Bool)

(assert (=> b!2473681 m!2842155))

(declare-fun m!2842157 () Bool)

(assert (=> b!2473704 m!2842157))

(check-sat (not b!2473686) (not b!2473691) (not b!2473682) (not b!2473697) b_and!187711 (not b_next!72339) (not b!2473677) (not b!2473684) (not b!2473689) (not b!2473700) (not b_next!72327) (not b!2473690) (not start!241262) b_and!187701 (not b!2473681) (not b!2473704) b_and!187705 (not b!2473693) b_and!187709 b_and!187713 (not b_next!72329) (not b_next!72337) b_and!187707 (not b!2473683) (not b!2473678) (not b_next!72335) (not b!2473687) (not b!2473685) b_and!187715 (not b!2473679) (not b!2473692) (not b!2473688) (not b!2473699) (not b_next!72325) (not b_next!72331) (not b_next!72333) b_and!187703 (not b!2473698))
(check-sat b_and!187701 b_and!187705 b_and!187711 (not b_next!72339) b_and!187715 (not b_next!72327) (not b_next!72325) b_and!187703 b_and!187709 b_and!187713 (not b_next!72329) (not b_next!72337) b_and!187707 (not b_next!72335) (not b_next!72331) (not b_next!72333))
(get-model)

(declare-fun d!711819 () Bool)

(declare-fun res!1047280 () Bool)

(declare-fun e!1569173 () Bool)

(assert (=> d!711819 (=> (not res!1047280) (not e!1569173))))

(declare-fun isEmpty!16757 (List!28961) Bool)

(assert (=> d!711819 (= res!1047280 (not (isEmpty!16757 (originalCharacters!5265 (h!34264 l!6611)))))))

(assert (=> d!711819 (= (inv!38955 (h!34264 l!6611)) e!1569173)))

(declare-fun b!2473709 () Bool)

(declare-fun res!1047281 () Bool)

(assert (=> b!2473709 (=> (not res!1047281) (not e!1569173))))

(declare-fun list!11152 (BalanceConc!18048) List!28961)

(declare-fun dynLambda!12406 (Int TokenValue!4685) BalanceConc!18048)

(assert (=> b!2473709 (= res!1047281 (= (originalCharacters!5265 (h!34264 l!6611)) (list!11152 (dynLambda!12406 (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611)))) (value!143627 (h!34264 l!6611))))))))

(declare-fun b!2473710 () Bool)

(declare-fun size!22463 (List!28961) Int)

(assert (=> b!2473710 (= e!1569173 (= (size!22461 (h!34264 l!6611)) (size!22463 (originalCharacters!5265 (h!34264 l!6611)))))))

(assert (= (and d!711819 res!1047280) b!2473709))

(assert (= (and b!2473709 res!1047281) b!2473710))

(declare-fun b_lambda!75911 () Bool)

(assert (=> (not b_lambda!75911) (not b!2473709)))

(declare-fun tb!140137 () Bool)

(declare-fun t!210360 () Bool)

(assert (=> (and b!2473702 (= (toChars!6222 (transformation!4499 (h!34263 rules!4472))) (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611))))) t!210360) tb!140137))

(declare-fun b!2473715 () Bool)

(declare-fun e!1569176 () Bool)

(declare-fun tp!790808 () Bool)

(declare-fun inv!38956 (Conc!9217) Bool)

(assert (=> b!2473715 (= e!1569176 (and (inv!38956 (c!393890 (dynLambda!12406 (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611)))) (value!143627 (h!34264 l!6611))))) tp!790808))))

(declare-fun result!172948 () Bool)

(declare-fun inv!38957 (BalanceConc!18048) Bool)

(assert (=> tb!140137 (= result!172948 (and (inv!38957 (dynLambda!12406 (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611)))) (value!143627 (h!34264 l!6611)))) e!1569176))))

(assert (= tb!140137 b!2473715))

(declare-fun m!2842159 () Bool)

(assert (=> b!2473715 m!2842159))

(declare-fun m!2842161 () Bool)

(assert (=> tb!140137 m!2842161))

(assert (=> b!2473709 t!210360))

(declare-fun b_and!187717 () Bool)

(assert (= b_and!187703 (and (=> t!210360 result!172948) b_and!187717)))

(declare-fun tb!140139 () Bool)

(declare-fun t!210362 () Bool)

(assert (=> (and b!2473703 (= (toChars!6222 (transformation!4499 (rule!6857 t2!67))) (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611))))) t!210362) tb!140139))

(declare-fun result!172952 () Bool)

(assert (= result!172952 result!172948))

(assert (=> b!2473709 t!210362))

(declare-fun b_and!187719 () Bool)

(assert (= b_and!187707 (and (=> t!210362 result!172952) b_and!187719)))

(declare-fun t!210364 () Bool)

(declare-fun tb!140141 () Bool)

(assert (=> (and b!2473695 (= (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611)))) (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611))))) t!210364) tb!140141))

(declare-fun result!172954 () Bool)

(assert (= result!172954 result!172948))

(assert (=> b!2473709 t!210364))

(declare-fun b_and!187721 () Bool)

(assert (= b_and!187711 (and (=> t!210364 result!172954) b_and!187721)))

(declare-fun t!210366 () Bool)

(declare-fun tb!140143 () Bool)

(assert (=> (and b!2473680 (= (toChars!6222 (transformation!4499 (rule!6857 t1!67))) (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611))))) t!210366) tb!140143))

(declare-fun result!172956 () Bool)

(assert (= result!172956 result!172948))

(assert (=> b!2473709 t!210366))

(declare-fun b_and!187723 () Bool)

(assert (= b_and!187715 (and (=> t!210366 result!172956) b_and!187723)))

(declare-fun m!2842163 () Bool)

(assert (=> d!711819 m!2842163))

(declare-fun m!2842165 () Bool)

(assert (=> b!2473709 m!2842165))

(assert (=> b!2473709 m!2842165))

(declare-fun m!2842167 () Bool)

(assert (=> b!2473709 m!2842167))

(declare-fun m!2842169 () Bool)

(assert (=> b!2473710 m!2842169))

(assert (=> b!2473698 d!711819))

(declare-fun d!711821 () Bool)

(assert (=> d!711821 (= (inv!38951 (tag!4989 (rule!6857 t2!67))) (= (mod (str.len (value!143626 (tag!4989 (rule!6857 t2!67)))) 2) 0))))

(assert (=> b!2473677 d!711821))

(declare-fun d!711823 () Bool)

(declare-fun res!1047284 () Bool)

(declare-fun e!1569179 () Bool)

(assert (=> d!711823 (=> (not res!1047284) (not e!1569179))))

(declare-fun semiInverseModEq!1855 (Int Int) Bool)

(assert (=> d!711823 (= res!1047284 (semiInverseModEq!1855 (toChars!6222 (transformation!4499 (rule!6857 t2!67))) (toValue!6363 (transformation!4499 (rule!6857 t2!67)))))))

(assert (=> d!711823 (= (inv!38954 (transformation!4499 (rule!6857 t2!67))) e!1569179)))

(declare-fun b!2473718 () Bool)

(declare-fun equivClasses!1766 (Int Int) Bool)

(assert (=> b!2473718 (= e!1569179 (equivClasses!1766 (toChars!6222 (transformation!4499 (rule!6857 t2!67))) (toValue!6363 (transformation!4499 (rule!6857 t2!67)))))))

(assert (= (and d!711823 res!1047284) b!2473718))

(declare-fun m!2842171 () Bool)

(assert (=> d!711823 m!2842171))

(declare-fun m!2842173 () Bool)

(assert (=> b!2473718 m!2842173))

(assert (=> b!2473677 d!711823))

(declare-fun d!711825 () Bool)

(declare-fun lt!883615 () Token!8468)

(declare-fun contains!4928 (List!28963 Token!8468) Bool)

(assert (=> d!711825 (contains!4928 lt!883611 lt!883615)))

(declare-fun e!1569184 () Token!8468)

(assert (=> d!711825 (= lt!883615 e!1569184)))

(declare-fun c!393894 () Bool)

(assert (=> d!711825 (= c!393894 (= lt!883612 0))))

(declare-fun e!1569185 () Bool)

(assert (=> d!711825 e!1569185))

(declare-fun res!1047287 () Bool)

(assert (=> d!711825 (=> (not res!1047287) (not e!1569185))))

(assert (=> d!711825 (= res!1047287 (<= 0 lt!883612))))

(assert (=> d!711825 (= (apply!6808 lt!883611 lt!883612) lt!883615)))

(declare-fun b!2473725 () Bool)

(assert (=> b!2473725 (= e!1569185 (< lt!883612 (size!22462 lt!883611)))))

(declare-fun b!2473726 () Bool)

(declare-fun head!5650 (List!28963) Token!8468)

(assert (=> b!2473726 (= e!1569184 (head!5650 lt!883611))))

(declare-fun b!2473727 () Bool)

(assert (=> b!2473727 (= e!1569184 (apply!6808 (tail!3932 lt!883611) (- lt!883612 1)))))

(assert (= (and d!711825 res!1047287) b!2473725))

(assert (= (and d!711825 c!393894) b!2473726))

(assert (= (and d!711825 (not c!393894)) b!2473727))

(declare-fun m!2842175 () Bool)

(assert (=> d!711825 m!2842175))

(assert (=> b!2473725 m!2842147))

(declare-fun m!2842177 () Bool)

(assert (=> b!2473726 m!2842177))

(declare-fun m!2842179 () Bool)

(assert (=> b!2473727 m!2842179))

(assert (=> b!2473727 m!2842179))

(declare-fun m!2842181 () Bool)

(assert (=> b!2473727 m!2842181))

(assert (=> b!2473688 d!711825))

(declare-fun d!711827 () Bool)

(declare-fun c!393900 () Bool)

(assert (=> d!711827 (= c!393900 ((_ is IntegerValue!14055) (value!143627 t1!67)))))

(declare-fun e!1569193 () Bool)

(assert (=> d!711827 (= (inv!21 (value!143627 t1!67)) e!1569193)))

(declare-fun b!2473738 () Bool)

(declare-fun e!1569192 () Bool)

(declare-fun inv!15 (TokenValue!4685) Bool)

(assert (=> b!2473738 (= e!1569192 (inv!15 (value!143627 t1!67)))))

(declare-fun b!2473739 () Bool)

(declare-fun inv!16 (TokenValue!4685) Bool)

(assert (=> b!2473739 (= e!1569193 (inv!16 (value!143627 t1!67)))))

(declare-fun b!2473740 () Bool)

(declare-fun e!1569194 () Bool)

(declare-fun inv!17 (TokenValue!4685) Bool)

(assert (=> b!2473740 (= e!1569194 (inv!17 (value!143627 t1!67)))))

(declare-fun b!2473741 () Bool)

(declare-fun res!1047293 () Bool)

(assert (=> b!2473741 (=> res!1047293 e!1569192)))

(assert (=> b!2473741 (= res!1047293 (not ((_ is IntegerValue!14057) (value!143627 t1!67))))))

(assert (=> b!2473741 (= e!1569194 e!1569192)))

(declare-fun b!2473742 () Bool)

(assert (=> b!2473742 (= e!1569193 e!1569194)))

(declare-fun c!393899 () Bool)

(assert (=> b!2473742 (= c!393899 ((_ is IntegerValue!14056) (value!143627 t1!67)))))

(assert (= (and d!711827 c!393900) b!2473739))

(assert (= (and d!711827 (not c!393900)) b!2473742))

(assert (= (and b!2473742 c!393899) b!2473740))

(assert (= (and b!2473742 (not c!393899)) b!2473741))

(assert (= (and b!2473741 (not res!1047293)) b!2473738))

(declare-fun m!2842183 () Bool)

(assert (=> b!2473738 m!2842183))

(declare-fun m!2842185 () Bool)

(assert (=> b!2473739 m!2842185))

(declare-fun m!2842187 () Bool)

(assert (=> b!2473740 m!2842187))

(assert (=> b!2473699 d!711827))

(declare-fun b!2473799 () Bool)

(declare-fun e!1569235 () Bool)

(assert (=> b!2473799 (= e!1569235 true)))

(declare-fun b!2473798 () Bool)

(declare-fun e!1569234 () Bool)

(assert (=> b!2473798 (= e!1569234 e!1569235)))

(declare-fun b!2473797 () Bool)

(declare-fun e!1569233 () Bool)

(assert (=> b!2473797 (= e!1569233 e!1569234)))

(declare-fun d!711829 () Bool)

(assert (=> d!711829 e!1569233))

(assert (= b!2473798 b!2473799))

(assert (= b!2473797 b!2473798))

(assert (= (and d!711829 ((_ is Cons!28862) rules!4472)) b!2473797))

(declare-fun order!15665 () Int)

(declare-fun order!15667 () Int)

(declare-fun lambda!93366 () Int)

(declare-fun dynLambda!12407 (Int Int) Int)

(declare-fun dynLambda!12408 (Int Int) Int)

(assert (=> b!2473799 (< (dynLambda!12407 order!15665 (toValue!6363 (transformation!4499 (h!34263 rules!4472)))) (dynLambda!12408 order!15667 lambda!93366))))

(declare-fun order!15669 () Int)

(declare-fun dynLambda!12409 (Int Int) Int)

(assert (=> b!2473799 (< (dynLambda!12409 order!15669 (toChars!6222 (transformation!4499 (h!34263 rules!4472)))) (dynLambda!12408 order!15667 lambda!93366))))

(assert (=> d!711829 true))

(declare-fun lt!883623 () Bool)

(declare-fun forall!5915 (List!28963 Int) Bool)

(assert (=> d!711829 (= lt!883623 (forall!5915 lt!883611 lambda!93366))))

(declare-fun e!1569226 () Bool)

(assert (=> d!711829 (= lt!883623 e!1569226)))

(declare-fun res!1047317 () Bool)

(assert (=> d!711829 (=> res!1047317 e!1569226)))

(assert (=> d!711829 (= res!1047317 (not ((_ is Cons!28863) lt!883611)))))

(assert (=> d!711829 (not (isEmpty!16756 rules!4472))))

(assert (=> d!711829 (= (rulesProduceEachTokenIndividuallyList!1412 thiss!27932 rules!4472 lt!883611) lt!883623)))

(declare-fun b!2473787 () Bool)

(declare-fun e!1569225 () Bool)

(assert (=> b!2473787 (= e!1569226 e!1569225)))

(declare-fun res!1047316 () Bool)

(assert (=> b!2473787 (=> (not res!1047316) (not e!1569225))))

(declare-fun rulesProduceIndividualToken!1825 (LexerInterface!4096 List!28962 Token!8468) Bool)

(assert (=> b!2473787 (= res!1047316 (rulesProduceIndividualToken!1825 thiss!27932 rules!4472 (h!34264 lt!883611)))))

(declare-fun b!2473788 () Bool)

(assert (=> b!2473788 (= e!1569225 (rulesProduceEachTokenIndividuallyList!1412 thiss!27932 rules!4472 (t!210358 lt!883611)))))

(assert (= (and d!711829 (not res!1047317)) b!2473787))

(assert (= (and b!2473787 res!1047316) b!2473788))

(declare-fun m!2842217 () Bool)

(assert (=> d!711829 m!2842217))

(assert (=> d!711829 m!2842151))

(declare-fun m!2842219 () Bool)

(assert (=> b!2473787 m!2842219))

(declare-fun m!2842221 () Bool)

(assert (=> b!2473788 m!2842221))

(assert (=> b!2473686 d!711829))

(declare-fun d!711847 () Bool)

(assert (=> d!711847 (= (tail!3932 l!6611) (t!210358 l!6611))))

(assert (=> b!2473686 d!711847))

(declare-fun d!711849 () Bool)

(assert (=> d!711849 (= (inv!38951 (tag!4989 (h!34263 rules!4472))) (= (mod (str.len (value!143626 (tag!4989 (h!34263 rules!4472)))) 2) 0))))

(assert (=> b!2473697 d!711849))

(declare-fun d!711851 () Bool)

(declare-fun res!1047318 () Bool)

(declare-fun e!1569236 () Bool)

(assert (=> d!711851 (=> (not res!1047318) (not e!1569236))))

(assert (=> d!711851 (= res!1047318 (semiInverseModEq!1855 (toChars!6222 (transformation!4499 (h!34263 rules!4472))) (toValue!6363 (transformation!4499 (h!34263 rules!4472)))))))

(assert (=> d!711851 (= (inv!38954 (transformation!4499 (h!34263 rules!4472))) e!1569236)))

(declare-fun b!2473802 () Bool)

(assert (=> b!2473802 (= e!1569236 (equivClasses!1766 (toChars!6222 (transformation!4499 (h!34263 rules!4472))) (toValue!6363 (transformation!4499 (h!34263 rules!4472)))))))

(assert (= (and d!711851 res!1047318) b!2473802))

(declare-fun m!2842223 () Bool)

(assert (=> d!711851 m!2842223))

(declare-fun m!2842225 () Bool)

(assert (=> b!2473802 m!2842225))

(assert (=> b!2473697 d!711851))

(declare-fun d!711853 () Bool)

(declare-fun lt!883624 () Token!8468)

(assert (=> d!711853 (contains!4928 l!6611 lt!883624)))

(declare-fun e!1569237 () Token!8468)

(assert (=> d!711853 (= lt!883624 e!1569237)))

(declare-fun c!393910 () Bool)

(assert (=> d!711853 (= c!393910 (= i!1803 0))))

(declare-fun e!1569238 () Bool)

(assert (=> d!711853 e!1569238))

(declare-fun res!1047319 () Bool)

(assert (=> d!711853 (=> (not res!1047319) (not e!1569238))))

(assert (=> d!711853 (= res!1047319 (<= 0 i!1803))))

(assert (=> d!711853 (= (apply!6808 l!6611 i!1803) lt!883624)))

(declare-fun b!2473803 () Bool)

(assert (=> b!2473803 (= e!1569238 (< i!1803 (size!22462 l!6611)))))

(declare-fun b!2473804 () Bool)

(assert (=> b!2473804 (= e!1569237 (head!5650 l!6611))))

(declare-fun b!2473805 () Bool)

(assert (=> b!2473805 (= e!1569237 (apply!6808 (tail!3932 l!6611) (- i!1803 1)))))

(assert (= (and d!711853 res!1047319) b!2473803))

(assert (= (and d!711853 c!393910) b!2473804))

(assert (= (and d!711853 (not c!393910)) b!2473805))

(declare-fun m!2842227 () Bool)

(assert (=> d!711853 m!2842227))

(assert (=> b!2473803 m!2842141))

(declare-fun m!2842229 () Bool)

(assert (=> b!2473804 m!2842229))

(assert (=> b!2473805 m!2842125))

(assert (=> b!2473805 m!2842125))

(declare-fun m!2842231 () Bool)

(assert (=> b!2473805 m!2842231))

(assert (=> b!2473687 d!711853))

(declare-fun d!711855 () Bool)

(assert (=> d!711855 (= (inv!38951 (tag!4989 (rule!6857 t1!67))) (= (mod (str.len (value!143626 (tag!4989 (rule!6857 t1!67)))) 2) 0))))

(assert (=> b!2473685 d!711855))

(declare-fun d!711857 () Bool)

(declare-fun res!1047320 () Bool)

(declare-fun e!1569239 () Bool)

(assert (=> d!711857 (=> (not res!1047320) (not e!1569239))))

(assert (=> d!711857 (= res!1047320 (semiInverseModEq!1855 (toChars!6222 (transformation!4499 (rule!6857 t1!67))) (toValue!6363 (transformation!4499 (rule!6857 t1!67)))))))

(assert (=> d!711857 (= (inv!38954 (transformation!4499 (rule!6857 t1!67))) e!1569239)))

(declare-fun b!2473806 () Bool)

(assert (=> b!2473806 (= e!1569239 (equivClasses!1766 (toChars!6222 (transformation!4499 (rule!6857 t1!67))) (toValue!6363 (transformation!4499 (rule!6857 t1!67)))))))

(assert (= (and d!711857 res!1047320) b!2473806))

(declare-fun m!2842233 () Bool)

(assert (=> d!711857 m!2842233))

(declare-fun m!2842235 () Bool)

(assert (=> b!2473806 m!2842235))

(assert (=> b!2473685 d!711857))

(declare-fun d!711859 () Bool)

(assert (=> d!711859 (= (isEmpty!16756 rules!4472) ((_ is Nil!28862) rules!4472))))

(assert (=> b!2473684 d!711859))

(declare-fun d!711861 () Bool)

(declare-fun lt!883625 () Token!8468)

(assert (=> d!711861 (contains!4928 l!6611 lt!883625)))

(declare-fun e!1569240 () Token!8468)

(assert (=> d!711861 (= lt!883625 e!1569240)))

(declare-fun c!393911 () Bool)

(assert (=> d!711861 (= c!393911 (= (+ 1 i!1803) 0))))

(declare-fun e!1569241 () Bool)

(assert (=> d!711861 e!1569241))

(declare-fun res!1047321 () Bool)

(assert (=> d!711861 (=> (not res!1047321) (not e!1569241))))

(assert (=> d!711861 (= res!1047321 (<= 0 (+ 1 i!1803)))))

(assert (=> d!711861 (= (apply!6808 l!6611 (+ 1 i!1803)) lt!883625)))

(declare-fun b!2473807 () Bool)

(assert (=> b!2473807 (= e!1569241 (< (+ 1 i!1803) (size!22462 l!6611)))))

(declare-fun b!2473808 () Bool)

(assert (=> b!2473808 (= e!1569240 (head!5650 l!6611))))

(declare-fun b!2473809 () Bool)

(assert (=> b!2473809 (= e!1569240 (apply!6808 (tail!3932 l!6611) (- (+ 1 i!1803) 1)))))

(assert (= (and d!711861 res!1047321) b!2473807))

(assert (= (and d!711861 c!393911) b!2473808))

(assert (= (and d!711861 (not c!393911)) b!2473809))

(declare-fun m!2842237 () Bool)

(assert (=> d!711861 m!2842237))

(assert (=> b!2473807 m!2842141))

(assert (=> b!2473808 m!2842229))

(assert (=> b!2473809 m!2842125))

(assert (=> b!2473809 m!2842125))

(declare-fun m!2842239 () Bool)

(assert (=> b!2473809 m!2842239))

(assert (=> b!2473682 d!711861))

(declare-fun d!711863 () Bool)

(declare-fun lt!883628 () Int)

(assert (=> d!711863 (>= lt!883628 0)))

(declare-fun e!1569244 () Int)

(assert (=> d!711863 (= lt!883628 e!1569244)))

(declare-fun c!393914 () Bool)

(assert (=> d!711863 (= c!393914 ((_ is Nil!28863) l!6611))))

(assert (=> d!711863 (= (size!22462 l!6611) lt!883628)))

(declare-fun b!2473814 () Bool)

(assert (=> b!2473814 (= e!1569244 0)))

(declare-fun b!2473815 () Bool)

(assert (=> b!2473815 (= e!1569244 (+ 1 (size!22462 (t!210358 l!6611))))))

(assert (= (and d!711863 c!393914) b!2473814))

(assert (= (and d!711863 (not c!393914)) b!2473815))

(declare-fun m!2842241 () Bool)

(assert (=> b!2473815 m!2842241))

(assert (=> b!2473693 d!711863))

(declare-fun d!711865 () Bool)

(declare-fun res!1047331 () Bool)

(declare-fun e!1569265 () Bool)

(assert (=> d!711865 (=> res!1047331 e!1569265)))

(assert (=> d!711865 (= res!1047331 (or (not ((_ is Cons!28863) lt!883611)) (not ((_ is Cons!28863) (t!210358 lt!883611)))))))

(assert (=> d!711865 (= (tokensListTwoByTwoPredicateSeparableList!635 thiss!27932 lt!883611 rules!4472) e!1569265)))

(declare-fun b!2473842 () Bool)

(declare-fun e!1569266 () Bool)

(assert (=> b!2473842 (= e!1569265 e!1569266)))

(declare-fun res!1047332 () Bool)

(assert (=> b!2473842 (=> (not res!1047332) (not e!1569266))))

(declare-fun separableTokensPredicate!872 (LexerInterface!4096 Token!8468 Token!8468 List!28962) Bool)

(assert (=> b!2473842 (= res!1047332 (separableTokensPredicate!872 thiss!27932 (h!34264 lt!883611) (h!34264 (t!210358 lt!883611)) rules!4472))))

(declare-datatypes ((Unit!42224 0))(
  ( (Unit!42225) )
))
(declare-fun lt!883650 () Unit!42224)

(declare-fun Unit!42226 () Unit!42224)

(assert (=> b!2473842 (= lt!883650 Unit!42226)))

(declare-fun size!22464 (BalanceConc!18048) Int)

(declare-fun charsOf!2833 (Token!8468) BalanceConc!18048)

(assert (=> b!2473842 (> (size!22464 (charsOf!2833 (h!34264 (t!210358 lt!883611)))) 0)))

(declare-fun lt!883649 () Unit!42224)

(declare-fun Unit!42227 () Unit!42224)

(assert (=> b!2473842 (= lt!883649 Unit!42227)))

(assert (=> b!2473842 (rulesProduceIndividualToken!1825 thiss!27932 rules!4472 (h!34264 (t!210358 lt!883611)))))

(declare-fun lt!883647 () Unit!42224)

(declare-fun Unit!42228 () Unit!42224)

(assert (=> b!2473842 (= lt!883647 Unit!42228)))

(assert (=> b!2473842 (rulesProduceIndividualToken!1825 thiss!27932 rules!4472 (h!34264 lt!883611))))

(declare-fun lt!883645 () Unit!42224)

(declare-fun lt!883646 () Unit!42224)

(assert (=> b!2473842 (= lt!883645 lt!883646)))

(assert (=> b!2473842 (rulesProduceIndividualToken!1825 thiss!27932 rules!4472 (h!34264 (t!210358 lt!883611)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!686 (LexerInterface!4096 List!28962 List!28963 Token!8468) Unit!42224)

(assert (=> b!2473842 (= lt!883646 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!686 thiss!27932 rules!4472 lt!883611 (h!34264 (t!210358 lt!883611))))))

(declare-fun lt!883648 () Unit!42224)

(declare-fun lt!883644 () Unit!42224)

(assert (=> b!2473842 (= lt!883648 lt!883644)))

(assert (=> b!2473842 (rulesProduceIndividualToken!1825 thiss!27932 rules!4472 (h!34264 lt!883611))))

(assert (=> b!2473842 (= lt!883644 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!686 thiss!27932 rules!4472 lt!883611 (h!34264 lt!883611)))))

(declare-fun b!2473843 () Bool)

(assert (=> b!2473843 (= e!1569266 (tokensListTwoByTwoPredicateSeparableList!635 thiss!27932 (Cons!28863 (h!34264 (t!210358 lt!883611)) (t!210358 (t!210358 lt!883611))) rules!4472))))

(assert (= (and d!711865 (not res!1047331)) b!2473842))

(assert (= (and b!2473842 res!1047332) b!2473843))

(declare-fun m!2842263 () Bool)

(assert (=> b!2473842 m!2842263))

(declare-fun m!2842265 () Bool)

(assert (=> b!2473842 m!2842265))

(assert (=> b!2473842 m!2842263))

(declare-fun m!2842267 () Bool)

(assert (=> b!2473842 m!2842267))

(declare-fun m!2842269 () Bool)

(assert (=> b!2473842 m!2842269))

(declare-fun m!2842271 () Bool)

(assert (=> b!2473842 m!2842271))

(declare-fun m!2842273 () Bool)

(assert (=> b!2473842 m!2842273))

(assert (=> b!2473842 m!2842219))

(declare-fun m!2842275 () Bool)

(assert (=> b!2473843 m!2842275))

(assert (=> b!2473704 d!711865))

(declare-fun d!711879 () Bool)

(declare-fun lt!883651 () Int)

(assert (=> d!711879 (>= lt!883651 0)))

(declare-fun e!1569267 () Int)

(assert (=> d!711879 (= lt!883651 e!1569267)))

(declare-fun c!393917 () Bool)

(assert (=> d!711879 (= c!393917 ((_ is Nil!28863) lt!883611))))

(assert (=> d!711879 (= (size!22462 lt!883611) lt!883651)))

(declare-fun b!2473844 () Bool)

(assert (=> b!2473844 (= e!1569267 0)))

(declare-fun b!2473845 () Bool)

(assert (=> b!2473845 (= e!1569267 (+ 1 (size!22462 (t!210358 lt!883611))))))

(assert (= (and d!711879 c!393917) b!2473844))

(assert (= (and d!711879 (not c!393917)) b!2473845))

(declare-fun m!2842277 () Bool)

(assert (=> b!2473845 m!2842277))

(assert (=> b!2473683 d!711879))

(declare-fun d!711881 () Bool)

(declare-fun res!1047333 () Bool)

(declare-fun e!1569268 () Bool)

(assert (=> d!711881 (=> (not res!1047333) (not e!1569268))))

(assert (=> d!711881 (= res!1047333 (not (isEmpty!16757 (originalCharacters!5265 t2!67))))))

(assert (=> d!711881 (= (inv!38955 t2!67) e!1569268)))

(declare-fun b!2473846 () Bool)

(declare-fun res!1047334 () Bool)

(assert (=> b!2473846 (=> (not res!1047334) (not e!1569268))))

(assert (=> b!2473846 (= res!1047334 (= (originalCharacters!5265 t2!67) (list!11152 (dynLambda!12406 (toChars!6222 (transformation!4499 (rule!6857 t2!67))) (value!143627 t2!67)))))))

(declare-fun b!2473847 () Bool)

(assert (=> b!2473847 (= e!1569268 (= (size!22461 t2!67) (size!22463 (originalCharacters!5265 t2!67))))))

(assert (= (and d!711881 res!1047333) b!2473846))

(assert (= (and b!2473846 res!1047334) b!2473847))

(declare-fun b_lambda!75915 () Bool)

(assert (=> (not b_lambda!75915) (not b!2473846)))

(declare-fun tb!140153 () Bool)

(declare-fun t!210380 () Bool)

(assert (=> (and b!2473702 (= (toChars!6222 (transformation!4499 (h!34263 rules!4472))) (toChars!6222 (transformation!4499 (rule!6857 t2!67)))) t!210380) tb!140153))

(declare-fun b!2473848 () Bool)

(declare-fun e!1569269 () Bool)

(declare-fun tp!790812 () Bool)

(assert (=> b!2473848 (= e!1569269 (and (inv!38956 (c!393890 (dynLambda!12406 (toChars!6222 (transformation!4499 (rule!6857 t2!67))) (value!143627 t2!67)))) tp!790812))))

(declare-fun result!172968 () Bool)

(assert (=> tb!140153 (= result!172968 (and (inv!38957 (dynLambda!12406 (toChars!6222 (transformation!4499 (rule!6857 t2!67))) (value!143627 t2!67))) e!1569269))))

(assert (= tb!140153 b!2473848))

(declare-fun m!2842279 () Bool)

(assert (=> b!2473848 m!2842279))

(declare-fun m!2842281 () Bool)

(assert (=> tb!140153 m!2842281))

(assert (=> b!2473846 t!210380))

(declare-fun b_and!187733 () Bool)

(assert (= b_and!187717 (and (=> t!210380 result!172968) b_and!187733)))

(declare-fun t!210382 () Bool)

(declare-fun tb!140155 () Bool)

(assert (=> (and b!2473703 (= (toChars!6222 (transformation!4499 (rule!6857 t2!67))) (toChars!6222 (transformation!4499 (rule!6857 t2!67)))) t!210382) tb!140155))

(declare-fun result!172970 () Bool)

(assert (= result!172970 result!172968))

(assert (=> b!2473846 t!210382))

(declare-fun b_and!187735 () Bool)

(assert (= b_and!187719 (and (=> t!210382 result!172970) b_and!187735)))

(declare-fun tb!140157 () Bool)

(declare-fun t!210384 () Bool)

(assert (=> (and b!2473695 (= (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611)))) (toChars!6222 (transformation!4499 (rule!6857 t2!67)))) t!210384) tb!140157))

(declare-fun result!172972 () Bool)

(assert (= result!172972 result!172968))

(assert (=> b!2473846 t!210384))

(declare-fun b_and!187737 () Bool)

(assert (= b_and!187721 (and (=> t!210384 result!172972) b_and!187737)))

(declare-fun t!210386 () Bool)

(declare-fun tb!140159 () Bool)

(assert (=> (and b!2473680 (= (toChars!6222 (transformation!4499 (rule!6857 t1!67))) (toChars!6222 (transformation!4499 (rule!6857 t2!67)))) t!210386) tb!140159))

(declare-fun result!172974 () Bool)

(assert (= result!172974 result!172968))

(assert (=> b!2473846 t!210386))

(declare-fun b_and!187739 () Bool)

(assert (= b_and!187723 (and (=> t!210386 result!172974) b_and!187739)))

(declare-fun m!2842283 () Bool)

(assert (=> d!711881 m!2842283))

(declare-fun m!2842285 () Bool)

(assert (=> b!2473846 m!2842285))

(assert (=> b!2473846 m!2842285))

(declare-fun m!2842287 () Bool)

(assert (=> b!2473846 m!2842287))

(declare-fun m!2842289 () Bool)

(assert (=> b!2473847 m!2842289))

(assert (=> start!241262 d!711881))

(declare-fun d!711883 () Bool)

(declare-fun res!1047335 () Bool)

(declare-fun e!1569270 () Bool)

(assert (=> d!711883 (=> (not res!1047335) (not e!1569270))))

(assert (=> d!711883 (= res!1047335 (not (isEmpty!16757 (originalCharacters!5265 t1!67))))))

(assert (=> d!711883 (= (inv!38955 t1!67) e!1569270)))

(declare-fun b!2473849 () Bool)

(declare-fun res!1047336 () Bool)

(assert (=> b!2473849 (=> (not res!1047336) (not e!1569270))))

(assert (=> b!2473849 (= res!1047336 (= (originalCharacters!5265 t1!67) (list!11152 (dynLambda!12406 (toChars!6222 (transformation!4499 (rule!6857 t1!67))) (value!143627 t1!67)))))))

(declare-fun b!2473850 () Bool)

(assert (=> b!2473850 (= e!1569270 (= (size!22461 t1!67) (size!22463 (originalCharacters!5265 t1!67))))))

(assert (= (and d!711883 res!1047335) b!2473849))

(assert (= (and b!2473849 res!1047336) b!2473850))

(declare-fun b_lambda!75917 () Bool)

(assert (=> (not b_lambda!75917) (not b!2473849)))

(declare-fun t!210388 () Bool)

(declare-fun tb!140161 () Bool)

(assert (=> (and b!2473702 (= (toChars!6222 (transformation!4499 (h!34263 rules!4472))) (toChars!6222 (transformation!4499 (rule!6857 t1!67)))) t!210388) tb!140161))

(declare-fun b!2473851 () Bool)

(declare-fun e!1569271 () Bool)

(declare-fun tp!790813 () Bool)

(assert (=> b!2473851 (= e!1569271 (and (inv!38956 (c!393890 (dynLambda!12406 (toChars!6222 (transformation!4499 (rule!6857 t1!67))) (value!143627 t1!67)))) tp!790813))))

(declare-fun result!172976 () Bool)

(assert (=> tb!140161 (= result!172976 (and (inv!38957 (dynLambda!12406 (toChars!6222 (transformation!4499 (rule!6857 t1!67))) (value!143627 t1!67))) e!1569271))))

(assert (= tb!140161 b!2473851))

(declare-fun m!2842291 () Bool)

(assert (=> b!2473851 m!2842291))

(declare-fun m!2842293 () Bool)

(assert (=> tb!140161 m!2842293))

(assert (=> b!2473849 t!210388))

(declare-fun b_and!187741 () Bool)

(assert (= b_and!187733 (and (=> t!210388 result!172976) b_and!187741)))

(declare-fun tb!140163 () Bool)

(declare-fun t!210390 () Bool)

(assert (=> (and b!2473703 (= (toChars!6222 (transformation!4499 (rule!6857 t2!67))) (toChars!6222 (transformation!4499 (rule!6857 t1!67)))) t!210390) tb!140163))

(declare-fun result!172978 () Bool)

(assert (= result!172978 result!172976))

(assert (=> b!2473849 t!210390))

(declare-fun b_and!187743 () Bool)

(assert (= b_and!187735 (and (=> t!210390 result!172978) b_and!187743)))

(declare-fun t!210392 () Bool)

(declare-fun tb!140165 () Bool)

(assert (=> (and b!2473695 (= (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611)))) (toChars!6222 (transformation!4499 (rule!6857 t1!67)))) t!210392) tb!140165))

(declare-fun result!172980 () Bool)

(assert (= result!172980 result!172976))

(assert (=> b!2473849 t!210392))

(declare-fun b_and!187745 () Bool)

(assert (= b_and!187737 (and (=> t!210392 result!172980) b_and!187745)))

(declare-fun t!210394 () Bool)

(declare-fun tb!140167 () Bool)

(assert (=> (and b!2473680 (= (toChars!6222 (transformation!4499 (rule!6857 t1!67))) (toChars!6222 (transformation!4499 (rule!6857 t1!67)))) t!210394) tb!140167))

(declare-fun result!172982 () Bool)

(assert (= result!172982 result!172976))

(assert (=> b!2473849 t!210394))

(declare-fun b_and!187747 () Bool)

(assert (= b_and!187739 (and (=> t!210394 result!172982) b_and!187747)))

(declare-fun m!2842295 () Bool)

(assert (=> d!711883 m!2842295))

(declare-fun m!2842297 () Bool)

(assert (=> b!2473849 m!2842297))

(assert (=> b!2473849 m!2842297))

(declare-fun m!2842299 () Bool)

(assert (=> b!2473849 m!2842299))

(declare-fun m!2842301 () Bool)

(assert (=> b!2473850 m!2842301))

(assert (=> start!241262 d!711883))

(declare-fun d!711885 () Bool)

(declare-fun res!1047337 () Bool)

(declare-fun e!1569272 () Bool)

(assert (=> d!711885 (=> res!1047337 e!1569272)))

(assert (=> d!711885 (= res!1047337 (or (not ((_ is Cons!28863) l!6611)) (not ((_ is Cons!28863) (t!210358 l!6611)))))))

(assert (=> d!711885 (= (tokensListTwoByTwoPredicateSeparableList!635 thiss!27932 l!6611 rules!4472) e!1569272)))

(declare-fun b!2473852 () Bool)

(declare-fun e!1569273 () Bool)

(assert (=> b!2473852 (= e!1569272 e!1569273)))

(declare-fun res!1047338 () Bool)

(assert (=> b!2473852 (=> (not res!1047338) (not e!1569273))))

(assert (=> b!2473852 (= res!1047338 (separableTokensPredicate!872 thiss!27932 (h!34264 l!6611) (h!34264 (t!210358 l!6611)) rules!4472))))

(declare-fun lt!883658 () Unit!42224)

(declare-fun Unit!42229 () Unit!42224)

(assert (=> b!2473852 (= lt!883658 Unit!42229)))

(assert (=> b!2473852 (> (size!22464 (charsOf!2833 (h!34264 (t!210358 l!6611)))) 0)))

(declare-fun lt!883657 () Unit!42224)

(declare-fun Unit!42230 () Unit!42224)

(assert (=> b!2473852 (= lt!883657 Unit!42230)))

(assert (=> b!2473852 (rulesProduceIndividualToken!1825 thiss!27932 rules!4472 (h!34264 (t!210358 l!6611)))))

(declare-fun lt!883655 () Unit!42224)

(declare-fun Unit!42231 () Unit!42224)

(assert (=> b!2473852 (= lt!883655 Unit!42231)))

(assert (=> b!2473852 (rulesProduceIndividualToken!1825 thiss!27932 rules!4472 (h!34264 l!6611))))

(declare-fun lt!883653 () Unit!42224)

(declare-fun lt!883654 () Unit!42224)

(assert (=> b!2473852 (= lt!883653 lt!883654)))

(assert (=> b!2473852 (rulesProduceIndividualToken!1825 thiss!27932 rules!4472 (h!34264 (t!210358 l!6611)))))

(assert (=> b!2473852 (= lt!883654 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!686 thiss!27932 rules!4472 l!6611 (h!34264 (t!210358 l!6611))))))

(declare-fun lt!883656 () Unit!42224)

(declare-fun lt!883652 () Unit!42224)

(assert (=> b!2473852 (= lt!883656 lt!883652)))

(assert (=> b!2473852 (rulesProduceIndividualToken!1825 thiss!27932 rules!4472 (h!34264 l!6611))))

(assert (=> b!2473852 (= lt!883652 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!686 thiss!27932 rules!4472 l!6611 (h!34264 l!6611)))))

(declare-fun b!2473853 () Bool)

(assert (=> b!2473853 (= e!1569273 (tokensListTwoByTwoPredicateSeparableList!635 thiss!27932 (Cons!28863 (h!34264 (t!210358 l!6611)) (t!210358 (t!210358 l!6611))) rules!4472))))

(assert (= (and d!711885 (not res!1047337)) b!2473852))

(assert (= (and b!2473852 res!1047338) b!2473853))

(declare-fun m!2842303 () Bool)

(assert (=> b!2473852 m!2842303))

(declare-fun m!2842305 () Bool)

(assert (=> b!2473852 m!2842305))

(assert (=> b!2473852 m!2842303))

(declare-fun m!2842307 () Bool)

(assert (=> b!2473852 m!2842307))

(declare-fun m!2842309 () Bool)

(assert (=> b!2473852 m!2842309))

(declare-fun m!2842311 () Bool)

(assert (=> b!2473852 m!2842311))

(declare-fun m!2842313 () Bool)

(assert (=> b!2473852 m!2842313))

(declare-fun m!2842315 () Bool)

(assert (=> b!2473852 m!2842315))

(declare-fun m!2842317 () Bool)

(assert (=> b!2473853 m!2842317))

(assert (=> b!2473681 d!711885))

(declare-fun d!711887 () Bool)

(assert (=> d!711887 (= (inv!38951 (tag!4989 (rule!6857 (h!34264 l!6611)))) (= (mod (str.len (value!143626 (tag!4989 (rule!6857 (h!34264 l!6611))))) 2) 0))))

(assert (=> b!2473690 d!711887))

(declare-fun d!711889 () Bool)

(declare-fun res!1047339 () Bool)

(declare-fun e!1569274 () Bool)

(assert (=> d!711889 (=> (not res!1047339) (not e!1569274))))

(assert (=> d!711889 (= res!1047339 (semiInverseModEq!1855 (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611)))) (toValue!6363 (transformation!4499 (rule!6857 (h!34264 l!6611))))))))

(assert (=> d!711889 (= (inv!38954 (transformation!4499 (rule!6857 (h!34264 l!6611)))) e!1569274)))

(declare-fun b!2473854 () Bool)

(assert (=> b!2473854 (= e!1569274 (equivClasses!1766 (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611)))) (toValue!6363 (transformation!4499 (rule!6857 (h!34264 l!6611))))))))

(assert (= (and d!711889 res!1047339) b!2473854))

(declare-fun m!2842319 () Bool)

(assert (=> d!711889 m!2842319))

(declare-fun m!2842321 () Bool)

(assert (=> b!2473854 m!2842321))

(assert (=> b!2473690 d!711889))

(declare-fun d!711891 () Bool)

(declare-fun c!393919 () Bool)

(assert (=> d!711891 (= c!393919 ((_ is IntegerValue!14055) (value!143627 t2!67)))))

(declare-fun e!1569276 () Bool)

(assert (=> d!711891 (= (inv!21 (value!143627 t2!67)) e!1569276)))

(declare-fun b!2473855 () Bool)

(declare-fun e!1569275 () Bool)

(assert (=> b!2473855 (= e!1569275 (inv!15 (value!143627 t2!67)))))

(declare-fun b!2473856 () Bool)

(assert (=> b!2473856 (= e!1569276 (inv!16 (value!143627 t2!67)))))

(declare-fun b!2473857 () Bool)

(declare-fun e!1569277 () Bool)

(assert (=> b!2473857 (= e!1569277 (inv!17 (value!143627 t2!67)))))

(declare-fun b!2473858 () Bool)

(declare-fun res!1047340 () Bool)

(assert (=> b!2473858 (=> res!1047340 e!1569275)))

(assert (=> b!2473858 (= res!1047340 (not ((_ is IntegerValue!14057) (value!143627 t2!67))))))

(assert (=> b!2473858 (= e!1569277 e!1569275)))

(declare-fun b!2473859 () Bool)

(assert (=> b!2473859 (= e!1569276 e!1569277)))

(declare-fun c!393918 () Bool)

(assert (=> b!2473859 (= c!393918 ((_ is IntegerValue!14056) (value!143627 t2!67)))))

(assert (= (and d!711891 c!393919) b!2473856))

(assert (= (and d!711891 (not c!393919)) b!2473859))

(assert (= (and b!2473859 c!393918) b!2473857))

(assert (= (and b!2473859 (not c!393918)) b!2473858))

(assert (= (and b!2473858 (not res!1047340)) b!2473855))

(declare-fun m!2842323 () Bool)

(assert (=> b!2473855 m!2842323))

(declare-fun m!2842325 () Bool)

(assert (=> b!2473856 m!2842325))

(declare-fun m!2842327 () Bool)

(assert (=> b!2473857 m!2842327))

(assert (=> b!2473691 d!711891))

(declare-fun d!711893 () Bool)

(declare-fun res!1047343 () Bool)

(declare-fun e!1569280 () Bool)

(assert (=> d!711893 (=> (not res!1047343) (not e!1569280))))

(declare-fun rulesValid!1678 (LexerInterface!4096 List!28962) Bool)

(assert (=> d!711893 (= res!1047343 (rulesValid!1678 thiss!27932 rules!4472))))

(assert (=> d!711893 (= (rulesInvariant!3596 thiss!27932 rules!4472) e!1569280)))

(declare-fun b!2473862 () Bool)

(declare-datatypes ((List!28964 0))(
  ( (Nil!28864) (Cons!28864 (h!34265 String!31721) (t!210435 List!28964)) )
))
(declare-fun noDuplicateTag!1676 (LexerInterface!4096 List!28962 List!28964) Bool)

(assert (=> b!2473862 (= e!1569280 (noDuplicateTag!1676 thiss!27932 rules!4472 Nil!28864))))

(assert (= (and d!711893 res!1047343) b!2473862))

(declare-fun m!2842329 () Bool)

(assert (=> d!711893 m!2842329))

(declare-fun m!2842331 () Bool)

(assert (=> b!2473862 m!2842331))

(assert (=> b!2473678 d!711893))

(declare-fun d!711895 () Bool)

(declare-fun c!393921 () Bool)

(assert (=> d!711895 (= c!393921 ((_ is IntegerValue!14055) (value!143627 (h!34264 l!6611))))))

(declare-fun e!1569282 () Bool)

(assert (=> d!711895 (= (inv!21 (value!143627 (h!34264 l!6611))) e!1569282)))

(declare-fun b!2473863 () Bool)

(declare-fun e!1569281 () Bool)

(assert (=> b!2473863 (= e!1569281 (inv!15 (value!143627 (h!34264 l!6611))))))

(declare-fun b!2473864 () Bool)

(assert (=> b!2473864 (= e!1569282 (inv!16 (value!143627 (h!34264 l!6611))))))

(declare-fun b!2473865 () Bool)

(declare-fun e!1569283 () Bool)

(assert (=> b!2473865 (= e!1569283 (inv!17 (value!143627 (h!34264 l!6611))))))

(declare-fun b!2473866 () Bool)

(declare-fun res!1047344 () Bool)

(assert (=> b!2473866 (=> res!1047344 e!1569281)))

(assert (=> b!2473866 (= res!1047344 (not ((_ is IntegerValue!14057) (value!143627 (h!34264 l!6611)))))))

(assert (=> b!2473866 (= e!1569283 e!1569281)))

(declare-fun b!2473867 () Bool)

(assert (=> b!2473867 (= e!1569282 e!1569283)))

(declare-fun c!393920 () Bool)

(assert (=> b!2473867 (= c!393920 ((_ is IntegerValue!14056) (value!143627 (h!34264 l!6611))))))

(assert (= (and d!711895 c!393921) b!2473864))

(assert (= (and d!711895 (not c!393921)) b!2473867))

(assert (= (and b!2473867 c!393920) b!2473865))

(assert (= (and b!2473867 (not c!393920)) b!2473866))

(assert (= (and b!2473866 (not res!1047344)) b!2473863))

(declare-fun m!2842333 () Bool)

(assert (=> b!2473863 m!2842333))

(declare-fun m!2842335 () Bool)

(assert (=> b!2473864 m!2842335))

(declare-fun m!2842337 () Bool)

(assert (=> b!2473865 m!2842337))

(assert (=> b!2473689 d!711895))

(declare-fun d!711897 () Bool)

(declare-fun lt!883659 () Token!8468)

(assert (=> d!711897 (contains!4928 lt!883611 lt!883659)))

(declare-fun e!1569284 () Token!8468)

(assert (=> d!711897 (= lt!883659 e!1569284)))

(declare-fun c!393922 () Bool)

(assert (=> d!711897 (= c!393922 (= (- i!1803 1) 0))))

(declare-fun e!1569285 () Bool)

(assert (=> d!711897 e!1569285))

(declare-fun res!1047345 () Bool)

(assert (=> d!711897 (=> (not res!1047345) (not e!1569285))))

(assert (=> d!711897 (= res!1047345 (<= 0 (- i!1803 1)))))

(assert (=> d!711897 (= (apply!6808 lt!883611 (- i!1803 1)) lt!883659)))

(declare-fun b!2473868 () Bool)

(assert (=> b!2473868 (= e!1569285 (< (- i!1803 1) (size!22462 lt!883611)))))

(declare-fun b!2473869 () Bool)

(assert (=> b!2473869 (= e!1569284 (head!5650 lt!883611))))

(declare-fun b!2473870 () Bool)

(assert (=> b!2473870 (= e!1569284 (apply!6808 (tail!3932 lt!883611) (- (- i!1803 1) 1)))))

(assert (= (and d!711897 res!1047345) b!2473868))

(assert (= (and d!711897 c!393922) b!2473869))

(assert (= (and d!711897 (not c!393922)) b!2473870))

(declare-fun m!2842339 () Bool)

(assert (=> d!711897 m!2842339))

(assert (=> b!2473868 m!2842147))

(assert (=> b!2473869 m!2842177))

(assert (=> b!2473870 m!2842179))

(assert (=> b!2473870 m!2842179))

(declare-fun m!2842341 () Bool)

(assert (=> b!2473870 m!2842341))

(assert (=> b!2473700 d!711897))

(declare-fun bs!466978 () Bool)

(declare-fun d!711899 () Bool)

(assert (= bs!466978 (and d!711899 d!711829)))

(declare-fun lambda!93370 () Int)

(assert (=> bs!466978 (= lambda!93370 lambda!93366)))

(declare-fun b!2473875 () Bool)

(declare-fun e!1569290 () Bool)

(assert (=> b!2473875 (= e!1569290 true)))

(declare-fun b!2473874 () Bool)

(declare-fun e!1569289 () Bool)

(assert (=> b!2473874 (= e!1569289 e!1569290)))

(declare-fun b!2473873 () Bool)

(declare-fun e!1569288 () Bool)

(assert (=> b!2473873 (= e!1569288 e!1569289)))

(assert (=> d!711899 e!1569288))

(assert (= b!2473874 b!2473875))

(assert (= b!2473873 b!2473874))

(assert (= (and d!711899 ((_ is Cons!28862) rules!4472)) b!2473873))

(assert (=> b!2473875 (< (dynLambda!12407 order!15665 (toValue!6363 (transformation!4499 (h!34263 rules!4472)))) (dynLambda!12408 order!15667 lambda!93370))))

(assert (=> b!2473875 (< (dynLambda!12409 order!15669 (toChars!6222 (transformation!4499 (h!34263 rules!4472)))) (dynLambda!12408 order!15667 lambda!93370))))

(assert (=> d!711899 true))

(declare-fun lt!883660 () Bool)

(assert (=> d!711899 (= lt!883660 (forall!5915 l!6611 lambda!93370))))

(declare-fun e!1569287 () Bool)

(assert (=> d!711899 (= lt!883660 e!1569287)))

(declare-fun res!1047347 () Bool)

(assert (=> d!711899 (=> res!1047347 e!1569287)))

(assert (=> d!711899 (= res!1047347 (not ((_ is Cons!28863) l!6611)))))

(assert (=> d!711899 (not (isEmpty!16756 rules!4472))))

(assert (=> d!711899 (= (rulesProduceEachTokenIndividuallyList!1412 thiss!27932 rules!4472 l!6611) lt!883660)))

(declare-fun b!2473871 () Bool)

(declare-fun e!1569286 () Bool)

(assert (=> b!2473871 (= e!1569287 e!1569286)))

(declare-fun res!1047346 () Bool)

(assert (=> b!2473871 (=> (not res!1047346) (not e!1569286))))

(assert (=> b!2473871 (= res!1047346 (rulesProduceIndividualToken!1825 thiss!27932 rules!4472 (h!34264 l!6611)))))

(declare-fun b!2473872 () Bool)

(assert (=> b!2473872 (= e!1569286 (rulesProduceEachTokenIndividuallyList!1412 thiss!27932 rules!4472 (t!210358 l!6611)))))

(assert (= (and d!711899 (not res!1047347)) b!2473871))

(assert (= (and b!2473871 res!1047346) b!2473872))

(declare-fun m!2842343 () Bool)

(assert (=> d!711899 m!2842343))

(assert (=> d!711899 m!2842151))

(assert (=> b!2473871 m!2842315))

(declare-fun m!2842345 () Bool)

(assert (=> b!2473872 m!2842345))

(assert (=> b!2473679 d!711899))

(declare-fun b!2473889 () Bool)

(declare-fun b_free!71637 () Bool)

(declare-fun b_next!72341 () Bool)

(assert (=> b!2473889 (= b_free!71637 (not b_next!72341))))

(declare-fun tp!790826 () Bool)

(declare-fun b_and!187749 () Bool)

(assert (=> b!2473889 (= tp!790826 b_and!187749)))

(declare-fun b_free!71639 () Bool)

(declare-fun b_next!72343 () Bool)

(assert (=> b!2473889 (= b_free!71639 (not b_next!72343))))

(declare-fun t!210396 () Bool)

(declare-fun tb!140169 () Bool)

(assert (=> (and b!2473889 (= (toChars!6222 (transformation!4499 (rule!6857 (h!34264 (t!210358 l!6611))))) (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611))))) t!210396) tb!140169))

(declare-fun result!172986 () Bool)

(assert (= result!172986 result!172948))

(assert (=> b!2473709 t!210396))

(declare-fun t!210398 () Bool)

(declare-fun tb!140171 () Bool)

(assert (=> (and b!2473889 (= (toChars!6222 (transformation!4499 (rule!6857 (h!34264 (t!210358 l!6611))))) (toChars!6222 (transformation!4499 (rule!6857 t2!67)))) t!210398) tb!140171))

(declare-fun result!172988 () Bool)

(assert (= result!172988 result!172968))

(assert (=> b!2473846 t!210398))

(declare-fun tb!140173 () Bool)

(declare-fun t!210400 () Bool)

(assert (=> (and b!2473889 (= (toChars!6222 (transformation!4499 (rule!6857 (h!34264 (t!210358 l!6611))))) (toChars!6222 (transformation!4499 (rule!6857 t1!67)))) t!210400) tb!140173))

(declare-fun result!172990 () Bool)

(assert (= result!172990 result!172976))

(assert (=> b!2473849 t!210400))

(declare-fun tp!790828 () Bool)

(declare-fun b_and!187751 () Bool)

(assert (=> b!2473889 (= tp!790828 (and (=> t!210396 result!172986) (=> t!210398 result!172988) (=> t!210400 result!172990) b_and!187751))))

(declare-fun e!1569306 () Bool)

(assert (=> b!2473889 (= e!1569306 (and tp!790826 tp!790828))))

(declare-fun e!1569307 () Bool)

(assert (=> b!2473698 (= tp!790793 e!1569307)))

(declare-fun e!1569303 () Bool)

(declare-fun tp!790824 () Bool)

(declare-fun b!2473888 () Bool)

(assert (=> b!2473888 (= e!1569303 (and tp!790824 (inv!38951 (tag!4989 (rule!6857 (h!34264 (t!210358 l!6611))))) (inv!38954 (transformation!4499 (rule!6857 (h!34264 (t!210358 l!6611))))) e!1569306))))

(declare-fun e!1569305 () Bool)

(declare-fun tp!790825 () Bool)

(declare-fun b!2473886 () Bool)

(assert (=> b!2473886 (= e!1569307 (and (inv!38955 (h!34264 (t!210358 l!6611))) e!1569305 tp!790825))))

(declare-fun b!2473887 () Bool)

(declare-fun tp!790827 () Bool)

(assert (=> b!2473887 (= e!1569305 (and (inv!21 (value!143627 (h!34264 (t!210358 l!6611)))) e!1569303 tp!790827))))

(assert (= b!2473888 b!2473889))

(assert (= b!2473887 b!2473888))

(assert (= b!2473886 b!2473887))

(assert (= (and b!2473698 ((_ is Cons!28863) (t!210358 l!6611))) b!2473886))

(declare-fun m!2842347 () Bool)

(assert (=> b!2473888 m!2842347))

(declare-fun m!2842349 () Bool)

(assert (=> b!2473888 m!2842349))

(declare-fun m!2842351 () Bool)

(assert (=> b!2473886 m!2842351))

(declare-fun m!2842353 () Bool)

(assert (=> b!2473887 m!2842353))

(declare-fun b!2473901 () Bool)

(declare-fun e!1569311 () Bool)

(declare-fun tp!790839 () Bool)

(declare-fun tp!790841 () Bool)

(assert (=> b!2473901 (= e!1569311 (and tp!790839 tp!790841))))

(declare-fun b!2473900 () Bool)

(declare-fun tp_is_empty!11973 () Bool)

(assert (=> b!2473900 (= e!1569311 tp_is_empty!11973)))

(declare-fun b!2473902 () Bool)

(declare-fun tp!790840 () Bool)

(assert (=> b!2473902 (= e!1569311 tp!790840)))

(declare-fun b!2473903 () Bool)

(declare-fun tp!790843 () Bool)

(declare-fun tp!790842 () Bool)

(assert (=> b!2473903 (= e!1569311 (and tp!790843 tp!790842))))

(assert (=> b!2473677 (= tp!790795 e!1569311)))

(assert (= (and b!2473677 ((_ is ElementMatch!7287) (regex!4499 (rule!6857 t2!67)))) b!2473900))

(assert (= (and b!2473677 ((_ is Concat!11973) (regex!4499 (rule!6857 t2!67)))) b!2473901))

(assert (= (and b!2473677 ((_ is Star!7287) (regex!4499 (rule!6857 t2!67)))) b!2473902))

(assert (= (and b!2473677 ((_ is Union!7287) (regex!4499 (rule!6857 t2!67)))) b!2473903))

(declare-fun b!2473908 () Bool)

(declare-fun e!1569314 () Bool)

(declare-fun tp!790846 () Bool)

(assert (=> b!2473908 (= e!1569314 (and tp_is_empty!11973 tp!790846))))

(assert (=> b!2473699 (= tp!790799 e!1569314)))

(assert (= (and b!2473699 ((_ is Cons!28861) (originalCharacters!5265 t1!67))) b!2473908))

(declare-fun b!2473910 () Bool)

(declare-fun e!1569315 () Bool)

(declare-fun tp!790847 () Bool)

(declare-fun tp!790849 () Bool)

(assert (=> b!2473910 (= e!1569315 (and tp!790847 tp!790849))))

(declare-fun b!2473909 () Bool)

(assert (=> b!2473909 (= e!1569315 tp_is_empty!11973)))

(declare-fun b!2473911 () Bool)

(declare-fun tp!790848 () Bool)

(assert (=> b!2473911 (= e!1569315 tp!790848)))

(declare-fun b!2473912 () Bool)

(declare-fun tp!790851 () Bool)

(declare-fun tp!790850 () Bool)

(assert (=> b!2473912 (= e!1569315 (and tp!790851 tp!790850))))

(assert (=> b!2473697 (= tp!790791 e!1569315)))

(assert (= (and b!2473697 ((_ is ElementMatch!7287) (regex!4499 (h!34263 rules!4472)))) b!2473909))

(assert (= (and b!2473697 ((_ is Concat!11973) (regex!4499 (h!34263 rules!4472)))) b!2473910))

(assert (= (and b!2473697 ((_ is Star!7287) (regex!4499 (h!34263 rules!4472)))) b!2473911))

(assert (= (and b!2473697 ((_ is Union!7287) (regex!4499 (h!34263 rules!4472)))) b!2473912))

(declare-fun b!2473914 () Bool)

(declare-fun e!1569316 () Bool)

(declare-fun tp!790852 () Bool)

(declare-fun tp!790854 () Bool)

(assert (=> b!2473914 (= e!1569316 (and tp!790852 tp!790854))))

(declare-fun b!2473913 () Bool)

(assert (=> b!2473913 (= e!1569316 tp_is_empty!11973)))

(declare-fun b!2473915 () Bool)

(declare-fun tp!790853 () Bool)

(assert (=> b!2473915 (= e!1569316 tp!790853)))

(declare-fun b!2473916 () Bool)

(declare-fun tp!790856 () Bool)

(declare-fun tp!790855 () Bool)

(assert (=> b!2473916 (= e!1569316 (and tp!790856 tp!790855))))

(assert (=> b!2473685 (= tp!790800 e!1569316)))

(assert (= (and b!2473685 ((_ is ElementMatch!7287) (regex!4499 (rule!6857 t1!67)))) b!2473913))

(assert (= (and b!2473685 ((_ is Concat!11973) (regex!4499 (rule!6857 t1!67)))) b!2473914))

(assert (= (and b!2473685 ((_ is Star!7287) (regex!4499 (rule!6857 t1!67)))) b!2473915))

(assert (= (and b!2473685 ((_ is Union!7287) (regex!4499 (rule!6857 t1!67)))) b!2473916))

(declare-fun b!2473927 () Bool)

(declare-fun b_free!71641 () Bool)

(declare-fun b_next!72345 () Bool)

(assert (=> b!2473927 (= b_free!71641 (not b_next!72345))))

(declare-fun tp!790868 () Bool)

(declare-fun b_and!187753 () Bool)

(assert (=> b!2473927 (= tp!790868 b_and!187753)))

(declare-fun b_free!71643 () Bool)

(declare-fun b_next!72347 () Bool)

(assert (=> b!2473927 (= b_free!71643 (not b_next!72347))))

(declare-fun t!210402 () Bool)

(declare-fun tb!140175 () Bool)

(assert (=> (and b!2473927 (= (toChars!6222 (transformation!4499 (h!34263 (t!210357 rules!4472)))) (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611))))) t!210402) tb!140175))

(declare-fun result!172998 () Bool)

(assert (= result!172998 result!172948))

(assert (=> b!2473709 t!210402))

(declare-fun t!210404 () Bool)

(declare-fun tb!140177 () Bool)

(assert (=> (and b!2473927 (= (toChars!6222 (transformation!4499 (h!34263 (t!210357 rules!4472)))) (toChars!6222 (transformation!4499 (rule!6857 t2!67)))) t!210404) tb!140177))

(declare-fun result!173000 () Bool)

(assert (= result!173000 result!172968))

(assert (=> b!2473846 t!210404))

(declare-fun tb!140179 () Bool)

(declare-fun t!210406 () Bool)

(assert (=> (and b!2473927 (= (toChars!6222 (transformation!4499 (h!34263 (t!210357 rules!4472)))) (toChars!6222 (transformation!4499 (rule!6857 t1!67)))) t!210406) tb!140179))

(declare-fun result!173002 () Bool)

(assert (= result!173002 result!172976))

(assert (=> b!2473849 t!210406))

(declare-fun b_and!187755 () Bool)

(declare-fun tp!790865 () Bool)

(assert (=> b!2473927 (= tp!790865 (and (=> t!210402 result!172998) (=> t!210404 result!173000) (=> t!210406 result!173002) b_and!187755))))

(declare-fun e!1569327 () Bool)

(assert (=> b!2473927 (= e!1569327 (and tp!790868 tp!790865))))

(declare-fun tp!790867 () Bool)

(declare-fun b!2473926 () Bool)

(declare-fun e!1569325 () Bool)

(assert (=> b!2473926 (= e!1569325 (and tp!790867 (inv!38951 (tag!4989 (h!34263 (t!210357 rules!4472)))) (inv!38954 (transformation!4499 (h!34263 (t!210357 rules!4472)))) e!1569327))))

(declare-fun b!2473925 () Bool)

(declare-fun e!1569326 () Bool)

(declare-fun tp!790866 () Bool)

(assert (=> b!2473925 (= e!1569326 (and e!1569325 tp!790866))))

(assert (=> b!2473692 (= tp!790797 e!1569326)))

(assert (= b!2473926 b!2473927))

(assert (= b!2473925 b!2473926))

(assert (= (and b!2473692 ((_ is Cons!28862) (t!210357 rules!4472))) b!2473925))

(declare-fun m!2842355 () Bool)

(assert (=> b!2473926 m!2842355))

(declare-fun m!2842357 () Bool)

(assert (=> b!2473926 m!2842357))

(declare-fun b!2473929 () Bool)

(declare-fun e!1569329 () Bool)

(declare-fun tp!790869 () Bool)

(declare-fun tp!790871 () Bool)

(assert (=> b!2473929 (= e!1569329 (and tp!790869 tp!790871))))

(declare-fun b!2473928 () Bool)

(assert (=> b!2473928 (= e!1569329 tp_is_empty!11973)))

(declare-fun b!2473930 () Bool)

(declare-fun tp!790870 () Bool)

(assert (=> b!2473930 (= e!1569329 tp!790870)))

(declare-fun b!2473931 () Bool)

(declare-fun tp!790873 () Bool)

(declare-fun tp!790872 () Bool)

(assert (=> b!2473931 (= e!1569329 (and tp!790873 tp!790872))))

(assert (=> b!2473690 (= tp!790802 e!1569329)))

(assert (= (and b!2473690 ((_ is ElementMatch!7287) (regex!4499 (rule!6857 (h!34264 l!6611))))) b!2473928))

(assert (= (and b!2473690 ((_ is Concat!11973) (regex!4499 (rule!6857 (h!34264 l!6611))))) b!2473929))

(assert (= (and b!2473690 ((_ is Star!7287) (regex!4499 (rule!6857 (h!34264 l!6611))))) b!2473930))

(assert (= (and b!2473690 ((_ is Union!7287) (regex!4499 (rule!6857 (h!34264 l!6611))))) b!2473931))

(declare-fun b!2473932 () Bool)

(declare-fun e!1569330 () Bool)

(declare-fun tp!790874 () Bool)

(assert (=> b!2473932 (= e!1569330 (and tp_is_empty!11973 tp!790874))))

(assert (=> b!2473691 (= tp!790789 e!1569330)))

(assert (= (and b!2473691 ((_ is Cons!28861) (originalCharacters!5265 t2!67))) b!2473932))

(declare-fun b!2473933 () Bool)

(declare-fun e!1569331 () Bool)

(declare-fun tp!790875 () Bool)

(assert (=> b!2473933 (= e!1569331 (and tp_is_empty!11973 tp!790875))))

(assert (=> b!2473689 (= tp!790790 e!1569331)))

(assert (= (and b!2473689 ((_ is Cons!28861) (originalCharacters!5265 (h!34264 l!6611)))) b!2473933))

(declare-fun b_lambda!75919 () Bool)

(assert (= b_lambda!75917 (or (and b!2473927 b_free!71643 (= (toChars!6222 (transformation!4499 (h!34263 (t!210357 rules!4472)))) (toChars!6222 (transformation!4499 (rule!6857 t1!67))))) (and b!2473695 b_free!71631 (= (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611)))) (toChars!6222 (transformation!4499 (rule!6857 t1!67))))) (and b!2473680 b_free!71635) (and b!2473703 b_free!71627 (= (toChars!6222 (transformation!4499 (rule!6857 t2!67))) (toChars!6222 (transformation!4499 (rule!6857 t1!67))))) (and b!2473889 b_free!71639 (= (toChars!6222 (transformation!4499 (rule!6857 (h!34264 (t!210358 l!6611))))) (toChars!6222 (transformation!4499 (rule!6857 t1!67))))) (and b!2473702 b_free!71623 (= (toChars!6222 (transformation!4499 (h!34263 rules!4472))) (toChars!6222 (transformation!4499 (rule!6857 t1!67))))) b_lambda!75919)))

(declare-fun b_lambda!75921 () Bool)

(assert (= b_lambda!75911 (or (and b!2473703 b_free!71627 (= (toChars!6222 (transformation!4499 (rule!6857 t2!67))) (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611)))))) (and b!2473927 b_free!71643 (= (toChars!6222 (transformation!4499 (h!34263 (t!210357 rules!4472)))) (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611)))))) (and b!2473695 b_free!71631) (and b!2473889 b_free!71639 (= (toChars!6222 (transformation!4499 (rule!6857 (h!34264 (t!210358 l!6611))))) (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611)))))) (and b!2473702 b_free!71623 (= (toChars!6222 (transformation!4499 (h!34263 rules!4472))) (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611)))))) (and b!2473680 b_free!71635 (= (toChars!6222 (transformation!4499 (rule!6857 t1!67))) (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611)))))) b_lambda!75921)))

(declare-fun b_lambda!75923 () Bool)

(assert (= b_lambda!75915 (or (and b!2473703 b_free!71627) (and b!2473927 b_free!71643 (= (toChars!6222 (transformation!4499 (h!34263 (t!210357 rules!4472)))) (toChars!6222 (transformation!4499 (rule!6857 t2!67))))) (and b!2473702 b_free!71623 (= (toChars!6222 (transformation!4499 (h!34263 rules!4472))) (toChars!6222 (transformation!4499 (rule!6857 t2!67))))) (and b!2473695 b_free!71631 (= (toChars!6222 (transformation!4499 (rule!6857 (h!34264 l!6611)))) (toChars!6222 (transformation!4499 (rule!6857 t2!67))))) (and b!2473889 b_free!71639 (= (toChars!6222 (transformation!4499 (rule!6857 (h!34264 (t!210358 l!6611))))) (toChars!6222 (transformation!4499 (rule!6857 t2!67))))) (and b!2473680 b_free!71635 (= (toChars!6222 (transformation!4499 (rule!6857 t1!67))) (toChars!6222 (transformation!4499 (rule!6857 t2!67))))) b_lambda!75923)))

(check-sat (not b!2473848) (not d!711893) (not b!2473911) (not b!2473710) (not b!2473787) b_and!187701 (not b!2473718) (not b!2473809) b_and!187705 (not b!2473850) (not b!2473903) (not b!2473925) (not b!2473864) (not b!2473873) (not d!711857) (not b!2473815) (not b!2473803) (not b!2473842) (not d!711829) (not b!2473849) (not b!2473802) (not b!2473725) (not b!2473806) (not b!2473862) (not b!2473886) b_and!187751 (not b!2473915) (not b_lambda!75921) (not b_next!72341) (not b!2473929) (not tb!140137) (not b_next!72339) (not d!711819) (not b!2473843) (not b!2473854) b_and!187709 (not b!2473931) (not b!2473901) b_and!187713 (not d!711861) (not b_next!72329) (not b!2473846) (not b_next!72347) (not b!2473788) (not b!2473727) b_and!187755 (not b!2473872) (not b!2473797) (not b!2473857) (not b!2473863) (not d!711825) (not b_next!72337) (not b!2473912) (not b_next!72335) (not b!2473739) (not b!2473709) b_and!187745 b_and!187749 (not b!2473738) (not b_lambda!75919) (not b!2473715) (not b_next!72343) tp_is_empty!11973 (not d!711851) (not b!2473851) b_and!187753 (not b!2473887) (not d!711853) (not d!711823) (not d!711881) (not b!2473870) (not b!2473807) (not b!2473930) b_and!187747 (not b!2473916) (not b!2473808) (not b!2473855) (not b!2473845) (not b_lambda!75923) (not d!711883) (not b!2473932) (not b!2473847) (not b_next!72327) (not b!2473804) (not b!2473908) (not b!2473902) (not b!2473856) (not b!2473726) (not b!2473865) (not b!2473933) (not b!2473805) (not d!711899) (not d!711889) (not b_next!72325) (not b!2473869) (not b_next!72331) b_and!187741 (not b_next!72333) (not b!2473926) (not b!2473871) (not b!2473888) (not tb!140161) (not b!2473914) (not b!2473868) (not b!2473852) (not b!2473910) (not d!711897) (not b_next!72345) b_and!187743 (not b!2473740) (not b!2473853) (not tb!140153))
(check-sat b_and!187701 b_and!187705 b_and!187751 (not b_next!72347) b_and!187755 (not b_next!72343) b_and!187753 b_and!187747 (not b_next!72327) (not b_next!72325) (not b_next!72339) (not b_next!72341) b_and!187709 b_and!187713 (not b_next!72329) (not b_next!72337) (not b_next!72335) b_and!187745 b_and!187749 (not b_next!72331) b_and!187741 (not b_next!72333) (not b_next!72345) b_and!187743)
