; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!331922 () Bool)

(assert start!331922)

(declare-fun b!3580322 () Bool)

(declare-fun b_free!91841 () Bool)

(declare-fun b_next!92545 () Bool)

(assert (=> b!3580322 (= b_free!91841 (not b_next!92545))))

(declare-fun tp!1095777 () Bool)

(declare-fun b_and!258175 () Bool)

(assert (=> b!3580322 (= tp!1095777 b_and!258175)))

(declare-fun b_free!91843 () Bool)

(declare-fun b_next!92547 () Bool)

(assert (=> b!3580322 (= b_free!91843 (not b_next!92547))))

(declare-fun tp!1095779 () Bool)

(declare-fun b_and!258177 () Bool)

(assert (=> b!3580322 (= tp!1095779 b_and!258177)))

(declare-fun b!3580317 () Bool)

(declare-fun b_free!91845 () Bool)

(declare-fun b_next!92549 () Bool)

(assert (=> b!3580317 (= b_free!91845 (not b_next!92549))))

(declare-fun tp!1095778 () Bool)

(declare-fun b_and!258179 () Bool)

(assert (=> b!3580317 (= tp!1095778 b_and!258179)))

(declare-fun b_free!91847 () Bool)

(declare-fun b_next!92551 () Bool)

(assert (=> b!3580317 (= b_free!91847 (not b_next!92551))))

(declare-fun tp!1095784 () Bool)

(declare-fun b_and!258181 () Bool)

(assert (=> b!3580317 (= tp!1095784 b_and!258181)))

(declare-fun b!3580314 () Bool)

(declare-fun b_free!91849 () Bool)

(declare-fun b_next!92553 () Bool)

(assert (=> b!3580314 (= b_free!91849 (not b_next!92553))))

(declare-fun tp!1095790 () Bool)

(declare-fun b_and!258183 () Bool)

(assert (=> b!3580314 (= tp!1095790 b_and!258183)))

(declare-fun b_free!91851 () Bool)

(declare-fun b_next!92555 () Bool)

(assert (=> b!3580314 (= b_free!91851 (not b_next!92555))))

(declare-fun tp!1095780 () Bool)

(declare-fun b_and!258185 () Bool)

(assert (=> b!3580314 (= tp!1095780 b_and!258185)))

(declare-fun b!3580312 () Bool)

(declare-fun b_free!91853 () Bool)

(declare-fun b_next!92557 () Bool)

(assert (=> b!3580312 (= b_free!91853 (not b_next!92557))))

(declare-fun tp!1095781 () Bool)

(declare-fun b_and!258187 () Bool)

(assert (=> b!3580312 (= tp!1095781 b_and!258187)))

(declare-fun b_free!91855 () Bool)

(declare-fun b_next!92559 () Bool)

(assert (=> b!3580312 (= b_free!91855 (not b_next!92559))))

(declare-fun tp!1095787 () Bool)

(declare-fun b_and!258189 () Bool)

(assert (=> b!3580312 (= tp!1095787 b_and!258189)))

(declare-fun tp!1095783 () Bool)

(declare-fun e!2215114 () Bool)

(declare-datatypes ((List!37718 0))(
  ( (Nil!37594) (Cons!37594 (h!43014 (_ BitVec 16)) (t!290247 List!37718)) )
))
(declare-datatypes ((TokenValue!5764 0))(
  ( (FloatLiteralValue!11528 (text!40793 List!37718)) (TokenValueExt!5763 (__x!23745 Int)) (Broken!28820 (value!178153 List!37718)) (Object!5887) (End!5764) (Def!5764) (Underscore!5764) (Match!5764) (Else!5764) (Error!5764) (Case!5764) (If!5764) (Extends!5764) (Abstract!5764) (Class!5764) (Val!5764) (DelimiterValue!11528 (del!5824 List!37718)) (KeywordValue!5770 (value!178154 List!37718)) (CommentValue!11528 (value!178155 List!37718)) (WhitespaceValue!11528 (value!178156 List!37718)) (IndentationValue!5764 (value!178157 List!37718)) (String!42153) (Int32!5764) (Broken!28821 (value!178158 List!37718)) (Boolean!5765) (Unit!53610) (OperatorValue!5767 (op!5824 List!37718)) (IdentifierValue!11528 (value!178159 List!37718)) (IdentifierValue!11529 (value!178160 List!37718)) (WhitespaceValue!11529 (value!178161 List!37718)) (True!11528) (False!11528) (Broken!28822 (value!178162 List!37718)) (Broken!28823 (value!178163 List!37718)) (True!11529) (RightBrace!5764) (RightBracket!5764) (Colon!5764) (Null!5764) (Comma!5764) (LeftBracket!5764) (False!11529) (LeftBrace!5764) (ImaginaryLiteralValue!5764 (text!40794 List!37718)) (StringLiteralValue!17292 (value!178164 List!37718)) (EOFValue!5764 (value!178165 List!37718)) (IdentValue!5764 (value!178166 List!37718)) (DelimiterValue!11529 (value!178167 List!37718)) (DedentValue!5764 (value!178168 List!37718)) (NewLineValue!5764 (value!178169 List!37718)) (IntegerValue!17292 (value!178170 (_ BitVec 32)) (text!40795 List!37718)) (IntegerValue!17293 (value!178171 Int) (text!40796 List!37718)) (Times!5764) (Or!5764) (Equal!5764) (Minus!5764) (Broken!28824 (value!178172 List!37718)) (And!5764) (Div!5764) (LessEqual!5764) (Mod!5764) (Concat!16057) (Not!5764) (Plus!5764) (SpaceValue!5764 (value!178173 List!37718)) (IntegerValue!17294 (value!178174 Int) (text!40797 List!37718)) (StringLiteralValue!17293 (text!40798 List!37718)) (FloatLiteralValue!11529 (text!40799 List!37718)) (BytesLiteralValue!5764 (value!178175 List!37718)) (CommentValue!11529 (value!178176 List!37718)) (StringLiteralValue!17294 (value!178177 List!37718)) (ErrorTokenValue!5764 (msg!5825 List!37718)) )
))
(declare-datatypes ((C!20772 0))(
  ( (C!20773 (val!12434 Int)) )
))
(declare-datatypes ((Regex!10293 0))(
  ( (ElementMatch!10293 (c!620441 C!20772)) (Concat!16058 (regOne!21098 Regex!10293) (regTwo!21098 Regex!10293)) (EmptyExpr!10293) (Star!10293 (reg!10622 Regex!10293)) (EmptyLang!10293) (Union!10293 (regOne!21099 Regex!10293) (regTwo!21099 Regex!10293)) )
))
(declare-datatypes ((String!42154 0))(
  ( (String!42155 (value!178178 String)) )
))
(declare-datatypes ((List!37719 0))(
  ( (Nil!37595) (Cons!37595 (h!43015 C!20772) (t!290248 List!37719)) )
))
(declare-datatypes ((IArray!22869 0))(
  ( (IArray!22870 (innerList!11492 List!37719)) )
))
(declare-datatypes ((Conc!11432 0))(
  ( (Node!11432 (left!29401 Conc!11432) (right!29731 Conc!11432) (csize!23094 Int) (cheight!11643 Int)) (Leaf!17810 (xs!14634 IArray!22869) (csize!23095 Int)) (Empty!11432) )
))
(declare-datatypes ((BalanceConc!22478 0))(
  ( (BalanceConc!22479 (c!620442 Conc!11432)) )
))
(declare-datatypes ((TokenValueInjection!10956 0))(
  ( (TokenValueInjection!10957 (toValue!7810 Int) (toChars!7669 Int)) )
))
(declare-datatypes ((Rule!10868 0))(
  ( (Rule!10869 (regex!5534 Regex!10293) (tag!6200 String!42154) (isSeparator!5534 Bool) (transformation!5534 TokenValueInjection!10956)) )
))
(declare-datatypes ((List!37720 0))(
  ( (Nil!37596) (Cons!37596 (h!43016 Rule!10868) (t!290249 List!37720)) )
))
(declare-fun rules!3307 () List!37720)

(declare-fun e!2215111 () Bool)

(declare-fun b!3580310 () Bool)

(declare-fun inv!50887 (String!42154) Bool)

(declare-fun inv!50890 (TokenValueInjection!10956) Bool)

(assert (=> b!3580310 (= e!2215111 (and tp!1095783 (inv!50887 (tag!6200 (h!43016 rules!3307))) (inv!50890 (transformation!5534 (h!43016 rules!3307))) e!2215114))))

(declare-fun res!1444461 () Bool)

(declare-fun e!2215108 () Bool)

(assert (=> start!331922 (=> (not res!1444461) (not e!2215108))))

(declare-datatypes ((LexerInterface!5123 0))(
  ( (LexerInterfaceExt!5120 (__x!23746 Int)) (Lexer!5121) )
))
(declare-fun thiss!23823 () LexerInterface!5123)

(get-info :version)

(assert (=> start!331922 (= res!1444461 ((_ is Lexer!5121) thiss!23823))))

(assert (=> start!331922 e!2215108))

(declare-fun e!2215107 () Bool)

(assert (=> start!331922 e!2215107))

(assert (=> start!331922 true))

(declare-datatypes ((Token!10434 0))(
  ( (Token!10435 (value!178179 TokenValue!5764) (rule!8246 Rule!10868) (size!28666 Int) (originalCharacters!6248 List!37719)) )
))
(declare-fun token!511 () Token!10434)

(declare-fun e!2215106 () Bool)

(declare-fun inv!50891 (Token!10434) Bool)

(assert (=> start!331922 (and (inv!50891 token!511) e!2215106)))

(declare-fun e!2215112 () Bool)

(assert (=> start!331922 e!2215112))

(declare-fun e!2215110 () Bool)

(assert (=> start!331922 e!2215110))

(declare-fun b!3580311 () Bool)

(assert (=> b!3580311 (= e!2215108 false)))

(declare-fun lt!1228464 () Bool)

(declare-fun rulesValidInductive!1917 (LexerInterface!5123 List!37720) Bool)

(assert (=> b!3580311 (= lt!1228464 (rulesValidInductive!1917 thiss!23823 rules!3307))))

(declare-fun e!2215113 () Bool)

(assert (=> b!3580312 (= e!2215113 (and tp!1095781 tp!1095787))))

(declare-fun b!3580313 () Bool)

(declare-fun res!1444457 () Bool)

(assert (=> b!3580313 (=> (not res!1444457) (not e!2215108))))

(declare-fun rule!403 () Rule!10868)

(declare-fun contains!7138 (List!37720 Rule!10868) Bool)

(assert (=> b!3580313 (= res!1444457 (contains!7138 rules!3307 rule!403))))

(declare-fun e!2215119 () Bool)

(assert (=> b!3580314 (= e!2215119 (and tp!1095790 tp!1095780))))

(declare-fun tp!1095782 () Bool)

(declare-fun b!3580315 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!10868)

(assert (=> b!3580315 (= e!2215110 (and tp!1095782 (inv!50887 (tag!6200 anOtherTypeRule!33)) (inv!50890 (transformation!5534 anOtherTypeRule!33)) e!2215113))))

(declare-fun b!3580316 () Bool)

(declare-fun tp!1095788 () Bool)

(declare-fun e!2215105 () Bool)

(assert (=> b!3580316 (= e!2215112 (and tp!1095788 (inv!50887 (tag!6200 rule!403)) (inv!50890 (transformation!5534 rule!403)) e!2215105))))

(assert (=> b!3580317 (= e!2215105 (and tp!1095778 tp!1095784))))

(declare-fun b!3580318 () Bool)

(declare-fun tp!1095786 () Bool)

(declare-fun e!2215109 () Bool)

(assert (=> b!3580318 (= e!2215109 (and tp!1095786 (inv!50887 (tag!6200 (rule!8246 token!511))) (inv!50890 (transformation!5534 (rule!8246 token!511))) e!2215119))))

(declare-fun b!3580319 () Bool)

(declare-fun res!1444459 () Bool)

(assert (=> b!3580319 (=> (not res!1444459) (not e!2215108))))

(declare-fun isEmpty!22131 (List!37720) Bool)

(assert (=> b!3580319 (= res!1444459 (not (isEmpty!22131 rules!3307)))))

(declare-fun b!3580320 () Bool)

(declare-fun res!1444462 () Bool)

(assert (=> b!3580320 (=> (not res!1444462) (not e!2215108))))

(declare-datatypes ((tuple2!37510 0))(
  ( (tuple2!37511 (_1!21889 Token!10434) (_2!21889 List!37719)) )
))
(declare-datatypes ((Option!7722 0))(
  ( (None!7721) (Some!7721 (v!37361 tuple2!37510)) )
))
(declare-fun isDefined!5956 (Option!7722) Bool)

(declare-fun maxPrefix!2657 (LexerInterface!5123 List!37720 List!37719) Option!7722)

(declare-fun list!13806 (BalanceConc!22478) List!37719)

(declare-fun charsOf!3548 (Token!10434) BalanceConc!22478)

(assert (=> b!3580320 (= res!1444462 (isDefined!5956 (maxPrefix!2657 thiss!23823 rules!3307 (list!13806 (charsOf!3548 token!511)))))))

(declare-fun tp!1095785 () Bool)

(declare-fun b!3580321 () Bool)

(declare-fun inv!21 (TokenValue!5764) Bool)

(assert (=> b!3580321 (= e!2215106 (and (inv!21 (value!178179 token!511)) e!2215109 tp!1095785))))

(assert (=> b!3580322 (= e!2215114 (and tp!1095777 tp!1095779))))

(declare-fun b!3580323 () Bool)

(declare-fun res!1444460 () Bool)

(assert (=> b!3580323 (=> (not res!1444460) (not e!2215108))))

(assert (=> b!3580323 (= res!1444460 (contains!7138 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3580324 () Bool)

(declare-fun tp!1095789 () Bool)

(assert (=> b!3580324 (= e!2215107 (and e!2215111 tp!1095789))))

(declare-fun b!3580325 () Bool)

(declare-fun res!1444458 () Bool)

(assert (=> b!3580325 (=> (not res!1444458) (not e!2215108))))

(declare-fun rulesInvariant!4520 (LexerInterface!5123 List!37720) Bool)

(assert (=> b!3580325 (= res!1444458 (rulesInvariant!4520 thiss!23823 rules!3307))))

(declare-fun b!3580326 () Bool)

(declare-fun res!1444463 () Bool)

(assert (=> b!3580326 (=> (not res!1444463) (not e!2215108))))

(assert (=> b!3580326 (= res!1444463 (not (= (isSeparator!5534 anOtherTypeRule!33) (isSeparator!5534 rule!403))))))

(assert (= (and start!331922 res!1444461) b!3580319))

(assert (= (and b!3580319 res!1444459) b!3580325))

(assert (= (and b!3580325 res!1444458) b!3580313))

(assert (= (and b!3580313 res!1444457) b!3580323))

(assert (= (and b!3580323 res!1444460) b!3580326))

(assert (= (and b!3580326 res!1444463) b!3580320))

(assert (= (and b!3580320 res!1444462) b!3580311))

(assert (= b!3580310 b!3580322))

(assert (= b!3580324 b!3580310))

(assert (= (and start!331922 ((_ is Cons!37596) rules!3307)) b!3580324))

(assert (= b!3580318 b!3580314))

(assert (= b!3580321 b!3580318))

(assert (= start!331922 b!3580321))

(assert (= b!3580316 b!3580317))

(assert (= start!331922 b!3580316))

(assert (= b!3580315 b!3580312))

(assert (= start!331922 b!3580315))

(declare-fun m!4074275 () Bool)

(assert (=> b!3580319 m!4074275))

(declare-fun m!4074277 () Bool)

(assert (=> b!3580315 m!4074277))

(declare-fun m!4074279 () Bool)

(assert (=> b!3580315 m!4074279))

(declare-fun m!4074281 () Bool)

(assert (=> b!3580310 m!4074281))

(declare-fun m!4074283 () Bool)

(assert (=> b!3580310 m!4074283))

(declare-fun m!4074285 () Bool)

(assert (=> start!331922 m!4074285))

(declare-fun m!4074287 () Bool)

(assert (=> b!3580311 m!4074287))

(declare-fun m!4074289 () Bool)

(assert (=> b!3580321 m!4074289))

(declare-fun m!4074291 () Bool)

(assert (=> b!3580313 m!4074291))

(declare-fun m!4074293 () Bool)

(assert (=> b!3580325 m!4074293))

(declare-fun m!4074295 () Bool)

(assert (=> b!3580323 m!4074295))

(declare-fun m!4074297 () Bool)

(assert (=> b!3580320 m!4074297))

(assert (=> b!3580320 m!4074297))

(declare-fun m!4074299 () Bool)

(assert (=> b!3580320 m!4074299))

(assert (=> b!3580320 m!4074299))

(declare-fun m!4074301 () Bool)

(assert (=> b!3580320 m!4074301))

(assert (=> b!3580320 m!4074301))

(declare-fun m!4074303 () Bool)

(assert (=> b!3580320 m!4074303))

(declare-fun m!4074305 () Bool)

(assert (=> b!3580318 m!4074305))

(declare-fun m!4074307 () Bool)

(assert (=> b!3580318 m!4074307))

(declare-fun m!4074309 () Bool)

(assert (=> b!3580316 m!4074309))

(declare-fun m!4074311 () Bool)

(assert (=> b!3580316 m!4074311))

(check-sat (not b!3580319) b_and!258189 (not b!3580318) (not b!3580315) (not b!3580321) (not b_next!92547) (not b_next!92559) (not b!3580310) b_and!258175 (not b_next!92553) (not b_next!92551) (not b_next!92545) b_and!258185 (not b!3580324) b_and!258181 (not b_next!92557) b_and!258177 (not b!3580325) (not b!3580311) (not b!3580316) (not b!3580323) (not b!3580320) (not b_next!92555) b_and!258183 b_and!258187 (not start!331922) b_and!258179 (not b_next!92549) (not b!3580313))
(check-sat b_and!258189 b_and!258181 (not b_next!92547) (not b_next!92559) b_and!258175 (not b_next!92553) (not b_next!92555) (not b_next!92551) b_and!258179 (not b_next!92545) b_and!258185 (not b_next!92549) (not b_next!92557) b_and!258177 b_and!258183 b_and!258187)
