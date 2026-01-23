; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131988 () Bool)

(assert start!131988)

(declare-fun b!1430169 () Bool)

(declare-fun res!647156 () Bool)

(declare-fun e!912839 () Bool)

(assert (=> b!1430169 (=> (not res!647156) (not e!912839))))

(declare-datatypes ((C!7992 0))(
  ( (C!7993 (val!4566 Int)) )
))
(declare-datatypes ((List!14864 0))(
  ( (Nil!14798) (Cons!14798 (h!20199 C!7992) (t!126943 List!14864)) )
))
(declare-datatypes ((IArray!10029 0))(
  ( (IArray!10030 (innerList!5072 List!14864)) )
))
(declare-datatypes ((Conc!5012 0))(
  ( (Node!5012 (left!12615 Conc!5012) (right!12945 Conc!5012) (csize!10254 Int) (cheight!5223 Int)) (Leaf!7510 (xs!7741 IArray!10029) (csize!10255 Int)) (Empty!5012) )
))
(declare-datatypes ((BalanceConc!9964 0))(
  ( (BalanceConc!9965 (c!235204 Conc!5012)) )
))
(declare-datatypes ((List!14865 0))(
  ( (Nil!14799) (Cons!14799 (h!20200 (_ BitVec 16)) (t!126944 List!14865)) )
))
(declare-datatypes ((TokenValue!2683 0))(
  ( (FloatLiteralValue!5366 (text!19226 List!14865)) (TokenValueExt!2682 (__x!9164 Int)) (Broken!13415 (value!83522 List!14865)) (Object!2748) (End!2683) (Def!2683) (Underscore!2683) (Match!2683) (Else!2683) (Error!2683) (Case!2683) (If!2683) (Extends!2683) (Abstract!2683) (Class!2683) (Val!2683) (DelimiterValue!5366 (del!2743 List!14865)) (KeywordValue!2689 (value!83523 List!14865)) (CommentValue!5366 (value!83524 List!14865)) (WhitespaceValue!5366 (value!83525 List!14865)) (IndentationValue!2683 (value!83526 List!14865)) (String!17670) (Int32!2683) (Broken!13416 (value!83527 List!14865)) (Boolean!2684) (Unit!22330) (OperatorValue!2686 (op!2743 List!14865)) (IdentifierValue!5366 (value!83528 List!14865)) (IdentifierValue!5367 (value!83529 List!14865)) (WhitespaceValue!5367 (value!83530 List!14865)) (True!5366) (False!5366) (Broken!13417 (value!83531 List!14865)) (Broken!13418 (value!83532 List!14865)) (True!5367) (RightBrace!2683) (RightBracket!2683) (Colon!2683) (Null!2683) (Comma!2683) (LeftBracket!2683) (False!5367) (LeftBrace!2683) (ImaginaryLiteralValue!2683 (text!19227 List!14865)) (StringLiteralValue!8049 (value!83533 List!14865)) (EOFValue!2683 (value!83534 List!14865)) (IdentValue!2683 (value!83535 List!14865)) (DelimiterValue!5367 (value!83536 List!14865)) (DedentValue!2683 (value!83537 List!14865)) (NewLineValue!2683 (value!83538 List!14865)) (IntegerValue!8049 (value!83539 (_ BitVec 32)) (text!19228 List!14865)) (IntegerValue!8050 (value!83540 Int) (text!19229 List!14865)) (Times!2683) (Or!2683) (Equal!2683) (Minus!2683) (Broken!13419 (value!83541 List!14865)) (And!2683) (Div!2683) (LessEqual!2683) (Mod!2683) (Concat!6590) (Not!2683) (Plus!2683) (SpaceValue!2683 (value!83542 List!14865)) (IntegerValue!8051 (value!83543 Int) (text!19230 List!14865)) (StringLiteralValue!8050 (text!19231 List!14865)) (FloatLiteralValue!5367 (text!19232 List!14865)) (BytesLiteralValue!2683 (value!83544 List!14865)) (CommentValue!5367 (value!83545 List!14865)) (StringLiteralValue!8051 (value!83546 List!14865)) (ErrorTokenValue!2683 (msg!2744 List!14865)) )
))
(declare-datatypes ((Regex!3907 0))(
  ( (ElementMatch!3907 (c!235205 C!7992)) (Concat!6591 (regOne!8326 Regex!3907) (regTwo!8326 Regex!3907)) (EmptyExpr!3907) (Star!3907 (reg!4236 Regex!3907)) (EmptyLang!3907) (Union!3907 (regOne!8327 Regex!3907) (regTwo!8327 Regex!3907)) )
))
(declare-datatypes ((String!17671 0))(
  ( (String!17672 (value!83547 String)) )
))
(declare-datatypes ((TokenValueInjection!5026 0))(
  ( (TokenValueInjection!5027 (toValue!3896 Int) (toChars!3755 Int)) )
))
(declare-datatypes ((Rule!4986 0))(
  ( (Rule!4987 (regex!2593 Regex!3907) (tag!2855 String!17671) (isSeparator!2593 Bool) (transformation!2593 TokenValueInjection!5026)) )
))
(declare-datatypes ((Token!4848 0))(
  ( (Token!4849 (value!83548 TokenValue!2683) (rule!4356 Rule!4986) (size!12148 Int) (originalCharacters!3455 List!14864)) )
))
(declare-datatypes ((List!14866 0))(
  ( (Nil!14800) (Cons!14800 (h!20201 Token!4848) (t!126945 List!14866)) )
))
(declare-datatypes ((IArray!10031 0))(
  ( (IArray!10032 (innerList!5073 List!14866)) )
))
(declare-datatypes ((Conc!5013 0))(
  ( (Node!5013 (left!12616 Conc!5013) (right!12946 Conc!5013) (csize!10256 Int) (cheight!5224 Int)) (Leaf!7511 (xs!7742 IArray!10031) (csize!10257 Int)) (Empty!5013) )
))
(declare-datatypes ((BalanceConc!9966 0))(
  ( (BalanceConc!9967 (c!235206 Conc!5013)) )
))
(declare-datatypes ((List!14867 0))(
  ( (Nil!14801) (Cons!14801 (h!20202 Rule!4986) (t!126946 List!14867)) )
))
(declare-datatypes ((PrintableTokens!968 0))(
  ( (PrintableTokens!969 (rules!11260 List!14867) (tokens!1930 BalanceConc!9966)) )
))
(declare-fun thiss!10022 () PrintableTokens!968)

(declare-fun isEmpty!9166 (BalanceConc!9966) Bool)

(assert (=> b!1430169 (= res!647156 (not (isEmpty!9166 (tokens!1930 thiss!10022))))))

(declare-fun b!1430170 () Bool)

(declare-fun res!647160 () Bool)

(declare-fun e!912843 () Bool)

(assert (=> b!1430170 (=> res!647160 e!912843)))

(declare-fun lt!485365 () List!14866)

(declare-datatypes ((LexerInterface!2257 0))(
  ( (LexerInterfaceExt!2254 (__x!9165 Int)) (Lexer!2255) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!700 (LexerInterface!2257 List!14867 List!14866) Bool)

(assert (=> b!1430170 (= res!647160 (not (rulesProduceEachTokenIndividuallyList!700 Lexer!2255 (rules!11260 thiss!10022) lt!485365)))))

(declare-fun e!912841 () Bool)

(declare-fun b!1430171 () Bool)

(declare-fun tp!405509 () Bool)

(declare-fun e!912840 () Bool)

(declare-fun inv!19638 (BalanceConc!9966) Bool)

(assert (=> b!1430171 (= e!912840 (and tp!405509 (inv!19638 (tokens!1930 thiss!10022)) e!912841))))

(declare-fun b!1430172 () Bool)

(declare-fun res!647162 () Bool)

(assert (=> b!1430172 (=> res!647162 e!912843)))

(declare-fun lt!485363 () List!14866)

(declare-fun tokensListTwoByTwoPredicateSeparableList!215 (LexerInterface!2257 List!14866 List!14867) Bool)

(assert (=> b!1430172 (= res!647162 (not (tokensListTwoByTwoPredicateSeparableList!215 Lexer!2255 lt!485363 (rules!11260 thiss!10022))))))

(declare-fun b!1430173 () Bool)

(declare-fun e!912837 () Bool)

(assert (=> b!1430173 (= e!912837 e!912839)))

(declare-fun res!647159 () Bool)

(assert (=> b!1430173 (=> (not res!647159) (not e!912839))))

(declare-fun other!32 () PrintableTokens!968)

(assert (=> b!1430173 (= res!647159 (not (isEmpty!9166 (tokens!1930 other!32))))))

(declare-datatypes ((Unit!22331 0))(
  ( (Unit!22332) )
))
(declare-fun lt!485368 () Unit!22331)

(declare-fun lemmaInvariant!289 (PrintableTokens!968) Unit!22331)

(assert (=> b!1430173 (= lt!485368 (lemmaInvariant!289 thiss!10022))))

(declare-fun lt!485362 () Unit!22331)

(assert (=> b!1430173 (= lt!485362 (lemmaInvariant!289 other!32))))

(declare-fun b!1430174 () Bool)

(declare-fun res!647163 () Bool)

(assert (=> b!1430174 (=> res!647163 e!912843)))

(assert (=> b!1430174 (= res!647163 (not (tokensListTwoByTwoPredicateSeparableList!215 Lexer!2255 lt!485365 (rules!11260 thiss!10022))))))

(declare-fun b!1430175 () Bool)

(declare-fun res!647161 () Bool)

(assert (=> b!1430175 (=> res!647161 e!912843)))

(declare-fun rulesInvariant!2107 (LexerInterface!2257 List!14867) Bool)

(assert (=> b!1430175 (= res!647161 (not (rulesInvariant!2107 Lexer!2255 (rules!11260 thiss!10022))))))

(declare-fun b!1430176 () Bool)

(declare-fun res!647166 () Bool)

(assert (=> b!1430176 (=> res!647166 e!912843)))

(declare-fun isEmpty!9167 (List!14866) Bool)

(assert (=> b!1430176 (= res!647166 (isEmpty!9167 lt!485365))))

(declare-fun res!647158 () Bool)

(assert (=> start!131988 (=> (not res!647158) (not e!912837))))

(assert (=> start!131988 (= res!647158 (= (rules!11260 thiss!10022) (rules!11260 other!32)))))

(assert (=> start!131988 e!912837))

(declare-fun inv!19639 (PrintableTokens!968) Bool)

(assert (=> start!131988 (and (inv!19639 thiss!10022) e!912840)))

(declare-fun e!912842 () Bool)

(assert (=> start!131988 (and (inv!19639 other!32) e!912842)))

(declare-fun b!1430177 () Bool)

(declare-fun res!647155 () Bool)

(assert (=> b!1430177 (=> res!647155 e!912843)))

(assert (=> b!1430177 (= res!647155 (isEmpty!9167 lt!485363))))

(declare-fun b!1430178 () Bool)

(declare-fun res!647157 () Bool)

(assert (=> b!1430178 (=> res!647157 e!912843)))

(declare-fun isEmpty!9168 (List!14867) Bool)

(assert (=> b!1430178 (= res!647157 (isEmpty!9168 (rules!11260 thiss!10022)))))

(declare-fun b!1430179 () Bool)

(assert (=> b!1430179 (= e!912839 (not e!912843))))

(declare-fun res!647165 () Bool)

(assert (=> b!1430179 (=> res!647165 e!912843)))

(declare-fun lt!485361 () Token!4848)

(declare-fun lt!485370 () Token!4848)

(declare-fun separableTokensPredicate!492 (LexerInterface!2257 Token!4848 Token!4848 List!14867) Bool)

(assert (=> b!1430179 (= res!647165 (not (separableTokensPredicate!492 Lexer!2255 lt!485361 lt!485370 (rules!11260 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1190 (LexerInterface!2257 List!14867 Token!4848) Bool)

(assert (=> b!1430179 (rulesProduceIndividualToken!1190 Lexer!2255 (rules!11260 thiss!10022) lt!485370)))

(declare-fun lt!485360 () Unit!22331)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!375 (LexerInterface!2257 List!14867 List!14866 Token!4848) Unit!22331)

(assert (=> b!1430179 (= lt!485360 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!375 Lexer!2255 (rules!11260 thiss!10022) lt!485363 lt!485370))))

(declare-fun head!2838 (BalanceConc!9966) Token!4848)

(assert (=> b!1430179 (= lt!485370 (head!2838 (tokens!1930 other!32)))))

(declare-fun list!5879 (BalanceConc!9966) List!14866)

(assert (=> b!1430179 (= lt!485363 (list!5879 (tokens!1930 other!32)))))

(assert (=> b!1430179 (rulesProduceIndividualToken!1190 Lexer!2255 (rules!11260 thiss!10022) lt!485361)))

(declare-fun lt!485372 () Unit!22331)

(assert (=> b!1430179 (= lt!485372 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!375 Lexer!2255 (rules!11260 thiss!10022) lt!485365 lt!485361))))

(declare-fun last!118 (BalanceConc!9966) Token!4848)

(assert (=> b!1430179 (= lt!485361 (last!118 (tokens!1930 thiss!10022)))))

(assert (=> b!1430179 (= lt!485365 (list!5879 (tokens!1930 thiss!10022)))))

(declare-fun b!1430180 () Bool)

(assert (=> b!1430180 (= e!912843 true)))

(declare-fun lt!485366 () Token!4848)

(declare-fun lt!485367 () Token!4848)

(declare-fun lt!485369 () Bool)

(assert (=> b!1430180 (= lt!485369 (separableTokensPredicate!492 Lexer!2255 lt!485367 lt!485366 (rules!11260 thiss!10022)))))

(assert (=> b!1430180 (rulesProduceIndividualToken!1190 Lexer!2255 (rules!11260 thiss!10022) lt!485366)))

(declare-fun lt!485364 () Unit!22331)

(assert (=> b!1430180 (= lt!485364 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!375 Lexer!2255 (rules!11260 thiss!10022) lt!485363 lt!485366))))

(declare-fun head!2839 (List!14866) Token!4848)

(assert (=> b!1430180 (= lt!485366 (head!2839 lt!485363))))

(assert (=> b!1430180 (rulesProduceIndividualToken!1190 Lexer!2255 (rules!11260 thiss!10022) lt!485367)))

(declare-fun lt!485371 () Unit!22331)

(assert (=> b!1430180 (= lt!485371 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!375 Lexer!2255 (rules!11260 thiss!10022) lt!485365 lt!485367))))

(declare-fun last!119 (List!14866) Token!4848)

(assert (=> b!1430180 (= lt!485367 (last!119 lt!485365))))

(declare-fun b!1430181 () Bool)

(declare-fun res!647164 () Bool)

(assert (=> b!1430181 (=> res!647164 e!912843)))

(assert (=> b!1430181 (= res!647164 (not (rulesProduceEachTokenIndividuallyList!700 Lexer!2255 (rules!11260 thiss!10022) lt!485363)))))

(declare-fun b!1430182 () Bool)

(declare-fun tp!405510 () Bool)

(declare-fun e!912838 () Bool)

(assert (=> b!1430182 (= e!912842 (and tp!405510 (inv!19638 (tokens!1930 other!32)) e!912838))))

(declare-fun b!1430183 () Bool)

(declare-fun tp!405508 () Bool)

(declare-fun inv!19640 (Conc!5013) Bool)

(assert (=> b!1430183 (= e!912838 (and (inv!19640 (c!235206 (tokens!1930 other!32))) tp!405508))))

(declare-fun b!1430184 () Bool)

(declare-fun tp!405507 () Bool)

(assert (=> b!1430184 (= e!912841 (and (inv!19640 (c!235206 (tokens!1930 thiss!10022))) tp!405507))))

(assert (= (and start!131988 res!647158) b!1430173))

(assert (= (and b!1430173 res!647159) b!1430169))

(assert (= (and b!1430169 res!647156) b!1430179))

(assert (= (and b!1430179 (not res!647165)) b!1430178))

(assert (= (and b!1430178 (not res!647157)) b!1430175))

(assert (= (and b!1430175 (not res!647161)) b!1430170))

(assert (= (and b!1430170 (not res!647160)) b!1430181))

(assert (= (and b!1430181 (not res!647164)) b!1430174))

(assert (= (and b!1430174 (not res!647163)) b!1430172))

(assert (= (and b!1430172 (not res!647162)) b!1430176))

(assert (= (and b!1430176 (not res!647166)) b!1430177))

(assert (= (and b!1430177 (not res!647155)) b!1430180))

(assert (= b!1430171 b!1430184))

(assert (= start!131988 b!1430171))

(assert (= b!1430182 b!1430183))

(assert (= start!131988 b!1430182))

(declare-fun m!1628925 () Bool)

(assert (=> b!1430184 m!1628925))

(declare-fun m!1628927 () Bool)

(assert (=> b!1430171 m!1628927))

(declare-fun m!1628929 () Bool)

(assert (=> b!1430172 m!1628929))

(declare-fun m!1628931 () Bool)

(assert (=> b!1430182 m!1628931))

(declare-fun m!1628933 () Bool)

(assert (=> start!131988 m!1628933))

(declare-fun m!1628935 () Bool)

(assert (=> start!131988 m!1628935))

(declare-fun m!1628937 () Bool)

(assert (=> b!1430178 m!1628937))

(declare-fun m!1628939 () Bool)

(assert (=> b!1430183 m!1628939))

(declare-fun m!1628941 () Bool)

(assert (=> b!1430179 m!1628941))

(declare-fun m!1628943 () Bool)

(assert (=> b!1430179 m!1628943))

(declare-fun m!1628945 () Bool)

(assert (=> b!1430179 m!1628945))

(declare-fun m!1628947 () Bool)

(assert (=> b!1430179 m!1628947))

(declare-fun m!1628949 () Bool)

(assert (=> b!1430179 m!1628949))

(declare-fun m!1628951 () Bool)

(assert (=> b!1430179 m!1628951))

(declare-fun m!1628953 () Bool)

(assert (=> b!1430179 m!1628953))

(declare-fun m!1628955 () Bool)

(assert (=> b!1430179 m!1628955))

(declare-fun m!1628957 () Bool)

(assert (=> b!1430179 m!1628957))

(declare-fun m!1628959 () Bool)

(assert (=> b!1430176 m!1628959))

(declare-fun m!1628961 () Bool)

(assert (=> b!1430180 m!1628961))

(declare-fun m!1628963 () Bool)

(assert (=> b!1430180 m!1628963))

(declare-fun m!1628965 () Bool)

(assert (=> b!1430180 m!1628965))

(declare-fun m!1628967 () Bool)

(assert (=> b!1430180 m!1628967))

(declare-fun m!1628969 () Bool)

(assert (=> b!1430180 m!1628969))

(declare-fun m!1628971 () Bool)

(assert (=> b!1430180 m!1628971))

(declare-fun m!1628973 () Bool)

(assert (=> b!1430180 m!1628973))

(declare-fun m!1628975 () Bool)

(assert (=> b!1430177 m!1628975))

(declare-fun m!1628977 () Bool)

(assert (=> b!1430170 m!1628977))

(declare-fun m!1628979 () Bool)

(assert (=> b!1430169 m!1628979))

(declare-fun m!1628981 () Bool)

(assert (=> b!1430174 m!1628981))

(declare-fun m!1628983 () Bool)

(assert (=> b!1430181 m!1628983))

(declare-fun m!1628985 () Bool)

(assert (=> b!1430173 m!1628985))

(declare-fun m!1628987 () Bool)

(assert (=> b!1430173 m!1628987))

(declare-fun m!1628989 () Bool)

(assert (=> b!1430173 m!1628989))

(declare-fun m!1628991 () Bool)

(assert (=> b!1430175 m!1628991))

(check-sat (not b!1430183) (not b!1430182) (not b!1430171) (not b!1430177) (not b!1430173) (not b!1430175) (not b!1430169) (not b!1430184) (not b!1430181) (not start!131988) (not b!1430180) (not b!1430174) (not b!1430172) (not b!1430178) (not b!1430179) (not b!1430176) (not b!1430170))
(check-sat)
