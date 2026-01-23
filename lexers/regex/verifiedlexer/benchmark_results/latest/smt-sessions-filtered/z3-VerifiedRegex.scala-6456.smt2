; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!338014 () Bool)

(assert start!338014)

(declare-fun b!3626669 () Bool)

(declare-fun b_free!94689 () Bool)

(declare-fun b_next!95393 () Bool)

(assert (=> b!3626669 (= b_free!94689 (not b_next!95393))))

(declare-fun tp!1107370 () Bool)

(declare-fun b_and!265719 () Bool)

(assert (=> b!3626669 (= tp!1107370 b_and!265719)))

(declare-fun b_free!94691 () Bool)

(declare-fun b_next!95395 () Bool)

(assert (=> b!3626669 (= b_free!94691 (not b_next!95395))))

(declare-fun tp!1107361 () Bool)

(declare-fun b_and!265721 () Bool)

(assert (=> b!3626669 (= tp!1107361 b_and!265721)))

(declare-fun b!3626687 () Bool)

(declare-fun b_free!94693 () Bool)

(declare-fun b_next!95397 () Bool)

(assert (=> b!3626687 (= b_free!94693 (not b_next!95397))))

(declare-fun tp!1107360 () Bool)

(declare-fun b_and!265723 () Bool)

(assert (=> b!3626687 (= tp!1107360 b_and!265723)))

(declare-fun b_free!94695 () Bool)

(declare-fun b_next!95399 () Bool)

(assert (=> b!3626687 (= b_free!94695 (not b_next!95399))))

(declare-fun tp!1107363 () Bool)

(declare-fun b_and!265725 () Bool)

(assert (=> b!3626687 (= tp!1107363 b_and!265725)))

(declare-fun b!3626696 () Bool)

(declare-fun b_free!94697 () Bool)

(declare-fun b_next!95401 () Bool)

(assert (=> b!3626696 (= b_free!94697 (not b_next!95401))))

(declare-fun tp!1107364 () Bool)

(declare-fun b_and!265727 () Bool)

(assert (=> b!3626696 (= tp!1107364 b_and!265727)))

(declare-fun b_free!94699 () Bool)

(declare-fun b_next!95403 () Bool)

(assert (=> b!3626696 (= b_free!94699 (not b_next!95403))))

(declare-fun tp!1107369 () Bool)

(declare-fun b_and!265729 () Bool)

(assert (=> b!3626696 (= tp!1107369 b_and!265729)))

(declare-fun b!3626693 () Bool)

(declare-fun b_free!94701 () Bool)

(declare-fun b_next!95405 () Bool)

(assert (=> b!3626693 (= b_free!94701 (not b_next!95405))))

(declare-fun tp!1107367 () Bool)

(declare-fun b_and!265731 () Bool)

(assert (=> b!3626693 (= tp!1107367 b_and!265731)))

(declare-fun b_free!94703 () Bool)

(declare-fun b_next!95407 () Bool)

(assert (=> b!3626693 (= b_free!94703 (not b_next!95407))))

(declare-fun tp!1107371 () Bool)

(declare-fun b_and!265733 () Bool)

(assert (=> b!3626693 (= tp!1107371 b_and!265733)))

(declare-fun b!3626665 () Bool)

(declare-fun e!2244845 () Bool)

(declare-datatypes ((List!38325 0))(
  ( (Nil!38201) (Cons!38201 (h!43621 (_ BitVec 16)) (t!294780 List!38325)) )
))
(declare-datatypes ((TokenValue!5922 0))(
  ( (FloatLiteralValue!11844 (text!41899 List!38325)) (TokenValueExt!5921 (__x!24061 Int)) (Broken!29610 (value!182656 List!38325)) (Object!6045) (End!5922) (Def!5922) (Underscore!5922) (Match!5922) (Else!5922) (Error!5922) (Case!5922) (If!5922) (Extends!5922) (Abstract!5922) (Class!5922) (Val!5922) (DelimiterValue!11844 (del!5982 List!38325)) (KeywordValue!5928 (value!182657 List!38325)) (CommentValue!11844 (value!182658 List!38325)) (WhitespaceValue!11844 (value!182659 List!38325)) (IndentationValue!5922 (value!182660 List!38325)) (String!42943) (Int32!5922) (Broken!29611 (value!182661 List!38325)) (Boolean!5923) (Unit!54961) (OperatorValue!5925 (op!5982 List!38325)) (IdentifierValue!11844 (value!182662 List!38325)) (IdentifierValue!11845 (value!182663 List!38325)) (WhitespaceValue!11845 (value!182664 List!38325)) (True!11844) (False!11844) (Broken!29612 (value!182665 List!38325)) (Broken!29613 (value!182666 List!38325)) (True!11845) (RightBrace!5922) (RightBracket!5922) (Colon!5922) (Null!5922) (Comma!5922) (LeftBracket!5922) (False!11845) (LeftBrace!5922) (ImaginaryLiteralValue!5922 (text!41900 List!38325)) (StringLiteralValue!17766 (value!182667 List!38325)) (EOFValue!5922 (value!182668 List!38325)) (IdentValue!5922 (value!182669 List!38325)) (DelimiterValue!11845 (value!182670 List!38325)) (DedentValue!5922 (value!182671 List!38325)) (NewLineValue!5922 (value!182672 List!38325)) (IntegerValue!17766 (value!182673 (_ BitVec 32)) (text!41901 List!38325)) (IntegerValue!17767 (value!182674 Int) (text!41902 List!38325)) (Times!5922) (Or!5922) (Equal!5922) (Minus!5922) (Broken!29614 (value!182675 List!38325)) (And!5922) (Div!5922) (LessEqual!5922) (Mod!5922) (Concat!16373) (Not!5922) (Plus!5922) (SpaceValue!5922 (value!182676 List!38325)) (IntegerValue!17768 (value!182677 Int) (text!41903 List!38325)) (StringLiteralValue!17767 (text!41904 List!38325)) (FloatLiteralValue!11845 (text!41905 List!38325)) (BytesLiteralValue!5922 (value!182678 List!38325)) (CommentValue!11845 (value!182679 List!38325)) (StringLiteralValue!17768 (value!182680 List!38325)) (ErrorTokenValue!5922 (msg!5983 List!38325)) )
))
(declare-datatypes ((C!21088 0))(
  ( (C!21089 (val!12592 Int)) )
))
(declare-datatypes ((Regex!10451 0))(
  ( (ElementMatch!10451 (c!627498 C!21088)) (Concat!16374 (regOne!21414 Regex!10451) (regTwo!21414 Regex!10451)) (EmptyExpr!10451) (Star!10451 (reg!10780 Regex!10451)) (EmptyLang!10451) (Union!10451 (regOne!21415 Regex!10451) (regTwo!21415 Regex!10451)) )
))
(declare-datatypes ((String!42944 0))(
  ( (String!42945 (value!182681 String)) )
))
(declare-datatypes ((List!38326 0))(
  ( (Nil!38202) (Cons!38202 (h!43622 C!21088) (t!294781 List!38326)) )
))
(declare-datatypes ((IArray!23311 0))(
  ( (IArray!23312 (innerList!11713 List!38326)) )
))
(declare-datatypes ((Conc!11653 0))(
  ( (Node!11653 (left!29825 Conc!11653) (right!30155 Conc!11653) (csize!23536 Int) (cheight!11864 Int)) (Leaf!18110 (xs!14855 IArray!23311) (csize!23537 Int)) (Empty!11653) )
))
(declare-datatypes ((BalanceConc!22920 0))(
  ( (BalanceConc!22921 (c!627499 Conc!11653)) )
))
(declare-datatypes ((TokenValueInjection!11272 0))(
  ( (TokenValueInjection!11273 (toValue!7980 Int) (toChars!7839 Int)) )
))
(declare-datatypes ((Rule!11184 0))(
  ( (Rule!11185 (regex!5692 Regex!10451) (tag!6418 String!42944) (isSeparator!5692 Bool) (transformation!5692 TokenValueInjection!11272)) )
))
(declare-datatypes ((Token!10750 0))(
  ( (Token!10751 (value!182682 TokenValue!5922) (rule!8460 Rule!11184) (size!29143 Int) (originalCharacters!6406 List!38326)) )
))
(declare-datatypes ((tuple2!38080 0))(
  ( (tuple2!38081 (_1!22174 Token!10750) (_2!22174 List!38326)) )
))
(declare-fun lt!1253845 () tuple2!38080)

(declare-fun lt!1253839 () Rule!11184)

(assert (=> b!3626665 (= e!2244845 (= (rule!8460 (_1!22174 lt!1253845)) lt!1253839))))

(declare-fun e!2244825 () Bool)

(declare-datatypes ((List!38327 0))(
  ( (Nil!38203) (Cons!38203 (h!43623 Rule!11184) (t!294782 List!38327)) )
))
(declare-fun rules!3307 () List!38327)

(declare-fun tp!1107362 () Bool)

(declare-fun e!2244842 () Bool)

(declare-fun b!3626666 () Bool)

(declare-fun inv!51606 (String!42944) Bool)

(declare-fun inv!51609 (TokenValueInjection!11272) Bool)

(assert (=> b!3626666 (= e!2244825 (and tp!1107362 (inv!51606 (tag!6418 (h!43623 rules!3307))) (inv!51609 (transformation!5692 (h!43623 rules!3307))) e!2244842))))

(declare-fun b!3626667 () Bool)

(declare-fun e!2244831 () Bool)

(declare-fun e!2244835 () Bool)

(assert (=> b!3626667 (= e!2244831 e!2244835)))

(declare-fun res!1468217 () Bool)

(assert (=> b!3626667 (=> (not res!1468217) (not e!2244835))))

(declare-datatypes ((Option!8014 0))(
  ( (None!8013) (Some!8013 (v!37795 tuple2!38080)) )
))
(declare-fun lt!1253840 () Option!8014)

(declare-fun isDefined!6246 (Option!8014) Bool)

(assert (=> b!3626667 (= res!1468217 (isDefined!6246 lt!1253840))))

(declare-datatypes ((LexerInterface!5281 0))(
  ( (LexerInterfaceExt!5278 (__x!24062 Int)) (Lexer!5279) )
))
(declare-fun thiss!23823 () LexerInterface!5281)

(declare-fun lt!1253854 () List!38326)

(declare-fun maxPrefix!2815 (LexerInterface!5281 List!38327 List!38326) Option!8014)

(assert (=> b!3626667 (= lt!1253840 (maxPrefix!2815 thiss!23823 rules!3307 lt!1253854))))

(declare-fun token!511 () Token!10750)

(declare-fun list!14112 (BalanceConc!22920) List!38326)

(declare-fun charsOf!3706 (Token!10750) BalanceConc!22920)

(assert (=> b!3626667 (= lt!1253854 (list!14112 (charsOf!3706 token!511)))))

(declare-fun b!3626668 () Bool)

(declare-fun res!1468218 () Bool)

(assert (=> b!3626668 (=> (not res!1468218) (not e!2244831))))

(declare-fun rule!403 () Rule!11184)

(declare-fun contains!7449 (List!38327 Rule!11184) Bool)

(assert (=> b!3626668 (= res!1468218 (contains!7449 rules!3307 rule!403))))

(declare-fun e!2244837 () Bool)

(assert (=> b!3626669 (= e!2244837 (and tp!1107370 tp!1107361))))

(declare-fun b!3626670 () Bool)

(declare-datatypes ((Unit!54962 0))(
  ( (Unit!54963) )
))
(declare-fun e!2244849 () Unit!54962)

(declare-fun Unit!54964 () Unit!54962)

(assert (=> b!3626670 (= e!2244849 Unit!54964)))

(declare-fun lt!1253851 () C!21088)

(declare-fun lt!1253842 () Unit!54962)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!664 (Regex!10451 List!38326 C!21088) Unit!54962)

(assert (=> b!3626670 (= lt!1253842 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!664 (regex!5692 rule!403) lt!1253854 lt!1253851))))

(assert (=> b!3626670 false))

(declare-fun b!3626671 () Bool)

(declare-fun e!2244850 () Bool)

(assert (=> b!3626671 (= e!2244835 e!2244850)))

(declare-fun res!1468220 () Bool)

(assert (=> b!3626671 (=> (not res!1468220) (not e!2244850))))

(declare-fun lt!1253841 () tuple2!38080)

(assert (=> b!3626671 (= res!1468220 (= (_1!22174 lt!1253841) token!511))))

(declare-fun get!12470 (Option!8014) tuple2!38080)

(assert (=> b!3626671 (= lt!1253841 (get!12470 lt!1253840))))

(declare-fun b!3626672 () Bool)

(declare-fun e!2244830 () Bool)

(declare-fun tp!1107366 () Bool)

(declare-fun e!2244841 () Bool)

(declare-fun inv!21 (TokenValue!5922) Bool)

(assert (=> b!3626672 (= e!2244830 (and (inv!21 (value!182682 token!511)) e!2244841 tp!1107366))))

(declare-fun b!3626673 () Bool)

(declare-fun e!2244836 () Bool)

(declare-fun e!2244833 () Bool)

(assert (=> b!3626673 (= e!2244836 e!2244833)))

(declare-fun res!1468228 () Bool)

(assert (=> b!3626673 (=> res!1468228 e!2244833)))

(declare-fun lt!1253852 () Option!8014)

(declare-fun lt!1253860 () List!38326)

(assert (=> b!3626673 (= res!1468228 (or (not (= lt!1253860 (_2!22174 lt!1253845))) (not (= lt!1253852 (Some!8013 (tuple2!38081 (_1!22174 lt!1253845) lt!1253860))))))))

(assert (=> b!3626673 (= (_2!22174 lt!1253845) lt!1253860)))

(declare-fun lt!1253855 () List!38326)

(declare-fun lt!1253857 () Unit!54962)

(declare-fun lt!1253865 () List!38326)

(declare-fun lemmaSamePrefixThenSameSuffix!1402 (List!38326 List!38326 List!38326 List!38326 List!38326) Unit!54962)

(assert (=> b!3626673 (= lt!1253857 (lemmaSamePrefixThenSameSuffix!1402 lt!1253865 (_2!22174 lt!1253845) lt!1253865 lt!1253860 lt!1253855))))

(declare-fun getSuffix!1622 (List!38326 List!38326) List!38326)

(assert (=> b!3626673 (= lt!1253860 (getSuffix!1622 lt!1253855 lt!1253865))))

(declare-fun lt!1253859 () Int)

(declare-fun lt!1253847 () TokenValue!5922)

(assert (=> b!3626673 (= lt!1253852 (Some!8013 (tuple2!38081 (Token!10751 lt!1253847 (rule!8460 (_1!22174 lt!1253845)) lt!1253859 lt!1253865) (_2!22174 lt!1253845))))))

(declare-fun maxPrefixOneRule!1955 (LexerInterface!5281 Rule!11184 List!38326) Option!8014)

(assert (=> b!3626673 (= lt!1253852 (maxPrefixOneRule!1955 thiss!23823 (rule!8460 (_1!22174 lt!1253845)) lt!1253855))))

(declare-fun size!29144 (List!38326) Int)

(assert (=> b!3626673 (= lt!1253859 (size!29144 lt!1253865))))

(declare-fun apply!9194 (TokenValueInjection!11272 BalanceConc!22920) TokenValue!5922)

(declare-fun seqFromList!4241 (List!38326) BalanceConc!22920)

(assert (=> b!3626673 (= lt!1253847 (apply!9194 (transformation!5692 (rule!8460 (_1!22174 lt!1253845))) (seqFromList!4241 lt!1253865)))))

(declare-fun lt!1253849 () Unit!54962)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1023 (LexerInterface!5281 List!38327 List!38326 List!38326 List!38326 Rule!11184) Unit!54962)

(assert (=> b!3626673 (= lt!1253849 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1023 thiss!23823 rules!3307 lt!1253865 lt!1253855 (_2!22174 lt!1253845) (rule!8460 (_1!22174 lt!1253845))))))

(declare-fun b!3626674 () Bool)

(declare-fun res!1468231 () Bool)

(assert (=> b!3626674 (=> (not res!1468231) (not e!2244831))))

(declare-fun rulesInvariant!4678 (LexerInterface!5281 List!38327) Bool)

(assert (=> b!3626674 (= res!1468231 (rulesInvariant!4678 thiss!23823 rules!3307))))

(declare-fun res!1468213 () Bool)

(assert (=> start!338014 (=> (not res!1468213) (not e!2244831))))

(get-info :version)

(assert (=> start!338014 (= res!1468213 ((_ is Lexer!5279) thiss!23823))))

(assert (=> start!338014 e!2244831))

(declare-fun e!2244834 () Bool)

(assert (=> start!338014 e!2244834))

(declare-fun e!2244840 () Bool)

(assert (=> start!338014 e!2244840))

(assert (=> start!338014 true))

(declare-fun inv!51610 (Token!10750) Bool)

(assert (=> start!338014 (and (inv!51610 token!511) e!2244830)))

(declare-fun e!2244832 () Bool)

(assert (=> start!338014 e!2244832))

(declare-fun e!2244838 () Bool)

(assert (=> start!338014 e!2244838))

(declare-fun b!3626675 () Bool)

(declare-fun tp!1107373 () Bool)

(declare-fun e!2244843 () Bool)

(assert (=> b!3626675 (= e!2244841 (and tp!1107373 (inv!51606 (tag!6418 (rule!8460 token!511))) (inv!51609 (transformation!5692 (rule!8460 token!511))) e!2244843))))

(declare-fun b!3626676 () Bool)

(declare-fun e!2244839 () Bool)

(assert (=> b!3626676 (= e!2244833 e!2244839)))

(declare-fun res!1468222 () Bool)

(assert (=> b!3626676 (=> res!1468222 e!2244839)))

(assert (=> b!3626676 (= res!1468222 (or (not (isSeparator!5692 rule!403)) (isSeparator!5692 (rule!8460 (_1!22174 lt!1253845)))))))

(declare-fun lt!1253863 () Unit!54962)

(assert (=> b!3626676 (= lt!1253863 e!2244849)))

(declare-fun c!627497 () Bool)

(declare-fun lt!1253848 () Bool)

(assert (=> b!3626676 (= c!627497 (not lt!1253848))))

(declare-fun lt!1253846 () List!38326)

(declare-fun contains!7450 (List!38326 C!21088) Bool)

(assert (=> b!3626676 (= lt!1253848 (contains!7450 lt!1253846 lt!1253851))))

(declare-fun head!7670 (List!38326) C!21088)

(assert (=> b!3626676 (= lt!1253851 (head!7670 lt!1253865))))

(declare-fun b!3626677 () Bool)

(declare-fun res!1468233 () Bool)

(assert (=> b!3626677 (=> (not res!1468233) (not e!2244831))))

(declare-fun anOtherTypeRule!33 () Rule!11184)

(assert (=> b!3626677 (= res!1468233 (not (= (isSeparator!5692 anOtherTypeRule!33) (isSeparator!5692 rule!403))))))

(declare-fun b!3626678 () Bool)

(declare-fun e!2244829 () Bool)

(assert (=> b!3626678 (= e!2244829 e!2244845)))

(declare-fun res!1468226 () Bool)

(assert (=> b!3626678 (=> (not res!1468226) (not e!2244845))))

(declare-fun matchR!5020 (Regex!10451 List!38326) Bool)

(assert (=> b!3626678 (= res!1468226 (matchR!5020 (regex!5692 lt!1253839) (list!14112 (charsOf!3706 (_1!22174 lt!1253845)))))))

(declare-datatypes ((Option!8015 0))(
  ( (None!8014) (Some!8014 (v!37796 Rule!11184)) )
))
(declare-fun lt!1253861 () Option!8015)

(declare-fun get!12471 (Option!8015) Rule!11184)

(assert (=> b!3626678 (= lt!1253839 (get!12471 lt!1253861))))

(declare-fun b!3626679 () Bool)

(declare-fun Unit!54965 () Unit!54962)

(assert (=> b!3626679 (= e!2244849 Unit!54965)))

(declare-fun b!3626680 () Bool)

(declare-fun res!1468234 () Bool)

(declare-fun e!2244851 () Bool)

(assert (=> b!3626680 (=> res!1468234 e!2244851)))

(declare-fun suffix!1395 () List!38326)

(declare-fun isEmpty!22588 (List!38326) Bool)

(assert (=> b!3626680 (= res!1468234 (isEmpty!22588 suffix!1395))))

(declare-fun b!3626681 () Bool)

(assert (=> b!3626681 (= e!2244850 (not e!2244851))))

(declare-fun res!1468225 () Bool)

(assert (=> b!3626681 (=> res!1468225 e!2244851)))

(assert (=> b!3626681 (= res!1468225 (not (matchR!5020 (regex!5692 rule!403) lt!1253854)))))

(declare-fun ruleValid!1957 (LexerInterface!5281 Rule!11184) Bool)

(assert (=> b!3626681 (ruleValid!1957 thiss!23823 rule!403)))

(declare-fun lt!1253850 () Unit!54962)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1112 (LexerInterface!5281 Rule!11184 List!38327) Unit!54962)

(assert (=> b!3626681 (= lt!1253850 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1112 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3626682 () Bool)

(declare-fun tp!1107372 () Bool)

(assert (=> b!3626682 (= e!2244834 (and e!2244825 tp!1107372))))

(declare-fun b!3626683 () Bool)

(declare-fun res!1468227 () Bool)

(assert (=> b!3626683 (=> res!1468227 e!2244839)))

(assert (=> b!3626683 (= res!1468227 (not (contains!7450 lt!1253854 lt!1253851)))))

(declare-fun b!3626684 () Bool)

(declare-fun tp!1107374 () Bool)

(assert (=> b!3626684 (= e!2244838 (and tp!1107374 (inv!51606 (tag!6418 anOtherTypeRule!33)) (inv!51609 (transformation!5692 anOtherTypeRule!33)) e!2244837))))

(declare-fun b!3626685 () Bool)

(declare-fun res!1468216 () Bool)

(declare-fun e!2244827 () Bool)

(assert (=> b!3626685 (=> res!1468216 e!2244827)))

(assert (=> b!3626685 (= res!1468216 (not (matchR!5020 (regex!5692 (rule!8460 (_1!22174 lt!1253845))) lt!1253865)))))

(declare-fun b!3626686 () Bool)

(declare-fun res!1468223 () Bool)

(assert (=> b!3626686 (=> (not res!1468223) (not e!2244850))))

(assert (=> b!3626686 (= res!1468223 (isEmpty!22588 (_2!22174 lt!1253841)))))

(declare-fun e!2244848 () Bool)

(assert (=> b!3626687 (= e!2244848 (and tp!1107360 tp!1107363))))

(declare-fun b!3626688 () Bool)

(declare-fun e!2244828 () Bool)

(assert (=> b!3626688 (= e!2244851 e!2244828)))

(declare-fun res!1468224 () Bool)

(assert (=> b!3626688 (=> res!1468224 e!2244828)))

(declare-fun lt!1253868 () C!21088)

(assert (=> b!3626688 (= res!1468224 (contains!7450 lt!1253846 lt!1253868))))

(assert (=> b!3626688 (= lt!1253868 (head!7670 suffix!1395))))

(declare-fun usedCharacters!906 (Regex!10451) List!38326)

(assert (=> b!3626688 (= lt!1253846 (usedCharacters!906 (regex!5692 rule!403)))))

(declare-fun b!3626689 () Bool)

(declare-fun tp!1107365 () Bool)

(assert (=> b!3626689 (= e!2244832 (and tp!1107365 (inv!51606 (tag!6418 rule!403)) (inv!51609 (transformation!5692 rule!403)) e!2244848))))

(declare-fun b!3626690 () Bool)

(declare-fun tp_is_empty!17985 () Bool)

(declare-fun tp!1107368 () Bool)

(assert (=> b!3626690 (= e!2244840 (and tp_is_empty!17985 tp!1107368))))

(declare-fun b!3626691 () Bool)

(declare-fun res!1468219 () Bool)

(assert (=> b!3626691 (=> (not res!1468219) (not e!2244831))))

(declare-fun isEmpty!22589 (List!38327) Bool)

(assert (=> b!3626691 (= res!1468219 (not (isEmpty!22589 rules!3307)))))

(declare-fun b!3626692 () Bool)

(declare-fun res!1468232 () Bool)

(assert (=> b!3626692 (=> res!1468232 e!2244828)))

(declare-fun sepAndNonSepRulesDisjointChars!1862 (List!38327 List!38327) Bool)

(assert (=> b!3626692 (= res!1468232 (not (sepAndNonSepRulesDisjointChars!1862 rules!3307 rules!3307)))))

(assert (=> b!3626693 (= e!2244842 (and tp!1107367 tp!1107371))))

(declare-fun b!3626694 () Bool)

(assert (=> b!3626694 (= e!2244827 e!2244836)))

(declare-fun res!1468221 () Bool)

(assert (=> b!3626694 (=> res!1468221 e!2244836)))

(declare-fun lt!1253843 () Option!8014)

(declare-fun lt!1253844 () BalanceConc!22920)

(declare-fun size!29145 (BalanceConc!22920) Int)

(assert (=> b!3626694 (= res!1468221 (not (= lt!1253843 (Some!8013 (tuple2!38081 (Token!10751 (apply!9194 (transformation!5692 (rule!8460 (_1!22174 lt!1253845))) lt!1253844) (rule!8460 (_1!22174 lt!1253845)) (size!29145 lt!1253844) lt!1253865) (_2!22174 lt!1253845))))))))

(declare-fun lt!1253856 () Unit!54962)

(declare-fun lemmaCharactersSize!739 (Token!10750) Unit!54962)

(assert (=> b!3626694 (= lt!1253856 (lemmaCharactersSize!739 (_1!22174 lt!1253845)))))

(declare-fun lt!1253866 () Unit!54962)

(declare-fun lemmaEqSameImage!877 (TokenValueInjection!11272 BalanceConc!22920 BalanceConc!22920) Unit!54962)

(assert (=> b!3626694 (= lt!1253866 (lemmaEqSameImage!877 (transformation!5692 (rule!8460 (_1!22174 lt!1253845))) lt!1253844 (seqFromList!4241 (originalCharacters!6406 (_1!22174 lt!1253845)))))))

(declare-fun lt!1253864 () Unit!54962)

(declare-fun lemmaSemiInverse!1443 (TokenValueInjection!11272 BalanceConc!22920) Unit!54962)

(assert (=> b!3626694 (= lt!1253864 (lemmaSemiInverse!1443 (transformation!5692 (rule!8460 (_1!22174 lt!1253845))) lt!1253844))))

(declare-fun b!3626695 () Bool)

(assert (=> b!3626695 (= e!2244828 e!2244827)))

(declare-fun res!1468215 () Bool)

(assert (=> b!3626695 (=> res!1468215 e!2244827)))

(declare-fun isPrefix!3055 (List!38326 List!38326) Bool)

(assert (=> b!3626695 (= res!1468215 (not (isPrefix!3055 lt!1253865 lt!1253855)))))

(declare-fun ++!9508 (List!38326 List!38326) List!38326)

(assert (=> b!3626695 (isPrefix!3055 lt!1253865 (++!9508 lt!1253865 (_2!22174 lt!1253845)))))

(declare-fun lt!1253867 () Unit!54962)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1976 (List!38326 List!38326) Unit!54962)

(assert (=> b!3626695 (= lt!1253867 (lemmaConcatTwoListThenFirstIsPrefix!1976 lt!1253865 (_2!22174 lt!1253845)))))

(assert (=> b!3626695 (= lt!1253865 (list!14112 lt!1253844))))

(assert (=> b!3626695 (= lt!1253844 (charsOf!3706 (_1!22174 lt!1253845)))))

(assert (=> b!3626695 e!2244829))

(declare-fun res!1468212 () Bool)

(assert (=> b!3626695 (=> (not res!1468212) (not e!2244829))))

(declare-fun isDefined!6247 (Option!8015) Bool)

(assert (=> b!3626695 (= res!1468212 (isDefined!6247 lt!1253861))))

(declare-fun getRuleFromTag!1298 (LexerInterface!5281 List!38327 String!42944) Option!8015)

(assert (=> b!3626695 (= lt!1253861 (getRuleFromTag!1298 thiss!23823 rules!3307 (tag!6418 (rule!8460 (_1!22174 lt!1253845)))))))

(declare-fun lt!1253853 () Unit!54962)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1298 (LexerInterface!5281 List!38327 List!38326 Token!10750) Unit!54962)

(assert (=> b!3626695 (= lt!1253853 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1298 thiss!23823 rules!3307 lt!1253855 (_1!22174 lt!1253845)))))

(assert (=> b!3626695 (= lt!1253845 (get!12470 lt!1253843))))

(declare-fun lt!1253858 () Unit!54962)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!961 (LexerInterface!5281 List!38327 List!38326 List!38326) Unit!54962)

(assert (=> b!3626695 (= lt!1253858 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!961 thiss!23823 rules!3307 lt!1253854 suffix!1395))))

(assert (=> b!3626695 (= lt!1253843 (maxPrefix!2815 thiss!23823 rules!3307 lt!1253855))))

(assert (=> b!3626695 (isPrefix!3055 lt!1253854 lt!1253855)))

(declare-fun lt!1253862 () Unit!54962)

(assert (=> b!3626695 (= lt!1253862 (lemmaConcatTwoListThenFirstIsPrefix!1976 lt!1253854 suffix!1395))))

(assert (=> b!3626695 (= lt!1253855 (++!9508 lt!1253854 suffix!1395))))

(assert (=> b!3626696 (= e!2244843 (and tp!1107364 tp!1107369))))

(declare-fun b!3626697 () Bool)

(declare-fun res!1468230 () Bool)

(assert (=> b!3626697 (=> (not res!1468230) (not e!2244831))))

(assert (=> b!3626697 (= res!1468230 (contains!7449 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3626698 () Bool)

(declare-fun res!1468214 () Bool)

(assert (=> b!3626698 (=> (not res!1468214) (not e!2244850))))

(assert (=> b!3626698 (= res!1468214 (= (rule!8460 token!511) rule!403))))

(declare-fun b!3626699 () Bool)

(declare-fun res!1468229 () Bool)

(assert (=> b!3626699 (=> res!1468229 e!2244828)))

(assert (=> b!3626699 (= res!1468229 (not (contains!7450 (usedCharacters!906 (regex!5692 anOtherTypeRule!33)) lt!1253868)))))

(declare-fun b!3626700 () Bool)

(assert (=> b!3626700 (= e!2244839 lt!1253848)))

(assert (= (and start!338014 res!1468213) b!3626691))

(assert (= (and b!3626691 res!1468219) b!3626674))

(assert (= (and b!3626674 res!1468231) b!3626668))

(assert (= (and b!3626668 res!1468218) b!3626697))

(assert (= (and b!3626697 res!1468230) b!3626677))

(assert (= (and b!3626677 res!1468233) b!3626667))

(assert (= (and b!3626667 res!1468217) b!3626671))

(assert (= (and b!3626671 res!1468220) b!3626686))

(assert (= (and b!3626686 res!1468223) b!3626698))

(assert (= (and b!3626698 res!1468214) b!3626681))

(assert (= (and b!3626681 (not res!1468225)) b!3626680))

(assert (= (and b!3626680 (not res!1468234)) b!3626688))

(assert (= (and b!3626688 (not res!1468224)) b!3626699))

(assert (= (and b!3626699 (not res!1468229)) b!3626692))

(assert (= (and b!3626692 (not res!1468232)) b!3626695))

(assert (= (and b!3626695 res!1468212) b!3626678))

(assert (= (and b!3626678 res!1468226) b!3626665))

(assert (= (and b!3626695 (not res!1468215)) b!3626685))

(assert (= (and b!3626685 (not res!1468216)) b!3626694))

(assert (= (and b!3626694 (not res!1468221)) b!3626673))

(assert (= (and b!3626673 (not res!1468228)) b!3626676))

(assert (= (and b!3626676 c!627497) b!3626670))

(assert (= (and b!3626676 (not c!627497)) b!3626679))

(assert (= (and b!3626676 (not res!1468222)) b!3626683))

(assert (= (and b!3626683 (not res!1468227)) b!3626700))

(assert (= b!3626666 b!3626693))

(assert (= b!3626682 b!3626666))

(assert (= (and start!338014 ((_ is Cons!38203) rules!3307)) b!3626682))

(assert (= (and start!338014 ((_ is Cons!38202) suffix!1395)) b!3626690))

(assert (= b!3626675 b!3626696))

(assert (= b!3626672 b!3626675))

(assert (= start!338014 b!3626672))

(assert (= b!3626689 b!3626687))

(assert (= start!338014 b!3626689))

(assert (= b!3626684 b!3626669))

(assert (= start!338014 b!3626684))

(declare-fun m!4127393 () Bool)

(assert (=> b!3626695 m!4127393))

(declare-fun m!4127395 () Bool)

(assert (=> b!3626695 m!4127395))

(declare-fun m!4127397 () Bool)

(assert (=> b!3626695 m!4127397))

(declare-fun m!4127399 () Bool)

(assert (=> b!3626695 m!4127399))

(declare-fun m!4127401 () Bool)

(assert (=> b!3626695 m!4127401))

(declare-fun m!4127403 () Bool)

(assert (=> b!3626695 m!4127403))

(declare-fun m!4127405 () Bool)

(assert (=> b!3626695 m!4127405))

(declare-fun m!4127407 () Bool)

(assert (=> b!3626695 m!4127407))

(declare-fun m!4127409 () Bool)

(assert (=> b!3626695 m!4127409))

(declare-fun m!4127411 () Bool)

(assert (=> b!3626695 m!4127411))

(declare-fun m!4127413 () Bool)

(assert (=> b!3626695 m!4127413))

(declare-fun m!4127415 () Bool)

(assert (=> b!3626695 m!4127415))

(declare-fun m!4127417 () Bool)

(assert (=> b!3626695 m!4127417))

(assert (=> b!3626695 m!4127393))

(declare-fun m!4127419 () Bool)

(assert (=> b!3626695 m!4127419))

(declare-fun m!4127421 () Bool)

(assert (=> b!3626695 m!4127421))

(declare-fun m!4127423 () Bool)

(assert (=> b!3626670 m!4127423))

(declare-fun m!4127425 () Bool)

(assert (=> b!3626674 m!4127425))

(declare-fun m!4127427 () Bool)

(assert (=> b!3626694 m!4127427))

(declare-fun m!4127429 () Bool)

(assert (=> b!3626694 m!4127429))

(declare-fun m!4127431 () Bool)

(assert (=> b!3626694 m!4127431))

(declare-fun m!4127433 () Bool)

(assert (=> b!3626694 m!4127433))

(declare-fun m!4127435 () Bool)

(assert (=> b!3626694 m!4127435))

(assert (=> b!3626694 m!4127427))

(declare-fun m!4127437 () Bool)

(assert (=> b!3626694 m!4127437))

(declare-fun m!4127439 () Bool)

(assert (=> b!3626671 m!4127439))

(declare-fun m!4127441 () Bool)

(assert (=> b!3626684 m!4127441))

(declare-fun m!4127443 () Bool)

(assert (=> b!3626684 m!4127443))

(declare-fun m!4127445 () Bool)

(assert (=> b!3626697 m!4127445))

(declare-fun m!4127447 () Bool)

(assert (=> b!3626689 m!4127447))

(declare-fun m!4127449 () Bool)

(assert (=> b!3626689 m!4127449))

(declare-fun m!4127451 () Bool)

(assert (=> b!3626676 m!4127451))

(declare-fun m!4127453 () Bool)

(assert (=> b!3626676 m!4127453))

(declare-fun m!4127455 () Bool)

(assert (=> b!3626666 m!4127455))

(declare-fun m!4127457 () Bool)

(assert (=> b!3626666 m!4127457))

(declare-fun m!4127459 () Bool)

(assert (=> b!3626692 m!4127459))

(declare-fun m!4127461 () Bool)

(assert (=> b!3626680 m!4127461))

(declare-fun m!4127463 () Bool)

(assert (=> b!3626675 m!4127463))

(declare-fun m!4127465 () Bool)

(assert (=> b!3626675 m!4127465))

(declare-fun m!4127467 () Bool)

(assert (=> b!3626673 m!4127467))

(declare-fun m!4127469 () Bool)

(assert (=> b!3626673 m!4127469))

(declare-fun m!4127471 () Bool)

(assert (=> b!3626673 m!4127471))

(assert (=> b!3626673 m!4127467))

(declare-fun m!4127473 () Bool)

(assert (=> b!3626673 m!4127473))

(declare-fun m!4127475 () Bool)

(assert (=> b!3626673 m!4127475))

(declare-fun m!4127477 () Bool)

(assert (=> b!3626673 m!4127477))

(declare-fun m!4127479 () Bool)

(assert (=> b!3626673 m!4127479))

(declare-fun m!4127481 () Bool)

(assert (=> b!3626668 m!4127481))

(declare-fun m!4127483 () Bool)

(assert (=> b!3626683 m!4127483))

(declare-fun m!4127485 () Bool)

(assert (=> b!3626672 m!4127485))

(declare-fun m!4127487 () Bool)

(assert (=> b!3626685 m!4127487))

(declare-fun m!4127489 () Bool)

(assert (=> b!3626688 m!4127489))

(declare-fun m!4127491 () Bool)

(assert (=> b!3626688 m!4127491))

(declare-fun m!4127493 () Bool)

(assert (=> b!3626688 m!4127493))

(declare-fun m!4127495 () Bool)

(assert (=> b!3626686 m!4127495))

(declare-fun m!4127497 () Bool)

(assert (=> start!338014 m!4127497))

(assert (=> b!3626678 m!4127397))

(assert (=> b!3626678 m!4127397))

(declare-fun m!4127499 () Bool)

(assert (=> b!3626678 m!4127499))

(assert (=> b!3626678 m!4127499))

(declare-fun m!4127501 () Bool)

(assert (=> b!3626678 m!4127501))

(declare-fun m!4127503 () Bool)

(assert (=> b!3626678 m!4127503))

(declare-fun m!4127505 () Bool)

(assert (=> b!3626699 m!4127505))

(assert (=> b!3626699 m!4127505))

(declare-fun m!4127507 () Bool)

(assert (=> b!3626699 m!4127507))

(declare-fun m!4127509 () Bool)

(assert (=> b!3626667 m!4127509))

(declare-fun m!4127511 () Bool)

(assert (=> b!3626667 m!4127511))

(declare-fun m!4127513 () Bool)

(assert (=> b!3626667 m!4127513))

(assert (=> b!3626667 m!4127513))

(declare-fun m!4127515 () Bool)

(assert (=> b!3626667 m!4127515))

(declare-fun m!4127517 () Bool)

(assert (=> b!3626691 m!4127517))

(declare-fun m!4127519 () Bool)

(assert (=> b!3626681 m!4127519))

(declare-fun m!4127521 () Bool)

(assert (=> b!3626681 m!4127521))

(declare-fun m!4127523 () Bool)

(assert (=> b!3626681 m!4127523))

(check-sat (not b!3626670) b_and!265733 (not b!3626666) (not b!3626697) (not b!3626678) (not b_next!95403) b_and!265731 (not b!3626699) (not start!338014) (not b_next!95407) (not b!3626695) b_and!265727 (not b!3626692) b_and!265721 (not b!3626688) b_and!265725 (not b!3626681) (not b_next!95399) (not b!3626676) (not b_next!95393) (not b!3626673) (not b_next!95405) (not b!3626668) (not b!3626672) (not b!3626667) (not b!3626680) (not b!3626694) (not b!3626675) b_and!265729 b_and!265723 (not b!3626690) (not b_next!95397) tp_is_empty!17985 (not b_next!95395) (not b!3626683) (not b!3626691) (not b!3626686) (not b!3626684) (not b!3626671) (not b!3626682) (not b!3626689) (not b_next!95401) (not b!3626685) b_and!265719 (not b!3626674))
(check-sat b_and!265733 (not b_next!95403) b_and!265731 (not b_next!95405) (not b_next!95407) (not b_next!95401) b_and!265719 b_and!265727 b_and!265721 b_and!265725 (not b_next!95393) (not b_next!95399) b_and!265729 b_and!265723 (not b_next!95397) (not b_next!95395))
