; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!262812 () Bool)

(assert start!262812)

(declare-fun b!2706978 () Bool)

(declare-fun b_free!76425 () Bool)

(declare-fun b_next!77129 () Bool)

(assert (=> b!2706978 (= b_free!76425 (not b_next!77129))))

(declare-fun tp!856186 () Bool)

(declare-fun b_and!199857 () Bool)

(assert (=> b!2706978 (= tp!856186 b_and!199857)))

(declare-fun b_free!76427 () Bool)

(declare-fun b_next!77131 () Bool)

(assert (=> b!2706978 (= b_free!76427 (not b_next!77131))))

(declare-fun tp!856189 () Bool)

(declare-fun b_and!199859 () Bool)

(assert (=> b!2706978 (= tp!856189 b_and!199859)))

(declare-fun b!2706977 () Bool)

(declare-fun e!1706767 () Bool)

(declare-fun e!1706768 () Bool)

(assert (=> b!2706977 (= e!1706767 e!1706768)))

(declare-fun res!1136792 () Bool)

(assert (=> b!2706977 (=> (not res!1136792) (not e!1706768))))

(declare-datatypes ((List!31365 0))(
  ( (Nil!31265) (Cons!31265 (h!36685 (_ BitVec 16)) (t!225813 List!31365)) )
))
(declare-datatypes ((TokenValue!4999 0))(
  ( (FloatLiteralValue!9998 (text!35438 List!31365)) (TokenValueExt!4998 (__x!20133 Int)) (Broken!24995 (value!153731 List!31365)) (Object!5098) (End!4999) (Def!4999) (Underscore!4999) (Match!4999) (Else!4999) (Error!4999) (Case!4999) (If!4999) (Extends!4999) (Abstract!4999) (Class!4999) (Val!4999) (DelimiterValue!9998 (del!5059 List!31365)) (KeywordValue!5005 (value!153732 List!31365)) (CommentValue!9998 (value!153733 List!31365)) (WhitespaceValue!9998 (value!153734 List!31365)) (IndentationValue!4999 (value!153735 List!31365)) (String!34894) (Int32!4999) (Broken!24996 (value!153736 List!31365)) (Boolean!5000) (Unit!45306) (OperatorValue!5002 (op!5059 List!31365)) (IdentifierValue!9998 (value!153737 List!31365)) (IdentifierValue!9999 (value!153738 List!31365)) (WhitespaceValue!9999 (value!153739 List!31365)) (True!9998) (False!9998) (Broken!24997 (value!153740 List!31365)) (Broken!24998 (value!153741 List!31365)) (True!9999) (RightBrace!4999) (RightBracket!4999) (Colon!4999) (Null!4999) (Comma!4999) (LeftBracket!4999) (False!9999) (LeftBrace!4999) (ImaginaryLiteralValue!4999 (text!35439 List!31365)) (StringLiteralValue!14997 (value!153742 List!31365)) (EOFValue!4999 (value!153743 List!31365)) (IdentValue!4999 (value!153744 List!31365)) (DelimiterValue!9999 (value!153745 List!31365)) (DedentValue!4999 (value!153746 List!31365)) (NewLineValue!4999 (value!153747 List!31365)) (IntegerValue!14997 (value!153748 (_ BitVec 32)) (text!35440 List!31365)) (IntegerValue!14998 (value!153749 Int) (text!35441 List!31365)) (Times!4999) (Or!4999) (Equal!4999) (Minus!4999) (Broken!24999 (value!153750 List!31365)) (And!4999) (Div!4999) (LessEqual!4999) (Mod!4999) (Concat!12928) (Not!4999) (Plus!4999) (SpaceValue!4999 (value!153751 List!31365)) (IntegerValue!14999 (value!153752 Int) (text!35442 List!31365)) (StringLiteralValue!14998 (text!35443 List!31365)) (FloatLiteralValue!9999 (text!35444 List!31365)) (BytesLiteralValue!4999 (value!153753 List!31365)) (CommentValue!9999 (value!153754 List!31365)) (StringLiteralValue!14999 (value!153755 List!31365)) (ErrorTokenValue!4999 (msg!5060 List!31365)) )
))
(declare-datatypes ((C!16016 0))(
  ( (C!16017 (val!9942 Int)) )
))
(declare-datatypes ((Regex!7929 0))(
  ( (ElementMatch!7929 (c!436770 C!16016)) (Concat!12929 (regOne!16370 Regex!7929) (regTwo!16370 Regex!7929)) (EmptyExpr!7929) (Star!7929 (reg!8258 Regex!7929)) (EmptyLang!7929) (Union!7929 (regOne!16371 Regex!7929) (regTwo!16371 Regex!7929)) )
))
(declare-datatypes ((String!34895 0))(
  ( (String!34896 (value!153756 String)) )
))
(declare-datatypes ((List!31366 0))(
  ( (Nil!31266) (Cons!31266 (h!36686 C!16016) (t!225814 List!31366)) )
))
(declare-datatypes ((IArray!19567 0))(
  ( (IArray!19568 (innerList!9841 List!31366)) )
))
(declare-datatypes ((Conc!9781 0))(
  ( (Node!9781 (left!24047 Conc!9781) (right!24377 Conc!9781) (csize!19792 Int) (cheight!9992 Int)) (Leaf!14914 (xs!12833 IArray!19567) (csize!19793 Int)) (Empty!9781) )
))
(declare-datatypes ((BalanceConc!19176 0))(
  ( (BalanceConc!19177 (c!436771 Conc!9781)) )
))
(declare-datatypes ((TokenValueInjection!9438 0))(
  ( (TokenValueInjection!9439 (toValue!6743 Int) (toChars!6602 Int)) )
))
(declare-datatypes ((Rule!9354 0))(
  ( (Rule!9355 (regex!4777 Regex!7929) (tag!5281 String!34895) (isSeparator!4777 Bool) (transformation!4777 TokenValueInjection!9438)) )
))
(declare-datatypes ((Token!9016 0))(
  ( (Token!9017 (value!153757 TokenValue!4999) (rule!7197 Rule!9354) (size!24123 Int) (originalCharacters!5539 List!31366)) )
))
(declare-datatypes ((List!31367 0))(
  ( (Nil!31267) (Cons!31267 (h!36687 Token!9016) (t!225815 List!31367)) )
))
(declare-datatypes ((IArray!19569 0))(
  ( (IArray!19570 (innerList!9842 List!31367)) )
))
(declare-datatypes ((Conc!9782 0))(
  ( (Node!9782 (left!24048 Conc!9782) (right!24378 Conc!9782) (csize!19794 Int) (cheight!9993 Int)) (Leaf!14915 (xs!12834 IArray!19569) (csize!19795 Int)) (Empty!9782) )
))
(declare-datatypes ((BalanceConc!19178 0))(
  ( (BalanceConc!19179 (c!436772 Conc!9782)) )
))
(declare-datatypes ((tuple2!30888 0))(
  ( (tuple2!30889 (_1!18076 BalanceConc!19178) (_2!18076 BalanceConc!19176)) )
))
(declare-fun lt!957072 () tuple2!30888)

(declare-fun acc!331 () BalanceConc!19178)

(declare-fun list!11812 (BalanceConc!19178) List!31367)

(assert (=> b!2706977 (= res!1136792 (= (list!11812 (_1!18076 lt!957072)) (list!11812 acc!331)))))

(declare-fun treated!9 () BalanceConc!19176)

(declare-datatypes ((LexerInterface!4373 0))(
  ( (LexerInterfaceExt!4370 (__x!20134 Int)) (Lexer!4371) )
))
(declare-fun thiss!11556 () LexerInterface!4373)

(declare-datatypes ((List!31368 0))(
  ( (Nil!31268) (Cons!31268 (h!36688 Rule!9354) (t!225816 List!31368)) )
))
(declare-fun rules!1182 () List!31368)

(declare-fun lexRec!633 (LexerInterface!4373 List!31368 BalanceConc!19176) tuple2!30888)

(assert (=> b!2706977 (= lt!957072 (lexRec!633 thiss!11556 rules!1182 treated!9))))

(declare-fun e!1706769 () Bool)

(assert (=> b!2706978 (= e!1706769 (and tp!856186 tp!856189))))

(declare-fun b!2706979 () Bool)

(declare-fun e!1706779 () Bool)

(declare-fun tp!856193 () Bool)

(declare-fun inv!42391 (Conc!9781) Bool)

(assert (=> b!2706979 (= e!1706779 (and (inv!42391 (c!436771 treated!9)) tp!856193))))

(declare-fun b!2706980 () Bool)

(declare-fun e!1706777 () Bool)

(declare-fun tp!856187 () Bool)

(declare-fun inv!42392 (Conc!9782) Bool)

(assert (=> b!2706980 (= e!1706777 (and (inv!42392 (c!436772 acc!331)) tp!856187))))

(declare-fun b!2706981 () Bool)

(declare-fun res!1136793 () Bool)

(declare-fun e!1706773 () Bool)

(assert (=> b!2706981 (=> (not res!1136793) (not e!1706773))))

(declare-fun rulesInvariant!3858 (LexerInterface!4373 List!31368) Bool)

(assert (=> b!2706981 (= res!1136793 (rulesInvariant!3858 thiss!11556 rules!1182))))

(declare-fun b!2706982 () Bool)

(declare-fun e!1706770 () Bool)

(assert (=> b!2706982 (= e!1706768 e!1706770)))

(declare-fun res!1136789 () Bool)

(assert (=> b!2706982 (=> (not res!1136789) (not e!1706770))))

(declare-fun lt!957067 () tuple2!30888)

(declare-fun lt!957068 () tuple2!30888)

(declare-fun ++!7706 (BalanceConc!19178 BalanceConc!19178) BalanceConc!19178)

(assert (=> b!2706982 (= res!1136789 (= (list!11812 (_1!18076 lt!957068)) (list!11812 (++!7706 acc!331 (_1!18076 lt!957067)))))))

(declare-fun input!603 () BalanceConc!19176)

(assert (=> b!2706982 (= lt!957067 (lexRec!633 thiss!11556 rules!1182 input!603))))

(declare-fun totalInput!328 () BalanceConc!19176)

(assert (=> b!2706982 (= lt!957068 (lexRec!633 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2706983 () Bool)

(declare-fun e!1706771 () Bool)

(declare-fun tp!856191 () Bool)

(assert (=> b!2706983 (= e!1706771 (and (inv!42391 (c!436771 totalInput!328)) tp!856191))))

(declare-fun b!2706984 () Bool)

(declare-fun e!1706772 () Bool)

(declare-fun tp!856188 () Bool)

(assert (=> b!2706984 (= e!1706772 (and (inv!42391 (c!436771 input!603)) tp!856188))))

(declare-fun b!2706985 () Bool)

(assert (=> b!2706985 (= e!1706773 e!1706767)))

(declare-fun res!1136791 () Bool)

(assert (=> b!2706985 (=> (not res!1136791) (not e!1706767))))

(declare-fun lt!957069 () List!31366)

(declare-fun list!11813 (BalanceConc!19176) List!31366)

(declare-fun ++!7707 (List!31366 List!31366) List!31366)

(assert (=> b!2706985 (= res!1136791 (= (list!11813 totalInput!328) (++!7707 lt!957069 (list!11813 input!603))))))

(assert (=> b!2706985 (= lt!957069 (list!11813 treated!9))))

(declare-fun res!1136795 () Bool)

(assert (=> start!262812 (=> (not res!1136795) (not e!1706773))))

(get-info :version)

(assert (=> start!262812 (= res!1136795 ((_ is Lexer!4371) thiss!11556))))

(assert (=> start!262812 e!1706773))

(declare-fun inv!42393 (BalanceConc!19176) Bool)

(assert (=> start!262812 (and (inv!42393 treated!9) e!1706779)))

(assert (=> start!262812 (and (inv!42393 input!603) e!1706772)))

(assert (=> start!262812 true))

(declare-fun e!1706774 () Bool)

(assert (=> start!262812 e!1706774))

(assert (=> start!262812 (and (inv!42393 totalInput!328) e!1706771)))

(declare-fun inv!42394 (BalanceConc!19178) Bool)

(assert (=> start!262812 (and (inv!42394 acc!331) e!1706777)))

(declare-fun b!2706986 () Bool)

(declare-fun e!1706775 () Bool)

(assert (=> b!2706986 (= e!1706770 e!1706775)))

(declare-fun res!1136787 () Bool)

(assert (=> b!2706986 (=> (not res!1136787) (not e!1706775))))

(declare-datatypes ((tuple2!30890 0))(
  ( (tuple2!30891 (_1!18077 Token!9016) (_2!18077 BalanceConc!19176)) )
))
(declare-datatypes ((Option!6163 0))(
  ( (None!6162) (Some!6162 (v!32974 tuple2!30890)) )
))
(declare-fun lt!957075 () Option!6163)

(assert (=> b!2706986 (= res!1136787 ((_ is Some!6162) lt!957075))))

(declare-fun maxPrefixZipperSequence!1021 (LexerInterface!4373 List!31368 BalanceConc!19176) Option!6163)

(assert (=> b!2706986 (= lt!957075 (maxPrefixZipperSequence!1021 thiss!11556 rules!1182 input!603))))

(declare-fun b!2706987 () Bool)

(assert (=> b!2706987 (= e!1706775 (not true))))

(declare-fun lt!957074 () List!31366)

(declare-fun lt!957070 () List!31366)

(assert (=> b!2706987 (= (++!7707 (++!7707 lt!957069 lt!957074) lt!957070) (++!7707 lt!957069 (++!7707 lt!957074 lt!957070)))))

(declare-datatypes ((Unit!45307 0))(
  ( (Unit!45308) )
))
(declare-fun lt!957071 () Unit!45307)

(declare-fun lemmaConcatAssociativity!1572 (List!31366 List!31366 List!31366) Unit!45307)

(assert (=> b!2706987 (= lt!957071 (lemmaConcatAssociativity!1572 lt!957069 lt!957074 lt!957070))))

(assert (=> b!2706987 (= lt!957070 (list!11813 (_2!18077 (v!32974 lt!957075))))))

(declare-fun charsOf!3000 (Token!9016) BalanceConc!19176)

(assert (=> b!2706987 (= lt!957074 (list!11813 (charsOf!3000 (_1!18077 (v!32974 lt!957075)))))))

(declare-fun lt!957073 () tuple2!30888)

(assert (=> b!2706987 (= lt!957073 (lexRec!633 thiss!11556 rules!1182 (_2!18077 (v!32974 lt!957075))))))

(declare-fun b!2706988 () Bool)

(declare-fun res!1136794 () Bool)

(assert (=> b!2706988 (=> (not res!1136794) (not e!1706768))))

(declare-fun isEmpty!17805 (List!31366) Bool)

(assert (=> b!2706988 (= res!1136794 (isEmpty!17805 (list!11813 (_2!18076 lt!957072))))))

(declare-fun b!2706989 () Bool)

(declare-fun res!1136788 () Bool)

(assert (=> b!2706989 (=> (not res!1136788) (not e!1706770))))

(assert (=> b!2706989 (= res!1136788 (= (list!11813 (_2!18076 lt!957068)) (list!11813 (_2!18076 lt!957067))))))

(declare-fun tp!856192 () Bool)

(declare-fun b!2706990 () Bool)

(declare-fun e!1706778 () Bool)

(declare-fun inv!42385 (String!34895) Bool)

(declare-fun inv!42395 (TokenValueInjection!9438) Bool)

(assert (=> b!2706990 (= e!1706778 (and tp!856192 (inv!42385 (tag!5281 (h!36688 rules!1182))) (inv!42395 (transformation!4777 (h!36688 rules!1182))) e!1706769))))

(declare-fun b!2706991 () Bool)

(declare-fun tp!856190 () Bool)

(assert (=> b!2706991 (= e!1706774 (and e!1706778 tp!856190))))

(declare-fun b!2706992 () Bool)

(declare-fun res!1136790 () Bool)

(assert (=> b!2706992 (=> (not res!1136790) (not e!1706773))))

(declare-fun isEmpty!17806 (List!31368) Bool)

(assert (=> b!2706992 (= res!1136790 (not (isEmpty!17806 rules!1182)))))

(assert (= (and start!262812 res!1136795) b!2706992))

(assert (= (and b!2706992 res!1136790) b!2706981))

(assert (= (and b!2706981 res!1136793) b!2706985))

(assert (= (and b!2706985 res!1136791) b!2706977))

(assert (= (and b!2706977 res!1136792) b!2706988))

(assert (= (and b!2706988 res!1136794) b!2706982))

(assert (= (and b!2706982 res!1136789) b!2706989))

(assert (= (and b!2706989 res!1136788) b!2706986))

(assert (= (and b!2706986 res!1136787) b!2706987))

(assert (= start!262812 b!2706979))

(assert (= start!262812 b!2706984))

(assert (= b!2706990 b!2706978))

(assert (= b!2706991 b!2706990))

(assert (= (and start!262812 ((_ is Cons!31268) rules!1182)) b!2706991))

(assert (= start!262812 b!2706983))

(assert (= start!262812 b!2706980))

(declare-fun m!3097251 () Bool)

(assert (=> b!2706982 m!3097251))

(declare-fun m!3097253 () Bool)

(assert (=> b!2706982 m!3097253))

(declare-fun m!3097255 () Bool)

(assert (=> b!2706982 m!3097255))

(declare-fun m!3097257 () Bool)

(assert (=> b!2706982 m!3097257))

(assert (=> b!2706982 m!3097257))

(declare-fun m!3097259 () Bool)

(assert (=> b!2706982 m!3097259))

(declare-fun m!3097261 () Bool)

(assert (=> b!2706981 m!3097261))

(declare-fun m!3097263 () Bool)

(assert (=> b!2706987 m!3097263))

(declare-fun m!3097265 () Bool)

(assert (=> b!2706987 m!3097265))

(declare-fun m!3097267 () Bool)

(assert (=> b!2706987 m!3097267))

(declare-fun m!3097269 () Bool)

(assert (=> b!2706987 m!3097269))

(declare-fun m!3097271 () Bool)

(assert (=> b!2706987 m!3097271))

(declare-fun m!3097273 () Bool)

(assert (=> b!2706987 m!3097273))

(declare-fun m!3097275 () Bool)

(assert (=> b!2706987 m!3097275))

(assert (=> b!2706987 m!3097267))

(declare-fun m!3097277 () Bool)

(assert (=> b!2706987 m!3097277))

(declare-fun m!3097279 () Bool)

(assert (=> b!2706987 m!3097279))

(assert (=> b!2706987 m!3097277))

(assert (=> b!2706987 m!3097263))

(declare-fun m!3097281 () Bool)

(assert (=> b!2706983 m!3097281))

(declare-fun m!3097283 () Bool)

(assert (=> b!2706977 m!3097283))

(declare-fun m!3097285 () Bool)

(assert (=> b!2706977 m!3097285))

(declare-fun m!3097287 () Bool)

(assert (=> b!2706977 m!3097287))

(declare-fun m!3097289 () Bool)

(assert (=> start!262812 m!3097289))

(declare-fun m!3097291 () Bool)

(assert (=> start!262812 m!3097291))

(declare-fun m!3097293 () Bool)

(assert (=> start!262812 m!3097293))

(declare-fun m!3097295 () Bool)

(assert (=> start!262812 m!3097295))

(declare-fun m!3097297 () Bool)

(assert (=> b!2706980 m!3097297))

(declare-fun m!3097299 () Bool)

(assert (=> b!2706989 m!3097299))

(declare-fun m!3097301 () Bool)

(assert (=> b!2706989 m!3097301))

(declare-fun m!3097303 () Bool)

(assert (=> b!2706992 m!3097303))

(declare-fun m!3097305 () Bool)

(assert (=> b!2706985 m!3097305))

(declare-fun m!3097307 () Bool)

(assert (=> b!2706985 m!3097307))

(assert (=> b!2706985 m!3097307))

(declare-fun m!3097309 () Bool)

(assert (=> b!2706985 m!3097309))

(declare-fun m!3097311 () Bool)

(assert (=> b!2706985 m!3097311))

(declare-fun m!3097313 () Bool)

(assert (=> b!2706984 m!3097313))

(declare-fun m!3097315 () Bool)

(assert (=> b!2706986 m!3097315))

(declare-fun m!3097317 () Bool)

(assert (=> b!2706988 m!3097317))

(assert (=> b!2706988 m!3097317))

(declare-fun m!3097319 () Bool)

(assert (=> b!2706988 m!3097319))

(declare-fun m!3097321 () Bool)

(assert (=> b!2706990 m!3097321))

(declare-fun m!3097323 () Bool)

(assert (=> b!2706990 m!3097323))

(declare-fun m!3097325 () Bool)

(assert (=> b!2706979 m!3097325))

(check-sat (not b!2706977) (not b!2706987) (not b!2706991) (not b!2706984) (not start!262812) (not b!2706988) b_and!199859 (not b!2706990) (not b!2706989) (not b!2706980) (not b_next!77129) (not b!2706986) b_and!199857 (not b!2706992) (not b!2706982) (not b!2706985) (not b!2706979) (not b_next!77131) (not b!2706983) (not b!2706981))
(check-sat b_and!199859 b_and!199857 (not b_next!77131) (not b_next!77129))
