; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52964 () Bool)

(assert start!52964)

(declare-fun b!574625 () Bool)

(declare-fun b_free!15981 () Bool)

(declare-fun b_next!15997 () Bool)

(assert (=> b!574625 (= b_free!15981 (not b_next!15997))))

(declare-fun tp!180356 () Bool)

(declare-fun b_and!56211 () Bool)

(assert (=> b!574625 (= tp!180356 b_and!56211)))

(declare-fun b_free!15983 () Bool)

(declare-fun b_next!15999 () Bool)

(assert (=> b!574625 (= b_free!15983 (not b_next!15999))))

(declare-fun tp!180352 () Bool)

(declare-fun b_and!56213 () Bool)

(assert (=> b!574625 (= tp!180352 b_and!56213)))

(declare-fun b!574613 () Bool)

(declare-fun b_free!15985 () Bool)

(declare-fun b_next!16001 () Bool)

(assert (=> b!574613 (= b_free!15985 (not b_next!16001))))

(declare-fun tp!180350 () Bool)

(declare-fun b_and!56215 () Bool)

(assert (=> b!574613 (= tp!180350 b_and!56215)))

(declare-fun b_free!15987 () Bool)

(declare-fun b_next!16003 () Bool)

(assert (=> b!574613 (= b_free!15987 (not b_next!16003))))

(declare-fun tp!180347 () Bool)

(declare-fun b_and!56217 () Bool)

(assert (=> b!574613 (= tp!180347 b_and!56217)))

(declare-fun res!246785 () Bool)

(declare-fun e!347204 () Bool)

(assert (=> start!52964 (=> (not res!246785) (not e!347204))))

(declare-datatypes ((LexerInterface!979 0))(
  ( (LexerInterfaceExt!976 (__x!4132 Int)) (Lexer!977) )
))
(declare-fun thiss!22590 () LexerInterface!979)

(get-info :version)

(assert (=> start!52964 (= res!246785 ((_ is Lexer!977) thiss!22590))))

(assert (=> start!52964 e!347204))

(declare-fun e!347208 () Bool)

(assert (=> start!52964 e!347208))

(declare-fun e!347196 () Bool)

(assert (=> start!52964 e!347196))

(declare-datatypes ((String!7328 0))(
  ( (String!7329 (value!35991 String)) )
))
(declare-datatypes ((C!3776 0))(
  ( (C!3777 (val!2114 Int)) )
))
(declare-datatypes ((Regex!1427 0))(
  ( (ElementMatch!1427 (c!107711 C!3776)) (Concat!2544 (regOne!3366 Regex!1427) (regTwo!3366 Regex!1427)) (EmptyExpr!1427) (Star!1427 (reg!1756 Regex!1427)) (EmptyLang!1427) (Union!1427 (regOne!3367 Regex!1427) (regTwo!3367 Regex!1427)) )
))
(declare-datatypes ((List!5656 0))(
  ( (Nil!5646) (Cons!5646 (h!11047 (_ BitVec 16)) (t!77225 List!5656)) )
))
(declare-datatypes ((TokenValue!1117 0))(
  ( (FloatLiteralValue!2234 (text!8264 List!5656)) (TokenValueExt!1116 (__x!4133 Int)) (Broken!5585 (value!35992 List!5656)) (Object!1126) (End!1117) (Def!1117) (Underscore!1117) (Match!1117) (Else!1117) (Error!1117) (Case!1117) (If!1117) (Extends!1117) (Abstract!1117) (Class!1117) (Val!1117) (DelimiterValue!2234 (del!1177 List!5656)) (KeywordValue!1123 (value!35993 List!5656)) (CommentValue!2234 (value!35994 List!5656)) (WhitespaceValue!2234 (value!35995 List!5656)) (IndentationValue!1117 (value!35996 List!5656)) (String!7330) (Int32!1117) (Broken!5586 (value!35997 List!5656)) (Boolean!1118) (Unit!10178) (OperatorValue!1120 (op!1177 List!5656)) (IdentifierValue!2234 (value!35998 List!5656)) (IdentifierValue!2235 (value!35999 List!5656)) (WhitespaceValue!2235 (value!36000 List!5656)) (True!2234) (False!2234) (Broken!5587 (value!36001 List!5656)) (Broken!5588 (value!36002 List!5656)) (True!2235) (RightBrace!1117) (RightBracket!1117) (Colon!1117) (Null!1117) (Comma!1117) (LeftBracket!1117) (False!2235) (LeftBrace!1117) (ImaginaryLiteralValue!1117 (text!8265 List!5656)) (StringLiteralValue!3351 (value!36003 List!5656)) (EOFValue!1117 (value!36004 List!5656)) (IdentValue!1117 (value!36005 List!5656)) (DelimiterValue!2235 (value!36006 List!5656)) (DedentValue!1117 (value!36007 List!5656)) (NewLineValue!1117 (value!36008 List!5656)) (IntegerValue!3351 (value!36009 (_ BitVec 32)) (text!8266 List!5656)) (IntegerValue!3352 (value!36010 Int) (text!8267 List!5656)) (Times!1117) (Or!1117) (Equal!1117) (Minus!1117) (Broken!5589 (value!36011 List!5656)) (And!1117) (Div!1117) (LessEqual!1117) (Mod!1117) (Concat!2545) (Not!1117) (Plus!1117) (SpaceValue!1117 (value!36012 List!5656)) (IntegerValue!3353 (value!36013 Int) (text!8268 List!5656)) (StringLiteralValue!3352 (text!8269 List!5656)) (FloatLiteralValue!2235 (text!8270 List!5656)) (BytesLiteralValue!1117 (value!36014 List!5656)) (CommentValue!2235 (value!36015 List!5656)) (StringLiteralValue!3353 (value!36016 List!5656)) (ErrorTokenValue!1117 (msg!1178 List!5656)) )
))
(declare-datatypes ((List!5657 0))(
  ( (Nil!5647) (Cons!5647 (h!11048 C!3776) (t!77226 List!5657)) )
))
(declare-datatypes ((IArray!3621 0))(
  ( (IArray!3622 (innerList!1868 List!5657)) )
))
(declare-datatypes ((Conc!1810 0))(
  ( (Node!1810 (left!4613 Conc!1810) (right!4943 Conc!1810) (csize!3850 Int) (cheight!2021 Int)) (Leaf!2864 (xs!4447 IArray!3621) (csize!3851 Int)) (Empty!1810) )
))
(declare-datatypes ((BalanceConc!3628 0))(
  ( (BalanceConc!3629 (c!107712 Conc!1810)) )
))
(declare-datatypes ((TokenValueInjection!2002 0))(
  ( (TokenValueInjection!2003 (toValue!1952 Int) (toChars!1811 Int)) )
))
(declare-datatypes ((Rule!1986 0))(
  ( (Rule!1987 (regex!1093 Regex!1427) (tag!1355 String!7328) (isSeparator!1093 Bool) (transformation!1093 TokenValueInjection!2002)) )
))
(declare-datatypes ((Token!1922 0))(
  ( (Token!1923 (value!36017 TokenValue!1117) (rule!1839 Rule!1986) (size!4496 Int) (originalCharacters!1132 List!5657)) )
))
(declare-fun token!491 () Token!1922)

(declare-fun e!347211 () Bool)

(declare-fun inv!7103 (Token!1922) Bool)

(assert (=> start!52964 (and (inv!7103 token!491) e!347211)))

(assert (=> start!52964 true))

(declare-fun e!347214 () Bool)

(assert (=> start!52964 e!347214))

(declare-fun lt!242873 () List!5657)

(declare-datatypes ((tuple2!6632 0))(
  ( (tuple2!6633 (_1!3580 Token!1922) (_2!3580 List!5657)) )
))
(declare-datatypes ((Option!1444 0))(
  ( (None!1443) (Some!1443 (v!16300 tuple2!6632)) )
))
(declare-fun lt!242861 () Option!1444)

(declare-fun lt!242854 () tuple2!6632)

(declare-fun e!347200 () Bool)

(declare-fun lt!242848 () Int)

(declare-fun lt!242839 () TokenValue!1117)

(declare-fun b!574595 () Bool)

(declare-fun lt!242860 () List!5657)

(assert (=> b!574595 (= e!347200 (and (= (size!4496 (_1!3580 (v!16300 lt!242861))) lt!242848) (= (originalCharacters!1132 (_1!3580 (v!16300 lt!242861))) lt!242860) (= lt!242854 (tuple2!6633 (Token!1923 lt!242839 (rule!1839 (_1!3580 (v!16300 lt!242861))) lt!242848 lt!242860) lt!242873))))))

(declare-fun b!574596 () Bool)

(declare-fun e!347195 () Bool)

(assert (=> b!574596 (= e!347204 e!347195)))

(declare-fun res!246783 () Bool)

(assert (=> b!574596 (=> (not res!246783) (not e!347195))))

(declare-fun lt!242866 () List!5657)

(declare-fun input!2705 () List!5657)

(assert (=> b!574596 (= res!246783 (= lt!242866 input!2705))))

(declare-fun list!2345 (BalanceConc!3628) List!5657)

(declare-fun charsOf!722 (Token!1922) BalanceConc!3628)

(assert (=> b!574596 (= lt!242866 (list!2345 (charsOf!722 token!491)))))

(declare-fun e!347212 () Bool)

(declare-fun b!574597 () Bool)

(assert (=> b!574597 (= e!347212 (or (not (= lt!242860 lt!242866)) (= (originalCharacters!1132 (_1!3580 (v!16300 lt!242861))) (originalCharacters!1132 token!491))))))

(declare-fun b!574598 () Bool)

(declare-fun e!347205 () Bool)

(declare-fun e!347213 () Bool)

(assert (=> b!574598 (= e!347205 e!347213)))

(declare-fun res!246782 () Bool)

(assert (=> b!574598 (=> (not res!246782) (not e!347213))))

(declare-fun lt!242841 () List!5657)

(declare-fun lt!242859 () List!5657)

(assert (=> b!574598 (= res!246782 (= lt!242841 lt!242859))))

(declare-fun suffix!1342 () List!5657)

(declare-fun ++!1581 (List!5657 List!5657) List!5657)

(assert (=> b!574598 (= lt!242841 (++!1581 lt!242866 suffix!1342))))

(declare-fun b!574599 () Bool)

(declare-fun res!246778 () Bool)

(assert (=> b!574599 (=> res!246778 e!347212)))

(declare-fun isEmpty!4077 (List!5657) Bool)

(assert (=> b!574599 (= res!246778 (not (isEmpty!4077 (_2!3580 (v!16300 lt!242861)))))))

(declare-fun b!574600 () Bool)

(declare-datatypes ((Unit!10179 0))(
  ( (Unit!10180) )
))
(declare-fun e!347201 () Unit!10179)

(declare-fun Unit!10181 () Unit!10179)

(assert (=> b!574600 (= e!347201 Unit!10181)))

(assert (=> b!574600 false))

(declare-fun b!574601 () Bool)

(declare-fun tp_is_empty!3209 () Bool)

(declare-fun tp!180348 () Bool)

(assert (=> b!574601 (= e!347208 (and tp_is_empty!3209 tp!180348))))

(declare-fun b!574602 () Bool)

(declare-fun e!347202 () Unit!10179)

(declare-fun Unit!10182 () Unit!10179)

(assert (=> b!574602 (= e!347202 Unit!10182)))

(declare-fun e!347219 () Bool)

(declare-fun b!574603 () Bool)

(declare-fun tp!180354 () Bool)

(declare-fun inv!21 (TokenValue!1117) Bool)

(assert (=> b!574603 (= e!347211 (and (inv!21 (value!36017 token!491)) e!347219 tp!180354))))

(declare-fun b!574604 () Bool)

(declare-fun Unit!10183 () Unit!10179)

(assert (=> b!574604 (= e!347202 Unit!10183)))

(declare-fun lt!242874 () Unit!10179)

(declare-fun lt!242865 () BalanceConc!3628)

(declare-fun lemmaSemiInverse!196 (TokenValueInjection!2002 BalanceConc!3628) Unit!10179)

(assert (=> b!574604 (= lt!242874 (lemmaSemiInverse!196 (transformation!1093 (rule!1839 (_1!3580 (v!16300 lt!242861)))) lt!242865))))

(declare-datatypes ((List!5658 0))(
  ( (Nil!5648) (Cons!5648 (h!11049 Rule!1986) (t!77227 List!5658)) )
))
(declare-fun rules!3103 () List!5658)

(declare-fun lt!242857 () Unit!10179)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!52 (LexerInterface!979 List!5658 Rule!1986 List!5657 List!5657 List!5657 Rule!1986) Unit!10179)

(assert (=> b!574604 (= lt!242857 (lemmaMaxPrefixOutputsMaxPrefix!52 thiss!22590 rules!3103 (rule!1839 (_1!3580 (v!16300 lt!242861))) lt!242860 input!2705 input!2705 (rule!1839 token!491)))))

(declare-fun res!246784 () Bool)

(declare-fun matchR!574 (Regex!1427 List!5657) Bool)

(assert (=> b!574604 (= res!246784 (not (matchR!574 (regex!1093 (rule!1839 token!491)) input!2705)))))

(declare-fun e!347203 () Bool)

(assert (=> b!574604 (=> (not res!246784) (not e!347203))))

(assert (=> b!574604 e!347203))

(declare-fun b!574605 () Bool)

(declare-fun e!347220 () Bool)

(declare-fun e!347206 () Bool)

(assert (=> b!574605 (= e!347220 e!347206)))

(declare-fun res!246779 () Bool)

(assert (=> b!574605 (=> (not res!246779) (not e!347206))))

(declare-fun isDefined!1255 (Option!1444) Bool)

(assert (=> b!574605 (= res!246779 (isDefined!1255 lt!242861))))

(declare-fun b!574606 () Bool)

(declare-fun e!347210 () Bool)

(declare-fun tp!180351 () Bool)

(assert (=> b!574606 (= e!347196 (and e!347210 tp!180351))))

(declare-fun b!574607 () Bool)

(declare-fun res!246781 () Bool)

(assert (=> b!574607 (=> (not res!246781) (not e!347204))))

(declare-fun isEmpty!4078 (List!5658) Bool)

(assert (=> b!574607 (= res!246781 (not (isEmpty!4078 rules!3103)))))

(declare-fun b!574608 () Bool)

(declare-fun res!246772 () Bool)

(assert (=> b!574608 (=> (not res!246772) (not e!347204))))

(assert (=> b!574608 (= res!246772 (not (isEmpty!4077 input!2705)))))

(declare-fun b!574609 () Bool)

(declare-fun Unit!10184 () Unit!10179)

(assert (=> b!574609 (= e!347201 Unit!10184)))

(declare-fun b!574610 () Bool)

(declare-fun res!246776 () Bool)

(assert (=> b!574610 (=> (not res!246776) (not e!347204))))

(declare-fun rulesInvariant!942 (LexerInterface!979 List!5658) Bool)

(assert (=> b!574610 (= res!246776 (rulesInvariant!942 thiss!22590 rules!3103))))

(declare-fun b!574611 () Bool)

(declare-fun e!347217 () Bool)

(assert (=> b!574611 (= e!347217 e!347205)))

(declare-fun res!246768 () Bool)

(assert (=> b!574611 (=> (not res!246768) (not e!347205))))

(assert (=> b!574611 (= res!246768 ((_ is Some!1443) lt!242861))))

(declare-fun maxPrefix!677 (LexerInterface!979 List!5658 List!5657) Option!1444)

(assert (=> b!574611 (= lt!242861 (maxPrefix!677 thiss!22590 rules!3103 input!2705))))

(declare-fun e!347198 () Bool)

(declare-fun tp!180349 () Bool)

(declare-fun b!574612 () Bool)

(declare-fun inv!7100 (String!7328) Bool)

(declare-fun inv!7104 (TokenValueInjection!2002) Bool)

(assert (=> b!574612 (= e!347219 (and tp!180349 (inv!7100 (tag!1355 (rule!1839 token!491))) (inv!7104 (transformation!1093 (rule!1839 token!491))) e!347198))))

(declare-fun e!347199 () Bool)

(assert (=> b!574613 (= e!347199 (and tp!180350 tp!180347))))

(declare-fun b!574614 () Bool)

(declare-fun e!347218 () Bool)

(assert (=> b!574614 (= e!347195 e!347218)))

(declare-fun res!246780 () Bool)

(assert (=> b!574614 (=> (not res!246780) (not e!347218))))

(declare-fun lt!242862 () Option!1444)

(assert (=> b!574614 (= res!246780 (isDefined!1255 lt!242862))))

(assert (=> b!574614 (= lt!242862 (maxPrefix!677 thiss!22590 rules!3103 lt!242859))))

(assert (=> b!574614 (= lt!242859 (++!1581 input!2705 suffix!1342))))

(declare-fun b!574615 () Bool)

(declare-fun e!347215 () Bool)

(assert (=> b!574615 (= e!347215 e!347212)))

(declare-fun res!246773 () Bool)

(assert (=> b!574615 (=> res!246773 e!347212)))

(declare-fun lt!242858 () Int)

(declare-fun lt!242856 () List!5657)

(assert (=> b!574615 (= res!246773 (or (not (= lt!242848 lt!242858)) (not (= lt!242856 input!2705)) (not (= lt!242856 lt!242866))))))

(declare-fun lt!242838 () Unit!10179)

(declare-fun lt!242869 () BalanceConc!3628)

(assert (=> b!574615 (= lt!242838 (lemmaSemiInverse!196 (transformation!1093 (rule!1839 token!491)) lt!242869))))

(declare-fun lt!242847 () Unit!10179)

(assert (=> b!574615 (= lt!242847 (lemmaSemiInverse!196 (transformation!1093 (rule!1839 (_1!3580 (v!16300 lt!242861)))) lt!242865))))

(declare-fun lt!242870 () Unit!10179)

(assert (=> b!574615 (= lt!242870 e!347202)))

(declare-fun c!107709 () Bool)

(assert (=> b!574615 (= c!107709 (< lt!242848 lt!242858))))

(declare-fun e!347221 () Bool)

(assert (=> b!574615 e!347221))

(declare-fun res!246774 () Bool)

(assert (=> b!574615 (=> (not res!246774) (not e!347221))))

(declare-fun lt!242872 () TokenValue!1117)

(declare-fun maxPrefixOneRule!378 (LexerInterface!979 Rule!1986 List!5657) Option!1444)

(assert (=> b!574615 (= res!246774 (= (maxPrefixOneRule!378 thiss!22590 (rule!1839 token!491) lt!242859) (Some!1443 (tuple2!6633 (Token!1923 lt!242872 (rule!1839 token!491) lt!242858 lt!242866) suffix!1342))))))

(declare-fun lt!242853 () Unit!10179)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!128 (LexerInterface!979 List!5658 List!5657 List!5657 List!5657 Rule!1986) Unit!10179)

(assert (=> b!574615 (= lt!242853 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!128 thiss!22590 rules!3103 lt!242866 lt!242859 suffix!1342 (rule!1839 token!491)))))

(assert (=> b!574615 (= (maxPrefixOneRule!378 thiss!22590 (rule!1839 (_1!3580 (v!16300 lt!242861))) input!2705) (Some!1443 (tuple2!6633 (Token!1923 lt!242839 (rule!1839 (_1!3580 (v!16300 lt!242861))) lt!242848 lt!242860) (_2!3580 (v!16300 lt!242861)))))))

(declare-fun lt!242868 () Unit!10179)

(assert (=> b!574615 (= lt!242868 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!128 thiss!22590 rules!3103 lt!242860 input!2705 (_2!3580 (v!16300 lt!242861)) (rule!1839 (_1!3580 (v!16300 lt!242861)))))))

(declare-fun e!347216 () Bool)

(assert (=> b!574615 e!347216))

(declare-fun res!246775 () Bool)

(assert (=> b!574615 (=> (not res!246775) (not e!347216))))

(assert (=> b!574615 (= res!246775 (= (value!36017 token!491) lt!242872))))

(declare-fun apply!1358 (TokenValueInjection!2002 BalanceConc!3628) TokenValue!1117)

(assert (=> b!574615 (= lt!242872 (apply!1358 (transformation!1093 (rule!1839 token!491)) lt!242869))))

(declare-fun seqFromList!1281 (List!5657) BalanceConc!3628)

(assert (=> b!574615 (= lt!242869 (seqFromList!1281 lt!242866))))

(declare-fun lt!242851 () List!5657)

(assert (=> b!574615 (= suffix!1342 lt!242851)))

(declare-fun lt!242843 () Unit!10179)

(declare-fun lemmaSamePrefixThenSameSuffix!450 (List!5657 List!5657 List!5657 List!5657 List!5657) Unit!10179)

(assert (=> b!574615 (= lt!242843 (lemmaSamePrefixThenSameSuffix!450 lt!242866 suffix!1342 lt!242866 lt!242851 lt!242859))))

(declare-fun getSuffix!246 (List!5657 List!5657) List!5657)

(assert (=> b!574615 (= lt!242851 (getSuffix!246 lt!242859 lt!242866))))

(declare-fun b!574616 () Bool)

(declare-fun res!246771 () Bool)

(assert (=> b!574616 (=> (not res!246771) (not e!347200))))

(declare-fun size!4497 (List!5657) Int)

(assert (=> b!574616 (= res!246771 (= (size!4496 (_1!3580 (v!16300 lt!242861))) (size!4497 (originalCharacters!1132 (_1!3580 (v!16300 lt!242861))))))))

(declare-fun b!574617 () Bool)

(assert (=> b!574617 (= e!347216 (and (= (size!4496 token!491) lt!242858) (= (originalCharacters!1132 token!491) lt!242866) (= (tuple2!6633 token!491 suffix!1342) (tuple2!6633 (Token!1923 lt!242872 (rule!1839 token!491) lt!242858 lt!242866) lt!242851))))))

(declare-fun b!574618 () Bool)

(assert (=> b!574618 (= e!347206 (= lt!242873 (_2!3580 (v!16300 lt!242861))))))

(declare-fun b!574619 () Bool)

(declare-fun tp!180353 () Bool)

(assert (=> b!574619 (= e!347214 (and tp_is_empty!3209 tp!180353))))

(declare-fun b!574620 () Bool)

(assert (=> b!574620 (= e!347221 e!347220)))

(declare-fun res!246770 () Bool)

(assert (=> b!574620 (=> res!246770 e!347220)))

(assert (=> b!574620 (= res!246770 (>= lt!242848 lt!242858))))

(declare-fun b!574621 () Bool)

(assert (=> b!574621 (= e!347203 false)))

(declare-fun b!574622 () Bool)

(declare-fun res!246766 () Bool)

(assert (=> b!574622 (=> (not res!246766) (not e!347216))))

(assert (=> b!574622 (= res!246766 (= (size!4496 token!491) (size!4497 (originalCharacters!1132 token!491))))))

(declare-fun b!574623 () Bool)

(assert (=> b!574623 (= e!347213 (not e!347215))))

(declare-fun res!246786 () Bool)

(assert (=> b!574623 (=> res!246786 e!347215)))

(declare-fun isPrefix!727 (List!5657 List!5657) Bool)

(assert (=> b!574623 (= res!246786 (not (isPrefix!727 input!2705 lt!242841)))))

(assert (=> b!574623 (isPrefix!727 lt!242866 lt!242841)))

(declare-fun lt!242844 () Unit!10179)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!574 (List!5657 List!5657) Unit!10179)

(assert (=> b!574623 (= lt!242844 (lemmaConcatTwoListThenFirstIsPrefix!574 lt!242866 suffix!1342))))

(assert (=> b!574623 (isPrefix!727 input!2705 lt!242859)))

(declare-fun lt!242846 () Unit!10179)

(assert (=> b!574623 (= lt!242846 (lemmaConcatTwoListThenFirstIsPrefix!574 input!2705 suffix!1342))))

(assert (=> b!574623 e!347200))

(declare-fun res!246769 () Bool)

(assert (=> b!574623 (=> (not res!246769) (not e!347200))))

(assert (=> b!574623 (= res!246769 (= (value!36017 (_1!3580 (v!16300 lt!242861))) lt!242839))))

(assert (=> b!574623 (= lt!242839 (apply!1358 (transformation!1093 (rule!1839 (_1!3580 (v!16300 lt!242861)))) lt!242865))))

(assert (=> b!574623 (= lt!242865 (seqFromList!1281 lt!242860))))

(declare-fun lt!242864 () Unit!10179)

(declare-fun lemmaInv!229 (TokenValueInjection!2002) Unit!10179)

(assert (=> b!574623 (= lt!242864 (lemmaInv!229 (transformation!1093 (rule!1839 token!491))))))

(declare-fun lt!242867 () Unit!10179)

(assert (=> b!574623 (= lt!242867 (lemmaInv!229 (transformation!1093 (rule!1839 (_1!3580 (v!16300 lt!242861))))))))

(declare-fun ruleValid!303 (LexerInterface!979 Rule!1986) Bool)

(assert (=> b!574623 (ruleValid!303 thiss!22590 (rule!1839 token!491))))

(declare-fun lt!242852 () Unit!10179)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!160 (LexerInterface!979 Rule!1986 List!5658) Unit!10179)

(assert (=> b!574623 (= lt!242852 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!160 thiss!22590 (rule!1839 token!491) rules!3103))))

(assert (=> b!574623 (ruleValid!303 thiss!22590 (rule!1839 (_1!3580 (v!16300 lt!242861))))))

(declare-fun lt!242840 () Unit!10179)

(assert (=> b!574623 (= lt!242840 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!160 thiss!22590 (rule!1839 (_1!3580 (v!16300 lt!242861))) rules!3103))))

(assert (=> b!574623 (isPrefix!727 input!2705 input!2705)))

(declare-fun lt!242850 () Unit!10179)

(declare-fun lemmaIsPrefixRefl!465 (List!5657 List!5657) Unit!10179)

(assert (=> b!574623 (= lt!242850 (lemmaIsPrefixRefl!465 input!2705 input!2705))))

(assert (=> b!574623 (= (_2!3580 (v!16300 lt!242861)) lt!242873)))

(declare-fun lt!242863 () Unit!10179)

(assert (=> b!574623 (= lt!242863 (lemmaSamePrefixThenSameSuffix!450 lt!242860 (_2!3580 (v!16300 lt!242861)) lt!242860 lt!242873 input!2705))))

(assert (=> b!574623 (= lt!242873 (getSuffix!246 input!2705 lt!242860))))

(assert (=> b!574623 (isPrefix!727 lt!242860 lt!242856)))

(assert (=> b!574623 (= lt!242856 (++!1581 lt!242860 (_2!3580 (v!16300 lt!242861))))))

(declare-fun lt!242871 () Unit!10179)

(assert (=> b!574623 (= lt!242871 (lemmaConcatTwoListThenFirstIsPrefix!574 lt!242860 (_2!3580 (v!16300 lt!242861))))))

(declare-fun lt!242855 () Unit!10179)

(declare-fun lemmaCharactersSize!160 (Token!1922) Unit!10179)

(assert (=> b!574623 (= lt!242855 (lemmaCharactersSize!160 token!491))))

(declare-fun lt!242845 () Unit!10179)

(assert (=> b!574623 (= lt!242845 (lemmaCharactersSize!160 (_1!3580 (v!16300 lt!242861))))))

(declare-fun lt!242849 () Unit!10179)

(assert (=> b!574623 (= lt!242849 e!347201)))

(declare-fun c!107710 () Bool)

(assert (=> b!574623 (= c!107710 (> lt!242848 lt!242858))))

(assert (=> b!574623 (= lt!242858 (size!4497 lt!242866))))

(assert (=> b!574623 (= lt!242848 (size!4497 lt!242860))))

(assert (=> b!574623 (= lt!242860 (list!2345 (charsOf!722 (_1!3580 (v!16300 lt!242861)))))))

(assert (=> b!574623 (= lt!242861 (Some!1443 lt!242854))))

(assert (=> b!574623 (= lt!242854 (tuple2!6633 (_1!3580 (v!16300 lt!242861)) (_2!3580 (v!16300 lt!242861))))))

(declare-fun lt!242837 () Unit!10179)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!170 (List!5657 List!5657 List!5657 List!5657) Unit!10179)

(assert (=> b!574623 (= lt!242837 (lemmaConcatSameAndSameSizesThenSameLists!170 lt!242866 suffix!1342 input!2705 suffix!1342))))

(declare-fun tp!180355 () Bool)

(declare-fun b!574624 () Bool)

(assert (=> b!574624 (= e!347210 (and tp!180355 (inv!7100 (tag!1355 (h!11049 rules!3103))) (inv!7104 (transformation!1093 (h!11049 rules!3103))) e!347199))))

(assert (=> b!574625 (= e!347198 (and tp!180356 tp!180352))))

(declare-fun b!574626 () Bool)

(assert (=> b!574626 (= e!347218 e!347217)))

(declare-fun res!246767 () Bool)

(assert (=> b!574626 (=> (not res!246767) (not e!347217))))

(declare-fun lt!242842 () tuple2!6632)

(assert (=> b!574626 (= res!246767 (and (= (_1!3580 lt!242842) token!491) (= (_2!3580 lt!242842) suffix!1342)))))

(declare-fun get!2154 (Option!1444) tuple2!6632)

(assert (=> b!574626 (= lt!242842 (get!2154 lt!242862))))

(declare-fun b!574627 () Bool)

(declare-fun res!246777 () Bool)

(assert (=> b!574627 (=> (not res!246777) (not e!347206))))

(assert (=> b!574627 (= res!246777 (= (_1!3580 (get!2154 lt!242861)) (_1!3580 (v!16300 lt!242861))))))

(assert (= (and start!52964 res!246785) b!574607))

(assert (= (and b!574607 res!246781) b!574610))

(assert (= (and b!574610 res!246776) b!574608))

(assert (= (and b!574608 res!246772) b!574596))

(assert (= (and b!574596 res!246783) b!574614))

(assert (= (and b!574614 res!246780) b!574626))

(assert (= (and b!574626 res!246767) b!574611))

(assert (= (and b!574611 res!246768) b!574598))

(assert (= (and b!574598 res!246782) b!574623))

(assert (= (and b!574623 c!107710) b!574600))

(assert (= (and b!574623 (not c!107710)) b!574609))

(assert (= (and b!574623 res!246769) b!574616))

(assert (= (and b!574616 res!246771) b!574595))

(assert (= (and b!574623 (not res!246786)) b!574615))

(assert (= (and b!574615 res!246775) b!574622))

(assert (= (and b!574622 res!246766) b!574617))

(assert (= (and b!574615 res!246774) b!574620))

(assert (= (and b!574620 (not res!246770)) b!574605))

(assert (= (and b!574605 res!246779) b!574627))

(assert (= (and b!574627 res!246777) b!574618))

(assert (= (and b!574615 c!107709) b!574604))

(assert (= (and b!574615 (not c!107709)) b!574602))

(assert (= (and b!574604 res!246784) b!574621))

(assert (= (and b!574615 (not res!246773)) b!574599))

(assert (= (and b!574599 (not res!246778)) b!574597))

(assert (= (and start!52964 ((_ is Cons!5647) suffix!1342)) b!574601))

(assert (= b!574624 b!574613))

(assert (= b!574606 b!574624))

(assert (= (and start!52964 ((_ is Cons!5648) rules!3103)) b!574606))

(assert (= b!574612 b!574625))

(assert (= b!574603 b!574612))

(assert (= start!52964 b!574603))

(assert (= (and start!52964 ((_ is Cons!5647) input!2705)) b!574619))

(declare-fun m!831427 () Bool)

(assert (=> b!574596 m!831427))

(assert (=> b!574596 m!831427))

(declare-fun m!831429 () Bool)

(assert (=> b!574596 m!831429))

(declare-fun m!831431 () Bool)

(assert (=> b!574614 m!831431))

(declare-fun m!831433 () Bool)

(assert (=> b!574614 m!831433))

(declare-fun m!831435 () Bool)

(assert (=> b!574614 m!831435))

(declare-fun m!831437 () Bool)

(assert (=> b!574623 m!831437))

(declare-fun m!831439 () Bool)

(assert (=> b!574623 m!831439))

(declare-fun m!831441 () Bool)

(assert (=> b!574623 m!831441))

(declare-fun m!831443 () Bool)

(assert (=> b!574623 m!831443))

(declare-fun m!831445 () Bool)

(assert (=> b!574623 m!831445))

(declare-fun m!831447 () Bool)

(assert (=> b!574623 m!831447))

(declare-fun m!831449 () Bool)

(assert (=> b!574623 m!831449))

(declare-fun m!831451 () Bool)

(assert (=> b!574623 m!831451))

(declare-fun m!831453 () Bool)

(assert (=> b!574623 m!831453))

(declare-fun m!831455 () Bool)

(assert (=> b!574623 m!831455))

(declare-fun m!831457 () Bool)

(assert (=> b!574623 m!831457))

(declare-fun m!831459 () Bool)

(assert (=> b!574623 m!831459))

(declare-fun m!831461 () Bool)

(assert (=> b!574623 m!831461))

(declare-fun m!831463 () Bool)

(assert (=> b!574623 m!831463))

(declare-fun m!831465 () Bool)

(assert (=> b!574623 m!831465))

(declare-fun m!831467 () Bool)

(assert (=> b!574623 m!831467))

(declare-fun m!831469 () Bool)

(assert (=> b!574623 m!831469))

(declare-fun m!831471 () Bool)

(assert (=> b!574623 m!831471))

(declare-fun m!831473 () Bool)

(assert (=> b!574623 m!831473))

(assert (=> b!574623 m!831453))

(declare-fun m!831475 () Bool)

(assert (=> b!574623 m!831475))

(declare-fun m!831477 () Bool)

(assert (=> b!574623 m!831477))

(declare-fun m!831479 () Bool)

(assert (=> b!574623 m!831479))

(declare-fun m!831481 () Bool)

(assert (=> b!574623 m!831481))

(declare-fun m!831483 () Bool)

(assert (=> b!574623 m!831483))

(declare-fun m!831485 () Bool)

(assert (=> b!574623 m!831485))

(declare-fun m!831487 () Bool)

(assert (=> b!574623 m!831487))

(declare-fun m!831489 () Bool)

(assert (=> b!574623 m!831489))

(declare-fun m!831491 () Bool)

(assert (=> b!574611 m!831491))

(declare-fun m!831493 () Bool)

(assert (=> b!574622 m!831493))

(declare-fun m!831495 () Bool)

(assert (=> b!574604 m!831495))

(declare-fun m!831497 () Bool)

(assert (=> b!574604 m!831497))

(declare-fun m!831499 () Bool)

(assert (=> b!574604 m!831499))

(declare-fun m!831501 () Bool)

(assert (=> b!574607 m!831501))

(declare-fun m!831503 () Bool)

(assert (=> start!52964 m!831503))

(declare-fun m!831505 () Bool)

(assert (=> b!574599 m!831505))

(declare-fun m!831507 () Bool)

(assert (=> b!574612 m!831507))

(declare-fun m!831509 () Bool)

(assert (=> b!574612 m!831509))

(declare-fun m!831511 () Bool)

(assert (=> b!574608 m!831511))

(declare-fun m!831513 () Bool)

(assert (=> b!574616 m!831513))

(declare-fun m!831515 () Bool)

(assert (=> b!574605 m!831515))

(declare-fun m!831517 () Bool)

(assert (=> b!574598 m!831517))

(declare-fun m!831519 () Bool)

(assert (=> b!574626 m!831519))

(declare-fun m!831521 () Bool)

(assert (=> b!574627 m!831521))

(declare-fun m!831523 () Bool)

(assert (=> b!574603 m!831523))

(declare-fun m!831525 () Bool)

(assert (=> b!574615 m!831525))

(declare-fun m!831527 () Bool)

(assert (=> b!574615 m!831527))

(assert (=> b!574615 m!831495))

(declare-fun m!831529 () Bool)

(assert (=> b!574615 m!831529))

(declare-fun m!831531 () Bool)

(assert (=> b!574615 m!831531))

(declare-fun m!831533 () Bool)

(assert (=> b!574615 m!831533))

(declare-fun m!831535 () Bool)

(assert (=> b!574615 m!831535))

(declare-fun m!831537 () Bool)

(assert (=> b!574615 m!831537))

(declare-fun m!831539 () Bool)

(assert (=> b!574615 m!831539))

(declare-fun m!831541 () Bool)

(assert (=> b!574615 m!831541))

(declare-fun m!831543 () Bool)

(assert (=> b!574624 m!831543))

(declare-fun m!831545 () Bool)

(assert (=> b!574624 m!831545))

(declare-fun m!831547 () Bool)

(assert (=> b!574610 m!831547))

(check-sat (not b!574607) (not b!574623) (not start!52964) (not b!574611) (not b!574605) (not b!574599) b_and!56217 (not b!574608) tp_is_empty!3209 (not b!574626) (not b_next!16001) (not b!574596) (not b!574624) (not b!574606) (not b_next!16003) (not b!574615) b_and!56211 b_and!56213 (not b!574610) (not b!574627) (not b!574622) (not b_next!15999) (not b!574598) (not b!574601) (not b!574619) (not b!574616) (not b!574604) (not b_next!15997) b_and!56215 (not b!574603) (not b!574612) (not b!574614))
(check-sat (not b_next!16001) (not b_next!16003) b_and!56211 b_and!56213 (not b_next!15999) (not b_next!15997) b_and!56215 b_and!56217)
