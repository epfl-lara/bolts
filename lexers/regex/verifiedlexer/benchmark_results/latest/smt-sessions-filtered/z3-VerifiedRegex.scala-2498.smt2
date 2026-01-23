; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131992 () Bool)

(assert start!131992)

(declare-fun b!1430230 () Bool)

(declare-fun e!912891 () Bool)

(declare-fun e!912888 () Bool)

(assert (=> b!1430230 (= e!912891 (not e!912888))))

(declare-fun res!647196 () Bool)

(assert (=> b!1430230 (=> res!647196 e!912888)))

(declare-datatypes ((C!7996 0))(
  ( (C!7997 (val!4568 Int)) )
))
(declare-datatypes ((List!14872 0))(
  ( (Nil!14806) (Cons!14806 (h!20207 C!7996) (t!126951 List!14872)) )
))
(declare-datatypes ((String!17680 0))(
  ( (String!17681 (value!83579 String)) )
))
(declare-datatypes ((IArray!10037 0))(
  ( (IArray!10038 (innerList!5076 List!14872)) )
))
(declare-datatypes ((Conc!5016 0))(
  ( (Node!5016 (left!12620 Conc!5016) (right!12950 Conc!5016) (csize!10262 Int) (cheight!5227 Int)) (Leaf!7515 (xs!7745 IArray!10037) (csize!10263 Int)) (Empty!5016) )
))
(declare-datatypes ((BalanceConc!9972 0))(
  ( (BalanceConc!9973 (c!235210 Conc!5016)) )
))
(declare-datatypes ((List!14873 0))(
  ( (Nil!14807) (Cons!14807 (h!20208 (_ BitVec 16)) (t!126952 List!14873)) )
))
(declare-datatypes ((TokenValue!2685 0))(
  ( (FloatLiteralValue!5370 (text!19240 List!14873)) (TokenValueExt!2684 (__x!9168 Int)) (Broken!13425 (value!83580 List!14873)) (Object!2750) (End!2685) (Def!2685) (Underscore!2685) (Match!2685) (Else!2685) (Error!2685) (Case!2685) (If!2685) (Extends!2685) (Abstract!2685) (Class!2685) (Val!2685) (DelimiterValue!5370 (del!2745 List!14873)) (KeywordValue!2691 (value!83581 List!14873)) (CommentValue!5370 (value!83582 List!14873)) (WhitespaceValue!5370 (value!83583 List!14873)) (IndentationValue!2685 (value!83584 List!14873)) (String!17682) (Int32!2685) (Broken!13426 (value!83585 List!14873)) (Boolean!2686) (Unit!22336) (OperatorValue!2688 (op!2745 List!14873)) (IdentifierValue!5370 (value!83586 List!14873)) (IdentifierValue!5371 (value!83587 List!14873)) (WhitespaceValue!5371 (value!83588 List!14873)) (True!5370) (False!5370) (Broken!13427 (value!83589 List!14873)) (Broken!13428 (value!83590 List!14873)) (True!5371) (RightBrace!2685) (RightBracket!2685) (Colon!2685) (Null!2685) (Comma!2685) (LeftBracket!2685) (False!5371) (LeftBrace!2685) (ImaginaryLiteralValue!2685 (text!19241 List!14873)) (StringLiteralValue!8055 (value!83591 List!14873)) (EOFValue!2685 (value!83592 List!14873)) (IdentValue!2685 (value!83593 List!14873)) (DelimiterValue!5371 (value!83594 List!14873)) (DedentValue!2685 (value!83595 List!14873)) (NewLineValue!2685 (value!83596 List!14873)) (IntegerValue!8055 (value!83597 (_ BitVec 32)) (text!19242 List!14873)) (IntegerValue!8056 (value!83598 Int) (text!19243 List!14873)) (Times!2685) (Or!2685) (Equal!2685) (Minus!2685) (Broken!13429 (value!83599 List!14873)) (And!2685) (Div!2685) (LessEqual!2685) (Mod!2685) (Concat!6594) (Not!2685) (Plus!2685) (SpaceValue!2685 (value!83600 List!14873)) (IntegerValue!8057 (value!83601 Int) (text!19244 List!14873)) (StringLiteralValue!8056 (text!19245 List!14873)) (FloatLiteralValue!5371 (text!19246 List!14873)) (BytesLiteralValue!2685 (value!83602 List!14873)) (CommentValue!5371 (value!83603 List!14873)) (StringLiteralValue!8057 (value!83604 List!14873)) (ErrorTokenValue!2685 (msg!2746 List!14873)) )
))
(declare-datatypes ((Regex!3909 0))(
  ( (ElementMatch!3909 (c!235211 C!7996)) (Concat!6595 (regOne!8330 Regex!3909) (regTwo!8330 Regex!3909)) (EmptyExpr!3909) (Star!3909 (reg!4238 Regex!3909)) (EmptyLang!3909) (Union!3909 (regOne!8331 Regex!3909) (regTwo!8331 Regex!3909)) )
))
(declare-datatypes ((TokenValueInjection!5030 0))(
  ( (TokenValueInjection!5031 (toValue!3898 Int) (toChars!3757 Int)) )
))
(declare-datatypes ((Rule!4990 0))(
  ( (Rule!4991 (regex!2595 Regex!3909) (tag!2857 String!17680) (isSeparator!2595 Bool) (transformation!2595 TokenValueInjection!5030)) )
))
(declare-datatypes ((Token!4852 0))(
  ( (Token!4853 (value!83605 TokenValue!2685) (rule!4358 Rule!4990) (size!12150 Int) (originalCharacters!3457 List!14872)) )
))
(declare-fun lt!485435 () Token!4852)

(declare-datatypes ((List!14874 0))(
  ( (Nil!14808) (Cons!14808 (h!20209 Token!4852) (t!126953 List!14874)) )
))
(declare-datatypes ((IArray!10039 0))(
  ( (IArray!10040 (innerList!5077 List!14874)) )
))
(declare-datatypes ((Conc!5017 0))(
  ( (Node!5017 (left!12621 Conc!5017) (right!12951 Conc!5017) (csize!10264 Int) (cheight!5228 Int)) (Leaf!7516 (xs!7746 IArray!10039) (csize!10265 Int)) (Empty!5017) )
))
(declare-datatypes ((BalanceConc!9974 0))(
  ( (BalanceConc!9975 (c!235212 Conc!5017)) )
))
(declare-datatypes ((List!14875 0))(
  ( (Nil!14809) (Cons!14809 (h!20210 Rule!4990) (t!126954 List!14875)) )
))
(declare-datatypes ((PrintableTokens!972 0))(
  ( (PrintableTokens!973 (rules!11262 List!14875) (tokens!1932 BalanceConc!9974)) )
))
(declare-fun thiss!10022 () PrintableTokens!972)

(declare-fun lt!485444 () Token!4852)

(declare-datatypes ((LexerInterface!2259 0))(
  ( (LexerInterfaceExt!2256 (__x!9169 Int)) (Lexer!2257) )
))
(declare-fun separableTokensPredicate!494 (LexerInterface!2259 Token!4852 Token!4852 List!14875) Bool)

(assert (=> b!1430230 (= res!647196 (not (separableTokensPredicate!494 Lexer!2257 lt!485435 lt!485444 (rules!11262 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1192 (LexerInterface!2259 List!14875 Token!4852) Bool)

(assert (=> b!1430230 (rulesProduceIndividualToken!1192 Lexer!2257 (rules!11262 thiss!10022) lt!485444)))

(declare-fun lt!485442 () List!14874)

(declare-datatypes ((Unit!22337 0))(
  ( (Unit!22338) )
))
(declare-fun lt!485434 () Unit!22337)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!377 (LexerInterface!2259 List!14875 List!14874 Token!4852) Unit!22337)

(assert (=> b!1430230 (= lt!485434 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!377 Lexer!2257 (rules!11262 thiss!10022) lt!485442 lt!485444))))

(declare-fun other!32 () PrintableTokens!972)

(declare-fun head!2841 (BalanceConc!9974) Token!4852)

(assert (=> b!1430230 (= lt!485444 (head!2841 (tokens!1932 other!32)))))

(declare-fun list!5881 (BalanceConc!9974) List!14874)

(assert (=> b!1430230 (= lt!485442 (list!5881 (tokens!1932 other!32)))))

(assert (=> b!1430230 (rulesProduceIndividualToken!1192 Lexer!2257 (rules!11262 thiss!10022) lt!485435)))

(declare-fun lt!485443 () Unit!22337)

(declare-fun lt!485439 () List!14874)

(assert (=> b!1430230 (= lt!485443 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!377 Lexer!2257 (rules!11262 thiss!10022) lt!485439 lt!485435))))

(declare-fun last!121 (BalanceConc!9974) Token!4852)

(assert (=> b!1430230 (= lt!485435 (last!121 (tokens!1932 thiss!10022)))))

(assert (=> b!1430230 (= lt!485439 (list!5881 (tokens!1932 thiss!10022)))))

(declare-fun b!1430231 () Bool)

(declare-fun e!912887 () Bool)

(declare-fun tp!405533 () Bool)

(declare-fun inv!19647 (Conc!5017) Bool)

(assert (=> b!1430231 (= e!912887 (and (inv!19647 (c!235212 (tokens!1932 other!32))) tp!405533))))

(declare-fun b!1430232 () Bool)

(declare-fun e!912884 () Bool)

(declare-fun lt!485438 () List!14874)

(declare-fun tokensListTwoByTwoPredicateSeparableList!217 (LexerInterface!2259 List!14874 List!14875) Bool)

(assert (=> b!1430232 (= e!912884 (tokensListTwoByTwoPredicateSeparableList!217 Lexer!2257 lt!485438 (rules!11262 thiss!10022)))))

(declare-fun b!1430233 () Bool)

(declare-fun e!912890 () Bool)

(assert (=> b!1430233 (= e!912890 e!912891)))

(declare-fun res!647193 () Bool)

(assert (=> b!1430233 (=> (not res!647193) (not e!912891))))

(declare-fun isEmpty!9170 (BalanceConc!9974) Bool)

(assert (=> b!1430233 (= res!647193 (not (isEmpty!9170 (tokens!1932 other!32))))))

(declare-fun lt!485437 () Unit!22337)

(declare-fun lemmaInvariant!291 (PrintableTokens!972) Unit!22337)

(assert (=> b!1430233 (= lt!485437 (lemmaInvariant!291 thiss!10022))))

(declare-fun lt!485436 () Unit!22337)

(assert (=> b!1430233 (= lt!485436 (lemmaInvariant!291 other!32))))

(declare-fun tp!405532 () Bool)

(declare-fun b!1430234 () Bool)

(declare-fun e!912889 () Bool)

(declare-fun inv!19648 (BalanceConc!9974) Bool)

(assert (=> b!1430234 (= e!912889 (and tp!405532 (inv!19648 (tokens!1932 other!32)) e!912887))))

(declare-fun b!1430235 () Bool)

(declare-fun res!647192 () Bool)

(assert (=> b!1430235 (=> (not res!647192) (not e!912891))))

(assert (=> b!1430235 (= res!647192 (not (isEmpty!9170 (tokens!1932 thiss!10022))))))

(declare-fun b!1430236 () Bool)

(assert (=> b!1430236 (= e!912888 true)))

(declare-fun lt!485433 () BalanceConc!9974)

(declare-fun ++!3922 (BalanceConc!9974 BalanceConc!9974) BalanceConc!9974)

(assert (=> b!1430236 (= lt!485433 (++!3922 (tokens!1932 thiss!10022) (tokens!1932 other!32)))))

(assert (=> b!1430236 e!912884))

(declare-fun res!647194 () Bool)

(assert (=> b!1430236 (=> (not res!647194) (not e!912884))))

(declare-fun rulesProduceEachTokenIndividuallyList!702 (LexerInterface!2259 List!14875 List!14874) Bool)

(assert (=> b!1430236 (= res!647194 (rulesProduceEachTokenIndividuallyList!702 Lexer!2257 (rules!11262 thiss!10022) lt!485438))))

(declare-fun ++!3923 (List!14874 List!14874) List!14874)

(assert (=> b!1430236 (= lt!485438 (++!3923 lt!485439 lt!485442))))

(declare-fun lt!485441 () Unit!22337)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!32 (LexerInterface!2259 List!14875 List!14874 List!14874) Unit!22337)

(assert (=> b!1430236 (= lt!485441 (lemmaRulesProduceEachTokenIndividuallyConcat!32 Lexer!2257 (rules!11262 thiss!10022) lt!485439 lt!485442))))

(declare-fun lt!485440 () Unit!22337)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!32 (LexerInterface!2259 List!14874 List!14874 List!14875) Unit!22337)

(assert (=> b!1430236 (= lt!485440 (tokensListTwoByTwoPredicateConcatSeparableTokensList!32 Lexer!2257 lt!485439 lt!485442 (rules!11262 thiss!10022)))))

(declare-fun res!647195 () Bool)

(assert (=> start!131992 (=> (not res!647195) (not e!912890))))

(assert (=> start!131992 (= res!647195 (= (rules!11262 thiss!10022) (rules!11262 other!32)))))

(assert (=> start!131992 e!912890))

(declare-fun e!912885 () Bool)

(declare-fun inv!19649 (PrintableTokens!972) Bool)

(assert (=> start!131992 (and (inv!19649 thiss!10022) e!912885)))

(assert (=> start!131992 (and (inv!19649 other!32) e!912889)))

(declare-fun b!1430237 () Bool)

(declare-fun e!912886 () Bool)

(declare-fun tp!405534 () Bool)

(assert (=> b!1430237 (= e!912886 (and (inv!19647 (c!235212 (tokens!1932 thiss!10022))) tp!405534))))

(declare-fun b!1430238 () Bool)

(declare-fun tp!405531 () Bool)

(assert (=> b!1430238 (= e!912885 (and tp!405531 (inv!19648 (tokens!1932 thiss!10022)) e!912886))))

(assert (= (and start!131992 res!647195) b!1430233))

(assert (= (and b!1430233 res!647193) b!1430235))

(assert (= (and b!1430235 res!647192) b!1430230))

(assert (= (and b!1430230 (not res!647196)) b!1430236))

(assert (= (and b!1430236 res!647194) b!1430232))

(assert (= b!1430238 b!1430237))

(assert (= start!131992 b!1430238))

(assert (= b!1430234 b!1430231))

(assert (= start!131992 b!1430234))

(declare-fun m!1629043 () Bool)

(assert (=> b!1430231 m!1629043))

(declare-fun m!1629045 () Bool)

(assert (=> b!1430232 m!1629045))

(declare-fun m!1629047 () Bool)

(assert (=> b!1430230 m!1629047))

(declare-fun m!1629049 () Bool)

(assert (=> b!1430230 m!1629049))

(declare-fun m!1629051 () Bool)

(assert (=> b!1430230 m!1629051))

(declare-fun m!1629053 () Bool)

(assert (=> b!1430230 m!1629053))

(declare-fun m!1629055 () Bool)

(assert (=> b!1430230 m!1629055))

(declare-fun m!1629057 () Bool)

(assert (=> b!1430230 m!1629057))

(declare-fun m!1629059 () Bool)

(assert (=> b!1430230 m!1629059))

(declare-fun m!1629061 () Bool)

(assert (=> b!1430230 m!1629061))

(declare-fun m!1629063 () Bool)

(assert (=> b!1430230 m!1629063))

(declare-fun m!1629065 () Bool)

(assert (=> b!1430237 m!1629065))

(declare-fun m!1629067 () Bool)

(assert (=> b!1430238 m!1629067))

(declare-fun m!1629069 () Bool)

(assert (=> b!1430235 m!1629069))

(declare-fun m!1629071 () Bool)

(assert (=> b!1430233 m!1629071))

(declare-fun m!1629073 () Bool)

(assert (=> b!1430233 m!1629073))

(declare-fun m!1629075 () Bool)

(assert (=> b!1430233 m!1629075))

(declare-fun m!1629077 () Bool)

(assert (=> b!1430236 m!1629077))

(declare-fun m!1629079 () Bool)

(assert (=> b!1430236 m!1629079))

(declare-fun m!1629081 () Bool)

(assert (=> b!1430236 m!1629081))

(declare-fun m!1629083 () Bool)

(assert (=> b!1430236 m!1629083))

(declare-fun m!1629085 () Bool)

(assert (=> b!1430236 m!1629085))

(declare-fun m!1629087 () Bool)

(assert (=> start!131992 m!1629087))

(declare-fun m!1629089 () Bool)

(assert (=> start!131992 m!1629089))

(declare-fun m!1629091 () Bool)

(assert (=> b!1430234 m!1629091))

(check-sat (not b!1430236) (not b!1430233) (not b!1430232) (not b!1430234) (not b!1430230) (not b!1430237) (not start!131992) (not b!1430231) (not b!1430238) (not b!1430235))
(check-sat)
