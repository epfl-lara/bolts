; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!262816 () Bool)

(assert start!262816)

(declare-fun b!2707107 () Bool)

(declare-fun b_free!76433 () Bool)

(declare-fun b_next!77137 () Bool)

(assert (=> b!2707107 (= b_free!76433 (not b_next!77137))))

(declare-fun tp!856236 () Bool)

(declare-fun b_and!199865 () Bool)

(assert (=> b!2707107 (= tp!856236 b_and!199865)))

(declare-fun b_free!76435 () Bool)

(declare-fun b_next!77139 () Bool)

(assert (=> b!2707107 (= b_free!76435 (not b_next!77139))))

(declare-fun tp!856237 () Bool)

(declare-fun b_and!199867 () Bool)

(assert (=> b!2707107 (= tp!856237 b_and!199867)))

(declare-fun b!2707093 () Bool)

(declare-fun e!1706868 () Bool)

(declare-fun e!1706855 () Bool)

(assert (=> b!2707093 (= e!1706868 (not e!1706855))))

(declare-fun res!1136862 () Bool)

(assert (=> b!2707093 (=> res!1136862 e!1706855)))

(declare-datatypes ((List!31373 0))(
  ( (Nil!31273) (Cons!31273 (h!36693 (_ BitVec 16)) (t!225821 List!31373)) )
))
(declare-datatypes ((TokenValue!5001 0))(
  ( (FloatLiteralValue!10002 (text!35452 List!31373)) (TokenValueExt!5000 (__x!20137 Int)) (Broken!25005 (value!153788 List!31373)) (Object!5100) (End!5001) (Def!5001) (Underscore!5001) (Match!5001) (Else!5001) (Error!5001) (Case!5001) (If!5001) (Extends!5001) (Abstract!5001) (Class!5001) (Val!5001) (DelimiterValue!10002 (del!5061 List!31373)) (KeywordValue!5007 (value!153789 List!31373)) (CommentValue!10002 (value!153790 List!31373)) (WhitespaceValue!10002 (value!153791 List!31373)) (IndentationValue!5001 (value!153792 List!31373)) (String!34904) (Int32!5001) (Broken!25006 (value!153793 List!31373)) (Boolean!5002) (Unit!45312) (OperatorValue!5004 (op!5061 List!31373)) (IdentifierValue!10002 (value!153794 List!31373)) (IdentifierValue!10003 (value!153795 List!31373)) (WhitespaceValue!10003 (value!153796 List!31373)) (True!10002) (False!10002) (Broken!25007 (value!153797 List!31373)) (Broken!25008 (value!153798 List!31373)) (True!10003) (RightBrace!5001) (RightBracket!5001) (Colon!5001) (Null!5001) (Comma!5001) (LeftBracket!5001) (False!10003) (LeftBrace!5001) (ImaginaryLiteralValue!5001 (text!35453 List!31373)) (StringLiteralValue!15003 (value!153799 List!31373)) (EOFValue!5001 (value!153800 List!31373)) (IdentValue!5001 (value!153801 List!31373)) (DelimiterValue!10003 (value!153802 List!31373)) (DedentValue!5001 (value!153803 List!31373)) (NewLineValue!5001 (value!153804 List!31373)) (IntegerValue!15003 (value!153805 (_ BitVec 32)) (text!35454 List!31373)) (IntegerValue!15004 (value!153806 Int) (text!35455 List!31373)) (Times!5001) (Or!5001) (Equal!5001) (Minus!5001) (Broken!25009 (value!153807 List!31373)) (And!5001) (Div!5001) (LessEqual!5001) (Mod!5001) (Concat!12932) (Not!5001) (Plus!5001) (SpaceValue!5001 (value!153808 List!31373)) (IntegerValue!15005 (value!153809 Int) (text!35456 List!31373)) (StringLiteralValue!15004 (text!35457 List!31373)) (FloatLiteralValue!10003 (text!35458 List!31373)) (BytesLiteralValue!5001 (value!153810 List!31373)) (CommentValue!10003 (value!153811 List!31373)) (StringLiteralValue!15005 (value!153812 List!31373)) (ErrorTokenValue!5001 (msg!5062 List!31373)) )
))
(declare-datatypes ((C!16020 0))(
  ( (C!16021 (val!9944 Int)) )
))
(declare-datatypes ((Regex!7931 0))(
  ( (ElementMatch!7931 (c!436778 C!16020)) (Concat!12933 (regOne!16374 Regex!7931) (regTwo!16374 Regex!7931)) (EmptyExpr!7931) (Star!7931 (reg!8260 Regex!7931)) (EmptyLang!7931) (Union!7931 (regOne!16375 Regex!7931) (regTwo!16375 Regex!7931)) )
))
(declare-datatypes ((String!34905 0))(
  ( (String!34906 (value!153813 String)) )
))
(declare-datatypes ((List!31374 0))(
  ( (Nil!31274) (Cons!31274 (h!36694 C!16020) (t!225822 List!31374)) )
))
(declare-datatypes ((IArray!19575 0))(
  ( (IArray!19576 (innerList!9845 List!31374)) )
))
(declare-datatypes ((Conc!9785 0))(
  ( (Node!9785 (left!24052 Conc!9785) (right!24382 Conc!9785) (csize!19800 Int) (cheight!9996 Int)) (Leaf!14919 (xs!12837 IArray!19575) (csize!19801 Int)) (Empty!9785) )
))
(declare-datatypes ((BalanceConc!19184 0))(
  ( (BalanceConc!19185 (c!436779 Conc!9785)) )
))
(declare-datatypes ((TokenValueInjection!9442 0))(
  ( (TokenValueInjection!9443 (toValue!6745 Int) (toChars!6604 Int)) )
))
(declare-datatypes ((Rule!9358 0))(
  ( (Rule!9359 (regex!4779 Regex!7931) (tag!5283 String!34905) (isSeparator!4779 Bool) (transformation!4779 TokenValueInjection!9442)) )
))
(declare-datatypes ((Token!9020 0))(
  ( (Token!9021 (value!153814 TokenValue!5001) (rule!7199 Rule!9358) (size!24125 Int) (originalCharacters!5541 List!31374)) )
))
(declare-datatypes ((List!31375 0))(
  ( (Nil!31275) (Cons!31275 (h!36695 Token!9020) (t!225823 List!31375)) )
))
(declare-fun lt!957191 () List!31375)

(declare-fun isEmpty!17810 (List!31375) Bool)

(assert (=> b!2707093 (= res!1136862 (isEmpty!17810 lt!957191))))

(declare-fun lt!957183 () List!31374)

(declare-datatypes ((IArray!19577 0))(
  ( (IArray!19578 (innerList!9846 List!31375)) )
))
(declare-datatypes ((Conc!9786 0))(
  ( (Node!9786 (left!24053 Conc!9786) (right!24383 Conc!9786) (csize!19802 Int) (cheight!9997 Int)) (Leaf!14920 (xs!12838 IArray!19577) (csize!19803 Int)) (Empty!9786) )
))
(declare-datatypes ((BalanceConc!19186 0))(
  ( (BalanceConc!19187 (c!436780 Conc!9786)) )
))
(declare-datatypes ((tuple2!30898 0))(
  ( (tuple2!30899 (_1!18081 BalanceConc!19186) (_2!18081 BalanceConc!19184)) )
))
(declare-fun lt!957176 () tuple2!30898)

(declare-fun list!11816 (BalanceConc!19184) List!31374)

(assert (=> b!2707093 (= lt!957183 (list!11816 (_2!18081 lt!957176)))))

(declare-fun acc!331 () BalanceConc!19186)

(declare-datatypes ((tuple2!30900 0))(
  ( (tuple2!30901 (_1!18082 Token!9020) (_2!18082 BalanceConc!19184)) )
))
(declare-datatypes ((Option!6165 0))(
  ( (None!6164) (Some!6164 (v!32976 tuple2!30900)) )
))
(declare-fun lt!957178 () Option!6165)

(declare-fun list!11817 (BalanceConc!19186) List!31375)

(declare-fun append!788 (BalanceConc!19186 Token!9020) BalanceConc!19186)

(assert (=> b!2707093 (= lt!957191 (list!11817 (append!788 acc!331 (_1!18082 (v!32976 lt!957178)))))))

(declare-fun lt!957187 () List!31375)

(declare-fun lt!957190 () List!31375)

(declare-fun lt!957186 () List!31375)

(declare-fun ++!7711 (List!31375 List!31375) List!31375)

(assert (=> b!2707093 (= (++!7711 (++!7711 lt!957187 lt!957190) lt!957186) (++!7711 lt!957187 (++!7711 lt!957190 lt!957186)))))

(declare-datatypes ((Unit!45313 0))(
  ( (Unit!45314) )
))
(declare-fun lt!957184 () Unit!45313)

(declare-fun lemmaConcatAssociativity!1575 (List!31375 List!31375 List!31375) Unit!45313)

(assert (=> b!2707093 (= lt!957184 (lemmaConcatAssociativity!1575 lt!957187 lt!957190 lt!957186))))

(assert (=> b!2707093 (= lt!957186 (list!11817 (_1!18081 lt!957176)))))

(assert (=> b!2707093 (= lt!957190 (Cons!31275 (_1!18082 (v!32976 lt!957178)) Nil!31275))))

(declare-fun e!1706864 () Bool)

(assert (=> b!2707093 e!1706864))

(declare-fun res!1136867 () Bool)

(assert (=> b!2707093 (=> (not res!1136867) (not e!1706864))))

(declare-fun lt!957181 () List!31374)

(declare-fun lt!957189 () List!31374)

(declare-fun lt!957193 () List!31374)

(declare-fun ++!7712 (List!31374 List!31374) List!31374)

(assert (=> b!2707093 (= res!1136867 (= lt!957193 (++!7712 lt!957189 lt!957181)))))

(declare-fun lt!957195 () List!31374)

(declare-fun lt!957192 () List!31374)

(assert (=> b!2707093 (= lt!957193 (++!7712 lt!957195 lt!957192))))

(declare-fun lt!957180 () List!31374)

(assert (=> b!2707093 (= lt!957181 (++!7712 lt!957180 lt!957192))))

(assert (=> b!2707093 (= lt!957195 (++!7712 lt!957189 lt!957180))))

(declare-fun lt!957179 () Unit!45313)

(declare-fun lemmaConcatAssociativity!1576 (List!31374 List!31374 List!31374) Unit!45313)

(assert (=> b!2707093 (= lt!957179 (lemmaConcatAssociativity!1576 lt!957189 lt!957180 lt!957192))))

(assert (=> b!2707093 (= lt!957192 (list!11816 (_2!18082 (v!32976 lt!957178))))))

(declare-fun charsOf!3002 (Token!9020) BalanceConc!19184)

(assert (=> b!2707093 (= lt!957180 (list!11816 (charsOf!3002 (_1!18082 (v!32976 lt!957178)))))))

(declare-datatypes ((LexerInterface!4375 0))(
  ( (LexerInterfaceExt!4372 (__x!20138 Int)) (Lexer!4373) )
))
(declare-fun thiss!11556 () LexerInterface!4375)

(declare-datatypes ((List!31376 0))(
  ( (Nil!31276) (Cons!31276 (h!36696 Rule!9358) (t!225824 List!31376)) )
))
(declare-fun rules!1182 () List!31376)

(declare-fun lexRec!635 (LexerInterface!4375 List!31376 BalanceConc!19184) tuple2!30898)

(assert (=> b!2707093 (= lt!957176 (lexRec!635 thiss!11556 rules!1182 (_2!18082 (v!32976 lt!957178))))))

(declare-fun b!2707094 () Bool)

(declare-fun res!1136861 () Bool)

(assert (=> b!2707094 (=> res!1136861 e!1706855)))

(declare-fun isEmpty!17811 (List!31374) Bool)

(assert (=> b!2707094 (= res!1136861 (isEmpty!17811 lt!957195))))

(declare-fun b!2707095 () Bool)

(declare-fun res!1136863 () Bool)

(declare-fun e!1706860 () Bool)

(assert (=> b!2707095 (=> (not res!1136863) (not e!1706860))))

(declare-fun lt!957188 () tuple2!30898)

(assert (=> b!2707095 (= res!1136863 (isEmpty!17811 (list!11816 (_2!18081 lt!957188))))))

(declare-fun b!2707096 () Bool)

(declare-fun e!1706866 () Bool)

(assert (=> b!2707096 (= e!1706866 e!1706868)))

(declare-fun res!1136869 () Bool)

(assert (=> b!2707096 (=> (not res!1136869) (not e!1706868))))

(get-info :version)

(assert (=> b!2707096 (= res!1136869 ((_ is Some!6164) lt!957178))))

(declare-fun input!603 () BalanceConc!19184)

(declare-fun maxPrefixZipperSequence!1023 (LexerInterface!4375 List!31376 BalanceConc!19184) Option!6165)

(assert (=> b!2707096 (= lt!957178 (maxPrefixZipperSequence!1023 thiss!11556 rules!1182 input!603))))

(declare-fun b!2707097 () Bool)

(declare-fun res!1136872 () Bool)

(assert (=> b!2707097 (=> (not res!1136872) (not e!1706866))))

(declare-fun lt!957194 () tuple2!30898)

(declare-fun lt!957185 () tuple2!30898)

(assert (=> b!2707097 (= res!1136872 (= (list!11816 (_2!18081 lt!957194)) (list!11816 (_2!18081 lt!957185))))))

(declare-fun b!2707098 () Bool)

(assert (=> b!2707098 (= e!1706860 e!1706866)))

(declare-fun res!1136865 () Bool)

(assert (=> b!2707098 (=> (not res!1136865) (not e!1706866))))

(declare-fun ++!7713 (BalanceConc!19186 BalanceConc!19186) BalanceConc!19186)

(assert (=> b!2707098 (= res!1136865 (= (list!11817 (_1!18081 lt!957194)) (list!11817 (++!7713 acc!331 (_1!18081 lt!957185)))))))

(assert (=> b!2707098 (= lt!957185 (lexRec!635 thiss!11556 rules!1182 input!603))))

(declare-fun totalInput!328 () BalanceConc!19184)

(assert (=> b!2707098 (= lt!957194 (lexRec!635 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2707099 () Bool)

(declare-fun e!1706863 () Bool)

(declare-fun treated!9 () BalanceConc!19184)

(declare-fun tp!856238 () Bool)

(declare-fun inv!42404 (Conc!9785) Bool)

(assert (=> b!2707099 (= e!1706863 (and (inv!42404 (c!436779 treated!9)) tp!856238))))

(declare-fun b!2707100 () Bool)

(declare-fun res!1136871 () Bool)

(declare-fun e!1706856 () Bool)

(assert (=> b!2707100 (=> (not res!1136871) (not e!1706856))))

(declare-fun isEmpty!17812 (List!31376) Bool)

(assert (=> b!2707100 (= res!1136871 (not (isEmpty!17812 rules!1182)))))

(declare-fun b!2707101 () Bool)

(declare-fun e!1706862 () Bool)

(declare-fun tp!856235 () Bool)

(declare-fun inv!42405 (Conc!9786) Bool)

(assert (=> b!2707101 (= e!1706862 (and (inv!42405 (c!436780 acc!331)) tp!856235))))

(declare-fun b!2707103 () Bool)

(declare-fun res!1136873 () Bool)

(assert (=> b!2707103 (=> res!1136873 e!1706855)))

(declare-datatypes ((tuple2!30902 0))(
  ( (tuple2!30903 (_1!18083 List!31375) (_2!18083 List!31374)) )
))
(declare-fun lexList!1206 (LexerInterface!4375 List!31376 List!31374) tuple2!30902)

(assert (=> b!2707103 (= res!1136873 (not (= (lexList!1206 thiss!11556 rules!1182 lt!957193) (tuple2!30903 (++!7711 lt!957191 lt!957186) lt!957183))))))

(declare-fun b!2707104 () Bool)

(declare-fun e!1706867 () Bool)

(declare-fun tp!856241 () Bool)

(assert (=> b!2707104 (= e!1706867 (and (inv!42404 (c!436779 input!603)) tp!856241))))

(declare-fun b!2707105 () Bool)

(declare-fun e!1706857 () Bool)

(declare-fun tp!856240 () Bool)

(assert (=> b!2707105 (= e!1706857 (and (inv!42404 (c!436779 totalInput!328)) tp!856240))))

(declare-fun b!2707106 () Bool)

(declare-fun prepend!1099 (BalanceConc!19186 Token!9020) BalanceConc!19186)

(assert (=> b!2707106 (= e!1706864 (= lt!957185 (tuple2!30899 (prepend!1099 (_1!18081 lt!957176) (_1!18082 (v!32976 lt!957178))) (_2!18081 lt!957176))))))

(declare-fun e!1706865 () Bool)

(assert (=> b!2707107 (= e!1706865 (and tp!856236 tp!856237))))

(declare-fun b!2707108 () Bool)

(declare-fun e!1706858 () Bool)

(assert (=> b!2707108 (= e!1706858 e!1706860)))

(declare-fun res!1136870 () Bool)

(assert (=> b!2707108 (=> (not res!1136870) (not e!1706860))))

(declare-fun lt!957182 () List!31375)

(assert (=> b!2707108 (= res!1136870 (= lt!957182 lt!957187))))

(assert (=> b!2707108 (= lt!957187 (list!11817 acc!331))))

(assert (=> b!2707108 (= lt!957182 (list!11817 (_1!18081 lt!957188)))))

(assert (=> b!2707108 (= lt!957188 (lexRec!635 thiss!11556 rules!1182 treated!9))))

(declare-fun res!1136864 () Bool)

(assert (=> start!262816 (=> (not res!1136864) (not e!1706856))))

(assert (=> start!262816 (= res!1136864 ((_ is Lexer!4373) thiss!11556))))

(assert (=> start!262816 e!1706856))

(declare-fun inv!42406 (BalanceConc!19184) Bool)

(assert (=> start!262816 (and (inv!42406 treated!9) e!1706863)))

(assert (=> start!262816 (and (inv!42406 input!603) e!1706867)))

(assert (=> start!262816 true))

(declare-fun e!1706859 () Bool)

(assert (=> start!262816 e!1706859))

(assert (=> start!262816 (and (inv!42406 totalInput!328) e!1706857)))

(declare-fun inv!42407 (BalanceConc!19186) Bool)

(assert (=> start!262816 (and (inv!42407 acc!331) e!1706862)))

(declare-fun b!2707102 () Bool)

(declare-fun res!1136866 () Bool)

(assert (=> b!2707102 (=> (not res!1136866) (not e!1706856))))

(declare-fun rulesInvariant!3860 (LexerInterface!4375 List!31376) Bool)

(assert (=> b!2707102 (= res!1136866 (rulesInvariant!3860 thiss!11556 rules!1182))))

(declare-fun b!2707109 () Bool)

(declare-fun e!1706861 () Bool)

(declare-fun tp!856239 () Bool)

(declare-fun inv!42398 (String!34905) Bool)

(declare-fun inv!42408 (TokenValueInjection!9442) Bool)

(assert (=> b!2707109 (= e!1706861 (and tp!856239 (inv!42398 (tag!5283 (h!36696 rules!1182))) (inv!42408 (transformation!4779 (h!36696 rules!1182))) e!1706865))))

(declare-fun b!2707110 () Bool)

(declare-fun tp!856234 () Bool)

(assert (=> b!2707110 (= e!1706859 (and e!1706861 tp!856234))))

(declare-fun b!2707111 () Bool)

(assert (=> b!2707111 (= e!1706856 e!1706858)))

(declare-fun res!1136868 () Bool)

(assert (=> b!2707111 (=> (not res!1136868) (not e!1706858))))

(assert (=> b!2707111 (= res!1136868 (= (list!11816 totalInput!328) (++!7712 lt!957189 (list!11816 input!603))))))

(assert (=> b!2707111 (= lt!957189 (list!11816 treated!9))))

(declare-fun b!2707112 () Bool)

(assert (=> b!2707112 (= e!1706855 true)))

(declare-fun lt!957177 () tuple2!30902)

(assert (=> b!2707112 (= lt!957177 (lexList!1206 thiss!11556 rules!1182 lt!957192))))

(assert (= (and start!262816 res!1136864) b!2707100))

(assert (= (and b!2707100 res!1136871) b!2707102))

(assert (= (and b!2707102 res!1136866) b!2707111))

(assert (= (and b!2707111 res!1136868) b!2707108))

(assert (= (and b!2707108 res!1136870) b!2707095))

(assert (= (and b!2707095 res!1136863) b!2707098))

(assert (= (and b!2707098 res!1136865) b!2707097))

(assert (= (and b!2707097 res!1136872) b!2707096))

(assert (= (and b!2707096 res!1136869) b!2707093))

(assert (= (and b!2707093 res!1136867) b!2707106))

(assert (= (and b!2707093 (not res!1136862)) b!2707094))

(assert (= (and b!2707094 (not res!1136861)) b!2707103))

(assert (= (and b!2707103 (not res!1136873)) b!2707112))

(assert (= start!262816 b!2707099))

(assert (= start!262816 b!2707104))

(assert (= b!2707109 b!2707107))

(assert (= b!2707110 b!2707109))

(assert (= (and start!262816 ((_ is Cons!31276) rules!1182)) b!2707110))

(assert (= start!262816 b!2707105))

(assert (= start!262816 b!2707101))

(declare-fun m!3097433 () Bool)

(assert (=> b!2707109 m!3097433))

(declare-fun m!3097435 () Bool)

(assert (=> b!2707109 m!3097435))

(declare-fun m!3097437 () Bool)

(assert (=> start!262816 m!3097437))

(declare-fun m!3097439 () Bool)

(assert (=> start!262816 m!3097439))

(declare-fun m!3097441 () Bool)

(assert (=> start!262816 m!3097441))

(declare-fun m!3097443 () Bool)

(assert (=> start!262816 m!3097443))

(declare-fun m!3097445 () Bool)

(assert (=> b!2707095 m!3097445))

(assert (=> b!2707095 m!3097445))

(declare-fun m!3097447 () Bool)

(assert (=> b!2707095 m!3097447))

(declare-fun m!3097449 () Bool)

(assert (=> b!2707105 m!3097449))

(declare-fun m!3097451 () Bool)

(assert (=> b!2707106 m!3097451))

(declare-fun m!3097453 () Bool)

(assert (=> b!2707111 m!3097453))

(declare-fun m!3097455 () Bool)

(assert (=> b!2707111 m!3097455))

(assert (=> b!2707111 m!3097455))

(declare-fun m!3097457 () Bool)

(assert (=> b!2707111 m!3097457))

(declare-fun m!3097459 () Bool)

(assert (=> b!2707111 m!3097459))

(declare-fun m!3097461 () Bool)

(assert (=> b!2707101 m!3097461))

(declare-fun m!3097463 () Bool)

(assert (=> b!2707108 m!3097463))

(declare-fun m!3097465 () Bool)

(assert (=> b!2707108 m!3097465))

(declare-fun m!3097467 () Bool)

(assert (=> b!2707108 m!3097467))

(declare-fun m!3097469 () Bool)

(assert (=> b!2707099 m!3097469))

(declare-fun m!3097471 () Bool)

(assert (=> b!2707100 m!3097471))

(declare-fun m!3097473 () Bool)

(assert (=> b!2707102 m!3097473))

(declare-fun m!3097475 () Bool)

(assert (=> b!2707112 m!3097475))

(declare-fun m!3097477 () Bool)

(assert (=> b!2707103 m!3097477))

(declare-fun m!3097479 () Bool)

(assert (=> b!2707103 m!3097479))

(declare-fun m!3097481 () Bool)

(assert (=> b!2707098 m!3097481))

(declare-fun m!3097483 () Bool)

(assert (=> b!2707098 m!3097483))

(declare-fun m!3097485 () Bool)

(assert (=> b!2707098 m!3097485))

(assert (=> b!2707098 m!3097483))

(declare-fun m!3097487 () Bool)

(assert (=> b!2707098 m!3097487))

(declare-fun m!3097489 () Bool)

(assert (=> b!2707098 m!3097489))

(declare-fun m!3097491 () Bool)

(assert (=> b!2707097 m!3097491))

(declare-fun m!3097493 () Bool)

(assert (=> b!2707097 m!3097493))

(declare-fun m!3097495 () Bool)

(assert (=> b!2707104 m!3097495))

(declare-fun m!3097497 () Bool)

(assert (=> b!2707093 m!3097497))

(declare-fun m!3097499 () Bool)

(assert (=> b!2707093 m!3097499))

(declare-fun m!3097501 () Bool)

(assert (=> b!2707093 m!3097501))

(declare-fun m!3097503 () Bool)

(assert (=> b!2707093 m!3097503))

(declare-fun m!3097505 () Bool)

(assert (=> b!2707093 m!3097505))

(assert (=> b!2707093 m!3097501))

(declare-fun m!3097507 () Bool)

(assert (=> b!2707093 m!3097507))

(declare-fun m!3097509 () Bool)

(assert (=> b!2707093 m!3097509))

(declare-fun m!3097511 () Bool)

(assert (=> b!2707093 m!3097511))

(declare-fun m!3097513 () Bool)

(assert (=> b!2707093 m!3097513))

(declare-fun m!3097515 () Bool)

(assert (=> b!2707093 m!3097515))

(declare-fun m!3097517 () Bool)

(assert (=> b!2707093 m!3097517))

(declare-fun m!3097519 () Bool)

(assert (=> b!2707093 m!3097519))

(declare-fun m!3097521 () Bool)

(assert (=> b!2707093 m!3097521))

(declare-fun m!3097523 () Bool)

(assert (=> b!2707093 m!3097523))

(assert (=> b!2707093 m!3097517))

(declare-fun m!3097525 () Bool)

(assert (=> b!2707093 m!3097525))

(assert (=> b!2707093 m!3097515))

(declare-fun m!3097527 () Bool)

(assert (=> b!2707093 m!3097527))

(declare-fun m!3097529 () Bool)

(assert (=> b!2707093 m!3097529))

(declare-fun m!3097531 () Bool)

(assert (=> b!2707093 m!3097531))

(declare-fun m!3097533 () Bool)

(assert (=> b!2707093 m!3097533))

(assert (=> b!2707093 m!3097529))

(declare-fun m!3097535 () Bool)

(assert (=> b!2707094 m!3097535))

(declare-fun m!3097537 () Bool)

(assert (=> b!2707096 m!3097537))

(check-sat (not b!2707099) (not b!2707104) (not b!2707110) (not b!2707098) (not b!2707109) b_and!199865 (not b!2707095) (not b!2707101) (not b!2707105) (not b!2707106) (not b!2707111) (not b!2707093) (not b_next!77139) (not b_next!77137) (not start!262816) (not b!2707108) b_and!199867 (not b!2707097) (not b!2707112) (not b!2707103) (not b!2707100) (not b!2707094) (not b!2707102) (not b!2707096))
(check-sat b_and!199867 b_and!199865 (not b_next!77139) (not b_next!77137))
