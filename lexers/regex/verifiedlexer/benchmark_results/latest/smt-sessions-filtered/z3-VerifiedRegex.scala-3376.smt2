; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!191628 () Bool)

(assert start!191628)

(declare-fun b!1909707 () Bool)

(declare-fun b_free!53785 () Bool)

(declare-fun b_next!54489 () Bool)

(assert (=> b!1909707 (= b_free!53785 (not b_next!54489))))

(declare-fun tp!544992 () Bool)

(declare-fun b_and!148703 () Bool)

(assert (=> b!1909707 (= tp!544992 b_and!148703)))

(declare-fun b_free!53787 () Bool)

(declare-fun b_next!54491 () Bool)

(assert (=> b!1909707 (= b_free!53787 (not b_next!54491))))

(declare-fun tp!544981 () Bool)

(declare-fun b_and!148705 () Bool)

(assert (=> b!1909707 (= tp!544981 b_and!148705)))

(declare-fun b!1909712 () Bool)

(declare-fun b_free!53789 () Bool)

(declare-fun b_next!54493 () Bool)

(assert (=> b!1909712 (= b_free!53789 (not b_next!54493))))

(declare-fun tp!544983 () Bool)

(declare-fun b_and!148707 () Bool)

(assert (=> b!1909712 (= tp!544983 b_and!148707)))

(declare-fun b_free!53791 () Bool)

(declare-fun b_next!54495 () Bool)

(assert (=> b!1909712 (= b_free!53791 (not b_next!54495))))

(declare-fun tp!544988 () Bool)

(declare-fun b_and!148709 () Bool)

(assert (=> b!1909712 (= tp!544988 b_and!148709)))

(declare-fun b!1909713 () Bool)

(declare-fun b_free!53793 () Bool)

(declare-fun b_next!54497 () Bool)

(assert (=> b!1909713 (= b_free!53793 (not b_next!54497))))

(declare-fun tp!544986 () Bool)

(declare-fun b_and!148711 () Bool)

(assert (=> b!1909713 (= tp!544986 b_and!148711)))

(declare-fun b_free!53795 () Bool)

(declare-fun b_next!54499 () Bool)

(assert (=> b!1909713 (= b_free!53795 (not b_next!54499))))

(declare-fun tp!544991 () Bool)

(declare-fun b_and!148713 () Bool)

(assert (=> b!1909713 (= tp!544991 b_and!148713)))

(declare-fun b!1909686 () Bool)

(declare-fun e!1219705 () Bool)

(declare-fun e!1219694 () Bool)

(assert (=> b!1909686 (= e!1219705 e!1219694)))

(declare-fun res!852632 () Bool)

(assert (=> b!1909686 (=> (not res!852632) (not e!1219694))))

(declare-datatypes ((List!21574 0))(
  ( (Nil!21492) (Cons!21492 (h!26893 (_ BitVec 16)) (t!178031 List!21574)) )
))
(declare-datatypes ((TokenValue!3964 0))(
  ( (FloatLiteralValue!7928 (text!28193 List!21574)) (TokenValueExt!3963 (__x!13426 Int)) (Broken!19820 (value!120663 List!21574)) (Object!4045) (End!3964) (Def!3964) (Underscore!3964) (Match!3964) (Else!3964) (Error!3964) (Case!3964) (If!3964) (Extends!3964) (Abstract!3964) (Class!3964) (Val!3964) (DelimiterValue!7928 (del!4024 List!21574)) (KeywordValue!3970 (value!120664 List!21574)) (CommentValue!7928 (value!120665 List!21574)) (WhitespaceValue!7928 (value!120666 List!21574)) (IndentationValue!3964 (value!120667 List!21574)) (String!24937) (Int32!3964) (Broken!19821 (value!120668 List!21574)) (Boolean!3965) (Unit!35841) (OperatorValue!3967 (op!4024 List!21574)) (IdentifierValue!7928 (value!120669 List!21574)) (IdentifierValue!7929 (value!120670 List!21574)) (WhitespaceValue!7929 (value!120671 List!21574)) (True!7928) (False!7928) (Broken!19822 (value!120672 List!21574)) (Broken!19823 (value!120673 List!21574)) (True!7929) (RightBrace!3964) (RightBracket!3964) (Colon!3964) (Null!3964) (Comma!3964) (LeftBracket!3964) (False!7929) (LeftBrace!3964) (ImaginaryLiteralValue!3964 (text!28194 List!21574)) (StringLiteralValue!11892 (value!120674 List!21574)) (EOFValue!3964 (value!120675 List!21574)) (IdentValue!3964 (value!120676 List!21574)) (DelimiterValue!7929 (value!120677 List!21574)) (DedentValue!3964 (value!120678 List!21574)) (NewLineValue!3964 (value!120679 List!21574)) (IntegerValue!11892 (value!120680 (_ BitVec 32)) (text!28195 List!21574)) (IntegerValue!11893 (value!120681 Int) (text!28196 List!21574)) (Times!3964) (Or!3964) (Equal!3964) (Minus!3964) (Broken!19824 (value!120682 List!21574)) (And!3964) (Div!3964) (LessEqual!3964) (Mod!3964) (Concat!9217) (Not!3964) (Plus!3964) (SpaceValue!3964 (value!120683 List!21574)) (IntegerValue!11894 (value!120684 Int) (text!28197 List!21574)) (StringLiteralValue!11893 (text!28198 List!21574)) (FloatLiteralValue!7929 (text!28199 List!21574)) (BytesLiteralValue!3964 (value!120685 List!21574)) (CommentValue!7929 (value!120686 List!21574)) (StringLiteralValue!11894 (value!120687 List!21574)) (ErrorTokenValue!3964 (msg!4025 List!21574)) )
))
(declare-datatypes ((C!10652 0))(
  ( (C!10653 (val!6278 Int)) )
))
(declare-datatypes ((List!21575 0))(
  ( (Nil!21493) (Cons!21493 (h!26894 C!10652) (t!178032 List!21575)) )
))
(declare-datatypes ((IArray!14303 0))(
  ( (IArray!14304 (innerList!7209 List!21575)) )
))
(declare-datatypes ((Conc!7149 0))(
  ( (Node!7149 (left!17185 Conc!7149) (right!17515 Conc!7149) (csize!14528 Int) (cheight!7360 Int)) (Leaf!10526 (xs!10043 IArray!14303) (csize!14529 Int)) (Empty!7149) )
))
(declare-datatypes ((BalanceConc!14114 0))(
  ( (BalanceConc!14115 (c!311211 Conc!7149)) )
))
(declare-datatypes ((TokenValueInjection!7512 0))(
  ( (TokenValueInjection!7513 (toValue!5457 Int) (toChars!5316 Int)) )
))
(declare-datatypes ((Regex!5253 0))(
  ( (ElementMatch!5253 (c!311212 C!10652)) (Concat!9218 (regOne!11018 Regex!5253) (regTwo!11018 Regex!5253)) (EmptyExpr!5253) (Star!5253 (reg!5582 Regex!5253)) (EmptyLang!5253) (Union!5253 (regOne!11019 Regex!5253) (regTwo!11019 Regex!5253)) )
))
(declare-datatypes ((String!24938 0))(
  ( (String!24939 (value!120688 String)) )
))
(declare-datatypes ((Rule!7456 0))(
  ( (Rule!7457 (regex!3828 Regex!5253) (tag!4262 String!24938) (isSeparator!3828 Bool) (transformation!3828 TokenValueInjection!7512)) )
))
(declare-fun lt!730081 () Rule!7456)

(declare-fun lt!730076 () List!21575)

(declare-fun matchR!2539 (Regex!5253 List!21575) Bool)

(assert (=> b!1909686 (= res!852632 (matchR!2539 (regex!3828 lt!730081) lt!730076))))

(declare-datatypes ((Option!4361 0))(
  ( (None!4360) (Some!4360 (v!26411 Rule!7456)) )
))
(declare-fun lt!730069 () Option!4361)

(declare-fun get!6682 (Option!4361) Rule!7456)

(assert (=> b!1909686 (= lt!730081 (get!6682 lt!730069))))

(declare-fun b!1909687 () Bool)

(declare-fun e!1219698 () Bool)

(assert (=> b!1909687 (= e!1219698 false)))

(declare-fun b!1909688 () Bool)

(declare-fun res!852638 () Bool)

(declare-fun e!1219707 () Bool)

(assert (=> b!1909688 (=> (not res!852638) (not e!1219707))))

(declare-datatypes ((Token!7208 0))(
  ( (Token!7209 (value!120689 TokenValue!3964) (rule!6027 Rule!7456) (size!16956 Int) (originalCharacters!4635 List!21575)) )
))
(declare-fun separatorToken!354 () Token!7208)

(declare-datatypes ((LexerInterface!3441 0))(
  ( (LexerInterfaceExt!3438 (__x!13427 Int)) (Lexer!3439) )
))
(declare-fun thiss!23328 () LexerInterface!3441)

(declare-datatypes ((List!21576 0))(
  ( (Nil!21494) (Cons!21494 (h!26895 Rule!7456) (t!178033 List!21576)) )
))
(declare-fun rules!3198 () List!21576)

(declare-fun rulesProduceIndividualToken!1613 (LexerInterface!3441 List!21576 Token!7208) Bool)

(assert (=> b!1909688 (= res!852638 (rulesProduceIndividualToken!1613 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1909689 () Bool)

(declare-fun e!1219706 () Bool)

(declare-fun e!1219695 () Bool)

(assert (=> b!1909689 (= e!1219706 e!1219695)))

(declare-fun res!852644 () Bool)

(assert (=> b!1909689 (=> res!852644 e!1219695)))

(declare-fun contains!3872 (List!21576 Rule!7456) Bool)

(assert (=> b!1909689 (= res!852644 (not (contains!3872 rules!3198 (rule!6027 separatorToken!354))))))

(declare-datatypes ((Unit!35842 0))(
  ( (Unit!35843) )
))
(declare-fun lt!730070 () Unit!35842)

(declare-fun e!1219709 () Unit!35842)

(assert (=> b!1909689 (= lt!730070 e!1219709)))

(declare-fun c!311210 () Bool)

(declare-fun lt!730083 () C!10652)

(declare-fun contains!3873 (List!21575 C!10652) Bool)

(declare-fun usedCharacters!336 (Regex!5253) List!21575)

(assert (=> b!1909689 (= c!311210 (not (contains!3873 (usedCharacters!336 (regex!3828 (rule!6027 separatorToken!354))) lt!730083)))))

(declare-fun head!4432 (List!21575) C!10652)

(assert (=> b!1909689 (= lt!730083 (head!4432 lt!730076))))

(declare-fun lt!730072 () List!21575)

(declare-fun lt!730087 () List!21575)

(declare-fun ++!5777 (List!21575 List!21575) List!21575)

(assert (=> b!1909689 (= (++!5777 (++!5777 lt!730072 lt!730076) lt!730087) (++!5777 lt!730072 (++!5777 lt!730076 lt!730087)))))

(declare-fun lt!730075 () Unit!35842)

(declare-fun lemmaConcatAssociativity!1143 (List!21575 List!21575 List!21575) Unit!35842)

(assert (=> b!1909689 (= lt!730075 (lemmaConcatAssociativity!1143 lt!730072 lt!730076 lt!730087))))

(declare-fun tp!544980 () Bool)

(declare-fun e!1219701 () Bool)

(declare-fun b!1909690 () Bool)

(declare-fun e!1219708 () Bool)

(declare-datatypes ((List!21577 0))(
  ( (Nil!21495) (Cons!21495 (h!26896 Token!7208) (t!178034 List!21577)) )
))
(declare-fun tokens!598 () List!21577)

(declare-fun inv!21 (TokenValue!3964) Bool)

(assert (=> b!1909690 (= e!1219708 (and (inv!21 (value!120689 (h!26896 tokens!598))) e!1219701 tp!544980))))

(declare-fun b!1909691 () Bool)

(declare-fun Unit!35844 () Unit!35842)

(assert (=> b!1909691 (= e!1219709 Unit!35844)))

(declare-fun b!1909692 () Bool)

(assert (=> b!1909692 (= e!1219694 (= (rule!6027 separatorToken!354) lt!730081))))

(declare-fun b!1909694 () Bool)

(declare-fun res!852645 () Bool)

(assert (=> b!1909694 (=> (not res!852645) (not e!1219707))))

(declare-fun isEmpty!13206 (List!21576) Bool)

(assert (=> b!1909694 (= res!852645 (not (isEmpty!13206 rules!3198)))))

(declare-fun e!1219711 () Bool)

(declare-fun e!1219691 () Bool)

(declare-fun b!1909695 () Bool)

(declare-fun tp!544989 () Bool)

(declare-fun inv!28601 (String!24938) Bool)

(declare-fun inv!28604 (TokenValueInjection!7512) Bool)

(assert (=> b!1909695 (= e!1219711 (and tp!544989 (inv!28601 (tag!4262 (h!26895 rules!3198))) (inv!28604 (transformation!3828 (h!26895 rules!3198))) e!1219691))))

(declare-fun b!1909696 () Bool)

(assert (=> b!1909696 (= e!1219707 (not e!1219706))))

(declare-fun res!852643 () Bool)

(assert (=> b!1909696 (=> res!852643 e!1219706)))

(declare-datatypes ((tuple2!20236 0))(
  ( (tuple2!20237 (_1!11587 Token!7208) (_2!11587 List!21575)) )
))
(declare-datatypes ((Option!4362 0))(
  ( (None!4361) (Some!4361 (v!26412 tuple2!20236)) )
))
(declare-fun lt!730079 () Option!4362)

(declare-fun lt!730074 () Bool)

(assert (=> b!1909696 (= res!852643 (or (and (not lt!730074) (= (_1!11587 (v!26412 lt!730079)) (h!26896 tokens!598))) lt!730074 (= (_1!11587 (v!26412 lt!730079)) (h!26896 tokens!598))))))

(get-info :version)

(assert (=> b!1909696 (= lt!730074 (not ((_ is Some!4361) lt!730079)))))

(declare-fun maxPrefix!1887 (LexerInterface!3441 List!21576 List!21575) Option!4362)

(assert (=> b!1909696 (= lt!730079 (maxPrefix!1887 thiss!23328 rules!3198 (++!5777 lt!730072 lt!730087)))))

(declare-fun printWithSeparatorTokenWhenNeededList!484 (LexerInterface!3441 List!21576 List!21577 Token!7208) List!21575)

(assert (=> b!1909696 (= lt!730087 (printWithSeparatorTokenWhenNeededList!484 thiss!23328 rules!3198 (t!178034 tokens!598) separatorToken!354))))

(declare-fun e!1219696 () Bool)

(assert (=> b!1909696 e!1219696))

(declare-fun res!852640 () Bool)

(assert (=> b!1909696 (=> (not res!852640) (not e!1219696))))

(declare-fun lt!730088 () Option!4361)

(declare-fun isDefined!3659 (Option!4361) Bool)

(assert (=> b!1909696 (= res!852640 (isDefined!3659 lt!730088))))

(declare-fun getRuleFromTag!671 (LexerInterface!3441 List!21576 String!24938) Option!4361)

(assert (=> b!1909696 (= lt!730088 (getRuleFromTag!671 thiss!23328 rules!3198 (tag!4262 (rule!6027 (h!26896 tokens!598)))))))

(declare-fun lt!730080 () Unit!35842)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!671 (LexerInterface!3441 List!21576 List!21575 Token!7208) Unit!35842)

(assert (=> b!1909696 (= lt!730080 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!671 thiss!23328 rules!3198 lt!730072 (h!26896 tokens!598)))))

(declare-fun e!1219689 () Bool)

(assert (=> b!1909696 e!1219689))

(declare-fun res!852642 () Bool)

(assert (=> b!1909696 (=> (not res!852642) (not e!1219689))))

(declare-fun lt!730084 () Option!4362)

(declare-fun isDefined!3660 (Option!4362) Bool)

(assert (=> b!1909696 (= res!852642 (isDefined!3660 lt!730084))))

(assert (=> b!1909696 (= lt!730084 (maxPrefix!1887 thiss!23328 rules!3198 lt!730072))))

(declare-fun lt!730073 () BalanceConc!14114)

(declare-fun list!8748 (BalanceConc!14114) List!21575)

(assert (=> b!1909696 (= lt!730072 (list!8748 lt!730073))))

(assert (=> b!1909696 e!1219705))

(declare-fun res!852630 () Bool)

(assert (=> b!1909696 (=> (not res!852630) (not e!1219705))))

(assert (=> b!1909696 (= res!852630 (isDefined!3659 lt!730069))))

(assert (=> b!1909696 (= lt!730069 (getRuleFromTag!671 thiss!23328 rules!3198 (tag!4262 (rule!6027 separatorToken!354))))))

(declare-fun lt!730077 () Unit!35842)

(assert (=> b!1909696 (= lt!730077 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!671 thiss!23328 rules!3198 lt!730076 separatorToken!354))))

(declare-fun charsOf!2384 (Token!7208) BalanceConc!14114)

(assert (=> b!1909696 (= lt!730076 (list!8748 (charsOf!2384 separatorToken!354)))))

(declare-fun lt!730078 () Unit!35842)

(declare-fun lemmaEqSameImage!536 (TokenValueInjection!7512 BalanceConc!14114 BalanceConc!14114) Unit!35842)

(declare-fun seqFromList!2700 (List!21575) BalanceConc!14114)

(assert (=> b!1909696 (= lt!730078 (lemmaEqSameImage!536 (transformation!3828 (rule!6027 (h!26896 tokens!598))) lt!730073 (seqFromList!2700 (originalCharacters!4635 (h!26896 tokens!598)))))))

(declare-fun lt!730082 () Unit!35842)

(declare-fun lemmaSemiInverse!807 (TokenValueInjection!7512 BalanceConc!14114) Unit!35842)

(assert (=> b!1909696 (= lt!730082 (lemmaSemiInverse!807 (transformation!3828 (rule!6027 (h!26896 tokens!598))) lt!730073))))

(assert (=> b!1909696 (= lt!730073 (charsOf!2384 (h!26896 tokens!598)))))

(declare-fun b!1909697 () Bool)

(declare-fun Unit!35845 () Unit!35842)

(assert (=> b!1909697 (= e!1219709 Unit!35845)))

(declare-fun lt!730086 () Unit!35842)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!236 (Regex!5253 List!21575 C!10652) Unit!35842)

(assert (=> b!1909697 (= lt!730086 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!236 (regex!3828 (rule!6027 separatorToken!354)) lt!730076 lt!730083))))

(declare-fun res!852641 () Bool)

(assert (=> b!1909697 (= res!852641 (not (matchR!2539 (regex!3828 (rule!6027 separatorToken!354)) lt!730076)))))

(assert (=> b!1909697 (=> (not res!852641) (not e!1219698))))

(assert (=> b!1909697 e!1219698))

(declare-fun b!1909698 () Bool)

(declare-fun e!1219690 () Bool)

(declare-fun tp!544985 () Bool)

(assert (=> b!1909698 (= e!1219690 (and e!1219711 tp!544985))))

(declare-fun b!1909699 () Bool)

(declare-fun res!852636 () Bool)

(assert (=> b!1909699 (=> (not res!852636) (not e!1219707))))

(assert (=> b!1909699 (= res!852636 (isSeparator!3828 (rule!6027 separatorToken!354)))))

(declare-fun b!1909700 () Bool)

(declare-fun res!852646 () Bool)

(assert (=> b!1909700 (=> (not res!852646) (not e!1219707))))

(declare-fun sepAndNonSepRulesDisjointChars!926 (List!21576 List!21576) Bool)

(assert (=> b!1909700 (= res!852646 (sepAndNonSepRulesDisjointChars!926 rules!3198 rules!3198))))

(declare-fun e!1219693 () Bool)

(declare-fun tp!544984 () Bool)

(declare-fun b!1909701 () Bool)

(assert (=> b!1909701 (= e!1219701 (and tp!544984 (inv!28601 (tag!4262 (rule!6027 (h!26896 tokens!598)))) (inv!28604 (transformation!3828 (rule!6027 (h!26896 tokens!598)))) e!1219693))))

(declare-fun b!1909702 () Bool)

(declare-fun e!1219712 () Bool)

(assert (=> b!1909702 (= e!1219696 e!1219712)))

(declare-fun res!852639 () Bool)

(assert (=> b!1909702 (=> (not res!852639) (not e!1219712))))

(declare-fun lt!730085 () Rule!7456)

(assert (=> b!1909702 (= res!852639 (matchR!2539 (regex!3828 lt!730085) lt!730072))))

(assert (=> b!1909702 (= lt!730085 (get!6682 lt!730088))))

(declare-fun b!1909703 () Bool)

(assert (=> b!1909703 (= e!1219712 (= (rule!6027 (h!26896 tokens!598)) lt!730085))))

(declare-fun e!1219697 () Bool)

(declare-fun tp!544987 () Bool)

(declare-fun e!1219704 () Bool)

(declare-fun b!1909704 () Bool)

(assert (=> b!1909704 (= e!1219697 (and (inv!21 (value!120689 separatorToken!354)) e!1219704 tp!544987))))

(declare-fun b!1909705 () Bool)

(declare-fun res!852634 () Bool)

(assert (=> b!1909705 (=> (not res!852634) (not e!1219707))))

(assert (=> b!1909705 (= res!852634 ((_ is Cons!21495) tokens!598))))

(declare-fun e!1219699 () Bool)

(declare-fun tp!544982 () Bool)

(declare-fun b!1909706 () Bool)

(declare-fun inv!28605 (Token!7208) Bool)

(assert (=> b!1909706 (= e!1219699 (and (inv!28605 (h!26896 tokens!598)) e!1219708 tp!544982))))

(assert (=> b!1909707 (= e!1219691 (and tp!544992 tp!544981))))

(declare-fun b!1909708 () Bool)

(declare-fun res!852631 () Bool)

(assert (=> b!1909708 (=> (not res!852631) (not e!1219707))))

(declare-fun lambda!74581 () Int)

(declare-fun forall!4518 (List!21577 Int) Bool)

(assert (=> b!1909708 (= res!852631 (forall!4518 tokens!598 lambda!74581))))

(declare-fun tp!544990 () Bool)

(declare-fun b!1909709 () Bool)

(declare-fun e!1219688 () Bool)

(assert (=> b!1909709 (= e!1219704 (and tp!544990 (inv!28601 (tag!4262 (rule!6027 separatorToken!354))) (inv!28604 (transformation!3828 (rule!6027 separatorToken!354))) e!1219688))))

(declare-fun b!1909710 () Bool)

(declare-fun res!852633 () Bool)

(assert (=> b!1909710 (=> (not res!852633) (not e!1219707))))

(declare-fun rulesProduceEachTokenIndividuallyList!1172 (LexerInterface!3441 List!21576 List!21577) Bool)

(assert (=> b!1909710 (= res!852633 (rulesProduceEachTokenIndividuallyList!1172 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1909711 () Bool)

(assert (=> b!1909711 (= e!1219695 true)))

(declare-fun lt!730071 () Bool)

(assert (=> b!1909711 (= lt!730071 (contains!3872 rules!3198 (rule!6027 (h!26896 tokens!598))))))

(assert (=> b!1909712 (= e!1219693 (and tp!544983 tp!544988))))

(assert (=> b!1909713 (= e!1219688 (and tp!544986 tp!544991))))

(declare-fun b!1909714 () Bool)

(declare-fun get!6683 (Option!4362) tuple2!20236)

(assert (=> b!1909714 (= e!1219689 (= (_1!11587 (get!6683 lt!730084)) (h!26896 tokens!598)))))

(declare-fun res!852637 () Bool)

(assert (=> start!191628 (=> (not res!852637) (not e!1219707))))

(assert (=> start!191628 (= res!852637 ((_ is Lexer!3439) thiss!23328))))

(assert (=> start!191628 e!1219707))

(assert (=> start!191628 true))

(assert (=> start!191628 e!1219690))

(assert (=> start!191628 e!1219699))

(assert (=> start!191628 (and (inv!28605 separatorToken!354) e!1219697)))

(declare-fun b!1909693 () Bool)

(declare-fun res!852635 () Bool)

(assert (=> b!1909693 (=> (not res!852635) (not e!1219707))))

(declare-fun rulesInvariant!3048 (LexerInterface!3441 List!21576) Bool)

(assert (=> b!1909693 (= res!852635 (rulesInvariant!3048 thiss!23328 rules!3198))))

(assert (= (and start!191628 res!852637) b!1909694))

(assert (= (and b!1909694 res!852645) b!1909693))

(assert (= (and b!1909693 res!852635) b!1909710))

(assert (= (and b!1909710 res!852633) b!1909688))

(assert (= (and b!1909688 res!852638) b!1909699))

(assert (= (and b!1909699 res!852636) b!1909708))

(assert (= (and b!1909708 res!852631) b!1909700))

(assert (= (and b!1909700 res!852646) b!1909705))

(assert (= (and b!1909705 res!852634) b!1909696))

(assert (= (and b!1909696 res!852630) b!1909686))

(assert (= (and b!1909686 res!852632) b!1909692))

(assert (= (and b!1909696 res!852642) b!1909714))

(assert (= (and b!1909696 res!852640) b!1909702))

(assert (= (and b!1909702 res!852639) b!1909703))

(assert (= (and b!1909696 (not res!852643)) b!1909689))

(assert (= (and b!1909689 c!311210) b!1909697))

(assert (= (and b!1909689 (not c!311210)) b!1909691))

(assert (= (and b!1909697 res!852641) b!1909687))

(assert (= (and b!1909689 (not res!852644)) b!1909711))

(assert (= b!1909695 b!1909707))

(assert (= b!1909698 b!1909695))

(assert (= (and start!191628 ((_ is Cons!21494) rules!3198)) b!1909698))

(assert (= b!1909701 b!1909712))

(assert (= b!1909690 b!1909701))

(assert (= b!1909706 b!1909690))

(assert (= (and start!191628 ((_ is Cons!21495) tokens!598)) b!1909706))

(assert (= b!1909709 b!1909713))

(assert (= b!1909704 b!1909709))

(assert (= start!191628 b!1909704))

(declare-fun m!2343073 () Bool)

(assert (=> b!1909711 m!2343073))

(declare-fun m!2343075 () Bool)

(assert (=> b!1909714 m!2343075))

(declare-fun m!2343077 () Bool)

(assert (=> b!1909709 m!2343077))

(declare-fun m!2343079 () Bool)

(assert (=> b!1909709 m!2343079))

(declare-fun m!2343081 () Bool)

(assert (=> b!1909689 m!2343081))

(declare-fun m!2343083 () Bool)

(assert (=> b!1909689 m!2343083))

(declare-fun m!2343085 () Bool)

(assert (=> b!1909689 m!2343085))

(declare-fun m!2343087 () Bool)

(assert (=> b!1909689 m!2343087))

(declare-fun m!2343089 () Bool)

(assert (=> b!1909689 m!2343089))

(declare-fun m!2343091 () Bool)

(assert (=> b!1909689 m!2343091))

(declare-fun m!2343093 () Bool)

(assert (=> b!1909689 m!2343093))

(assert (=> b!1909689 m!2343085))

(declare-fun m!2343095 () Bool)

(assert (=> b!1909689 m!2343095))

(assert (=> b!1909689 m!2343081))

(assert (=> b!1909689 m!2343087))

(declare-fun m!2343097 () Bool)

(assert (=> b!1909689 m!2343097))

(declare-fun m!2343099 () Bool)

(assert (=> b!1909701 m!2343099))

(declare-fun m!2343101 () Bool)

(assert (=> b!1909701 m!2343101))

(declare-fun m!2343103 () Bool)

(assert (=> b!1909690 m!2343103))

(declare-fun m!2343105 () Bool)

(assert (=> b!1909696 m!2343105))

(declare-fun m!2343107 () Bool)

(assert (=> b!1909696 m!2343107))

(declare-fun m!2343109 () Bool)

(assert (=> b!1909696 m!2343109))

(declare-fun m!2343111 () Bool)

(assert (=> b!1909696 m!2343111))

(declare-fun m!2343113 () Bool)

(assert (=> b!1909696 m!2343113))

(declare-fun m!2343115 () Bool)

(assert (=> b!1909696 m!2343115))

(declare-fun m!2343117 () Bool)

(assert (=> b!1909696 m!2343117))

(declare-fun m!2343119 () Bool)

(assert (=> b!1909696 m!2343119))

(declare-fun m!2343121 () Bool)

(assert (=> b!1909696 m!2343121))

(declare-fun m!2343123 () Bool)

(assert (=> b!1909696 m!2343123))

(declare-fun m!2343125 () Bool)

(assert (=> b!1909696 m!2343125))

(declare-fun m!2343127 () Bool)

(assert (=> b!1909696 m!2343127))

(assert (=> b!1909696 m!2343113))

(declare-fun m!2343129 () Bool)

(assert (=> b!1909696 m!2343129))

(declare-fun m!2343131 () Bool)

(assert (=> b!1909696 m!2343131))

(assert (=> b!1909696 m!2343127))

(declare-fun m!2343133 () Bool)

(assert (=> b!1909696 m!2343133))

(assert (=> b!1909696 m!2343111))

(declare-fun m!2343135 () Bool)

(assert (=> b!1909696 m!2343135))

(declare-fun m!2343137 () Bool)

(assert (=> b!1909696 m!2343137))

(declare-fun m!2343139 () Bool)

(assert (=> b!1909696 m!2343139))

(declare-fun m!2343141 () Bool)

(assert (=> b!1909706 m!2343141))

(declare-fun m!2343143 () Bool)

(assert (=> b!1909700 m!2343143))

(declare-fun m!2343145 () Bool)

(assert (=> b!1909693 m!2343145))

(declare-fun m!2343147 () Bool)

(assert (=> b!1909695 m!2343147))

(declare-fun m!2343149 () Bool)

(assert (=> b!1909695 m!2343149))

(declare-fun m!2343151 () Bool)

(assert (=> b!1909686 m!2343151))

(declare-fun m!2343153 () Bool)

(assert (=> b!1909686 m!2343153))

(declare-fun m!2343155 () Bool)

(assert (=> b!1909688 m!2343155))

(declare-fun m!2343157 () Bool)

(assert (=> start!191628 m!2343157))

(declare-fun m!2343159 () Bool)

(assert (=> b!1909704 m!2343159))

(declare-fun m!2343161 () Bool)

(assert (=> b!1909702 m!2343161))

(declare-fun m!2343163 () Bool)

(assert (=> b!1909702 m!2343163))

(declare-fun m!2343165 () Bool)

(assert (=> b!1909708 m!2343165))

(declare-fun m!2343167 () Bool)

(assert (=> b!1909710 m!2343167))

(declare-fun m!2343169 () Bool)

(assert (=> b!1909697 m!2343169))

(declare-fun m!2343171 () Bool)

(assert (=> b!1909697 m!2343171))

(declare-fun m!2343173 () Bool)

(assert (=> b!1909694 m!2343173))

(check-sat b_and!148703 b_and!148705 (not b!1909714) (not b_next!54499) (not b!1909686) (not b!1909711) (not b!1909696) (not b!1909708) b_and!148711 b_and!148709 (not b!1909702) (not b!1909710) (not b_next!54493) (not b!1909689) (not b!1909695) (not start!191628) (not b!1909697) b_and!148713 (not b!1909704) (not b!1909694) (not b_next!54495) (not b_next!54497) (not b_next!54489) (not b_next!54491) (not b!1909693) (not b!1909688) (not b!1909706) (not b!1909709) b_and!148707 (not b!1909698) (not b!1909700) (not b!1909701) (not b!1909690))
(check-sat b_and!148703 b_and!148705 (not b_next!54493) (not b_next!54499) b_and!148707 b_and!148711 b_and!148709 b_and!148713 (not b_next!54495) (not b_next!54497) (not b_next!54489) (not b_next!54491))
