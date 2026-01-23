; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!352048 () Bool)

(assert start!352048)

(declare-fun b!3749696 () Bool)

(declare-fun b_free!100253 () Bool)

(declare-fun b_next!100957 () Bool)

(assert (=> b!3749696 (= b_free!100253 (not b_next!100957))))

(declare-fun tp!1144734 () Bool)

(declare-fun b_and!278559 () Bool)

(assert (=> b!3749696 (= tp!1144734 b_and!278559)))

(declare-fun b_free!100255 () Bool)

(declare-fun b_next!100959 () Bool)

(assert (=> b!3749696 (= b_free!100255 (not b_next!100959))))

(declare-fun tp!1144732 () Bool)

(declare-fun b_and!278561 () Bool)

(assert (=> b!3749696 (= tp!1144732 b_and!278561)))

(declare-fun b!3749695 () Bool)

(declare-fun b_free!100257 () Bool)

(declare-fun b_next!100961 () Bool)

(assert (=> b!3749695 (= b_free!100257 (not b_next!100961))))

(declare-fun tp!1144723 () Bool)

(declare-fun b_and!278563 () Bool)

(assert (=> b!3749695 (= tp!1144723 b_and!278563)))

(declare-fun b_free!100259 () Bool)

(declare-fun b_next!100963 () Bool)

(assert (=> b!3749695 (= b_free!100259 (not b_next!100963))))

(declare-fun tp!1144733 () Bool)

(declare-fun b_and!278565 () Bool)

(assert (=> b!3749695 (= tp!1144733 b_and!278565)))

(declare-fun b!3749701 () Bool)

(declare-fun b_free!100261 () Bool)

(declare-fun b_next!100965 () Bool)

(assert (=> b!3749701 (= b_free!100261 (not b_next!100965))))

(declare-fun tp!1144725 () Bool)

(declare-fun b_and!278567 () Bool)

(assert (=> b!3749701 (= tp!1144725 b_and!278567)))

(declare-fun b_free!100263 () Bool)

(declare-fun b_next!100967 () Bool)

(assert (=> b!3749701 (= b_free!100263 (not b_next!100967))))

(declare-fun tp!1144730 () Bool)

(declare-fun b_and!278569 () Bool)

(assert (=> b!3749701 (= tp!1144730 b_and!278569)))

(declare-fun b!3749689 () Bool)

(declare-fun e!2319193 () Bool)

(declare-fun e!2319188 () Bool)

(declare-fun tp!1144729 () Bool)

(assert (=> b!3749689 (= e!2319193 (and e!2319188 tp!1144729))))

(declare-fun e!2319194 () Bool)

(declare-datatypes ((C!22210 0))(
  ( (C!22211 (val!13153 Int)) )
))
(declare-datatypes ((List!40070 0))(
  ( (Nil!39946) (Cons!39946 (h!45366 C!22210) (t!302887 List!40070)) )
))
(declare-datatypes ((IArray!24417 0))(
  ( (IArray!24418 (innerList!12266 List!40070)) )
))
(declare-datatypes ((Regex!11012 0))(
  ( (ElementMatch!11012 (c!649128 C!22210)) (Concat!17349 (regOne!22536 Regex!11012) (regTwo!22536 Regex!11012)) (EmptyExpr!11012) (Star!11012 (reg!11341 Regex!11012)) (EmptyLang!11012) (Union!11012 (regOne!22537 Regex!11012) (regTwo!22537 Regex!11012)) )
))
(declare-datatypes ((List!40071 0))(
  ( (Nil!39947) (Cons!39947 (h!45367 (_ BitVec 16)) (t!302888 List!40071)) )
))
(declare-datatypes ((TokenValue!6337 0))(
  ( (FloatLiteralValue!12674 (text!44804 List!40071)) (TokenValueExt!6336 (__x!24891 Int)) (Broken!31685 (value!194590 List!40071)) (Object!6460) (End!6337) (Def!6337) (Underscore!6337) (Match!6337) (Else!6337) (Error!6337) (Case!6337) (If!6337) (Extends!6337) (Abstract!6337) (Class!6337) (Val!6337) (DelimiterValue!12674 (del!6397 List!40071)) (KeywordValue!6343 (value!194591 List!40071)) (CommentValue!12674 (value!194592 List!40071)) (WhitespaceValue!12674 (value!194593 List!40071)) (IndentationValue!6337 (value!194594 List!40071)) (String!45312) (Int32!6337) (Broken!31686 (value!194595 List!40071)) (Boolean!6338) (Unit!57716) (OperatorValue!6340 (op!6397 List!40071)) (IdentifierValue!12674 (value!194596 List!40071)) (IdentifierValue!12675 (value!194597 List!40071)) (WhitespaceValue!12675 (value!194598 List!40071)) (True!12674) (False!12674) (Broken!31687 (value!194599 List!40071)) (Broken!31688 (value!194600 List!40071)) (True!12675) (RightBrace!6337) (RightBracket!6337) (Colon!6337) (Null!6337) (Comma!6337) (LeftBracket!6337) (False!12675) (LeftBrace!6337) (ImaginaryLiteralValue!6337 (text!44805 List!40071)) (StringLiteralValue!19011 (value!194601 List!40071)) (EOFValue!6337 (value!194602 List!40071)) (IdentValue!6337 (value!194603 List!40071)) (DelimiterValue!12675 (value!194604 List!40071)) (DedentValue!6337 (value!194605 List!40071)) (NewLineValue!6337 (value!194606 List!40071)) (IntegerValue!19011 (value!194607 (_ BitVec 32)) (text!44806 List!40071)) (IntegerValue!19012 (value!194608 Int) (text!44807 List!40071)) (Times!6337) (Or!6337) (Equal!6337) (Minus!6337) (Broken!31689 (value!194609 List!40071)) (And!6337) (Div!6337) (LessEqual!6337) (Mod!6337) (Concat!17350) (Not!6337) (Plus!6337) (SpaceValue!6337 (value!194610 List!40071)) (IntegerValue!19013 (value!194611 Int) (text!44808 List!40071)) (StringLiteralValue!19012 (text!44809 List!40071)) (FloatLiteralValue!12675 (text!44810 List!40071)) (BytesLiteralValue!6337 (value!194612 List!40071)) (CommentValue!12675 (value!194613 List!40071)) (StringLiteralValue!19013 (value!194614 List!40071)) (ErrorTokenValue!6337 (msg!6398 List!40071)) )
))
(declare-datatypes ((String!45313 0))(
  ( (String!45314 (value!194615 String)) )
))
(declare-datatypes ((Conc!12206 0))(
  ( (Node!12206 (left!30911 Conc!12206) (right!31241 Conc!12206) (csize!24642 Int) (cheight!12417 Int)) (Leaf!18944 (xs!15408 IArray!24417) (csize!24643 Int)) (Empty!12206) )
))
(declare-datatypes ((BalanceConc!24026 0))(
  ( (BalanceConc!24027 (c!649129 Conc!12206)) )
))
(declare-datatypes ((TokenValueInjection!12102 0))(
  ( (TokenValueInjection!12103 (toValue!8455 Int) (toChars!8314 Int)) )
))
(declare-datatypes ((Rule!12014 0))(
  ( (Rule!12015 (regex!6107 Regex!11012) (tag!6967 String!45313) (isSeparator!6107 Bool) (transformation!6107 TokenValueInjection!12102)) )
))
(declare-datatypes ((Token!11352 0))(
  ( (Token!11353 (value!194616 TokenValue!6337) (rule!8871 Rule!12014) (size!30075 Int) (originalCharacters!6707 List!40070)) )
))
(declare-datatypes ((List!40072 0))(
  ( (Nil!39948) (Cons!39948 (h!45368 Token!11352) (t!302889 List!40072)) )
))
(declare-fun tokens!606 () List!40072)

(declare-fun tp!1144728 () Bool)

(declare-fun b!3749690 () Bool)

(declare-fun e!2319196 () Bool)

(declare-fun inv!53454 (Token!11352) Bool)

(assert (=> b!3749690 (= e!2319194 (and (inv!53454 (h!45368 tokens!606)) e!2319196 tp!1144728))))

(declare-fun e!2319185 () Bool)

(declare-fun b!3749691 () Bool)

(declare-fun tp!1144735 () Bool)

(declare-fun inv!21 (TokenValue!6337) Bool)

(assert (=> b!3749691 (= e!2319196 (and (inv!21 (value!194616 (h!45368 tokens!606))) e!2319185 tp!1144735))))

(declare-fun b!3749692 () Bool)

(declare-fun res!1519809 () Bool)

(declare-fun e!2319189 () Bool)

(assert (=> b!3749692 (=> (not res!1519809) (not e!2319189))))

(declare-fun t!8579 () Token!11352)

(declare-fun contains!8159 (List!40072 Token!11352) Bool)

(assert (=> b!3749692 (= res!1519809 (contains!8159 tokens!606 t!8579))))

(declare-fun b!3749693 () Bool)

(declare-fun res!1519814 () Bool)

(assert (=> b!3749693 (=> (not res!1519814) (not e!2319189))))

(declare-datatypes ((LexerInterface!5696 0))(
  ( (LexerInterfaceExt!5693 (__x!24892 Int)) (Lexer!5694) )
))
(declare-fun thiss!27232 () LexerInterface!5696)

(declare-datatypes ((List!40073 0))(
  ( (Nil!39949) (Cons!39949 (h!45369 Rule!12014) (t!302890 List!40073)) )
))
(declare-fun rules!4236 () List!40073)

(declare-fun rulesInvariant!5093 (LexerInterface!5696 List!40073) Bool)

(assert (=> b!3749693 (= res!1519814 (rulesInvariant!5093 thiss!27232 rules!4236))))

(declare-fun b!3749694 () Bool)

(declare-fun res!1519813 () Bool)

(assert (=> b!3749694 (=> (not res!1519813) (not e!2319189))))

(declare-fun isEmpty!23536 (List!40073) Bool)

(assert (=> b!3749694 (= res!1519813 (not (isEmpty!23536 rules!4236)))))

(declare-fun e!2319186 () Bool)

(assert (=> b!3749695 (= e!2319186 (and tp!1144723 tp!1144733))))

(declare-fun e!2319187 () Bool)

(assert (=> b!3749696 (= e!2319187 (and tp!1144734 tp!1144732))))

(declare-fun b!3749697 () Bool)

(declare-fun res!1519811 () Bool)

(assert (=> b!3749697 (=> (not res!1519811) (not e!2319189))))

(declare-fun rulesProduceEachTokenIndividuallyList!1924 (LexerInterface!5696 List!40073 List!40072) Bool)

(assert (=> b!3749697 (= res!1519811 (rulesProduceEachTokenIndividuallyList!1924 thiss!27232 rules!4236 tokens!606))))

(declare-fun e!2319184 () Bool)

(declare-fun e!2319195 () Bool)

(declare-fun tp!1144731 () Bool)

(declare-fun b!3749698 () Bool)

(assert (=> b!3749698 (= e!2319184 (and (inv!21 (value!194616 t!8579)) e!2319195 tp!1144731))))

(declare-fun b!3749699 () Bool)

(declare-fun res!1519810 () Bool)

(assert (=> b!3749699 (=> (not res!1519810) (not e!2319189))))

(assert (=> b!3749699 (= res!1519810 (contains!8159 (t!302889 tokens!606) t!8579))))

(declare-fun b!3749700 () Bool)

(declare-fun res!1519808 () Bool)

(assert (=> b!3749700 (=> (not res!1519808) (not e!2319189))))

(assert (=> b!3749700 (= res!1519808 (and (or (not (is-Cons!39948 tokens!606)) (not (= (h!45368 tokens!606) t!8579))) (is-Cons!39948 tokens!606)))))

(declare-fun e!2319183 () Bool)

(assert (=> b!3749701 (= e!2319183 (and tp!1144725 tp!1144730))))

(declare-fun b!3749702 () Bool)

(assert (=> b!3749702 (= e!2319189 (not (rulesProduceEachTokenIndividuallyList!1924 thiss!27232 rules!4236 (t!302889 tokens!606))))))

(declare-fun tp!1144726 () Bool)

(declare-fun b!3749703 () Bool)

(declare-fun inv!53451 (String!45313) Bool)

(declare-fun inv!53455 (TokenValueInjection!12102) Bool)

(assert (=> b!3749703 (= e!2319188 (and tp!1144726 (inv!53451 (tag!6967 (h!45369 rules!4236))) (inv!53455 (transformation!6107 (h!45369 rules!4236))) e!2319183))))

(declare-fun b!3749704 () Bool)

(declare-fun tp!1144727 () Bool)

(assert (=> b!3749704 (= e!2319185 (and tp!1144727 (inv!53451 (tag!6967 (rule!8871 (h!45368 tokens!606)))) (inv!53455 (transformation!6107 (rule!8871 (h!45368 tokens!606)))) e!2319187))))

(declare-fun b!3749705 () Bool)

(declare-fun tp!1144724 () Bool)

(assert (=> b!3749705 (= e!2319195 (and tp!1144724 (inv!53451 (tag!6967 (rule!8871 t!8579))) (inv!53455 (transformation!6107 (rule!8871 t!8579))) e!2319186))))

(declare-fun res!1519812 () Bool)

(assert (=> start!352048 (=> (not res!1519812) (not e!2319189))))

(assert (=> start!352048 (= res!1519812 (is-Lexer!5694 thiss!27232))))

(assert (=> start!352048 e!2319189))

(assert (=> start!352048 true))

(assert (=> start!352048 e!2319193))

(assert (=> start!352048 e!2319194))

(assert (=> start!352048 (and (inv!53454 t!8579) e!2319184)))

(assert (= (and start!352048 res!1519812) b!3749694))

(assert (= (and b!3749694 res!1519813) b!3749693))

(assert (= (and b!3749693 res!1519814) b!3749692))

(assert (= (and b!3749692 res!1519809) b!3749697))

(assert (= (and b!3749697 res!1519811) b!3749700))

(assert (= (and b!3749700 res!1519808) b!3749699))

(assert (= (and b!3749699 res!1519810) b!3749702))

(assert (= b!3749703 b!3749701))

(assert (= b!3749689 b!3749703))

(assert (= (and start!352048 (is-Cons!39949 rules!4236)) b!3749689))

(assert (= b!3749704 b!3749696))

(assert (= b!3749691 b!3749704))

(assert (= b!3749690 b!3749691))

(assert (= (and start!352048 (is-Cons!39948 tokens!606)) b!3749690))

(assert (= b!3749705 b!3749695))

(assert (= b!3749698 b!3749705))

(assert (= start!352048 b!3749698))

(declare-fun m!4241025 () Bool)

(assert (=> b!3749699 m!4241025))

(declare-fun m!4241027 () Bool)

(assert (=> b!3749691 m!4241027))

(declare-fun m!4241029 () Bool)

(assert (=> b!3749697 m!4241029))

(declare-fun m!4241031 () Bool)

(assert (=> b!3749690 m!4241031))

(declare-fun m!4241033 () Bool)

(assert (=> start!352048 m!4241033))

(declare-fun m!4241035 () Bool)

(assert (=> b!3749694 m!4241035))

(declare-fun m!4241037 () Bool)

(assert (=> b!3749704 m!4241037))

(declare-fun m!4241039 () Bool)

(assert (=> b!3749704 m!4241039))

(declare-fun m!4241041 () Bool)

(assert (=> b!3749705 m!4241041))

(declare-fun m!4241043 () Bool)

(assert (=> b!3749705 m!4241043))

(declare-fun m!4241045 () Bool)

(assert (=> b!3749703 m!4241045))

(declare-fun m!4241047 () Bool)

(assert (=> b!3749703 m!4241047))

(declare-fun m!4241049 () Bool)

(assert (=> b!3749698 m!4241049))

(declare-fun m!4241051 () Bool)

(assert (=> b!3749702 m!4241051))

(declare-fun m!4241053 () Bool)

(assert (=> b!3749693 m!4241053))

(declare-fun m!4241055 () Bool)

(assert (=> b!3749692 m!4241055))

(push 1)

(assert (not b_next!100957))

(assert (not b!3749704))

(assert (not b!3749702))

(assert b_and!278561)

(assert (not b!3749692))

(assert (not b!3749694))

(assert (not b!3749693))

(assert b_and!278559)

(assert (not b!3749689))

(assert (not b!3749698))

(assert (not b!3749699))

(assert (not b!3749697))

(assert (not b!3749705))

(assert (not b_next!100967))

(assert b_and!278569)

(assert (not start!352048))

(assert (not b_next!100965))

(assert (not b!3749691))

(assert (not b_next!100961))

(assert b_and!278563)

(assert (not b_next!100959))

(assert (not b!3749690))

(assert (not b!3749703))

(assert b_and!278567)

(assert b_and!278565)

(assert (not b_next!100963))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!100967))

(assert (not b_next!100957))

(assert (not b_next!100961))

(assert b_and!278561)

(assert b_and!278559)

(assert b_and!278569)

(assert (not b_next!100965))

(assert b_and!278563)

(assert (not b_next!100959))

(assert b_and!278567)

(assert b_and!278565)

(assert (not b_next!100963))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1093908 () Bool)

(assert (=> d!1093908 (= (inv!53451 (tag!6967 (h!45369 rules!4236))) (= (mod (str.len (value!194615 (tag!6967 (h!45369 rules!4236)))) 2) 0))))

(assert (=> b!3749703 d!1093908))

(declare-fun d!1093910 () Bool)

(declare-fun res!1519846 () Bool)

(declare-fun e!2319247 () Bool)

(assert (=> d!1093910 (=> (not res!1519846) (not e!2319247))))

(declare-fun semiInverseModEq!2615 (Int Int) Bool)

(assert (=> d!1093910 (= res!1519846 (semiInverseModEq!2615 (toChars!8314 (transformation!6107 (h!45369 rules!4236))) (toValue!8455 (transformation!6107 (h!45369 rules!4236)))))))

(assert (=> d!1093910 (= (inv!53455 (transformation!6107 (h!45369 rules!4236))) e!2319247)))

(declare-fun b!3749759 () Bool)

(declare-fun equivClasses!2514 (Int Int) Bool)

(assert (=> b!3749759 (= e!2319247 (equivClasses!2514 (toChars!8314 (transformation!6107 (h!45369 rules!4236))) (toValue!8455 (transformation!6107 (h!45369 rules!4236)))))))

(assert (= (and d!1093910 res!1519846) b!3749759))

(declare-fun m!4241089 () Bool)

(assert (=> d!1093910 m!4241089))

(declare-fun m!4241091 () Bool)

(assert (=> b!3749759 m!4241091))

(assert (=> b!3749703 d!1093910))

(declare-fun d!1093912 () Bool)

(declare-fun lt!1299747 () Bool)

(declare-fun content!5860 (List!40072) (Set Token!11352))

(assert (=> d!1093912 (= lt!1299747 (set.member t!8579 (content!5860 tokens!606)))))

(declare-fun e!2319252 () Bool)

(assert (=> d!1093912 (= lt!1299747 e!2319252)))

(declare-fun res!1519852 () Bool)

(assert (=> d!1093912 (=> (not res!1519852) (not e!2319252))))

(assert (=> d!1093912 (= res!1519852 (is-Cons!39948 tokens!606))))

(assert (=> d!1093912 (= (contains!8159 tokens!606 t!8579) lt!1299747)))

(declare-fun b!3749764 () Bool)

(declare-fun e!2319253 () Bool)

(assert (=> b!3749764 (= e!2319252 e!2319253)))

(declare-fun res!1519851 () Bool)

(assert (=> b!3749764 (=> res!1519851 e!2319253)))

(assert (=> b!3749764 (= res!1519851 (= (h!45368 tokens!606) t!8579))))

(declare-fun b!3749765 () Bool)

(assert (=> b!3749765 (= e!2319253 (contains!8159 (t!302889 tokens!606) t!8579))))

(assert (= (and d!1093912 res!1519852) b!3749764))

(assert (= (and b!3749764 (not res!1519851)) b!3749765))

(declare-fun m!4241093 () Bool)

(assert (=> d!1093912 m!4241093))

(declare-fun m!4241095 () Bool)

(assert (=> d!1093912 m!4241095))

(assert (=> b!3749765 m!4241025))

(assert (=> b!3749692 d!1093912))

(declare-fun d!1093914 () Bool)

(assert (=> d!1093914 (= (isEmpty!23536 rules!4236) (is-Nil!39949 rules!4236))))

(assert (=> b!3749694 d!1093914))

(declare-fun d!1093916 () Bool)

(assert (=> d!1093916 (= (inv!53451 (tag!6967 (rule!8871 (h!45368 tokens!606)))) (= (mod (str.len (value!194615 (tag!6967 (rule!8871 (h!45368 tokens!606))))) 2) 0))))

(assert (=> b!3749704 d!1093916))

(declare-fun d!1093918 () Bool)

(declare-fun res!1519853 () Bool)

(declare-fun e!2319254 () Bool)

(assert (=> d!1093918 (=> (not res!1519853) (not e!2319254))))

(assert (=> d!1093918 (= res!1519853 (semiInverseModEq!2615 (toChars!8314 (transformation!6107 (rule!8871 (h!45368 tokens!606)))) (toValue!8455 (transformation!6107 (rule!8871 (h!45368 tokens!606))))))))

(assert (=> d!1093918 (= (inv!53455 (transformation!6107 (rule!8871 (h!45368 tokens!606)))) e!2319254)))

(declare-fun b!3749766 () Bool)

(assert (=> b!3749766 (= e!2319254 (equivClasses!2514 (toChars!8314 (transformation!6107 (rule!8871 (h!45368 tokens!606)))) (toValue!8455 (transformation!6107 (rule!8871 (h!45368 tokens!606))))))))

(assert (= (and d!1093918 res!1519853) b!3749766))

(declare-fun m!4241097 () Bool)

(assert (=> d!1093918 m!4241097))

(declare-fun m!4241099 () Bool)

(assert (=> b!3749766 m!4241099))

(assert (=> b!3749704 d!1093918))

(declare-fun d!1093920 () Bool)

(declare-fun res!1519856 () Bool)

(declare-fun e!2319257 () Bool)

(assert (=> d!1093920 (=> (not res!1519856) (not e!2319257))))

(declare-fun rulesValid!2371 (LexerInterface!5696 List!40073) Bool)

(assert (=> d!1093920 (= res!1519856 (rulesValid!2371 thiss!27232 rules!4236))))

(assert (=> d!1093920 (= (rulesInvariant!5093 thiss!27232 rules!4236) e!2319257)))

(declare-fun b!3749769 () Bool)

(declare-datatypes ((List!40078 0))(
  ( (Nil!39954) (Cons!39954 (h!45374 String!45313) (t!302919 List!40078)) )
))
(declare-fun noDuplicateTag!2372 (LexerInterface!5696 List!40073 List!40078) Bool)

(assert (=> b!3749769 (= e!2319257 (noDuplicateTag!2372 thiss!27232 rules!4236 Nil!39954))))

(assert (= (and d!1093920 res!1519856) b!3749769))

(declare-fun m!4241101 () Bool)

(assert (=> d!1093920 m!4241101))

(declare-fun m!4241103 () Bool)

(assert (=> b!3749769 m!4241103))

(assert (=> b!3749693 d!1093920))

(declare-fun d!1093922 () Bool)

(assert (=> d!1093922 (= (inv!53451 (tag!6967 (rule!8871 t!8579))) (= (mod (str.len (value!194615 (tag!6967 (rule!8871 t!8579)))) 2) 0))))

(assert (=> b!3749705 d!1093922))

(declare-fun d!1093924 () Bool)

(declare-fun res!1519857 () Bool)

(declare-fun e!2319258 () Bool)

(assert (=> d!1093924 (=> (not res!1519857) (not e!2319258))))

(assert (=> d!1093924 (= res!1519857 (semiInverseModEq!2615 (toChars!8314 (transformation!6107 (rule!8871 t!8579))) (toValue!8455 (transformation!6107 (rule!8871 t!8579)))))))

(assert (=> d!1093924 (= (inv!53455 (transformation!6107 (rule!8871 t!8579))) e!2319258)))

(declare-fun b!3749770 () Bool)

(assert (=> b!3749770 (= e!2319258 (equivClasses!2514 (toChars!8314 (transformation!6107 (rule!8871 t!8579))) (toValue!8455 (transformation!6107 (rule!8871 t!8579)))))))

(assert (= (and d!1093924 res!1519857) b!3749770))

(declare-fun m!4241105 () Bool)

(assert (=> d!1093924 m!4241105))

(declare-fun m!4241107 () Bool)

(assert (=> b!3749770 m!4241107))

(assert (=> b!3749705 d!1093924))

(declare-fun d!1093926 () Bool)

(declare-fun res!1519862 () Bool)

(declare-fun e!2319261 () Bool)

(assert (=> d!1093926 (=> (not res!1519862) (not e!2319261))))

(declare-fun isEmpty!23538 (List!40070) Bool)

(assert (=> d!1093926 (= res!1519862 (not (isEmpty!23538 (originalCharacters!6707 t!8579))))))

(assert (=> d!1093926 (= (inv!53454 t!8579) e!2319261)))

(declare-fun b!3749775 () Bool)

(declare-fun res!1519863 () Bool)

(assert (=> b!3749775 (=> (not res!1519863) (not e!2319261))))

(declare-fun list!14710 (BalanceConc!24026) List!40070)

(declare-fun dynLambda!17250 (Int TokenValue!6337) BalanceConc!24026)

(assert (=> b!3749775 (= res!1519863 (= (originalCharacters!6707 t!8579) (list!14710 (dynLambda!17250 (toChars!8314 (transformation!6107 (rule!8871 t!8579))) (value!194616 t!8579)))))))

(declare-fun b!3749776 () Bool)

(declare-fun size!30077 (List!40070) Int)

(assert (=> b!3749776 (= e!2319261 (= (size!30075 t!8579) (size!30077 (originalCharacters!6707 t!8579))))))

(assert (= (and d!1093926 res!1519862) b!3749775))

(assert (= (and b!3749775 res!1519863) b!3749776))

(declare-fun b_lambda!109915 () Bool)

(assert (=> (not b_lambda!109915) (not b!3749775)))

(declare-fun tb!214517 () Bool)

(declare-fun t!302896 () Bool)

(assert (=> (and b!3749696 (= (toChars!8314 (transformation!6107 (rule!8871 (h!45368 tokens!606)))) (toChars!8314 (transformation!6107 (rule!8871 t!8579)))) t!302896) tb!214517))

(declare-fun b!3749781 () Bool)

(declare-fun e!2319264 () Bool)

(declare-fun tp!1144777 () Bool)

(declare-fun inv!53458 (Conc!12206) Bool)

(assert (=> b!3749781 (= e!2319264 (and (inv!53458 (c!649129 (dynLambda!17250 (toChars!8314 (transformation!6107 (rule!8871 t!8579))) (value!194616 t!8579)))) tp!1144777))))

(declare-fun result!261898 () Bool)

(declare-fun inv!53459 (BalanceConc!24026) Bool)

(assert (=> tb!214517 (= result!261898 (and (inv!53459 (dynLambda!17250 (toChars!8314 (transformation!6107 (rule!8871 t!8579))) (value!194616 t!8579))) e!2319264))))

(assert (= tb!214517 b!3749781))

(declare-fun m!4241109 () Bool)

(assert (=> b!3749781 m!4241109))

(declare-fun m!4241111 () Bool)

(assert (=> tb!214517 m!4241111))

(assert (=> b!3749775 t!302896))

(declare-fun b_and!278583 () Bool)

(assert (= b_and!278561 (and (=> t!302896 result!261898) b_and!278583)))

(declare-fun t!302898 () Bool)

(declare-fun tb!214519 () Bool)

(assert (=> (and b!3749695 (= (toChars!8314 (transformation!6107 (rule!8871 t!8579))) (toChars!8314 (transformation!6107 (rule!8871 t!8579)))) t!302898) tb!214519))

(declare-fun result!261902 () Bool)

(assert (= result!261902 result!261898))

(assert (=> b!3749775 t!302898))

(declare-fun b_and!278585 () Bool)

(assert (= b_and!278565 (and (=> t!302898 result!261902) b_and!278585)))

(declare-fun tb!214521 () Bool)

(declare-fun t!302900 () Bool)

(assert (=> (and b!3749701 (= (toChars!8314 (transformation!6107 (h!45369 rules!4236))) (toChars!8314 (transformation!6107 (rule!8871 t!8579)))) t!302900) tb!214521))

(declare-fun result!261904 () Bool)

(assert (= result!261904 result!261898))

(assert (=> b!3749775 t!302900))

(declare-fun b_and!278587 () Bool)

(assert (= b_and!278569 (and (=> t!302900 result!261904) b_and!278587)))

(declare-fun m!4241113 () Bool)

(assert (=> d!1093926 m!4241113))

(declare-fun m!4241115 () Bool)

(assert (=> b!3749775 m!4241115))

(assert (=> b!3749775 m!4241115))

(declare-fun m!4241117 () Bool)

(assert (=> b!3749775 m!4241117))

(declare-fun m!4241119 () Bool)

(assert (=> b!3749776 m!4241119))

(assert (=> start!352048 d!1093926))

(declare-fun b!3749802 () Bool)

(declare-fun e!2319278 () Bool)

(declare-fun inv!16 (TokenValue!6337) Bool)

(assert (=> b!3749802 (= e!2319278 (inv!16 (value!194616 t!8579)))))

(declare-fun d!1093930 () Bool)

(declare-fun c!649141 () Bool)

(assert (=> d!1093930 (= c!649141 (is-IntegerValue!19011 (value!194616 t!8579)))))

(assert (=> d!1093930 (= (inv!21 (value!194616 t!8579)) e!2319278)))

(declare-fun b!3749803 () Bool)

(declare-fun e!2319279 () Bool)

(assert (=> b!3749803 (= e!2319278 e!2319279)))

(declare-fun c!649140 () Bool)

(assert (=> b!3749803 (= c!649140 (is-IntegerValue!19012 (value!194616 t!8579)))))

(declare-fun b!3749804 () Bool)

(declare-fun e!2319277 () Bool)

(declare-fun inv!15 (TokenValue!6337) Bool)

(assert (=> b!3749804 (= e!2319277 (inv!15 (value!194616 t!8579)))))

(declare-fun b!3749805 () Bool)

(declare-fun res!1519868 () Bool)

(assert (=> b!3749805 (=> res!1519868 e!2319277)))

(assert (=> b!3749805 (= res!1519868 (not (is-IntegerValue!19013 (value!194616 t!8579))))))

(assert (=> b!3749805 (= e!2319279 e!2319277)))

(declare-fun b!3749806 () Bool)

(declare-fun inv!17 (TokenValue!6337) Bool)

(assert (=> b!3749806 (= e!2319279 (inv!17 (value!194616 t!8579)))))

(assert (= (and d!1093930 c!649141) b!3749802))

(assert (= (and d!1093930 (not c!649141)) b!3749803))

(assert (= (and b!3749803 c!649140) b!3749806))

(assert (= (and b!3749803 (not c!649140)) b!3749805))

(assert (= (and b!3749805 (not res!1519868)) b!3749804))

(declare-fun m!4241121 () Bool)

(assert (=> b!3749802 m!4241121))

(declare-fun m!4241123 () Bool)

(assert (=> b!3749804 m!4241123))

(declare-fun m!4241125 () Bool)

(assert (=> b!3749806 m!4241125))

(assert (=> b!3749698 d!1093930))

(declare-fun b!3749832 () Bool)

(declare-fun e!2319301 () Bool)

(assert (=> b!3749832 (= e!2319301 true)))

(declare-fun b!3749831 () Bool)

(declare-fun e!2319300 () Bool)

(assert (=> b!3749831 (= e!2319300 e!2319301)))

(declare-fun b!3749830 () Bool)

(declare-fun e!2319299 () Bool)

(assert (=> b!3749830 (= e!2319299 e!2319300)))

(declare-fun d!1093932 () Bool)

(assert (=> d!1093932 e!2319299))

(assert (= b!3749831 b!3749832))

(assert (= b!3749830 b!3749831))

(assert (= (and d!1093932 (is-Cons!39949 rules!4236)) b!3749830))

(declare-fun order!21801 () Int)

(declare-fun lambda!125202 () Int)

(declare-fun order!21799 () Int)

(declare-fun dynLambda!17251 (Int Int) Int)

(declare-fun dynLambda!17252 (Int Int) Int)

(assert (=> b!3749832 (< (dynLambda!17251 order!21799 (toValue!8455 (transformation!6107 (h!45369 rules!4236)))) (dynLambda!17252 order!21801 lambda!125202))))

(declare-fun order!21803 () Int)

(declare-fun dynLambda!17253 (Int Int) Int)

(assert (=> b!3749832 (< (dynLambda!17253 order!21803 (toChars!8314 (transformation!6107 (h!45369 rules!4236)))) (dynLambda!17252 order!21801 lambda!125202))))

(assert (=> d!1093932 true))

(declare-fun lt!1299752 () Bool)

(declare-fun forall!8197 (List!40072 Int) Bool)

(assert (=> d!1093932 (= lt!1299752 (forall!8197 tokens!606 lambda!125202))))

(declare-fun e!2319292 () Bool)

(assert (=> d!1093932 (= lt!1299752 e!2319292)))

(declare-fun res!1519879 () Bool)

(assert (=> d!1093932 (=> res!1519879 e!2319292)))

(assert (=> d!1093932 (= res!1519879 (not (is-Cons!39948 tokens!606)))))

(assert (=> d!1093932 (not (isEmpty!23536 rules!4236))))

(assert (=> d!1093932 (= (rulesProduceEachTokenIndividuallyList!1924 thiss!27232 rules!4236 tokens!606) lt!1299752)))

(declare-fun b!3749820 () Bool)

(declare-fun e!2319291 () Bool)

(assert (=> b!3749820 (= e!2319292 e!2319291)))

(declare-fun res!1519878 () Bool)

(assert (=> b!3749820 (=> (not res!1519878) (not e!2319291))))

(declare-fun rulesProduceIndividualToken!2612 (LexerInterface!5696 List!40073 Token!11352) Bool)

(assert (=> b!3749820 (= res!1519878 (rulesProduceIndividualToken!2612 thiss!27232 rules!4236 (h!45368 tokens!606)))))

(declare-fun b!3749821 () Bool)

(assert (=> b!3749821 (= e!2319291 (rulesProduceEachTokenIndividuallyList!1924 thiss!27232 rules!4236 (t!302889 tokens!606)))))

(assert (= (and d!1093932 (not res!1519879)) b!3749820))

(assert (= (and b!3749820 res!1519878) b!3749821))

(declare-fun m!4241133 () Bool)

(assert (=> d!1093932 m!4241133))

(assert (=> d!1093932 m!4241035))

(declare-fun m!4241135 () Bool)

(assert (=> b!3749820 m!4241135))

(assert (=> b!3749821 m!4241051))

(assert (=> b!3749697 d!1093932))

(declare-fun d!1093936 () Bool)

(declare-fun lt!1299753 () Bool)

(assert (=> d!1093936 (= lt!1299753 (set.member t!8579 (content!5860 (t!302889 tokens!606))))))

(declare-fun e!2319302 () Bool)

(assert (=> d!1093936 (= lt!1299753 e!2319302)))

(declare-fun res!1519881 () Bool)

(assert (=> d!1093936 (=> (not res!1519881) (not e!2319302))))

(assert (=> d!1093936 (= res!1519881 (is-Cons!39948 (t!302889 tokens!606)))))

(assert (=> d!1093936 (= (contains!8159 (t!302889 tokens!606) t!8579) lt!1299753)))

(declare-fun b!3749835 () Bool)

(declare-fun e!2319303 () Bool)

(assert (=> b!3749835 (= e!2319302 e!2319303)))

(declare-fun res!1519880 () Bool)

(assert (=> b!3749835 (=> res!1519880 e!2319303)))

(assert (=> b!3749835 (= res!1519880 (= (h!45368 (t!302889 tokens!606)) t!8579))))

(declare-fun b!3749836 () Bool)

(assert (=> b!3749836 (= e!2319303 (contains!8159 (t!302889 (t!302889 tokens!606)) t!8579))))

(assert (= (and d!1093936 res!1519881) b!3749835))

(assert (= (and b!3749835 (not res!1519880)) b!3749836))

(declare-fun m!4241137 () Bool)

(assert (=> d!1093936 m!4241137))

(declare-fun m!4241139 () Bool)

(assert (=> d!1093936 m!4241139))

(declare-fun m!4241141 () Bool)

(assert (=> b!3749836 m!4241141))

(assert (=> b!3749699 d!1093936))

(declare-fun d!1093938 () Bool)

(declare-fun res!1519882 () Bool)

(declare-fun e!2319304 () Bool)

(assert (=> d!1093938 (=> (not res!1519882) (not e!2319304))))

(assert (=> d!1093938 (= res!1519882 (not (isEmpty!23538 (originalCharacters!6707 (h!45368 tokens!606)))))))

(assert (=> d!1093938 (= (inv!53454 (h!45368 tokens!606)) e!2319304)))

(declare-fun b!3749837 () Bool)

(declare-fun res!1519883 () Bool)

(assert (=> b!3749837 (=> (not res!1519883) (not e!2319304))))

(assert (=> b!3749837 (= res!1519883 (= (originalCharacters!6707 (h!45368 tokens!606)) (list!14710 (dynLambda!17250 (toChars!8314 (transformation!6107 (rule!8871 (h!45368 tokens!606)))) (value!194616 (h!45368 tokens!606))))))))

(declare-fun b!3749838 () Bool)

(assert (=> b!3749838 (= e!2319304 (= (size!30075 (h!45368 tokens!606)) (size!30077 (originalCharacters!6707 (h!45368 tokens!606)))))))

(assert (= (and d!1093938 res!1519882) b!3749837))

(assert (= (and b!3749837 res!1519883) b!3749838))

(declare-fun b_lambda!109917 () Bool)

(assert (=> (not b_lambda!109917) (not b!3749837)))

(declare-fun t!302906 () Bool)

(declare-fun tb!214523 () Bool)

(assert (=> (and b!3749696 (= (toChars!8314 (transformation!6107 (rule!8871 (h!45368 tokens!606)))) (toChars!8314 (transformation!6107 (rule!8871 (h!45368 tokens!606))))) t!302906) tb!214523))

(declare-fun b!3749839 () Bool)

(declare-fun e!2319305 () Bool)

(declare-fun tp!1144778 () Bool)

(assert (=> b!3749839 (= e!2319305 (and (inv!53458 (c!649129 (dynLambda!17250 (toChars!8314 (transformation!6107 (rule!8871 (h!45368 tokens!606)))) (value!194616 (h!45368 tokens!606))))) tp!1144778))))

(declare-fun result!261906 () Bool)

(assert (=> tb!214523 (= result!261906 (and (inv!53459 (dynLambda!17250 (toChars!8314 (transformation!6107 (rule!8871 (h!45368 tokens!606)))) (value!194616 (h!45368 tokens!606)))) e!2319305))))

(assert (= tb!214523 b!3749839))

(declare-fun m!4241143 () Bool)

(assert (=> b!3749839 m!4241143))

(declare-fun m!4241145 () Bool)

(assert (=> tb!214523 m!4241145))

(assert (=> b!3749837 t!302906))

(declare-fun b_and!278589 () Bool)

(assert (= b_and!278583 (and (=> t!302906 result!261906) b_and!278589)))

(declare-fun t!302908 () Bool)

(declare-fun tb!214525 () Bool)

(assert (=> (and b!3749695 (= (toChars!8314 (transformation!6107 (rule!8871 t!8579))) (toChars!8314 (transformation!6107 (rule!8871 (h!45368 tokens!606))))) t!302908) tb!214525))

(declare-fun result!261908 () Bool)

(assert (= result!261908 result!261906))

(assert (=> b!3749837 t!302908))

(declare-fun b_and!278591 () Bool)

(assert (= b_and!278585 (and (=> t!302908 result!261908) b_and!278591)))

(declare-fun tb!214527 () Bool)

(declare-fun t!302910 () Bool)

(assert (=> (and b!3749701 (= (toChars!8314 (transformation!6107 (h!45369 rules!4236))) (toChars!8314 (transformation!6107 (rule!8871 (h!45368 tokens!606))))) t!302910) tb!214527))

(declare-fun result!261910 () Bool)

(assert (= result!261910 result!261906))

(assert (=> b!3749837 t!302910))

(declare-fun b_and!278593 () Bool)

(assert (= b_and!278587 (and (=> t!302910 result!261910) b_and!278593)))

(declare-fun m!4241147 () Bool)

(assert (=> d!1093938 m!4241147))

(declare-fun m!4241149 () Bool)

(assert (=> b!3749837 m!4241149))

(assert (=> b!3749837 m!4241149))

(declare-fun m!4241151 () Bool)

(assert (=> b!3749837 m!4241151))

(declare-fun m!4241153 () Bool)

(assert (=> b!3749838 m!4241153))

(assert (=> b!3749690 d!1093938))

(declare-fun bs!575360 () Bool)

(declare-fun d!1093940 () Bool)

(assert (= bs!575360 (and d!1093940 d!1093932)))

(declare-fun lambda!125203 () Int)

(assert (=> bs!575360 (= lambda!125203 lambda!125202)))

(declare-fun b!3749844 () Bool)

(declare-fun e!2319310 () Bool)

(assert (=> b!3749844 (= e!2319310 true)))

(declare-fun b!3749843 () Bool)

(declare-fun e!2319309 () Bool)

(assert (=> b!3749843 (= e!2319309 e!2319310)))

(declare-fun b!3749842 () Bool)

(declare-fun e!2319308 () Bool)

(assert (=> b!3749842 (= e!2319308 e!2319309)))

(assert (=> d!1093940 e!2319308))

(assert (= b!3749843 b!3749844))

(assert (= b!3749842 b!3749843))

(assert (= (and d!1093940 (is-Cons!39949 rules!4236)) b!3749842))

(assert (=> b!3749844 (< (dynLambda!17251 order!21799 (toValue!8455 (transformation!6107 (h!45369 rules!4236)))) (dynLambda!17252 order!21801 lambda!125203))))

(assert (=> b!3749844 (< (dynLambda!17253 order!21803 (toChars!8314 (transformation!6107 (h!45369 rules!4236)))) (dynLambda!17252 order!21801 lambda!125203))))

(assert (=> d!1093940 true))

(declare-fun lt!1299754 () Bool)

(assert (=> d!1093940 (= lt!1299754 (forall!8197 (t!302889 tokens!606) lambda!125203))))

(declare-fun e!2319307 () Bool)

(assert (=> d!1093940 (= lt!1299754 e!2319307)))

(declare-fun res!1519885 () Bool)

(assert (=> d!1093940 (=> res!1519885 e!2319307)))

(assert (=> d!1093940 (= res!1519885 (not (is-Cons!39948 (t!302889 tokens!606))))))

(assert (=> d!1093940 (not (isEmpty!23536 rules!4236))))

(assert (=> d!1093940 (= (rulesProduceEachTokenIndividuallyList!1924 thiss!27232 rules!4236 (t!302889 tokens!606)) lt!1299754)))

(declare-fun b!3749840 () Bool)

(declare-fun e!2319306 () Bool)

(assert (=> b!3749840 (= e!2319307 e!2319306)))

(declare-fun res!1519884 () Bool)

(assert (=> b!3749840 (=> (not res!1519884) (not e!2319306))))

(assert (=> b!3749840 (= res!1519884 (rulesProduceIndividualToken!2612 thiss!27232 rules!4236 (h!45368 (t!302889 tokens!606))))))

(declare-fun b!3749841 () Bool)

(assert (=> b!3749841 (= e!2319306 (rulesProduceEachTokenIndividuallyList!1924 thiss!27232 rules!4236 (t!302889 (t!302889 tokens!606))))))

(assert (= (and d!1093940 (not res!1519885)) b!3749840))

(assert (= (and b!3749840 res!1519884) b!3749841))

(declare-fun m!4241155 () Bool)

(assert (=> d!1093940 m!4241155))

(assert (=> d!1093940 m!4241035))

(declare-fun m!4241157 () Bool)

(assert (=> b!3749840 m!4241157))

(declare-fun m!4241159 () Bool)

(assert (=> b!3749841 m!4241159))

(assert (=> b!3749702 d!1093940))

(declare-fun b!3749845 () Bool)

(declare-fun e!2319312 () Bool)

(assert (=> b!3749845 (= e!2319312 (inv!16 (value!194616 (h!45368 tokens!606))))))

(declare-fun d!1093942 () Bool)

(declare-fun c!649145 () Bool)

(assert (=> d!1093942 (= c!649145 (is-IntegerValue!19011 (value!194616 (h!45368 tokens!606))))))

(assert (=> d!1093942 (= (inv!21 (value!194616 (h!45368 tokens!606))) e!2319312)))

(declare-fun b!3749846 () Bool)

(declare-fun e!2319313 () Bool)

(assert (=> b!3749846 (= e!2319312 e!2319313)))

(declare-fun c!649144 () Bool)

(assert (=> b!3749846 (= c!649144 (is-IntegerValue!19012 (value!194616 (h!45368 tokens!606))))))

(declare-fun b!3749847 () Bool)

(declare-fun e!2319311 () Bool)

(assert (=> b!3749847 (= e!2319311 (inv!15 (value!194616 (h!45368 tokens!606))))))

(declare-fun b!3749848 () Bool)

(declare-fun res!1519886 () Bool)

(assert (=> b!3749848 (=> res!1519886 e!2319311)))

(assert (=> b!3749848 (= res!1519886 (not (is-IntegerValue!19013 (value!194616 (h!45368 tokens!606)))))))

(assert (=> b!3749848 (= e!2319313 e!2319311)))

(declare-fun b!3749849 () Bool)

(assert (=> b!3749849 (= e!2319313 (inv!17 (value!194616 (h!45368 tokens!606))))))

(assert (= (and d!1093942 c!649145) b!3749845))

(assert (= (and d!1093942 (not c!649145)) b!3749846))

(assert (= (and b!3749846 c!649144) b!3749849))

(assert (= (and b!3749846 (not c!649144)) b!3749848))

(assert (= (and b!3749848 (not res!1519886)) b!3749847))

(declare-fun m!4241161 () Bool)

(assert (=> b!3749845 m!4241161))

(declare-fun m!4241163 () Bool)

(assert (=> b!3749847 m!4241163))

(declare-fun m!4241165 () Bool)

(assert (=> b!3749849 m!4241165))

(assert (=> b!3749691 d!1093942))

(declare-fun b!3749854 () Bool)

(declare-fun e!2319316 () Bool)

(declare-fun tp_is_empty!19023 () Bool)

(declare-fun tp!1144781 () Bool)

(assert (=> b!3749854 (= e!2319316 (and tp_is_empty!19023 tp!1144781))))

(assert (=> b!3749698 (= tp!1144731 e!2319316)))

(assert (= (and b!3749698 (is-Cons!39946 (originalCharacters!6707 t!8579))) b!3749854))

(declare-fun b!3749867 () Bool)

(declare-fun e!2319319 () Bool)

(declare-fun tp!1144795 () Bool)

(assert (=> b!3749867 (= e!2319319 tp!1144795)))

(assert (=> b!3749703 (= tp!1144726 e!2319319)))

(declare-fun b!3749866 () Bool)

(declare-fun tp!1144796 () Bool)

(declare-fun tp!1144792 () Bool)

(assert (=> b!3749866 (= e!2319319 (and tp!1144796 tp!1144792))))

(declare-fun b!3749865 () Bool)

(assert (=> b!3749865 (= e!2319319 tp_is_empty!19023)))

(declare-fun b!3749868 () Bool)

(declare-fun tp!1144793 () Bool)

(declare-fun tp!1144794 () Bool)

(assert (=> b!3749868 (= e!2319319 (and tp!1144793 tp!1144794))))

(assert (= (and b!3749703 (is-ElementMatch!11012 (regex!6107 (h!45369 rules!4236)))) b!3749865))

(assert (= (and b!3749703 (is-Concat!17349 (regex!6107 (h!45369 rules!4236)))) b!3749866))

(assert (= (and b!3749703 (is-Star!11012 (regex!6107 (h!45369 rules!4236)))) b!3749867))

(assert (= (and b!3749703 (is-Union!11012 (regex!6107 (h!45369 rules!4236)))) b!3749868))

(declare-fun b!3749871 () Bool)

(declare-fun e!2319320 () Bool)

(declare-fun tp!1144800 () Bool)

(assert (=> b!3749871 (= e!2319320 tp!1144800)))

(assert (=> b!3749704 (= tp!1144727 e!2319320)))

(declare-fun b!3749870 () Bool)

(declare-fun tp!1144801 () Bool)

(declare-fun tp!1144797 () Bool)

(assert (=> b!3749870 (= e!2319320 (and tp!1144801 tp!1144797))))

(declare-fun b!3749869 () Bool)

(assert (=> b!3749869 (= e!2319320 tp_is_empty!19023)))

(declare-fun b!3749872 () Bool)

(declare-fun tp!1144798 () Bool)

(declare-fun tp!1144799 () Bool)

(assert (=> b!3749872 (= e!2319320 (and tp!1144798 tp!1144799))))

(assert (= (and b!3749704 (is-ElementMatch!11012 (regex!6107 (rule!8871 (h!45368 tokens!606))))) b!3749869))

(assert (= (and b!3749704 (is-Concat!17349 (regex!6107 (rule!8871 (h!45368 tokens!606))))) b!3749870))

(assert (= (and b!3749704 (is-Star!11012 (regex!6107 (rule!8871 (h!45368 tokens!606))))) b!3749871))

(assert (= (and b!3749704 (is-Union!11012 (regex!6107 (rule!8871 (h!45368 tokens!606))))) b!3749872))

(declare-fun b!3749886 () Bool)

(declare-fun b_free!100277 () Bool)

(declare-fun b_next!100981 () Bool)

(assert (=> b!3749886 (= b_free!100277 (not b_next!100981))))

(declare-fun tp!1144812 () Bool)

(declare-fun b_and!278595 () Bool)

(assert (=> b!3749886 (= tp!1144812 b_and!278595)))

(declare-fun b_free!100279 () Bool)

(declare-fun b_next!100983 () Bool)

(assert (=> b!3749886 (= b_free!100279 (not b_next!100983))))

(declare-fun tb!214529 () Bool)

(declare-fun t!302912 () Bool)

(assert (=> (and b!3749886 (= (toChars!8314 (transformation!6107 (rule!8871 (h!45368 (t!302889 tokens!606))))) (toChars!8314 (transformation!6107 (rule!8871 t!8579)))) t!302912) tb!214529))

(declare-fun result!261918 () Bool)

(assert (= result!261918 result!261898))

(assert (=> b!3749775 t!302912))

(declare-fun t!302914 () Bool)

(declare-fun tb!214531 () Bool)

(assert (=> (and b!3749886 (= (toChars!8314 (transformation!6107 (rule!8871 (h!45368 (t!302889 tokens!606))))) (toChars!8314 (transformation!6107 (rule!8871 (h!45368 tokens!606))))) t!302914) tb!214531))

(declare-fun result!261920 () Bool)

(assert (= result!261920 result!261906))

(assert (=> b!3749837 t!302914))

(declare-fun tp!1144815 () Bool)

(declare-fun b_and!278597 () Bool)

(assert (=> b!3749886 (= tp!1144815 (and (=> t!302912 result!261918) (=> t!302914 result!261920) b_and!278597))))

(declare-fun b!3749883 () Bool)

(declare-fun e!2319333 () Bool)

(declare-fun e!2319338 () Bool)

(declare-fun tp!1144814 () Bool)

(assert (=> b!3749883 (= e!2319338 (and (inv!53454 (h!45368 (t!302889 tokens!606))) e!2319333 tp!1144814))))

(declare-fun e!2319336 () Bool)

(declare-fun tp!1144816 () Bool)

(declare-fun b!3749884 () Bool)

(assert (=> b!3749884 (= e!2319333 (and (inv!21 (value!194616 (h!45368 (t!302889 tokens!606)))) e!2319336 tp!1144816))))

(declare-fun b!3749885 () Bool)

(declare-fun tp!1144813 () Bool)

(declare-fun e!2319334 () Bool)

(assert (=> b!3749885 (= e!2319336 (and tp!1144813 (inv!53451 (tag!6967 (rule!8871 (h!45368 (t!302889 tokens!606))))) (inv!53455 (transformation!6107 (rule!8871 (h!45368 (t!302889 tokens!606))))) e!2319334))))

(assert (=> b!3749690 (= tp!1144728 e!2319338)))

(assert (=> b!3749886 (= e!2319334 (and tp!1144812 tp!1144815))))

(assert (= b!3749885 b!3749886))

(assert (= b!3749884 b!3749885))

(assert (= b!3749883 b!3749884))

(assert (= (and b!3749690 (is-Cons!39948 (t!302889 tokens!606))) b!3749883))

(declare-fun m!4241167 () Bool)

(assert (=> b!3749883 m!4241167))

(declare-fun m!4241169 () Bool)

(assert (=> b!3749884 m!4241169))

(declare-fun m!4241171 () Bool)

(assert (=> b!3749885 m!4241171))

(declare-fun m!4241173 () Bool)

(assert (=> b!3749885 m!4241173))

(declare-fun b!3749897 () Bool)

(declare-fun b_free!100281 () Bool)

(declare-fun b_next!100985 () Bool)

(assert (=> b!3749897 (= b_free!100281 (not b_next!100985))))

(declare-fun tp!1144827 () Bool)

(declare-fun b_and!278599 () Bool)

(assert (=> b!3749897 (= tp!1144827 b_and!278599)))

(declare-fun b_free!100283 () Bool)

(declare-fun b_next!100987 () Bool)

(assert (=> b!3749897 (= b_free!100283 (not b_next!100987))))

(declare-fun tb!214533 () Bool)

(declare-fun t!302916 () Bool)

(assert (=> (and b!3749897 (= (toChars!8314 (transformation!6107 (h!45369 (t!302890 rules!4236)))) (toChars!8314 (transformation!6107 (rule!8871 t!8579)))) t!302916) tb!214533))

(declare-fun result!261924 () Bool)

(assert (= result!261924 result!261898))

(assert (=> b!3749775 t!302916))

(declare-fun t!302918 () Bool)

(declare-fun tb!214535 () Bool)

(assert (=> (and b!3749897 (= (toChars!8314 (transformation!6107 (h!45369 (t!302890 rules!4236)))) (toChars!8314 (transformation!6107 (rule!8871 (h!45368 tokens!606))))) t!302918) tb!214535))

(declare-fun result!261926 () Bool)

(assert (= result!261926 result!261906))

(assert (=> b!3749837 t!302918))

(declare-fun b_and!278601 () Bool)

(declare-fun tp!1144825 () Bool)

(assert (=> b!3749897 (= tp!1144825 (and (=> t!302916 result!261924) (=> t!302918 result!261926) b_and!278601))))

(declare-fun e!2319348 () Bool)

(assert (=> b!3749897 (= e!2319348 (and tp!1144827 tp!1144825))))

(declare-fun b!3749896 () Bool)

(declare-fun tp!1144826 () Bool)

(declare-fun e!2319350 () Bool)

(assert (=> b!3749896 (= e!2319350 (and tp!1144826 (inv!53451 (tag!6967 (h!45369 (t!302890 rules!4236)))) (inv!53455 (transformation!6107 (h!45369 (t!302890 rules!4236)))) e!2319348))))

(declare-fun b!3749895 () Bool)

(declare-fun e!2319347 () Bool)

(declare-fun tp!1144828 () Bool)

(assert (=> b!3749895 (= e!2319347 (and e!2319350 tp!1144828))))

(assert (=> b!3749689 (= tp!1144729 e!2319347)))

(assert (= b!3749896 b!3749897))

(assert (= b!3749895 b!3749896))

(assert (= (and b!3749689 (is-Cons!39949 (t!302890 rules!4236))) b!3749895))

(declare-fun m!4241175 () Bool)

(assert (=> b!3749896 m!4241175))

(declare-fun m!4241177 () Bool)

(assert (=> b!3749896 m!4241177))

(declare-fun b!3749900 () Bool)

(declare-fun e!2319351 () Bool)

(declare-fun tp!1144832 () Bool)

(assert (=> b!3749900 (= e!2319351 tp!1144832)))

(assert (=> b!3749705 (= tp!1144724 e!2319351)))

(declare-fun b!3749899 () Bool)

(declare-fun tp!1144833 () Bool)

(declare-fun tp!1144829 () Bool)

(assert (=> b!3749899 (= e!2319351 (and tp!1144833 tp!1144829))))

(declare-fun b!3749898 () Bool)

(assert (=> b!3749898 (= e!2319351 tp_is_empty!19023)))

(declare-fun b!3749901 () Bool)

(declare-fun tp!1144830 () Bool)

(declare-fun tp!1144831 () Bool)

(assert (=> b!3749901 (= e!2319351 (and tp!1144830 tp!1144831))))

(assert (= (and b!3749705 (is-ElementMatch!11012 (regex!6107 (rule!8871 t!8579)))) b!3749898))

(assert (= (and b!3749705 (is-Concat!17349 (regex!6107 (rule!8871 t!8579)))) b!3749899))

(assert (= (and b!3749705 (is-Star!11012 (regex!6107 (rule!8871 t!8579)))) b!3749900))

(assert (= (and b!3749705 (is-Union!11012 (regex!6107 (rule!8871 t!8579)))) b!3749901))

(declare-fun b!3749902 () Bool)

(declare-fun e!2319352 () Bool)

(declare-fun tp!1144834 () Bool)

(assert (=> b!3749902 (= e!2319352 (and tp_is_empty!19023 tp!1144834))))

(assert (=> b!3749691 (= tp!1144735 e!2319352)))

(assert (= (and b!3749691 (is-Cons!39946 (originalCharacters!6707 (h!45368 tokens!606)))) b!3749902))

(declare-fun b_lambda!109919 () Bool)

(assert (= b_lambda!109915 (or (and b!3749696 b_free!100255 (= (toChars!8314 (transformation!6107 (rule!8871 (h!45368 tokens!606)))) (toChars!8314 (transformation!6107 (rule!8871 t!8579))))) (and b!3749897 b_free!100283 (= (toChars!8314 (transformation!6107 (h!45369 (t!302890 rules!4236)))) (toChars!8314 (transformation!6107 (rule!8871 t!8579))))) (and b!3749886 b_free!100279 (= (toChars!8314 (transformation!6107 (rule!8871 (h!45368 (t!302889 tokens!606))))) (toChars!8314 (transformation!6107 (rule!8871 t!8579))))) (and b!3749695 b_free!100259) (and b!3749701 b_free!100263 (= (toChars!8314 (transformation!6107 (h!45369 rules!4236))) (toChars!8314 (transformation!6107 (rule!8871 t!8579))))) b_lambda!109919)))

(declare-fun b_lambda!109921 () Bool)

(assert (= b_lambda!109917 (or (and b!3749696 b_free!100255) (and b!3749897 b_free!100283 (= (toChars!8314 (transformation!6107 (h!45369 (t!302890 rules!4236)))) (toChars!8314 (transformation!6107 (rule!8871 (h!45368 tokens!606)))))) (and b!3749695 b_free!100259 (= (toChars!8314 (transformation!6107 (rule!8871 t!8579))) (toChars!8314 (transformation!6107 (rule!8871 (h!45368 tokens!606)))))) (and b!3749701 b_free!100263 (= (toChars!8314 (transformation!6107 (h!45369 rules!4236))) (toChars!8314 (transformation!6107 (rule!8871 (h!45368 tokens!606)))))) (and b!3749886 b_free!100279 (= (toChars!8314 (transformation!6107 (rule!8871 (h!45368 (t!302889 tokens!606))))) (toChars!8314 (transformation!6107 (rule!8871 (h!45368 tokens!606)))))) b_lambda!109921)))

(push 1)

(assert (not b!3749854))

(assert (not d!1093910))

(assert (not b!3749769))

(assert b_and!278599)

(assert (not b_next!100987))

(assert (not b!3749867))

(assert (not b!3749776))

(assert (not b!3749775))

(assert (not d!1093926))

(assert (not d!1093918))

(assert (not d!1093932))

(assert (not b!3749899))

(assert (not b!3749896))

(assert (not d!1093938))

(assert (not b!3749884))

(assert (not b_next!100967))

(assert (not b!3749871))

(assert (not b!3749781))

(assert (not b_next!100965))

(assert (not d!1093940))

(assert (not d!1093912))

(assert (not b_lambda!109919))

(assert (not b!3749839))

(assert (not b!3749759))

(assert (not b!3749842))

(assert (not b!3749804))

(assert (not d!1093924))

(assert (not b!3749841))

(assert (not tb!214517))

(assert (not b!3749901))

(assert (not b_next!100957))

(assert (not b!3749902))

(assert b_and!278591)

(assert (not b_next!100961))

(assert (not b!3749872))

(assert (not b!3749766))

(assert b_and!278563)

(assert (not b_next!100959))

(assert (not b!3749821))

(assert b_and!278597)

(assert (not b!3749765))

(assert b_and!278593)

(assert (not tb!214523))

(assert (not b!3749820))

(assert (not b!3749836))

(assert (not b!3749900))

(assert (not b_lambda!109921))

(assert (not b!3749840))

(assert (not b!3749895))

(assert (not b!3749838))

(assert b_and!278589)

(assert b_and!278601)

(assert (not b!3749870))

(assert (not b_next!100981))

(assert (not b!3749770))

(assert (not b!3749847))

(assert b_and!278567)

(assert tp_is_empty!19023)

(assert (not b!3749845))

(assert (not b!3749885))

(assert (not b_next!100963))

(assert (not b!3749802))

(assert b_and!278595)

(assert (not b!3749806))

(assert b_and!278559)

(assert (not b!3749866))

(assert (not d!1093936))

(assert (not b_next!100983))

(assert (not b!3749837))

(assert (not b!3749849))

(assert (not d!1093920))

(assert (not b_next!100985))

(assert (not b!3749830))

(assert (not b!3749883))

(assert (not b!3749868))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!100967))

(assert (not b_next!100965))

(assert (not b_next!100957))

(assert b_and!278593)

(assert b_and!278599)

(assert (not b_next!100987))

(assert b_and!278589)

(assert (not b_next!100983))

(assert (not b_next!100985))

(assert b_and!278591)

(assert (not b_next!100961))

(assert b_and!278563)

(assert (not b_next!100959))

(assert b_and!278597)

(assert b_and!278601)

(assert (not b_next!100981))

(assert b_and!278567)

(assert (not b_next!100963))

(assert b_and!278595)

(assert b_and!278559)

(check-sat)

(pop 1)

