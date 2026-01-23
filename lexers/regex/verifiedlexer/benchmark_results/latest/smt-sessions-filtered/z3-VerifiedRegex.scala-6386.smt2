; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!332314 () Bool)

(assert start!332314)

(declare-fun b!3583292 () Bool)

(declare-fun b_free!92169 () Bool)

(declare-fun b_next!92873 () Bool)

(assert (=> b!3583292 (= b_free!92169 (not b_next!92873))))

(declare-fun tp!1097053 () Bool)

(declare-fun b_and!258663 () Bool)

(assert (=> b!3583292 (= tp!1097053 b_and!258663)))

(declare-fun b_free!92171 () Bool)

(declare-fun b_next!92875 () Bool)

(assert (=> b!3583292 (= b_free!92171 (not b_next!92875))))

(declare-fun tp!1097051 () Bool)

(declare-fun b_and!258665 () Bool)

(assert (=> b!3583292 (= tp!1097051 b_and!258665)))

(declare-fun b!3583297 () Bool)

(declare-fun b_free!92173 () Bool)

(declare-fun b_next!92877 () Bool)

(assert (=> b!3583297 (= b_free!92173 (not b_next!92877))))

(declare-fun tp!1097055 () Bool)

(declare-fun b_and!258667 () Bool)

(assert (=> b!3583297 (= tp!1097055 b_and!258667)))

(declare-fun b_free!92175 () Bool)

(declare-fun b_next!92879 () Bool)

(assert (=> b!3583297 (= b_free!92175 (not b_next!92879))))

(declare-fun tp!1097058 () Bool)

(declare-fun b_and!258669 () Bool)

(assert (=> b!3583297 (= tp!1097058 b_and!258669)))

(declare-fun b!3583298 () Bool)

(declare-fun b_free!92177 () Bool)

(declare-fun b_next!92881 () Bool)

(assert (=> b!3583298 (= b_free!92177 (not b_next!92881))))

(declare-fun tp!1097061 () Bool)

(declare-fun b_and!258671 () Bool)

(assert (=> b!3583298 (= tp!1097061 b_and!258671)))

(declare-fun b_free!92179 () Bool)

(declare-fun b_next!92883 () Bool)

(assert (=> b!3583298 (= b_free!92179 (not b_next!92883))))

(declare-fun tp!1097057 () Bool)

(declare-fun b_and!258673 () Bool)

(assert (=> b!3583298 (= tp!1097057 b_and!258673)))

(declare-fun b!3583286 () Bool)

(declare-fun b_free!92181 () Bool)

(declare-fun b_next!92885 () Bool)

(assert (=> b!3583286 (= b_free!92181 (not b_next!92885))))

(declare-fun tp!1097062 () Bool)

(declare-fun b_and!258675 () Bool)

(assert (=> b!3583286 (= tp!1097062 b_and!258675)))

(declare-fun b_free!92183 () Bool)

(declare-fun b_next!92887 () Bool)

(assert (=> b!3583286 (= b_free!92183 (not b_next!92887))))

(declare-fun tp!1097056 () Bool)

(declare-fun b_and!258677 () Bool)

(assert (=> b!3583286 (= tp!1097056 b_and!258677)))

(declare-fun b!3583283 () Bool)

(declare-fun res!1445925 () Bool)

(declare-fun e!2217142 () Bool)

(assert (=> b!3583283 (=> res!1445925 e!2217142)))

(declare-datatypes ((List!37780 0))(
  ( (Nil!37656) (Cons!37656 (h!43076 (_ BitVec 16)) (t!290409 List!37780)) )
))
(declare-datatypes ((TokenValue!5782 0))(
  ( (FloatLiteralValue!11564 (text!40919 List!37780)) (TokenValueExt!5781 (__x!23781 Int)) (Broken!28910 (value!178666 List!37780)) (Object!5905) (End!5782) (Def!5782) (Underscore!5782) (Match!5782) (Else!5782) (Error!5782) (Case!5782) (If!5782) (Extends!5782) (Abstract!5782) (Class!5782) (Val!5782) (DelimiterValue!11564 (del!5842 List!37780)) (KeywordValue!5788 (value!178667 List!37780)) (CommentValue!11564 (value!178668 List!37780)) (WhitespaceValue!11564 (value!178669 List!37780)) (IndentationValue!5782 (value!178670 List!37780)) (String!42243) (Int32!5782) (Broken!28911 (value!178671 List!37780)) (Boolean!5783) (Unit!53654) (OperatorValue!5785 (op!5842 List!37780)) (IdentifierValue!11564 (value!178672 List!37780)) (IdentifierValue!11565 (value!178673 List!37780)) (WhitespaceValue!11565 (value!178674 List!37780)) (True!11564) (False!11564) (Broken!28912 (value!178675 List!37780)) (Broken!28913 (value!178676 List!37780)) (True!11565) (RightBrace!5782) (RightBracket!5782) (Colon!5782) (Null!5782) (Comma!5782) (LeftBracket!5782) (False!11565) (LeftBrace!5782) (ImaginaryLiteralValue!5782 (text!40920 List!37780)) (StringLiteralValue!17346 (value!178677 List!37780)) (EOFValue!5782 (value!178678 List!37780)) (IdentValue!5782 (value!178679 List!37780)) (DelimiterValue!11565 (value!178680 List!37780)) (DedentValue!5782 (value!178681 List!37780)) (NewLineValue!5782 (value!178682 List!37780)) (IntegerValue!17346 (value!178683 (_ BitVec 32)) (text!40921 List!37780)) (IntegerValue!17347 (value!178684 Int) (text!40922 List!37780)) (Times!5782) (Or!5782) (Equal!5782) (Minus!5782) (Broken!28914 (value!178685 List!37780)) (And!5782) (Div!5782) (LessEqual!5782) (Mod!5782) (Concat!16093) (Not!5782) (Plus!5782) (SpaceValue!5782 (value!178686 List!37780)) (IntegerValue!17348 (value!178687 Int) (text!40923 List!37780)) (StringLiteralValue!17347 (text!40924 List!37780)) (FloatLiteralValue!11565 (text!40925 List!37780)) (BytesLiteralValue!5782 (value!178688 List!37780)) (CommentValue!11565 (value!178689 List!37780)) (StringLiteralValue!17348 (value!178690 List!37780)) (ErrorTokenValue!5782 (msg!5843 List!37780)) )
))
(declare-datatypes ((C!20808 0))(
  ( (C!20809 (val!12452 Int)) )
))
(declare-datatypes ((Regex!10311 0))(
  ( (ElementMatch!10311 (c!620745 C!20808)) (Concat!16094 (regOne!21134 Regex!10311) (regTwo!21134 Regex!10311)) (EmptyExpr!10311) (Star!10311 (reg!10640 Regex!10311)) (EmptyLang!10311) (Union!10311 (regOne!21135 Regex!10311) (regTwo!21135 Regex!10311)) )
))
(declare-datatypes ((String!42244 0))(
  ( (String!42245 (value!178691 String)) )
))
(declare-datatypes ((List!37781 0))(
  ( (Nil!37657) (Cons!37657 (h!43077 C!20808) (t!290410 List!37781)) )
))
(declare-datatypes ((IArray!22905 0))(
  ( (IArray!22906 (innerList!11510 List!37781)) )
))
(declare-datatypes ((Conc!11450 0))(
  ( (Node!11450 (left!29436 Conc!11450) (right!29766 Conc!11450) (csize!23130 Int) (cheight!11661 Int)) (Leaf!17837 (xs!14652 IArray!22905) (csize!23131 Int)) (Empty!11450) )
))
(declare-datatypes ((BalanceConc!22514 0))(
  ( (BalanceConc!22515 (c!620746 Conc!11450)) )
))
(declare-datatypes ((TokenValueInjection!10992 0))(
  ( (TokenValueInjection!10993 (toValue!7828 Int) (toChars!7687 Int)) )
))
(declare-datatypes ((Rule!10904 0))(
  ( (Rule!10905 (regex!5552 Regex!10311) (tag!6218 String!42244) (isSeparator!5552 Bool) (transformation!5552 TokenValueInjection!10992)) )
))
(declare-fun anOtherTypeRule!33 () Rule!10904)

(declare-fun lt!1229016 () C!20808)

(declare-fun contains!7163 (List!37781 C!20808) Bool)

(declare-fun usedCharacters!766 (Regex!10311) List!37781)

(assert (=> b!3583283 (= res!1445925 (not (contains!7163 (usedCharacters!766 (regex!5552 anOtherTypeRule!33)) lt!1229016)))))

(declare-fun b!3583284 () Bool)

(declare-fun e!2217157 () Bool)

(assert (=> b!3583284 (= e!2217157 e!2217142)))

(declare-fun res!1445922 () Bool)

(assert (=> b!3583284 (=> res!1445922 e!2217142)))

(declare-fun rule!403 () Rule!10904)

(assert (=> b!3583284 (= res!1445922 (contains!7163 (usedCharacters!766 (regex!5552 rule!403)) lt!1229016))))

(declare-fun suffix!1395 () List!37781)

(declare-fun head!7469 (List!37781) C!20808)

(assert (=> b!3583284 (= lt!1229016 (head!7469 suffix!1395))))

(declare-fun b!3583285 () Bool)

(declare-fun e!2217148 () Bool)

(declare-fun e!2217145 () Bool)

(declare-fun tp!1097059 () Bool)

(assert (=> b!3583285 (= e!2217148 (and e!2217145 tp!1097059))))

(declare-fun e!2217155 () Bool)

(assert (=> b!3583286 (= e!2217155 (and tp!1097062 tp!1097056))))

(declare-fun b!3583287 () Bool)

(declare-fun res!1445927 () Bool)

(declare-fun e!2217140 () Bool)

(assert (=> b!3583287 (=> (not res!1445927) (not e!2217140))))

(declare-datatypes ((List!37782 0))(
  ( (Nil!37658) (Cons!37658 (h!43078 Rule!10904) (t!290411 List!37782)) )
))
(declare-fun rules!3307 () List!37782)

(declare-fun contains!7164 (List!37782 Rule!10904) Bool)

(assert (=> b!3583287 (= res!1445927 (contains!7164 rules!3307 rule!403))))

(declare-fun tp!1097049 () Bool)

(declare-fun b!3583288 () Bool)

(declare-fun inv!50970 (String!42244) Bool)

(declare-fun inv!50973 (TokenValueInjection!10992) Bool)

(assert (=> b!3583288 (= e!2217145 (and tp!1097049 (inv!50970 (tag!6218 (h!43078 rules!3307))) (inv!50973 (transformation!5552 (h!43078 rules!3307))) e!2217155))))

(declare-fun b!3583289 () Bool)

(declare-fun e!2217151 () Bool)

(assert (=> b!3583289 (= e!2217151 (not e!2217157))))

(declare-fun res!1445923 () Bool)

(assert (=> b!3583289 (=> res!1445923 e!2217157)))

(declare-fun lt!1229011 () List!37781)

(declare-fun matchR!4880 (Regex!10311 List!37781) Bool)

(assert (=> b!3583289 (= res!1445923 (not (matchR!4880 (regex!5552 rule!403) lt!1229011)))))

(declare-datatypes ((LexerInterface!5141 0))(
  ( (LexerInterfaceExt!5138 (__x!23782 Int)) (Lexer!5139) )
))
(declare-fun thiss!23823 () LexerInterface!5141)

(declare-fun ruleValid!1817 (LexerInterface!5141 Rule!10904) Bool)

(assert (=> b!3583289 (ruleValid!1817 thiss!23823 rule!403)))

(declare-datatypes ((Unit!53655 0))(
  ( (Unit!53656) )
))
(declare-fun lt!1229010 () Unit!53655)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!972 (LexerInterface!5141 Rule!10904 List!37782) Unit!53655)

(assert (=> b!3583289 (= lt!1229010 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!972 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3583290 () Bool)

(declare-fun e!2217143 () Bool)

(declare-datatypes ((Token!10470 0))(
  ( (Token!10471 (value!178692 TokenValue!5782) (rule!8264 Rule!10904) (size!28694 Int) (originalCharacters!6266 List!37781)) )
))
(declare-fun token!511 () Token!10470)

(declare-fun tp!1097060 () Bool)

(declare-fun e!2217139 () Bool)

(assert (=> b!3583290 (= e!2217139 (and tp!1097060 (inv!50970 (tag!6218 (rule!8264 token!511))) (inv!50973 (transformation!5552 (rule!8264 token!511))) e!2217143))))

(declare-fun b!3583291 () Bool)

(declare-fun res!1445921 () Bool)

(assert (=> b!3583291 (=> (not res!1445921) (not e!2217151))))

(assert (=> b!3583291 (= res!1445921 (= (rule!8264 token!511) rule!403))))

(declare-fun e!2217149 () Bool)

(assert (=> b!3583292 (= e!2217149 (and tp!1097053 tp!1097051))))

(declare-fun e!2217154 () Bool)

(declare-fun b!3583293 () Bool)

(declare-fun tp!1097054 () Bool)

(declare-fun e!2217152 () Bool)

(assert (=> b!3583293 (= e!2217152 (and tp!1097054 (inv!50970 (tag!6218 rule!403)) (inv!50973 (transformation!5552 rule!403)) e!2217154))))

(declare-fun b!3583294 () Bool)

(declare-fun res!1445931 () Bool)

(assert (=> b!3583294 (=> (not res!1445931) (not e!2217140))))

(assert (=> b!3583294 (= res!1445931 (contains!7164 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3583295 () Bool)

(declare-fun e!2217146 () Bool)

(assert (=> b!3583295 (= e!2217140 e!2217146)))

(declare-fun res!1445929 () Bool)

(assert (=> b!3583295 (=> (not res!1445929) (not e!2217146))))

(declare-datatypes ((tuple2!37546 0))(
  ( (tuple2!37547 (_1!21907 Token!10470) (_2!21907 List!37781)) )
))
(declare-datatypes ((Option!7740 0))(
  ( (None!7739) (Some!7739 (v!37393 tuple2!37546)) )
))
(declare-fun lt!1229014 () Option!7740)

(declare-fun isDefined!5974 (Option!7740) Bool)

(assert (=> b!3583295 (= res!1445929 (isDefined!5974 lt!1229014))))

(declare-fun maxPrefix!2675 (LexerInterface!5141 List!37782 List!37781) Option!7740)

(assert (=> b!3583295 (= lt!1229014 (maxPrefix!2675 thiss!23823 rules!3307 lt!1229011))))

(declare-fun list!13833 (BalanceConc!22514) List!37781)

(declare-fun charsOf!3566 (Token!10470) BalanceConc!22514)

(assert (=> b!3583295 (= lt!1229011 (list!13833 (charsOf!3566 token!511)))))

(declare-fun b!3583296 () Bool)

(declare-fun e!2217158 () Bool)

(declare-fun tp_is_empty!17705 () Bool)

(declare-fun tp!1097048 () Bool)

(assert (=> b!3583296 (= e!2217158 (and tp_is_empty!17705 tp!1097048))))

(declare-fun res!1445934 () Bool)

(assert (=> start!332314 (=> (not res!1445934) (not e!2217140))))

(get-info :version)

(assert (=> start!332314 (= res!1445934 ((_ is Lexer!5139) thiss!23823))))

(assert (=> start!332314 e!2217140))

(assert (=> start!332314 e!2217148))

(assert (=> start!332314 e!2217158))

(assert (=> start!332314 true))

(declare-fun e!2217150 () Bool)

(declare-fun inv!50974 (Token!10470) Bool)

(assert (=> start!332314 (and (inv!50974 token!511) e!2217150)))

(assert (=> start!332314 e!2217152))

(declare-fun e!2217138 () Bool)

(assert (=> start!332314 e!2217138))

(assert (=> b!3583297 (= e!2217154 (and tp!1097055 tp!1097058))))

(assert (=> b!3583298 (= e!2217143 (and tp!1097061 tp!1097057))))

(declare-fun tp!1097050 () Bool)

(declare-fun b!3583299 () Bool)

(assert (=> b!3583299 (= e!2217138 (and tp!1097050 (inv!50970 (tag!6218 anOtherTypeRule!33)) (inv!50973 (transformation!5552 anOtherTypeRule!33)) e!2217149))))

(declare-fun b!3583300 () Bool)

(declare-fun res!1445924 () Bool)

(assert (=> b!3583300 (=> (not res!1445924) (not e!2217140))))

(declare-fun rulesInvariant!4538 (LexerInterface!5141 List!37782) Bool)

(assert (=> b!3583300 (= res!1445924 (rulesInvariant!4538 thiss!23823 rules!3307))))

(declare-fun b!3583301 () Bool)

(assert (=> b!3583301 (= e!2217142 true)))

(declare-fun lt!1229013 () Bool)

(declare-fun rulesValidInductive!1933 (LexerInterface!5141 List!37782) Bool)

(assert (=> b!3583301 (= lt!1229013 (rulesValidInductive!1933 thiss!23823 rules!3307))))

(declare-fun lt!1229012 () List!37781)

(declare-fun isPrefix!2915 (List!37781 List!37781) Bool)

(assert (=> b!3583301 (isPrefix!2915 lt!1229011 lt!1229012)))

(declare-fun lt!1229015 () Unit!53655)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1836 (List!37781 List!37781) Unit!53655)

(assert (=> b!3583301 (= lt!1229015 (lemmaConcatTwoListThenFirstIsPrefix!1836 lt!1229011 suffix!1395))))

(declare-fun ++!9364 (List!37781 List!37781) List!37781)

(assert (=> b!3583301 (= lt!1229012 (++!9364 lt!1229011 suffix!1395))))

(declare-fun b!3583302 () Bool)

(assert (=> b!3583302 (= e!2217146 e!2217151)))

(declare-fun res!1445920 () Bool)

(assert (=> b!3583302 (=> (not res!1445920) (not e!2217151))))

(declare-fun lt!1229009 () tuple2!37546)

(assert (=> b!3583302 (= res!1445920 (= (_1!21907 lt!1229009) token!511))))

(declare-fun get!12128 (Option!7740) tuple2!37546)

(assert (=> b!3583302 (= lt!1229009 (get!12128 lt!1229014))))

(declare-fun tp!1097052 () Bool)

(declare-fun b!3583303 () Bool)

(declare-fun inv!21 (TokenValue!5782) Bool)

(assert (=> b!3583303 (= e!2217150 (and (inv!21 (value!178692 token!511)) e!2217139 tp!1097052))))

(declare-fun b!3583304 () Bool)

(declare-fun res!1445933 () Bool)

(assert (=> b!3583304 (=> (not res!1445933) (not e!2217140))))

(declare-fun isEmpty!22174 (List!37782) Bool)

(assert (=> b!3583304 (= res!1445933 (not (isEmpty!22174 rules!3307)))))

(declare-fun b!3583305 () Bool)

(declare-fun res!1445926 () Bool)

(assert (=> b!3583305 (=> res!1445926 e!2217142)))

(declare-fun sepAndNonSepRulesDisjointChars!1722 (List!37782 List!37782) Bool)

(assert (=> b!3583305 (= res!1445926 (not (sepAndNonSepRulesDisjointChars!1722 rules!3307 rules!3307)))))

(declare-fun b!3583306 () Bool)

(declare-fun res!1445928 () Bool)

(assert (=> b!3583306 (=> res!1445928 e!2217157)))

(declare-fun isEmpty!22175 (List!37781) Bool)

(assert (=> b!3583306 (= res!1445928 (isEmpty!22175 suffix!1395))))

(declare-fun b!3583307 () Bool)

(declare-fun res!1445930 () Bool)

(assert (=> b!3583307 (=> (not res!1445930) (not e!2217151))))

(assert (=> b!3583307 (= res!1445930 (isEmpty!22175 (_2!21907 lt!1229009)))))

(declare-fun b!3583308 () Bool)

(declare-fun res!1445932 () Bool)

(assert (=> b!3583308 (=> (not res!1445932) (not e!2217140))))

(assert (=> b!3583308 (= res!1445932 (not (= (isSeparator!5552 anOtherTypeRule!33) (isSeparator!5552 rule!403))))))

(assert (= (and start!332314 res!1445934) b!3583304))

(assert (= (and b!3583304 res!1445933) b!3583300))

(assert (= (and b!3583300 res!1445924) b!3583287))

(assert (= (and b!3583287 res!1445927) b!3583294))

(assert (= (and b!3583294 res!1445931) b!3583308))

(assert (= (and b!3583308 res!1445932) b!3583295))

(assert (= (and b!3583295 res!1445929) b!3583302))

(assert (= (and b!3583302 res!1445920) b!3583307))

(assert (= (and b!3583307 res!1445930) b!3583291))

(assert (= (and b!3583291 res!1445921) b!3583289))

(assert (= (and b!3583289 (not res!1445923)) b!3583306))

(assert (= (and b!3583306 (not res!1445928)) b!3583284))

(assert (= (and b!3583284 (not res!1445922)) b!3583283))

(assert (= (and b!3583283 (not res!1445925)) b!3583305))

(assert (= (and b!3583305 (not res!1445926)) b!3583301))

(assert (= b!3583288 b!3583286))

(assert (= b!3583285 b!3583288))

(assert (= (and start!332314 ((_ is Cons!37658) rules!3307)) b!3583285))

(assert (= (and start!332314 ((_ is Cons!37657) suffix!1395)) b!3583296))

(assert (= b!3583290 b!3583298))

(assert (= b!3583303 b!3583290))

(assert (= start!332314 b!3583303))

(assert (= b!3583293 b!3583297))

(assert (= start!332314 b!3583293))

(assert (= b!3583299 b!3583292))

(assert (= start!332314 b!3583299))

(declare-fun m!4076413 () Bool)

(assert (=> b!3583284 m!4076413))

(assert (=> b!3583284 m!4076413))

(declare-fun m!4076415 () Bool)

(assert (=> b!3583284 m!4076415))

(declare-fun m!4076417 () Bool)

(assert (=> b!3583284 m!4076417))

(declare-fun m!4076419 () Bool)

(assert (=> b!3583290 m!4076419))

(declare-fun m!4076421 () Bool)

(assert (=> b!3583290 m!4076421))

(declare-fun m!4076423 () Bool)

(assert (=> b!3583295 m!4076423))

(declare-fun m!4076425 () Bool)

(assert (=> b!3583295 m!4076425))

(declare-fun m!4076427 () Bool)

(assert (=> b!3583295 m!4076427))

(assert (=> b!3583295 m!4076427))

(declare-fun m!4076429 () Bool)

(assert (=> b!3583295 m!4076429))

(declare-fun m!4076431 () Bool)

(assert (=> b!3583283 m!4076431))

(assert (=> b!3583283 m!4076431))

(declare-fun m!4076433 () Bool)

(assert (=> b!3583283 m!4076433))

(declare-fun m!4076435 () Bool)

(assert (=> b!3583304 m!4076435))

(declare-fun m!4076437 () Bool)

(assert (=> b!3583287 m!4076437))

(declare-fun m!4076439 () Bool)

(assert (=> b!3583302 m!4076439))

(declare-fun m!4076441 () Bool)

(assert (=> b!3583294 m!4076441))

(declare-fun m!4076443 () Bool)

(assert (=> b!3583288 m!4076443))

(declare-fun m!4076445 () Bool)

(assert (=> b!3583288 m!4076445))

(declare-fun m!4076447 () Bool)

(assert (=> b!3583303 m!4076447))

(declare-fun m!4076449 () Bool)

(assert (=> b!3583307 m!4076449))

(declare-fun m!4076451 () Bool)

(assert (=> b!3583293 m!4076451))

(declare-fun m!4076453 () Bool)

(assert (=> b!3583293 m!4076453))

(declare-fun m!4076455 () Bool)

(assert (=> b!3583289 m!4076455))

(declare-fun m!4076457 () Bool)

(assert (=> b!3583289 m!4076457))

(declare-fun m!4076459 () Bool)

(assert (=> b!3583289 m!4076459))

(declare-fun m!4076461 () Bool)

(assert (=> b!3583305 m!4076461))

(declare-fun m!4076463 () Bool)

(assert (=> b!3583301 m!4076463))

(declare-fun m!4076465 () Bool)

(assert (=> b!3583301 m!4076465))

(declare-fun m!4076467 () Bool)

(assert (=> b!3583301 m!4076467))

(declare-fun m!4076469 () Bool)

(assert (=> b!3583301 m!4076469))

(declare-fun m!4076471 () Bool)

(assert (=> b!3583299 m!4076471))

(declare-fun m!4076473 () Bool)

(assert (=> b!3583299 m!4076473))

(declare-fun m!4076475 () Bool)

(assert (=> b!3583306 m!4076475))

(declare-fun m!4076477 () Bool)

(assert (=> start!332314 m!4076477))

(declare-fun m!4076479 () Bool)

(assert (=> b!3583300 m!4076479))

(check-sat (not b!3583284) (not b!3583295) (not b!3583302) b_and!258675 (not b!3583305) (not b!3583289) (not b!3583293) (not b!3583294) (not b!3583290) (not b!3583296) (not start!332314) (not b_next!92887) (not b!3583303) (not b!3583301) (not b!3583300) (not b_next!92877) b_and!258673 (not b!3583285) (not b!3583288) tp_is_empty!17705 b_and!258669 (not b!3583304) (not b_next!92883) b_and!258677 (not b!3583307) (not b_next!92881) (not b_next!92873) b_and!258665 b_and!258663 (not b_next!92879) (not b_next!92885) b_and!258667 (not b!3583299) (not b!3583287) b_and!258671 (not b!3583306) (not b_next!92875) (not b!3583283))
(check-sat b_and!258675 b_and!258669 (not b_next!92887) (not b_next!92877) b_and!258673 (not b_next!92883) b_and!258677 (not b_next!92881) (not b_next!92873) b_and!258665 b_and!258663 (not b_next!92879) (not b_next!92885) b_and!258667 b_and!258671 (not b_next!92875))
