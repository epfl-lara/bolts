; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!189134 () Bool)

(assert start!189134)

(declare-fun b!1889113 () Bool)

(declare-fun b_free!52465 () Bool)

(declare-fun b_next!53169 () Bool)

(assert (=> b!1889113 (= b_free!52465 (not b_next!53169))))

(declare-fun tp!538556 () Bool)

(declare-fun b_and!145255 () Bool)

(assert (=> b!1889113 (= tp!538556 b_and!145255)))

(declare-fun b_free!52467 () Bool)

(declare-fun b_next!53171 () Bool)

(assert (=> b!1889113 (= b_free!52467 (not b_next!53171))))

(declare-fun tp!538559 () Bool)

(declare-fun b_and!145257 () Bool)

(assert (=> b!1889113 (= tp!538559 b_and!145257)))

(declare-fun b!1889101 () Bool)

(declare-fun b_free!52469 () Bool)

(declare-fun b_next!53173 () Bool)

(assert (=> b!1889101 (= b_free!52469 (not b_next!53173))))

(declare-fun tp!538557 () Bool)

(declare-fun b_and!145259 () Bool)

(assert (=> b!1889101 (= tp!538557 b_and!145259)))

(declare-fun b_free!52471 () Bool)

(declare-fun b_next!53175 () Bool)

(assert (=> b!1889101 (= b_free!52471 (not b_next!53175))))

(declare-fun tp!538552 () Bool)

(declare-fun b_and!145261 () Bool)

(assert (=> b!1889101 (= tp!538552 b_and!145261)))

(declare-fun b!1889110 () Bool)

(declare-fun b_free!52473 () Bool)

(declare-fun b_next!53177 () Bool)

(assert (=> b!1889110 (= b_free!52473 (not b_next!53177))))

(declare-fun tp!538555 () Bool)

(declare-fun b_and!145263 () Bool)

(assert (=> b!1889110 (= tp!538555 b_and!145263)))

(declare-fun b_free!52475 () Bool)

(declare-fun b_next!53179 () Bool)

(assert (=> b!1889110 (= b_free!52475 (not b_next!53179))))

(declare-fun tp!538551 () Bool)

(declare-fun b_and!145265 () Bool)

(assert (=> b!1889110 (= tp!538551 b_and!145265)))

(declare-fun b!1889127 () Bool)

(declare-fun e!1205688 () Bool)

(assert (=> b!1889127 (= e!1205688 true)))

(declare-fun b!1889126 () Bool)

(declare-fun e!1205687 () Bool)

(assert (=> b!1889126 (= e!1205687 e!1205688)))

(declare-fun b!1889125 () Bool)

(declare-fun e!1205686 () Bool)

(assert (=> b!1889125 (= e!1205686 e!1205687)))

(declare-fun b!1889114 () Bool)

(assert (=> b!1889114 e!1205686))

(assert (= b!1889126 b!1889127))

(assert (= b!1889125 b!1889126))

(declare-datatypes ((List!21170 0))(
  ( (Nil!21088) (Cons!21088 (h!26489 (_ BitVec 16)) (t!175171 List!21170)) )
))
(declare-datatypes ((TokenValue!3863 0))(
  ( (FloatLiteralValue!7726 (text!27486 List!21170)) (TokenValueExt!3862 (__x!13224 Int)) (Broken!19315 (value!117786 List!21170)) (Object!3944) (End!3863) (Def!3863) (Underscore!3863) (Match!3863) (Else!3863) (Error!3863) (Case!3863) (If!3863) (Extends!3863) (Abstract!3863) (Class!3863) (Val!3863) (DelimiterValue!7726 (del!3923 List!21170)) (KeywordValue!3869 (value!117787 List!21170)) (CommentValue!7726 (value!117788 List!21170)) (WhitespaceValue!7726 (value!117789 List!21170)) (IndentationValue!3863 (value!117790 List!21170)) (String!24434) (Int32!3863) (Broken!19316 (value!117791 List!21170)) (Boolean!3864) (Unit!35504) (OperatorValue!3866 (op!3923 List!21170)) (IdentifierValue!7726 (value!117792 List!21170)) (IdentifierValue!7727 (value!117793 List!21170)) (WhitespaceValue!7727 (value!117794 List!21170)) (True!7726) (False!7726) (Broken!19317 (value!117795 List!21170)) (Broken!19318 (value!117796 List!21170)) (True!7727) (RightBrace!3863) (RightBracket!3863) (Colon!3863) (Null!3863) (Comma!3863) (LeftBracket!3863) (False!7727) (LeftBrace!3863) (ImaginaryLiteralValue!3863 (text!27487 List!21170)) (StringLiteralValue!11589 (value!117797 List!21170)) (EOFValue!3863 (value!117798 List!21170)) (IdentValue!3863 (value!117799 List!21170)) (DelimiterValue!7727 (value!117800 List!21170)) (DedentValue!3863 (value!117801 List!21170)) (NewLineValue!3863 (value!117802 List!21170)) (IntegerValue!11589 (value!117803 (_ BitVec 32)) (text!27488 List!21170)) (IntegerValue!11590 (value!117804 Int) (text!27489 List!21170)) (Times!3863) (Or!3863) (Equal!3863) (Minus!3863) (Broken!19319 (value!117805 List!21170)) (And!3863) (Div!3863) (LessEqual!3863) (Mod!3863) (Concat!9015) (Not!3863) (Plus!3863) (SpaceValue!3863 (value!117806 List!21170)) (IntegerValue!11591 (value!117807 Int) (text!27490 List!21170)) (StringLiteralValue!11590 (text!27491 List!21170)) (FloatLiteralValue!7727 (text!27492 List!21170)) (BytesLiteralValue!3863 (value!117808 List!21170)) (CommentValue!7727 (value!117809 List!21170)) (StringLiteralValue!11591 (value!117810 List!21170)) (ErrorTokenValue!3863 (msg!3924 List!21170)) )
))
(declare-datatypes ((C!10450 0))(
  ( (C!10451 (val!6177 Int)) )
))
(declare-datatypes ((List!21171 0))(
  ( (Nil!21089) (Cons!21089 (h!26490 C!10450) (t!175172 List!21171)) )
))
(declare-datatypes ((IArray!14005 0))(
  ( (IArray!14006 (innerList!7060 List!21171)) )
))
(declare-datatypes ((Conc!7000 0))(
  ( (Node!7000 (left!16924 Conc!7000) (right!17254 Conc!7000) (csize!14230 Int) (cheight!7211 Int)) (Leaf!10327 (xs!9890 IArray!14005) (csize!14231 Int)) (Empty!7000) )
))
(declare-datatypes ((BalanceConc!13816 0))(
  ( (BalanceConc!13817 (c!308195 Conc!7000)) )
))
(declare-datatypes ((Regex!5152 0))(
  ( (ElementMatch!5152 (c!308196 C!10450)) (Concat!9016 (regOne!10816 Regex!5152) (regTwo!10816 Regex!5152)) (EmptyExpr!5152) (Star!5152 (reg!5481 Regex!5152)) (EmptyLang!5152) (Union!5152 (regOne!10817 Regex!5152) (regTwo!10817 Regex!5152)) )
))
(declare-datatypes ((TokenValueInjection!7310 0))(
  ( (TokenValueInjection!7311 (toValue!5332 Int) (toChars!5191 Int)) )
))
(declare-datatypes ((String!24435 0))(
  ( (String!24436 (value!117811 String)) )
))
(declare-datatypes ((Rule!7254 0))(
  ( (Rule!7255 (regex!3727 Regex!5152) (tag!4141 String!24435) (isSeparator!3727 Bool) (transformation!3727 TokenValueInjection!7310)) )
))
(declare-datatypes ((List!21172 0))(
  ( (Nil!21090) (Cons!21090 (h!26491 Rule!7254) (t!175173 List!21172)) )
))
(declare-fun rules!4265 () List!21172)

(assert (= (and b!1889114 (is-Cons!21090 rules!4265)) b!1889125))

(declare-fun lambda!73874 () Int)

(declare-fun order!13319 () Int)

(declare-fun order!13317 () Int)

(declare-fun dynLambda!10249 (Int Int) Int)

(declare-fun dynLambda!10250 (Int Int) Int)

(assert (=> b!1889127 (< (dynLambda!10249 order!13317 (toValue!5332 (transformation!3727 (h!26491 rules!4265)))) (dynLambda!10250 order!13319 lambda!73874))))

(declare-fun order!13321 () Int)

(declare-fun dynLambda!10251 (Int Int) Int)

(assert (=> b!1889127 (< (dynLambda!10251 order!13321 (toChars!5191 (transformation!3727 (h!26491 rules!4265)))) (dynLambda!10250 order!13319 lambda!73874))))

(assert (=> b!1889114 true))

(declare-fun e!1205673 () Bool)

(assert (=> b!1889101 (= e!1205673 (and tp!538557 tp!538552))))

(declare-fun b!1889102 () Bool)

(declare-fun res!843745 () Bool)

(declare-fun e!1205677 () Bool)

(assert (=> b!1889102 (=> (not res!843745) (not e!1205677))))

(declare-fun isEmpty!12992 (List!21172) Bool)

(assert (=> b!1889102 (= res!843745 (not (isEmpty!12992 rules!4265)))))

(declare-datatypes ((Token!7006 0))(
  ( (Token!7007 (value!117812 TokenValue!3863) (rule!5920 Rule!7254) (size!16724 Int) (originalCharacters!4534 List!21171)) )
))
(declare-datatypes ((List!21173 0))(
  ( (Nil!21091) (Cons!21091 (h!26492 Token!7006) (t!175174 List!21173)) )
))
(declare-fun ts1!17 () List!21173)

(declare-fun e!1205663 () Bool)

(declare-fun e!1205675 () Bool)

(declare-fun tp!538554 () Bool)

(declare-fun b!1889103 () Bool)

(declare-fun inv!28130 (Token!7006) Bool)

(assert (=> b!1889103 (= e!1205663 (and (inv!28130 (h!26492 ts1!17)) e!1205675 tp!538554))))

(declare-fun tp!538564 () Bool)

(declare-fun ts2!17 () List!21173)

(declare-fun b!1889104 () Bool)

(declare-fun e!1205664 () Bool)

(declare-fun inv!28127 (String!24435) Bool)

(declare-fun inv!28131 (TokenValueInjection!7310) Bool)

(assert (=> b!1889104 (= e!1205664 (and tp!538564 (inv!28127 (tag!4141 (rule!5920 (h!26492 ts2!17)))) (inv!28131 (transformation!3727 (rule!5920 (h!26492 ts2!17)))) e!1205673))))

(declare-fun res!843744 () Bool)

(assert (=> start!189134 (=> (not res!843744) (not e!1205677))))

(declare-datatypes ((LexerInterface!3340 0))(
  ( (LexerInterfaceExt!3337 (__x!13225 Int)) (Lexer!3338) )
))
(declare-fun thiss!27307 () LexerInterface!3340)

(assert (=> start!189134 (= res!843744 (is-Lexer!3338 thiss!27307))))

(assert (=> start!189134 e!1205677))

(assert (=> start!189134 true))

(declare-fun e!1205667 () Bool)

(assert (=> start!189134 e!1205667))

(assert (=> start!189134 e!1205663))

(declare-fun e!1205674 () Bool)

(assert (=> start!189134 e!1205674))

(declare-fun b!1889105 () Bool)

(declare-fun tp!538562 () Bool)

(declare-fun e!1205669 () Bool)

(assert (=> b!1889105 (= e!1205674 (and (inv!28130 (h!26492 ts2!17)) e!1205669 tp!538562))))

(declare-fun e!1205665 () Bool)

(declare-fun b!1889106 () Bool)

(declare-fun tp!538553 () Bool)

(declare-fun inv!21 (TokenValue!3863) Bool)

(assert (=> b!1889106 (= e!1205675 (and (inv!21 (value!117812 (h!26492 ts1!17))) e!1205665 tp!538553))))

(declare-fun b!1889107 () Bool)

(declare-fun res!843742 () Bool)

(assert (=> b!1889107 (=> (not res!843742) (not e!1205677))))

(declare-fun rulesProduceEachTokenIndividuallyList!1097 (LexerInterface!3340 List!21172 List!21173) Bool)

(assert (=> b!1889107 (= res!843742 (rulesProduceEachTokenIndividuallyList!1097 thiss!27307 rules!4265 ts2!17))))

(declare-fun b!1889108 () Bool)

(declare-fun res!843743 () Bool)

(assert (=> b!1889108 (=> (not res!843743) (not e!1205677))))

(declare-fun rulesInvariant!2973 (LexerInterface!3340 List!21172) Bool)

(assert (=> b!1889108 (= res!843743 (rulesInvariant!2973 thiss!27307 rules!4265))))

(declare-fun b!1889109 () Bool)

(declare-fun tp!538563 () Bool)

(declare-fun e!1205679 () Bool)

(declare-fun e!1205668 () Bool)

(assert (=> b!1889109 (= e!1205668 (and tp!538563 (inv!28127 (tag!4141 (h!26491 rules!4265))) (inv!28131 (transformation!3727 (h!26491 rules!4265))) e!1205679))))

(assert (=> b!1889110 (= e!1205679 (and tp!538555 tp!538551))))

(declare-fun b!1889111 () Bool)

(declare-fun tp!538561 () Bool)

(assert (=> b!1889111 (= e!1205667 (and e!1205668 tp!538561))))

(declare-fun tp!538558 () Bool)

(declare-fun b!1889112 () Bool)

(assert (=> b!1889112 (= e!1205669 (and (inv!21 (value!117812 (h!26492 ts2!17))) e!1205664 tp!538558))))

(declare-fun e!1205670 () Bool)

(assert (=> b!1889113 (= e!1205670 (and tp!538556 tp!538559))))

(declare-fun forall!4428 (List!21173 Int) Bool)

(assert (=> b!1889114 (= e!1205677 (not (forall!4428 ts1!17 lambda!73874)))))

(declare-fun b!1889115 () Bool)

(declare-fun res!843741 () Bool)

(assert (=> b!1889115 (=> (not res!843741) (not e!1205677))))

(assert (=> b!1889115 (= res!843741 (rulesProduceEachTokenIndividuallyList!1097 thiss!27307 rules!4265 ts1!17))))

(declare-fun b!1889116 () Bool)

(declare-fun tp!538560 () Bool)

(assert (=> b!1889116 (= e!1205665 (and tp!538560 (inv!28127 (tag!4141 (rule!5920 (h!26492 ts1!17)))) (inv!28131 (transformation!3727 (rule!5920 (h!26492 ts1!17)))) e!1205670))))

(assert (= (and start!189134 res!843744) b!1889102))

(assert (= (and b!1889102 res!843745) b!1889108))

(assert (= (and b!1889108 res!843743) b!1889115))

(assert (= (and b!1889115 res!843741) b!1889107))

(assert (= (and b!1889107 res!843742) b!1889114))

(assert (= b!1889109 b!1889110))

(assert (= b!1889111 b!1889109))

(assert (= (and start!189134 (is-Cons!21090 rules!4265)) b!1889111))

(assert (= b!1889116 b!1889113))

(assert (= b!1889106 b!1889116))

(assert (= b!1889103 b!1889106))

(assert (= (and start!189134 (is-Cons!21091 ts1!17)) b!1889103))

(assert (= b!1889104 b!1889101))

(assert (= b!1889112 b!1889104))

(assert (= b!1889105 b!1889112))

(assert (= (and start!189134 (is-Cons!21091 ts2!17)) b!1889105))

(declare-fun m!2320131 () Bool)

(assert (=> b!1889115 m!2320131))

(declare-fun m!2320133 () Bool)

(assert (=> b!1889102 m!2320133))

(declare-fun m!2320135 () Bool)

(assert (=> b!1889107 m!2320135))

(declare-fun m!2320137 () Bool)

(assert (=> b!1889104 m!2320137))

(declare-fun m!2320139 () Bool)

(assert (=> b!1889104 m!2320139))

(declare-fun m!2320141 () Bool)

(assert (=> b!1889116 m!2320141))

(declare-fun m!2320143 () Bool)

(assert (=> b!1889116 m!2320143))

(declare-fun m!2320145 () Bool)

(assert (=> b!1889106 m!2320145))

(declare-fun m!2320147 () Bool)

(assert (=> b!1889112 m!2320147))

(declare-fun m!2320149 () Bool)

(assert (=> b!1889114 m!2320149))

(declare-fun m!2320151 () Bool)

(assert (=> b!1889105 m!2320151))

(declare-fun m!2320153 () Bool)

(assert (=> b!1889103 m!2320153))

(declare-fun m!2320155 () Bool)

(assert (=> b!1889109 m!2320155))

(declare-fun m!2320157 () Bool)

(assert (=> b!1889109 m!2320157))

(declare-fun m!2320159 () Bool)

(assert (=> b!1889108 m!2320159))

(push 1)

(assert (not b!1889107))

(assert (not b!1889112))

(assert (not b!1889125))

(assert (not b!1889116))

(assert b_and!145257)

(assert (not b!1889109))

(assert (not b_next!53179))

(assert (not b!1889106))

(assert (not b!1889108))

(assert (not b!1889114))

(assert (not b_next!53173))

(assert (not b!1889103))

(assert (not b!1889104))

(assert b_and!145265)

(assert (not b!1889115))

(assert (not b_next!53169))

(assert (not b!1889102))

(assert b_and!145255)

(assert (not b_next!53171))

(assert b_and!145261)

(assert (not b_next!53177))

(assert (not b_next!53175))

(assert (not b!1889105))

(assert b_and!145263)

(assert b_and!145259)

(assert (not b!1889111))

(check-sat)

(pop 1)

(push 1)

(assert b_and!145255)

(assert b_and!145257)

(assert (not b_next!53179))

(assert (not b_next!53173))

(assert b_and!145265)

(assert b_and!145263)

(assert (not b_next!53169))

(assert b_and!145259)

(assert (not b_next!53171))

(assert b_and!145261)

(assert (not b_next!53177))

(assert (not b_next!53175))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!578555 () Bool)

(declare-fun res!843767 () Bool)

(declare-fun e!1205755 () Bool)

(assert (=> d!578555 (=> res!843767 e!1205755)))

(assert (=> d!578555 (= res!843767 (is-Nil!21091 ts1!17))))

(assert (=> d!578555 (= (forall!4428 ts1!17 lambda!73874) e!1205755)))

(declare-fun b!1889197 () Bool)

(declare-fun e!1205756 () Bool)

(assert (=> b!1889197 (= e!1205755 e!1205756)))

(declare-fun res!843768 () Bool)

(assert (=> b!1889197 (=> (not res!843768) (not e!1205756))))

(declare-fun dynLambda!10255 (Int Token!7006) Bool)

(assert (=> b!1889197 (= res!843768 (dynLambda!10255 lambda!73874 (h!26492 ts1!17)))))

(declare-fun b!1889198 () Bool)

(assert (=> b!1889198 (= e!1205756 (forall!4428 (t!175174 ts1!17) lambda!73874))))

(assert (= (and d!578555 (not res!843767)) b!1889197))

(assert (= (and b!1889197 res!843768) b!1889198))

(declare-fun b_lambda!61917 () Bool)

(assert (=> (not b_lambda!61917) (not b!1889197)))

(declare-fun m!2320191 () Bool)

(assert (=> b!1889197 m!2320191))

(declare-fun m!2320193 () Bool)

(assert (=> b!1889198 m!2320193))

(assert (=> b!1889114 d!578555))

(declare-fun d!578557 () Bool)

(declare-fun res!843774 () Bool)

(declare-fun e!1205760 () Bool)

(assert (=> d!578557 (=> (not res!843774) (not e!1205760))))

(declare-fun isEmpty!12994 (List!21171) Bool)

(assert (=> d!578557 (= res!843774 (not (isEmpty!12994 (originalCharacters!4534 (h!26492 ts1!17)))))))

(assert (=> d!578557 (= (inv!28130 (h!26492 ts1!17)) e!1205760)))

(declare-fun b!1889204 () Bool)

(declare-fun res!843775 () Bool)

(assert (=> b!1889204 (=> (not res!843775) (not e!1205760))))

(declare-fun list!8567 (BalanceConc!13816) List!21171)

(declare-fun dynLambda!10256 (Int TokenValue!3863) BalanceConc!13816)

(assert (=> b!1889204 (= res!843775 (= (originalCharacters!4534 (h!26492 ts1!17)) (list!8567 (dynLambda!10256 (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17)))) (value!117812 (h!26492 ts1!17))))))))

(declare-fun b!1889205 () Bool)

(declare-fun size!16726 (List!21171) Int)

(assert (=> b!1889205 (= e!1205760 (= (size!16724 (h!26492 ts1!17)) (size!16726 (originalCharacters!4534 (h!26492 ts1!17)))))))

(assert (= (and d!578557 res!843774) b!1889204))

(assert (= (and b!1889204 res!843775) b!1889205))

(declare-fun b_lambda!61919 () Bool)

(assert (=> (not b_lambda!61919) (not b!1889204)))

(declare-fun t!175182 () Bool)

(declare-fun tb!114681 () Bool)

(assert (=> (and b!1889113 (= (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17)))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17))))) t!175182) tb!114681))

(declare-fun b!1889212 () Bool)

(declare-fun e!1205763 () Bool)

(declare-fun tp!538609 () Bool)

(declare-fun inv!28134 (Conc!7000) Bool)

(assert (=> b!1889212 (= e!1205763 (and (inv!28134 (c!308195 (dynLambda!10256 (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17)))) (value!117812 (h!26492 ts1!17))))) tp!538609))))

(declare-fun result!138652 () Bool)

(declare-fun inv!28135 (BalanceConc!13816) Bool)

(assert (=> tb!114681 (= result!138652 (and (inv!28135 (dynLambda!10256 (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17)))) (value!117812 (h!26492 ts1!17)))) e!1205763))))

(assert (= tb!114681 b!1889212))

(declare-fun m!2320199 () Bool)

(assert (=> b!1889212 m!2320199))

(declare-fun m!2320201 () Bool)

(assert (=> tb!114681 m!2320201))

(assert (=> b!1889204 t!175182))

(declare-fun b_and!145279 () Bool)

(assert (= b_and!145257 (and (=> t!175182 result!138652) b_and!145279)))

(declare-fun tb!114683 () Bool)

(declare-fun t!175184 () Bool)

(assert (=> (and b!1889101 (= (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17)))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17))))) t!175184) tb!114683))

(declare-fun result!138656 () Bool)

(assert (= result!138656 result!138652))

(assert (=> b!1889204 t!175184))

(declare-fun b_and!145281 () Bool)

(assert (= b_and!145261 (and (=> t!175184 result!138656) b_and!145281)))

(declare-fun tb!114685 () Bool)

(declare-fun t!175186 () Bool)

(assert (=> (and b!1889110 (= (toChars!5191 (transformation!3727 (h!26491 rules!4265))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17))))) t!175186) tb!114685))

(declare-fun result!138658 () Bool)

(assert (= result!138658 result!138652))

(assert (=> b!1889204 t!175186))

(declare-fun b_and!145283 () Bool)

(assert (= b_and!145265 (and (=> t!175186 result!138658) b_and!145283)))

(declare-fun m!2320203 () Bool)

(assert (=> d!578557 m!2320203))

(declare-fun m!2320205 () Bool)

(assert (=> b!1889204 m!2320205))

(assert (=> b!1889204 m!2320205))

(declare-fun m!2320207 () Bool)

(assert (=> b!1889204 m!2320207))

(declare-fun m!2320209 () Bool)

(assert (=> b!1889205 m!2320209))

(assert (=> b!1889103 d!578557))

(declare-fun d!578561 () Bool)

(declare-fun res!843778 () Bool)

(declare-fun e!1205770 () Bool)

(assert (=> d!578561 (=> (not res!843778) (not e!1205770))))

(assert (=> d!578561 (= res!843778 (not (isEmpty!12994 (originalCharacters!4534 (h!26492 ts2!17)))))))

(assert (=> d!578561 (= (inv!28130 (h!26492 ts2!17)) e!1205770)))

(declare-fun b!1889221 () Bool)

(declare-fun res!843779 () Bool)

(assert (=> b!1889221 (=> (not res!843779) (not e!1205770))))

(assert (=> b!1889221 (= res!843779 (= (originalCharacters!4534 (h!26492 ts2!17)) (list!8567 (dynLambda!10256 (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17)))) (value!117812 (h!26492 ts2!17))))))))

(declare-fun b!1889222 () Bool)

(assert (=> b!1889222 (= e!1205770 (= (size!16724 (h!26492 ts2!17)) (size!16726 (originalCharacters!4534 (h!26492 ts2!17)))))))

(assert (= (and d!578561 res!843778) b!1889221))

(assert (= (and b!1889221 res!843779) b!1889222))

(declare-fun b_lambda!61921 () Bool)

(assert (=> (not b_lambda!61921) (not b!1889221)))

(declare-fun tb!114687 () Bool)

(declare-fun t!175188 () Bool)

(assert (=> (and b!1889113 (= (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17)))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17))))) t!175188) tb!114687))

(declare-fun b!1889223 () Bool)

(declare-fun e!1205771 () Bool)

(declare-fun tp!538610 () Bool)

(assert (=> b!1889223 (= e!1205771 (and (inv!28134 (c!308195 (dynLambda!10256 (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17)))) (value!117812 (h!26492 ts2!17))))) tp!538610))))

(declare-fun result!138660 () Bool)

(assert (=> tb!114687 (= result!138660 (and (inv!28135 (dynLambda!10256 (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17)))) (value!117812 (h!26492 ts2!17)))) e!1205771))))

(assert (= tb!114687 b!1889223))

(declare-fun m!2320211 () Bool)

(assert (=> b!1889223 m!2320211))

(declare-fun m!2320213 () Bool)

(assert (=> tb!114687 m!2320213))

(assert (=> b!1889221 t!175188))

(declare-fun b_and!145285 () Bool)

(assert (= b_and!145279 (and (=> t!175188 result!138660) b_and!145285)))

(declare-fun t!175190 () Bool)

(declare-fun tb!114689 () Bool)

(assert (=> (and b!1889101 (= (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17)))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17))))) t!175190) tb!114689))

(declare-fun result!138662 () Bool)

(assert (= result!138662 result!138660))

(assert (=> b!1889221 t!175190))

(declare-fun b_and!145287 () Bool)

(assert (= b_and!145281 (and (=> t!175190 result!138662) b_and!145287)))

(declare-fun tb!114691 () Bool)

(declare-fun t!175192 () Bool)

(assert (=> (and b!1889110 (= (toChars!5191 (transformation!3727 (h!26491 rules!4265))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17))))) t!175192) tb!114691))

(declare-fun result!138664 () Bool)

(assert (= result!138664 result!138660))

(assert (=> b!1889221 t!175192))

(declare-fun b_and!145289 () Bool)

(assert (= b_and!145283 (and (=> t!175192 result!138664) b_and!145289)))

(declare-fun m!2320215 () Bool)

(assert (=> d!578561 m!2320215))

(declare-fun m!2320217 () Bool)

(assert (=> b!1889221 m!2320217))

(assert (=> b!1889221 m!2320217))

(declare-fun m!2320219 () Bool)

(assert (=> b!1889221 m!2320219))

(declare-fun m!2320221 () Bool)

(assert (=> b!1889222 m!2320221))

(assert (=> b!1889105 d!578561))

(declare-fun bs!413027 () Bool)

(declare-fun d!578563 () Bool)

(assert (= bs!413027 (and d!578563 b!1889114)))

(declare-fun lambda!73880 () Int)

(assert (=> bs!413027 (= lambda!73880 lambda!73874)))

(declare-fun b!1889254 () Bool)

(declare-fun e!1205795 () Bool)

(assert (=> b!1889254 (= e!1205795 true)))

(declare-fun b!1889253 () Bool)

(declare-fun e!1205794 () Bool)

(assert (=> b!1889253 (= e!1205794 e!1205795)))

(declare-fun b!1889252 () Bool)

(declare-fun e!1205793 () Bool)

(assert (=> b!1889252 (= e!1205793 e!1205794)))

(assert (=> d!578563 e!1205793))

(assert (= b!1889253 b!1889254))

(assert (= b!1889252 b!1889253))

(assert (= (and d!578563 (is-Cons!21090 rules!4265)) b!1889252))

(assert (=> b!1889254 (< (dynLambda!10249 order!13317 (toValue!5332 (transformation!3727 (h!26491 rules!4265)))) (dynLambda!10250 order!13319 lambda!73880))))

(assert (=> b!1889254 (< (dynLambda!10251 order!13321 (toChars!5191 (transformation!3727 (h!26491 rules!4265)))) (dynLambda!10250 order!13319 lambda!73880))))

(assert (=> d!578563 true))

(declare-fun lt!723855 () Bool)

(assert (=> d!578563 (= lt!723855 (forall!4428 ts1!17 lambda!73880))))

(declare-fun e!1205792 () Bool)

(assert (=> d!578563 (= lt!723855 e!1205792)))

(declare-fun res!843798 () Bool)

(assert (=> d!578563 (=> res!843798 e!1205792)))

(assert (=> d!578563 (= res!843798 (not (is-Cons!21091 ts1!17)))))

(assert (=> d!578563 (not (isEmpty!12992 rules!4265))))

(assert (=> d!578563 (= (rulesProduceEachTokenIndividuallyList!1097 thiss!27307 rules!4265 ts1!17) lt!723855)))

(declare-fun b!1889250 () Bool)

(declare-fun e!1205791 () Bool)

(assert (=> b!1889250 (= e!1205792 e!1205791)))

(declare-fun res!843797 () Bool)

(assert (=> b!1889250 (=> (not res!843797) (not e!1205791))))

(declare-fun rulesProduceIndividualToken!1542 (LexerInterface!3340 List!21172 Token!7006) Bool)

(assert (=> b!1889250 (= res!843797 (rulesProduceIndividualToken!1542 thiss!27307 rules!4265 (h!26492 ts1!17)))))

(declare-fun b!1889251 () Bool)

(assert (=> b!1889251 (= e!1205791 (rulesProduceEachTokenIndividuallyList!1097 thiss!27307 rules!4265 (t!175174 ts1!17)))))

(assert (= (and d!578563 (not res!843798)) b!1889250))

(assert (= (and b!1889250 res!843797) b!1889251))

(declare-fun m!2320245 () Bool)

(assert (=> d!578563 m!2320245))

(assert (=> d!578563 m!2320133))

(declare-fun m!2320247 () Bool)

(assert (=> b!1889250 m!2320247))

(declare-fun m!2320249 () Bool)

(assert (=> b!1889251 m!2320249))

(assert (=> b!1889115 d!578563))

(declare-fun d!578571 () Bool)

(assert (=> d!578571 (= (inv!28127 (tag!4141 (rule!5920 (h!26492 ts2!17)))) (= (mod (str.len (value!117811 (tag!4141 (rule!5920 (h!26492 ts2!17))))) 2) 0))))

(assert (=> b!1889104 d!578571))

(declare-fun d!578573 () Bool)

(declare-fun res!843801 () Bool)

(declare-fun e!1205798 () Bool)

(assert (=> d!578573 (=> (not res!843801) (not e!1205798))))

(declare-fun semiInverseModEq!1517 (Int Int) Bool)

(assert (=> d!578573 (= res!843801 (semiInverseModEq!1517 (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17)))) (toValue!5332 (transformation!3727 (rule!5920 (h!26492 ts2!17))))))))

(assert (=> d!578573 (= (inv!28131 (transformation!3727 (rule!5920 (h!26492 ts2!17)))) e!1205798)))

(declare-fun b!1889257 () Bool)

(declare-fun equivClasses!1444 (Int Int) Bool)

(assert (=> b!1889257 (= e!1205798 (equivClasses!1444 (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17)))) (toValue!5332 (transformation!3727 (rule!5920 (h!26492 ts2!17))))))))

(assert (= (and d!578573 res!843801) b!1889257))

(declare-fun m!2320251 () Bool)

(assert (=> d!578573 m!2320251))

(declare-fun m!2320253 () Bool)

(assert (=> b!1889257 m!2320253))

(assert (=> b!1889104 d!578573))

(declare-fun b!1889268 () Bool)

(declare-fun e!1205805 () Bool)

(declare-fun inv!17 (TokenValue!3863) Bool)

(assert (=> b!1889268 (= e!1205805 (inv!17 (value!117812 (h!26492 ts1!17))))))

(declare-fun d!578575 () Bool)

(declare-fun c!308209 () Bool)

(assert (=> d!578575 (= c!308209 (is-IntegerValue!11589 (value!117812 (h!26492 ts1!17))))))

(declare-fun e!1205807 () Bool)

(assert (=> d!578575 (= (inv!21 (value!117812 (h!26492 ts1!17))) e!1205807)))

(declare-fun b!1889269 () Bool)

(declare-fun e!1205806 () Bool)

(declare-fun inv!15 (TokenValue!3863) Bool)

(assert (=> b!1889269 (= e!1205806 (inv!15 (value!117812 (h!26492 ts1!17))))))

(declare-fun b!1889270 () Bool)

(assert (=> b!1889270 (= e!1205807 e!1205805)))

(declare-fun c!308210 () Bool)

(assert (=> b!1889270 (= c!308210 (is-IntegerValue!11590 (value!117812 (h!26492 ts1!17))))))

(declare-fun b!1889271 () Bool)

(declare-fun inv!16 (TokenValue!3863) Bool)

(assert (=> b!1889271 (= e!1205807 (inv!16 (value!117812 (h!26492 ts1!17))))))

(declare-fun b!1889272 () Bool)

(declare-fun res!843804 () Bool)

(assert (=> b!1889272 (=> res!843804 e!1205806)))

(assert (=> b!1889272 (= res!843804 (not (is-IntegerValue!11591 (value!117812 (h!26492 ts1!17)))))))

(assert (=> b!1889272 (= e!1205805 e!1205806)))

(assert (= (and d!578575 c!308209) b!1889271))

(assert (= (and d!578575 (not c!308209)) b!1889270))

(assert (= (and b!1889270 c!308210) b!1889268))

(assert (= (and b!1889270 (not c!308210)) b!1889272))

(assert (= (and b!1889272 (not res!843804)) b!1889269))

(declare-fun m!2320255 () Bool)

(assert (=> b!1889268 m!2320255))

(declare-fun m!2320257 () Bool)

(assert (=> b!1889269 m!2320257))

(declare-fun m!2320259 () Bool)

(assert (=> b!1889271 m!2320259))

(assert (=> b!1889106 d!578575))

(declare-fun d!578577 () Bool)

(assert (=> d!578577 (= (inv!28127 (tag!4141 (rule!5920 (h!26492 ts1!17)))) (= (mod (str.len (value!117811 (tag!4141 (rule!5920 (h!26492 ts1!17))))) 2) 0))))

(assert (=> b!1889116 d!578577))

(declare-fun d!578579 () Bool)

(declare-fun res!843805 () Bool)

(declare-fun e!1205808 () Bool)

(assert (=> d!578579 (=> (not res!843805) (not e!1205808))))

(assert (=> d!578579 (= res!843805 (semiInverseModEq!1517 (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17)))) (toValue!5332 (transformation!3727 (rule!5920 (h!26492 ts1!17))))))))

(assert (=> d!578579 (= (inv!28131 (transformation!3727 (rule!5920 (h!26492 ts1!17)))) e!1205808)))

(declare-fun b!1889273 () Bool)

(assert (=> b!1889273 (= e!1205808 (equivClasses!1444 (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17)))) (toValue!5332 (transformation!3727 (rule!5920 (h!26492 ts1!17))))))))

(assert (= (and d!578579 res!843805) b!1889273))

(declare-fun m!2320261 () Bool)

(assert (=> d!578579 m!2320261))

(declare-fun m!2320263 () Bool)

(assert (=> b!1889273 m!2320263))

(assert (=> b!1889116 d!578579))

(declare-fun bs!413028 () Bool)

(declare-fun d!578581 () Bool)

(assert (= bs!413028 (and d!578581 b!1889114)))

(declare-fun lambda!73881 () Int)

(assert (=> bs!413028 (= lambda!73881 lambda!73874)))

(declare-fun bs!413029 () Bool)

(assert (= bs!413029 (and d!578581 d!578563)))

(assert (=> bs!413029 (= lambda!73881 lambda!73880)))

(declare-fun b!1889278 () Bool)

(declare-fun e!1205813 () Bool)

(assert (=> b!1889278 (= e!1205813 true)))

(declare-fun b!1889277 () Bool)

(declare-fun e!1205812 () Bool)

(assert (=> b!1889277 (= e!1205812 e!1205813)))

(declare-fun b!1889276 () Bool)

(declare-fun e!1205811 () Bool)

(assert (=> b!1889276 (= e!1205811 e!1205812)))

(assert (=> d!578581 e!1205811))

(assert (= b!1889277 b!1889278))

(assert (= b!1889276 b!1889277))

(assert (= (and d!578581 (is-Cons!21090 rules!4265)) b!1889276))

(assert (=> b!1889278 (< (dynLambda!10249 order!13317 (toValue!5332 (transformation!3727 (h!26491 rules!4265)))) (dynLambda!10250 order!13319 lambda!73881))))

(assert (=> b!1889278 (< (dynLambda!10251 order!13321 (toChars!5191 (transformation!3727 (h!26491 rules!4265)))) (dynLambda!10250 order!13319 lambda!73881))))

(assert (=> d!578581 true))

(declare-fun lt!723856 () Bool)

(assert (=> d!578581 (= lt!723856 (forall!4428 ts2!17 lambda!73881))))

(declare-fun e!1205810 () Bool)

(assert (=> d!578581 (= lt!723856 e!1205810)))

(declare-fun res!843807 () Bool)

(assert (=> d!578581 (=> res!843807 e!1205810)))

(assert (=> d!578581 (= res!843807 (not (is-Cons!21091 ts2!17)))))

(assert (=> d!578581 (not (isEmpty!12992 rules!4265))))

(assert (=> d!578581 (= (rulesProduceEachTokenIndividuallyList!1097 thiss!27307 rules!4265 ts2!17) lt!723856)))

(declare-fun b!1889274 () Bool)

(declare-fun e!1205809 () Bool)

(assert (=> b!1889274 (= e!1205810 e!1205809)))

(declare-fun res!843806 () Bool)

(assert (=> b!1889274 (=> (not res!843806) (not e!1205809))))

(assert (=> b!1889274 (= res!843806 (rulesProduceIndividualToken!1542 thiss!27307 rules!4265 (h!26492 ts2!17)))))

(declare-fun b!1889275 () Bool)

(assert (=> b!1889275 (= e!1205809 (rulesProduceEachTokenIndividuallyList!1097 thiss!27307 rules!4265 (t!175174 ts2!17)))))

(assert (= (and d!578581 (not res!843807)) b!1889274))

(assert (= (and b!1889274 res!843806) b!1889275))

(declare-fun m!2320265 () Bool)

(assert (=> d!578581 m!2320265))

(assert (=> d!578581 m!2320133))

(declare-fun m!2320267 () Bool)

(assert (=> b!1889274 m!2320267))

(declare-fun m!2320269 () Bool)

(assert (=> b!1889275 m!2320269))

(assert (=> b!1889107 d!578581))

(declare-fun d!578583 () Bool)

(assert (=> d!578583 (= (inv!28127 (tag!4141 (h!26491 rules!4265))) (= (mod (str.len (value!117811 (tag!4141 (h!26491 rules!4265)))) 2) 0))))

(assert (=> b!1889109 d!578583))

(declare-fun d!578585 () Bool)

(declare-fun res!843808 () Bool)

(declare-fun e!1205814 () Bool)

(assert (=> d!578585 (=> (not res!843808) (not e!1205814))))

(assert (=> d!578585 (= res!843808 (semiInverseModEq!1517 (toChars!5191 (transformation!3727 (h!26491 rules!4265))) (toValue!5332 (transformation!3727 (h!26491 rules!4265)))))))

(assert (=> d!578585 (= (inv!28131 (transformation!3727 (h!26491 rules!4265))) e!1205814)))

(declare-fun b!1889279 () Bool)

(assert (=> b!1889279 (= e!1205814 (equivClasses!1444 (toChars!5191 (transformation!3727 (h!26491 rules!4265))) (toValue!5332 (transformation!3727 (h!26491 rules!4265)))))))

(assert (= (and d!578585 res!843808) b!1889279))

(declare-fun m!2320271 () Bool)

(assert (=> d!578585 m!2320271))

(declare-fun m!2320273 () Bool)

(assert (=> b!1889279 m!2320273))

(assert (=> b!1889109 d!578585))

(declare-fun d!578587 () Bool)

(declare-fun res!843811 () Bool)

(declare-fun e!1205817 () Bool)

(assert (=> d!578587 (=> (not res!843811) (not e!1205817))))

(declare-fun rulesValid!1407 (LexerInterface!3340 List!21172) Bool)

(assert (=> d!578587 (= res!843811 (rulesValid!1407 thiss!27307 rules!4265))))

(assert (=> d!578587 (= (rulesInvariant!2973 thiss!27307 rules!4265) e!1205817)))

(declare-fun b!1889282 () Bool)

(declare-datatypes ((List!21178 0))(
  ( (Nil!21096) (Cons!21096 (h!26497 String!24435) (t!175213 List!21178)) )
))
(declare-fun noDuplicateTag!1405 (LexerInterface!3340 List!21172 List!21178) Bool)

(assert (=> b!1889282 (= e!1205817 (noDuplicateTag!1405 thiss!27307 rules!4265 Nil!21096))))

(assert (= (and d!578587 res!843811) b!1889282))

(declare-fun m!2320275 () Bool)

(assert (=> d!578587 m!2320275))

(declare-fun m!2320277 () Bool)

(assert (=> b!1889282 m!2320277))

(assert (=> b!1889108 d!578587))

(declare-fun d!578589 () Bool)

(assert (=> d!578589 (= (isEmpty!12992 rules!4265) (is-Nil!21090 rules!4265))))

(assert (=> b!1889102 d!578589))

(declare-fun b!1889283 () Bool)

(declare-fun e!1205818 () Bool)

(assert (=> b!1889283 (= e!1205818 (inv!17 (value!117812 (h!26492 ts2!17))))))

(declare-fun d!578591 () Bool)

(declare-fun c!308211 () Bool)

(assert (=> d!578591 (= c!308211 (is-IntegerValue!11589 (value!117812 (h!26492 ts2!17))))))

(declare-fun e!1205820 () Bool)

(assert (=> d!578591 (= (inv!21 (value!117812 (h!26492 ts2!17))) e!1205820)))

(declare-fun b!1889284 () Bool)

(declare-fun e!1205819 () Bool)

(assert (=> b!1889284 (= e!1205819 (inv!15 (value!117812 (h!26492 ts2!17))))))

(declare-fun b!1889285 () Bool)

(assert (=> b!1889285 (= e!1205820 e!1205818)))

(declare-fun c!308212 () Bool)

(assert (=> b!1889285 (= c!308212 (is-IntegerValue!11590 (value!117812 (h!26492 ts2!17))))))

(declare-fun b!1889286 () Bool)

(assert (=> b!1889286 (= e!1205820 (inv!16 (value!117812 (h!26492 ts2!17))))))

(declare-fun b!1889287 () Bool)

(declare-fun res!843812 () Bool)

(assert (=> b!1889287 (=> res!843812 e!1205819)))

(assert (=> b!1889287 (= res!843812 (not (is-IntegerValue!11591 (value!117812 (h!26492 ts2!17)))))))

(assert (=> b!1889287 (= e!1205818 e!1205819)))

(assert (= (and d!578591 c!308211) b!1889286))

(assert (= (and d!578591 (not c!308211)) b!1889285))

(assert (= (and b!1889285 c!308212) b!1889283))

(assert (= (and b!1889285 (not c!308212)) b!1889287))

(assert (= (and b!1889287 (not res!843812)) b!1889284))

(declare-fun m!2320279 () Bool)

(assert (=> b!1889283 m!2320279))

(declare-fun m!2320281 () Bool)

(assert (=> b!1889284 m!2320281))

(declare-fun m!2320283 () Bool)

(assert (=> b!1889286 m!2320283))

(assert (=> b!1889112 d!578591))

(declare-fun b!1889301 () Bool)

(declare-fun b_free!52489 () Bool)

(declare-fun b_next!53193 () Bool)

(assert (=> b!1889301 (= b_free!52489 (not b_next!53193))))

(declare-fun tp!538625 () Bool)

(declare-fun b_and!145297 () Bool)

(assert (=> b!1889301 (= tp!538625 b_and!145297)))

(declare-fun b_free!52491 () Bool)

(declare-fun b_next!53195 () Bool)

(assert (=> b!1889301 (= b_free!52491 (not b_next!53195))))

(declare-fun t!175202 () Bool)

(declare-fun tb!114699 () Bool)

(assert (=> (and b!1889301 (= (toChars!5191 (transformation!3727 (rule!5920 (h!26492 (t!175174 ts1!17))))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17))))) t!175202) tb!114699))

(declare-fun result!138676 () Bool)

(assert (= result!138676 result!138652))

(assert (=> b!1889204 t!175202))

(declare-fun t!175204 () Bool)

(declare-fun tb!114701 () Bool)

(assert (=> (and b!1889301 (= (toChars!5191 (transformation!3727 (rule!5920 (h!26492 (t!175174 ts1!17))))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17))))) t!175204) tb!114701))

(declare-fun result!138678 () Bool)

(assert (= result!138678 result!138660))

(assert (=> b!1889221 t!175204))

(declare-fun tp!538626 () Bool)

(declare-fun b_and!145299 () Bool)

(assert (=> b!1889301 (= tp!538626 (and (=> t!175202 result!138676) (=> t!175204 result!138678) b_and!145299))))

(declare-fun b!1889300 () Bool)

(declare-fun e!1205838 () Bool)

(declare-fun e!1205835 () Bool)

(declare-fun tp!538628 () Bool)

(assert (=> b!1889300 (= e!1205835 (and tp!538628 (inv!28127 (tag!4141 (rule!5920 (h!26492 (t!175174 ts1!17))))) (inv!28131 (transformation!3727 (rule!5920 (h!26492 (t!175174 ts1!17))))) e!1205838))))

(declare-fun b!1889299 () Bool)

(declare-fun e!1205836 () Bool)

(declare-fun tp!538627 () Bool)

(assert (=> b!1889299 (= e!1205836 (and (inv!21 (value!117812 (h!26492 (t!175174 ts1!17)))) e!1205835 tp!538627))))

(assert (=> b!1889301 (= e!1205838 (and tp!538625 tp!538626))))

(declare-fun e!1205834 () Bool)

(assert (=> b!1889103 (= tp!538554 e!1205834)))

(declare-fun tp!538624 () Bool)

(declare-fun b!1889298 () Bool)

(assert (=> b!1889298 (= e!1205834 (and (inv!28130 (h!26492 (t!175174 ts1!17))) e!1205836 tp!538624))))

(assert (= b!1889300 b!1889301))

(assert (= b!1889299 b!1889300))

(assert (= b!1889298 b!1889299))

(assert (= (and b!1889103 (is-Cons!21091 (t!175174 ts1!17))) b!1889298))

(declare-fun m!2320285 () Bool)

(assert (=> b!1889300 m!2320285))

(declare-fun m!2320287 () Bool)

(assert (=> b!1889300 m!2320287))

(declare-fun m!2320289 () Bool)

(assert (=> b!1889299 m!2320289))

(declare-fun m!2320291 () Bool)

(assert (=> b!1889298 m!2320291))

(declare-fun b!1889305 () Bool)

(declare-fun b_free!52493 () Bool)

(declare-fun b_next!53197 () Bool)

(assert (=> b!1889305 (= b_free!52493 (not b_next!53197))))

(declare-fun tp!538630 () Bool)

(declare-fun b_and!145301 () Bool)

(assert (=> b!1889305 (= tp!538630 b_and!145301)))

(declare-fun b_free!52495 () Bool)

(declare-fun b_next!53199 () Bool)

(assert (=> b!1889305 (= b_free!52495 (not b_next!53199))))

(declare-fun t!175206 () Bool)

(declare-fun tb!114703 () Bool)

(assert (=> (and b!1889305 (= (toChars!5191 (transformation!3727 (rule!5920 (h!26492 (t!175174 ts2!17))))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17))))) t!175206) tb!114703))

(declare-fun result!138680 () Bool)

(assert (= result!138680 result!138652))

(assert (=> b!1889204 t!175206))

(declare-fun t!175208 () Bool)

(declare-fun tb!114705 () Bool)

(assert (=> (and b!1889305 (= (toChars!5191 (transformation!3727 (rule!5920 (h!26492 (t!175174 ts2!17))))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17))))) t!175208) tb!114705))

(declare-fun result!138682 () Bool)

(assert (= result!138682 result!138660))

(assert (=> b!1889221 t!175208))

(declare-fun b_and!145303 () Bool)

(declare-fun tp!538631 () Bool)

(assert (=> b!1889305 (= tp!538631 (and (=> t!175206 result!138680) (=> t!175208 result!138682) b_and!145303))))

(declare-fun e!1205841 () Bool)

(declare-fun e!1205844 () Bool)

(declare-fun b!1889304 () Bool)

(declare-fun tp!538633 () Bool)

(assert (=> b!1889304 (= e!1205841 (and tp!538633 (inv!28127 (tag!4141 (rule!5920 (h!26492 (t!175174 ts2!17))))) (inv!28131 (transformation!3727 (rule!5920 (h!26492 (t!175174 ts2!17))))) e!1205844))))

(declare-fun b!1889303 () Bool)

(declare-fun tp!538632 () Bool)

(declare-fun e!1205842 () Bool)

(assert (=> b!1889303 (= e!1205842 (and (inv!21 (value!117812 (h!26492 (t!175174 ts2!17)))) e!1205841 tp!538632))))

(assert (=> b!1889305 (= e!1205844 (and tp!538630 tp!538631))))

(declare-fun e!1205840 () Bool)

(assert (=> b!1889105 (= tp!538562 e!1205840)))

(declare-fun tp!538629 () Bool)

(declare-fun b!1889302 () Bool)

(assert (=> b!1889302 (= e!1205840 (and (inv!28130 (h!26492 (t!175174 ts2!17))) e!1205842 tp!538629))))

(assert (= b!1889304 b!1889305))

(assert (= b!1889303 b!1889304))

(assert (= b!1889302 b!1889303))

(assert (= (and b!1889105 (is-Cons!21091 (t!175174 ts2!17))) b!1889302))

(declare-fun m!2320293 () Bool)

(assert (=> b!1889304 m!2320293))

(declare-fun m!2320295 () Bool)

(assert (=> b!1889304 m!2320295))

(declare-fun m!2320297 () Bool)

(assert (=> b!1889303 m!2320297))

(declare-fun m!2320299 () Bool)

(assert (=> b!1889302 m!2320299))

(declare-fun e!1205847 () Bool)

(assert (=> b!1889104 (= tp!538564 e!1205847)))

(declare-fun b!1889319 () Bool)

(declare-fun tp!538645 () Bool)

(declare-fun tp!538648 () Bool)

(assert (=> b!1889319 (= e!1205847 (and tp!538645 tp!538648))))

(declare-fun b!1889318 () Bool)

(declare-fun tp!538647 () Bool)

(assert (=> b!1889318 (= e!1205847 tp!538647)))

(declare-fun b!1889317 () Bool)

(declare-fun tp!538646 () Bool)

(declare-fun tp!538644 () Bool)

(assert (=> b!1889317 (= e!1205847 (and tp!538646 tp!538644))))

(declare-fun b!1889316 () Bool)

(declare-fun tp_is_empty!9039 () Bool)

(assert (=> b!1889316 (= e!1205847 tp_is_empty!9039)))

(assert (= (and b!1889104 (is-ElementMatch!5152 (regex!3727 (rule!5920 (h!26492 ts2!17))))) b!1889316))

(assert (= (and b!1889104 (is-Concat!9016 (regex!3727 (rule!5920 (h!26492 ts2!17))))) b!1889317))

(assert (= (and b!1889104 (is-Star!5152 (regex!3727 (rule!5920 (h!26492 ts2!17))))) b!1889318))

(assert (= (and b!1889104 (is-Union!5152 (regex!3727 (rule!5920 (h!26492 ts2!17))))) b!1889319))

(declare-fun b!1889324 () Bool)

(declare-fun e!1205850 () Bool)

(declare-fun tp!538651 () Bool)

(assert (=> b!1889324 (= e!1205850 (and tp_is_empty!9039 tp!538651))))

(assert (=> b!1889106 (= tp!538553 e!1205850)))

(assert (= (and b!1889106 (is-Cons!21089 (originalCharacters!4534 (h!26492 ts1!17)))) b!1889324))

(declare-fun b!1889327 () Bool)

(declare-fun e!1205853 () Bool)

(assert (=> b!1889327 (= e!1205853 true)))

(declare-fun b!1889326 () Bool)

(declare-fun e!1205852 () Bool)

(assert (=> b!1889326 (= e!1205852 e!1205853)))

(declare-fun b!1889325 () Bool)

(declare-fun e!1205851 () Bool)

(assert (=> b!1889325 (= e!1205851 e!1205852)))

(assert (=> b!1889125 e!1205851))

(assert (= b!1889326 b!1889327))

(assert (= b!1889325 b!1889326))

(assert (= (and b!1889125 (is-Cons!21090 (t!175173 rules!4265))) b!1889325))

(assert (=> b!1889327 (< (dynLambda!10249 order!13317 (toValue!5332 (transformation!3727 (h!26491 (t!175173 rules!4265))))) (dynLambda!10250 order!13319 lambda!73874))))

(assert (=> b!1889327 (< (dynLambda!10251 order!13321 (toChars!5191 (transformation!3727 (h!26491 (t!175173 rules!4265))))) (dynLambda!10250 order!13319 lambda!73874))))

(declare-fun e!1205854 () Bool)

(assert (=> b!1889116 (= tp!538560 e!1205854)))

(declare-fun b!1889331 () Bool)

(declare-fun tp!538653 () Bool)

(declare-fun tp!538656 () Bool)

(assert (=> b!1889331 (= e!1205854 (and tp!538653 tp!538656))))

(declare-fun b!1889330 () Bool)

(declare-fun tp!538655 () Bool)

(assert (=> b!1889330 (= e!1205854 tp!538655)))

(declare-fun b!1889329 () Bool)

(declare-fun tp!538654 () Bool)

(declare-fun tp!538652 () Bool)

(assert (=> b!1889329 (= e!1205854 (and tp!538654 tp!538652))))

(declare-fun b!1889328 () Bool)

(assert (=> b!1889328 (= e!1205854 tp_is_empty!9039)))

(assert (= (and b!1889116 (is-ElementMatch!5152 (regex!3727 (rule!5920 (h!26492 ts1!17))))) b!1889328))

(assert (= (and b!1889116 (is-Concat!9016 (regex!3727 (rule!5920 (h!26492 ts1!17))))) b!1889329))

(assert (= (and b!1889116 (is-Star!5152 (regex!3727 (rule!5920 (h!26492 ts1!17))))) b!1889330))

(assert (= (and b!1889116 (is-Union!5152 (regex!3727 (rule!5920 (h!26492 ts1!17))))) b!1889331))

(declare-fun e!1205855 () Bool)

(assert (=> b!1889109 (= tp!538563 e!1205855)))

(declare-fun b!1889335 () Bool)

(declare-fun tp!538658 () Bool)

(declare-fun tp!538661 () Bool)

(assert (=> b!1889335 (= e!1205855 (and tp!538658 tp!538661))))

(declare-fun b!1889334 () Bool)

(declare-fun tp!538660 () Bool)

(assert (=> b!1889334 (= e!1205855 tp!538660)))

(declare-fun b!1889333 () Bool)

(declare-fun tp!538659 () Bool)

(declare-fun tp!538657 () Bool)

(assert (=> b!1889333 (= e!1205855 (and tp!538659 tp!538657))))

(declare-fun b!1889332 () Bool)

(assert (=> b!1889332 (= e!1205855 tp_is_empty!9039)))

(assert (= (and b!1889109 (is-ElementMatch!5152 (regex!3727 (h!26491 rules!4265)))) b!1889332))

(assert (= (and b!1889109 (is-Concat!9016 (regex!3727 (h!26491 rules!4265)))) b!1889333))

(assert (= (and b!1889109 (is-Star!5152 (regex!3727 (h!26491 rules!4265)))) b!1889334))

(assert (= (and b!1889109 (is-Union!5152 (regex!3727 (h!26491 rules!4265)))) b!1889335))

(declare-fun b!1889346 () Bool)

(declare-fun b_free!52497 () Bool)

(declare-fun b_next!53201 () Bool)

(assert (=> b!1889346 (= b_free!52497 (not b_next!53201))))

(declare-fun tp!538673 () Bool)

(declare-fun b_and!145305 () Bool)

(assert (=> b!1889346 (= tp!538673 b_and!145305)))

(declare-fun b_free!52499 () Bool)

(declare-fun b_next!53203 () Bool)

(assert (=> b!1889346 (= b_free!52499 (not b_next!53203))))

(declare-fun tb!114707 () Bool)

(declare-fun t!175210 () Bool)

(assert (=> (and b!1889346 (= (toChars!5191 (transformation!3727 (h!26491 (t!175173 rules!4265)))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17))))) t!175210) tb!114707))

(declare-fun result!138690 () Bool)

(assert (= result!138690 result!138652))

(assert (=> b!1889204 t!175210))

(declare-fun tb!114709 () Bool)

(declare-fun t!175212 () Bool)

(assert (=> (and b!1889346 (= (toChars!5191 (transformation!3727 (h!26491 (t!175173 rules!4265)))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17))))) t!175212) tb!114709))

(declare-fun result!138692 () Bool)

(assert (= result!138692 result!138660))

(assert (=> b!1889221 t!175212))

(declare-fun tp!538672 () Bool)

(declare-fun b_and!145307 () Bool)

(assert (=> b!1889346 (= tp!538672 (and (=> t!175210 result!138690) (=> t!175212 result!138692) b_and!145307))))

(declare-fun e!1205867 () Bool)

(assert (=> b!1889346 (= e!1205867 (and tp!538673 tp!538672))))

(declare-fun b!1889345 () Bool)

(declare-fun tp!538671 () Bool)

(declare-fun e!1205866 () Bool)

(assert (=> b!1889345 (= e!1205866 (and tp!538671 (inv!28127 (tag!4141 (h!26491 (t!175173 rules!4265)))) (inv!28131 (transformation!3727 (h!26491 (t!175173 rules!4265)))) e!1205867))))

(declare-fun b!1889344 () Bool)

(declare-fun e!1205864 () Bool)

(declare-fun tp!538670 () Bool)

(assert (=> b!1889344 (= e!1205864 (and e!1205866 tp!538670))))

(assert (=> b!1889111 (= tp!538561 e!1205864)))

(assert (= b!1889345 b!1889346))

(assert (= b!1889344 b!1889345))

(assert (= (and b!1889111 (is-Cons!21090 (t!175173 rules!4265))) b!1889344))

(declare-fun m!2320301 () Bool)

(assert (=> b!1889345 m!2320301))

(declare-fun m!2320303 () Bool)

(assert (=> b!1889345 m!2320303))

(declare-fun b!1889347 () Bool)

(declare-fun e!1205868 () Bool)

(declare-fun tp!538674 () Bool)

(assert (=> b!1889347 (= e!1205868 (and tp_is_empty!9039 tp!538674))))

(assert (=> b!1889112 (= tp!538558 e!1205868)))

(assert (= (and b!1889112 (is-Cons!21089 (originalCharacters!4534 (h!26492 ts2!17)))) b!1889347))

(declare-fun b_lambda!61927 () Bool)

(assert (= b_lambda!61917 (or b!1889114 b_lambda!61927)))

(declare-fun bs!413030 () Bool)

(declare-fun d!578593 () Bool)

(assert (= bs!413030 (and d!578593 b!1889114)))

(assert (=> bs!413030 (= (dynLambda!10255 lambda!73874 (h!26492 ts1!17)) (rulesProduceIndividualToken!1542 thiss!27307 rules!4265 (h!26492 ts1!17)))))

(assert (=> bs!413030 m!2320247))

(assert (=> b!1889197 d!578593))

(declare-fun b_lambda!61929 () Bool)

(assert (= b_lambda!61921 (or (and b!1889113 b_free!52467 (= (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17)))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17)))))) (and b!1889101 b_free!52471) (and b!1889301 b_free!52491 (= (toChars!5191 (transformation!3727 (rule!5920 (h!26492 (t!175174 ts1!17))))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17)))))) (and b!1889346 b_free!52499 (= (toChars!5191 (transformation!3727 (h!26491 (t!175173 rules!4265)))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17)))))) (and b!1889110 b_free!52475 (= (toChars!5191 (transformation!3727 (h!26491 rules!4265))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17)))))) (and b!1889305 b_free!52495 (= (toChars!5191 (transformation!3727 (rule!5920 (h!26492 (t!175174 ts2!17))))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17)))))) b_lambda!61929)))

(declare-fun b_lambda!61931 () Bool)

(assert (= b_lambda!61919 (or (and b!1889346 b_free!52499 (= (toChars!5191 (transformation!3727 (h!26491 (t!175173 rules!4265)))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17)))))) (and b!1889301 b_free!52491 (= (toChars!5191 (transformation!3727 (rule!5920 (h!26492 (t!175174 ts1!17))))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17)))))) (and b!1889305 b_free!52495 (= (toChars!5191 (transformation!3727 (rule!5920 (h!26492 (t!175174 ts2!17))))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17)))))) (and b!1889101 b_free!52471 (= (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts2!17)))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17)))))) (and b!1889113 b_free!52467) (and b!1889110 b_free!52475 (= (toChars!5191 (transformation!3727 (h!26491 rules!4265))) (toChars!5191 (transformation!3727 (rule!5920 (h!26492 ts1!17)))))) b_lambda!61931)))

(push 1)

(assert tp_is_empty!9039)

(assert (not b!1889282))

(assert (not b_next!53193))

(assert (not b!1889223))

(assert (not bs!413030))

(assert (not b!1889303))

(assert (not b!1889204))

(assert b_and!145297)

(assert (not b!1889271))

(assert (not b!1889283))

(assert b_and!145255)

(assert (not b!1889333))

(assert (not tb!114687))

(assert (not b!1889335))

(assert (not b!1889325))

(assert (not b_next!53197))

(assert b_and!145289)

(assert (not b_next!53171))

(assert (not d!578579))

(assert (not b!1889286))

(assert (not b!1889273))

(assert (not b!1889198))

(assert (not d!578563))

(assert (not b_next!53203))

(assert (not d!578557))

(assert (not b!1889319))

(assert b_and!145285)

(assert (not b_lambda!61931))

(assert (not d!578573))

(assert (not d!578561))

(assert (not b!1889345))

(assert (not b_lambda!61927))

(assert (not b!1889250))

(assert (not b!1889268))

(assert (not b!1889275))

(assert (not b!1889324))

(assert (not b!1889274))

(assert (not d!578587))

(assert (not b_next!53179))

(assert (not b!1889276))

(assert b_and!145299)

(assert (not b!1889300))

(assert (not b!1889330))

(assert (not b!1889284))

(assert b_and!145303)

(assert (not b!1889304))

(assert (not b!1889252))

(assert (not b_next!53177))

(assert (not b_next!53199))

(assert (not b!1889279))

(assert (not b_next!53175))

(assert (not d!578581))

(assert (not b!1889318))

(assert (not b!1889344))

(assert (not b_next!53173))

(assert (not b!1889299))

(assert (not b!1889329))

(assert (not b!1889302))

(assert (not b_next!53195))

(assert (not b!1889334))

(assert (not b_lambda!61929))

(assert (not b!1889317))

(assert (not b!1889205))

(assert (not b!1889331))

(assert b_and!145307)

(assert (not b!1889347))

(assert (not b!1889269))

(assert (not d!578585))

(assert (not b!1889212))

(assert (not b!1889251))

(assert (not b_next!53201))

(assert b_and!145305)

(assert (not tb!114681))

(assert (not b!1889221))

(assert b_and!145287)

(assert (not b!1889298))

(assert b_and!145263)

(assert (not b_next!53169))

(assert (not b!1889222))

(assert (not b!1889257))

(assert b_and!145301)

(assert b_and!145259)

(check-sat)

(pop 1)

(push 1)

(assert b_and!145255)

(assert (not b_next!53171))

(assert (not b_next!53203))

(assert b_and!145285)

(assert b_and!145303)

(assert (not b_next!53173))

(assert (not b_next!53193))

(assert (not b_next!53195))

(assert b_and!145307)

(assert (not b_next!53169))

(assert b_and!145297)

(assert (not b_next!53197))

(assert b_and!145289)

(assert (not b_next!53179))

(assert b_and!145299)

(assert (not b_next!53177))

(assert (not b_next!53175))

(assert (not b_next!53199))

(assert (not b_next!53201))

(assert b_and!145305)

(assert b_and!145287)

(assert b_and!145263)

(assert b_and!145301)

(assert b_and!145259)

(check-sat)

(pop 1)

