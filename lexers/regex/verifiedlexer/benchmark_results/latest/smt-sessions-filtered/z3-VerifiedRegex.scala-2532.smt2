; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135226 () Bool)

(assert start!135226)

(declare-fun e!925672 () Bool)

(declare-fun b!1450696 () Bool)

(declare-fun tp!409337 () Bool)

(declare-fun e!925673 () Bool)

(declare-datatypes ((C!8132 0))(
  ( (C!8133 (val!4636 Int)) )
))
(declare-datatypes ((List!15180 0))(
  ( (Nil!15114) (Cons!15114 (h!20515 C!8132) (t!130577 List!15180)) )
))
(declare-datatypes ((IArray!10309 0))(
  ( (IArray!10310 (innerList!5212 List!15180)) )
))
(declare-datatypes ((Conc!5152 0))(
  ( (Node!5152 (left!12854 Conc!5152) (right!13184 Conc!5152) (csize!10534 Int) (cheight!5363 Int)) (Leaf!7685 (xs!7893 IArray!10309) (csize!10535 Int)) (Empty!5152) )
))
(declare-datatypes ((BalanceConc!10244 0))(
  ( (BalanceConc!10245 (c!238822 Conc!5152)) )
))
(declare-datatypes ((List!15181 0))(
  ( (Nil!15115) (Cons!15115 (h!20516 (_ BitVec 16)) (t!130578 List!15181)) )
))
(declare-datatypes ((TokenValue!2753 0))(
  ( (FloatLiteralValue!5506 (text!19716 List!15181)) (TokenValueExt!2752 (__x!9296 Int)) (Broken!13765 (value!85517 List!15181)) (Object!2818) (End!2753) (Def!2753) (Underscore!2753) (Match!2753) (Else!2753) (Error!2753) (Case!2753) (If!2753) (Extends!2753) (Abstract!2753) (Class!2753) (Val!2753) (DelimiterValue!5506 (del!2813 List!15181)) (KeywordValue!2759 (value!85518 List!15181)) (CommentValue!5506 (value!85519 List!15181)) (WhitespaceValue!5506 (value!85520 List!15181)) (IndentationValue!2753 (value!85521 List!15181)) (String!18020) (Int32!2753) (Broken!13766 (value!85522 List!15181)) (Boolean!2754) (Unit!24024) (OperatorValue!2756 (op!2813 List!15181)) (IdentifierValue!5506 (value!85523 List!15181)) (IdentifierValue!5507 (value!85524 List!15181)) (WhitespaceValue!5507 (value!85525 List!15181)) (True!5506) (False!5506) (Broken!13767 (value!85526 List!15181)) (Broken!13768 (value!85527 List!15181)) (True!5507) (RightBrace!2753) (RightBracket!2753) (Colon!2753) (Null!2753) (Comma!2753) (LeftBracket!2753) (False!5507) (LeftBrace!2753) (ImaginaryLiteralValue!2753 (text!19717 List!15181)) (StringLiteralValue!8259 (value!85528 List!15181)) (EOFValue!2753 (value!85529 List!15181)) (IdentValue!2753 (value!85530 List!15181)) (DelimiterValue!5507 (value!85531 List!15181)) (DedentValue!2753 (value!85532 List!15181)) (NewLineValue!2753 (value!85533 List!15181)) (IntegerValue!8259 (value!85534 (_ BitVec 32)) (text!19718 List!15181)) (IntegerValue!8260 (value!85535 Int) (text!19719 List!15181)) (Times!2753) (Or!2753) (Equal!2753) (Minus!2753) (Broken!13769 (value!85536 List!15181)) (And!2753) (Div!2753) (LessEqual!2753) (Mod!2753) (Concat!6730) (Not!2753) (Plus!2753) (SpaceValue!2753 (value!85537 List!15181)) (IntegerValue!8261 (value!85538 Int) (text!19720 List!15181)) (StringLiteralValue!8260 (text!19721 List!15181)) (FloatLiteralValue!5507 (text!19722 List!15181)) (BytesLiteralValue!2753 (value!85539 List!15181)) (CommentValue!5507 (value!85540 List!15181)) (StringLiteralValue!8261 (value!85541 List!15181)) (ErrorTokenValue!2753 (msg!2814 List!15181)) )
))
(declare-datatypes ((Regex!3977 0))(
  ( (ElementMatch!3977 (c!238823 C!8132)) (Concat!6731 (regOne!8466 Regex!3977) (regTwo!8466 Regex!3977)) (EmptyExpr!3977) (Star!3977 (reg!4306 Regex!3977)) (EmptyLang!3977) (Union!3977 (regOne!8467 Regex!3977) (regTwo!8467 Regex!3977)) )
))
(declare-datatypes ((String!18021 0))(
  ( (String!18022 (value!85542 String)) )
))
(declare-datatypes ((TokenValueInjection!5166 0))(
  ( (TokenValueInjection!5167 (toValue!3970 Int) (toChars!3829 Int)) )
))
(declare-datatypes ((Rule!5126 0))(
  ( (Rule!5127 (regex!2663 Regex!3977) (tag!2927 String!18021) (isSeparator!2663 Bool) (transformation!2663 TokenValueInjection!5166)) )
))
(declare-datatypes ((Token!4988 0))(
  ( (Token!4989 (value!85543 TokenValue!2753) (rule!4436 Rule!5126) (size!12359 Int) (originalCharacters!3525 List!15180)) )
))
(declare-datatypes ((List!15182 0))(
  ( (Nil!15116) (Cons!15116 (h!20517 Token!4988) (t!130579 List!15182)) )
))
(declare-datatypes ((IArray!10311 0))(
  ( (IArray!10312 (innerList!5213 List!15182)) )
))
(declare-datatypes ((Conc!5153 0))(
  ( (Node!5153 (left!12855 Conc!5153) (right!13185 Conc!5153) (csize!10536 Int) (cheight!5364 Int)) (Leaf!7686 (xs!7894 IArray!10311) (csize!10537 Int)) (Empty!5153) )
))
(declare-datatypes ((BalanceConc!10246 0))(
  ( (BalanceConc!10247 (c!238824 Conc!5153)) )
))
(declare-datatypes ((List!15183 0))(
  ( (Nil!15117) (Cons!15117 (h!20518 Rule!5126) (t!130580 List!15183)) )
))
(declare-datatypes ((PrintableTokens!1108 0))(
  ( (PrintableTokens!1109 (rules!11588 List!15183) (tokens!2070 BalanceConc!10246)) )
))
(declare-fun other!32 () PrintableTokens!1108)

(declare-fun inv!20170 (BalanceConc!10246) Bool)

(assert (=> b!1450696 (= e!925672 (and tp!409337 (inv!20170 (tokens!2070 other!32)) e!925673))))

(declare-fun b!1450698 () Bool)

(declare-fun res!656870 () Bool)

(declare-fun e!925675 () Bool)

(assert (=> b!1450698 (=> res!656870 e!925675)))

(declare-fun thiss!10022 () PrintableTokens!1108)

(declare-fun isEmpty!9456 (List!15183) Bool)

(assert (=> b!1450698 (= res!656870 (isEmpty!9456 (rules!11588 thiss!10022)))))

(declare-fun b!1450699 () Bool)

(declare-fun e!925674 () Bool)

(declare-fun e!925671 () Bool)

(assert (=> b!1450699 (= e!925674 e!925671)))

(declare-fun res!656873 () Bool)

(assert (=> b!1450699 (=> (not res!656873) (not e!925671))))

(declare-fun isEmpty!9457 (BalanceConc!10246) Bool)

(assert (=> b!1450699 (= res!656873 (not (isEmpty!9457 (tokens!2070 other!32))))))

(declare-datatypes ((Unit!24025 0))(
  ( (Unit!24026) )
))
(declare-fun lt!500160 () Unit!24025)

(declare-fun lemmaInvariant!359 (PrintableTokens!1108) Unit!24025)

(assert (=> b!1450699 (= lt!500160 (lemmaInvariant!359 thiss!10022))))

(declare-fun lt!500163 () Unit!24025)

(assert (=> b!1450699 (= lt!500163 (lemmaInvariant!359 other!32))))

(declare-fun tp!409338 () Bool)

(declare-fun b!1450700 () Bool)

(declare-fun e!925670 () Bool)

(declare-fun e!925676 () Bool)

(assert (=> b!1450700 (= e!925670 (and tp!409338 (inv!20170 (tokens!2070 thiss!10022)) e!925676))))

(declare-fun b!1450701 () Bool)

(assert (=> b!1450701 (= e!925671 (not e!925675))))

(declare-fun res!656871 () Bool)

(assert (=> b!1450701 (=> res!656871 e!925675)))

(declare-fun lt!500158 () Token!4988)

(declare-fun lt!500165 () Token!4988)

(declare-datatypes ((LexerInterface!2319 0))(
  ( (LexerInterfaceExt!2316 (__x!9297 Int)) (Lexer!2317) )
))
(declare-fun separableTokensPredicate!528 (LexerInterface!2319 Token!4988 Token!4988 List!15183) Bool)

(assert (=> b!1450701 (= res!656871 (not (separableTokensPredicate!528 Lexer!2317 lt!500158 lt!500165 (rules!11588 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1238 (LexerInterface!2319 List!15183 Token!4988) Bool)

(assert (=> b!1450701 (rulesProduceIndividualToken!1238 Lexer!2317 (rules!11588 thiss!10022) lt!500165)))

(declare-fun lt!500164 () Unit!24025)

(declare-fun lt!500159 () List!15182)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!421 (LexerInterface!2319 List!15183 List!15182 Token!4988) Unit!24025)

(assert (=> b!1450701 (= lt!500164 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!421 Lexer!2317 (rules!11588 thiss!10022) lt!500159 lt!500165))))

(declare-fun head!2971 (BalanceConc!10246) Token!4988)

(assert (=> b!1450701 (= lt!500165 (head!2971 (tokens!2070 other!32)))))

(declare-fun list!6041 (BalanceConc!10246) List!15182)

(assert (=> b!1450701 (= lt!500159 (list!6041 (tokens!2070 other!32)))))

(assert (=> b!1450701 (rulesProduceIndividualToken!1238 Lexer!2317 (rules!11588 thiss!10022) lt!500158)))

(declare-fun lt!500161 () Unit!24025)

(declare-fun lt!500162 () List!15182)

(assert (=> b!1450701 (= lt!500161 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!421 Lexer!2317 (rules!11588 thiss!10022) lt!500162 lt!500158))))

(declare-fun last!243 (BalanceConc!10246) Token!4988)

(assert (=> b!1450701 (= lt!500158 (last!243 (tokens!2070 thiss!10022)))))

(assert (=> b!1450701 (= lt!500162 (list!6041 (tokens!2070 thiss!10022)))))

(declare-fun b!1450702 () Bool)

(declare-fun tp!409335 () Bool)

(declare-fun inv!20171 (Conc!5153) Bool)

(assert (=> b!1450702 (= e!925676 (and (inv!20171 (c!238824 (tokens!2070 thiss!10022))) tp!409335))))

(declare-fun b!1450703 () Bool)

(declare-fun tp!409336 () Bool)

(assert (=> b!1450703 (= e!925673 (and (inv!20171 (c!238824 (tokens!2070 other!32))) tp!409336))))

(declare-fun b!1450704 () Bool)

(declare-fun res!656872 () Bool)

(assert (=> b!1450704 (=> (not res!656872) (not e!925671))))

(assert (=> b!1450704 (= res!656872 (not (isEmpty!9457 (tokens!2070 thiss!10022))))))

(declare-fun b!1450697 () Bool)

(declare-fun rulesInvariant!2152 (LexerInterface!2319 List!15183) Bool)

(assert (=> b!1450697 (= e!925675 (rulesInvariant!2152 Lexer!2317 (rules!11588 thiss!10022)))))

(declare-fun res!656874 () Bool)

(assert (=> start!135226 (=> (not res!656874) (not e!925674))))

(assert (=> start!135226 (= res!656874 (= (rules!11588 thiss!10022) (rules!11588 other!32)))))

(assert (=> start!135226 e!925674))

(declare-fun inv!20172 (PrintableTokens!1108) Bool)

(assert (=> start!135226 (and (inv!20172 thiss!10022) e!925670)))

(assert (=> start!135226 (and (inv!20172 other!32) e!925672)))

(assert (= (and start!135226 res!656874) b!1450699))

(assert (= (and b!1450699 res!656873) b!1450704))

(assert (= (and b!1450704 res!656872) b!1450701))

(assert (= (and b!1450701 (not res!656871)) b!1450698))

(assert (= (and b!1450698 (not res!656870)) b!1450697))

(assert (= b!1450700 b!1450702))

(assert (= start!135226 b!1450700))

(assert (= b!1450696 b!1450703))

(assert (= start!135226 b!1450696))

(declare-fun m!1674175 () Bool)

(assert (=> b!1450701 m!1674175))

(declare-fun m!1674177 () Bool)

(assert (=> b!1450701 m!1674177))

(declare-fun m!1674179 () Bool)

(assert (=> b!1450701 m!1674179))

(declare-fun m!1674181 () Bool)

(assert (=> b!1450701 m!1674181))

(declare-fun m!1674183 () Bool)

(assert (=> b!1450701 m!1674183))

(declare-fun m!1674185 () Bool)

(assert (=> b!1450701 m!1674185))

(declare-fun m!1674187 () Bool)

(assert (=> b!1450701 m!1674187))

(declare-fun m!1674189 () Bool)

(assert (=> b!1450701 m!1674189))

(declare-fun m!1674191 () Bool)

(assert (=> b!1450701 m!1674191))

(declare-fun m!1674193 () Bool)

(assert (=> b!1450702 m!1674193))

(declare-fun m!1674195 () Bool)

(assert (=> b!1450697 m!1674195))

(declare-fun m!1674197 () Bool)

(assert (=> b!1450700 m!1674197))

(declare-fun m!1674199 () Bool)

(assert (=> b!1450699 m!1674199))

(declare-fun m!1674201 () Bool)

(assert (=> b!1450699 m!1674201))

(declare-fun m!1674203 () Bool)

(assert (=> b!1450699 m!1674203))

(declare-fun m!1674205 () Bool)

(assert (=> b!1450703 m!1674205))

(declare-fun m!1674207 () Bool)

(assert (=> b!1450696 m!1674207))

(declare-fun m!1674209 () Bool)

(assert (=> b!1450698 m!1674209))

(declare-fun m!1674211 () Bool)

(assert (=> start!135226 m!1674211))

(declare-fun m!1674213 () Bool)

(assert (=> start!135226 m!1674213))

(declare-fun m!1674215 () Bool)

(assert (=> b!1450704 m!1674215))

(check-sat (not b!1450696) (not b!1450697) (not b!1450698) (not b!1450703) (not b!1450699) (not b!1450704) (not start!135226) (not b!1450701) (not b!1450702) (not b!1450700))
(check-sat)
(get-model)

(declare-fun d!421385 () Bool)

(declare-fun lt!500171 () Bool)

(declare-fun isEmpty!9460 (List!15182) Bool)

(assert (=> d!421385 (= lt!500171 (isEmpty!9460 (list!6041 (tokens!2070 other!32))))))

(declare-fun isEmpty!9461 (Conc!5153) Bool)

(assert (=> d!421385 (= lt!500171 (isEmpty!9461 (c!238824 (tokens!2070 other!32))))))

(assert (=> d!421385 (= (isEmpty!9457 (tokens!2070 other!32)) lt!500171)))

(declare-fun bs!342585 () Bool)

(assert (= bs!342585 d!421385))

(assert (=> bs!342585 m!1674185))

(assert (=> bs!342585 m!1674185))

(declare-fun m!1674225 () Bool)

(assert (=> bs!342585 m!1674225))

(declare-fun m!1674227 () Bool)

(assert (=> bs!342585 m!1674227))

(assert (=> b!1450699 d!421385))

(declare-fun d!421389 () Bool)

(declare-fun e!925691 () Bool)

(assert (=> d!421389 e!925691))

(declare-fun res!656895 () Bool)

(assert (=> d!421389 (=> (not res!656895) (not e!925691))))

(assert (=> d!421389 (= res!656895 (rulesInvariant!2152 Lexer!2317 (rules!11588 thiss!10022)))))

(declare-fun Unit!24028 () Unit!24025)

(assert (=> d!421389 (= (lemmaInvariant!359 thiss!10022) Unit!24028)))

(declare-fun b!1450729 () Bool)

(declare-fun res!656896 () Bool)

(assert (=> b!1450729 (=> (not res!656896) (not e!925691))))

(declare-fun rulesProduceEachTokenIndividually!869 (LexerInterface!2319 List!15183 BalanceConc!10246) Bool)

(assert (=> b!1450729 (= res!656896 (rulesProduceEachTokenIndividually!869 Lexer!2317 (rules!11588 thiss!10022) (tokens!2070 thiss!10022)))))

(declare-fun b!1450730 () Bool)

(declare-fun separableTokens!253 (LexerInterface!2319 BalanceConc!10246 List!15183) Bool)

(assert (=> b!1450730 (= e!925691 (separableTokens!253 Lexer!2317 (tokens!2070 thiss!10022) (rules!11588 thiss!10022)))))

(assert (= (and d!421389 res!656895) b!1450729))

(assert (= (and b!1450729 res!656896) b!1450730))

(assert (=> d!421389 m!1674195))

(declare-fun m!1674243 () Bool)

(assert (=> b!1450729 m!1674243))

(declare-fun m!1674245 () Bool)

(assert (=> b!1450730 m!1674245))

(assert (=> b!1450699 d!421389))

(declare-fun d!421397 () Bool)

(declare-fun e!925692 () Bool)

(assert (=> d!421397 e!925692))

(declare-fun res!656897 () Bool)

(assert (=> d!421397 (=> (not res!656897) (not e!925692))))

(assert (=> d!421397 (= res!656897 (rulesInvariant!2152 Lexer!2317 (rules!11588 other!32)))))

(declare-fun Unit!24030 () Unit!24025)

(assert (=> d!421397 (= (lemmaInvariant!359 other!32) Unit!24030)))

(declare-fun b!1450731 () Bool)

(declare-fun res!656898 () Bool)

(assert (=> b!1450731 (=> (not res!656898) (not e!925692))))

(assert (=> b!1450731 (= res!656898 (rulesProduceEachTokenIndividually!869 Lexer!2317 (rules!11588 other!32) (tokens!2070 other!32)))))

(declare-fun b!1450732 () Bool)

(assert (=> b!1450732 (= e!925692 (separableTokens!253 Lexer!2317 (tokens!2070 other!32) (rules!11588 other!32)))))

(assert (= (and d!421397 res!656897) b!1450731))

(assert (= (and b!1450731 res!656898) b!1450732))

(declare-fun m!1674247 () Bool)

(assert (=> d!421397 m!1674247))

(declare-fun m!1674249 () Bool)

(assert (=> b!1450731 m!1674249))

(declare-fun m!1674251 () Bool)

(assert (=> b!1450732 m!1674251))

(assert (=> b!1450699 d!421397))

(declare-fun d!421399 () Bool)

(declare-fun lt!500172 () Bool)

(assert (=> d!421399 (= lt!500172 (isEmpty!9460 (list!6041 (tokens!2070 thiss!10022))))))

(assert (=> d!421399 (= lt!500172 (isEmpty!9461 (c!238824 (tokens!2070 thiss!10022))))))

(assert (=> d!421399 (= (isEmpty!9457 (tokens!2070 thiss!10022)) lt!500172)))

(declare-fun bs!342586 () Bool)

(assert (= bs!342586 d!421399))

(assert (=> bs!342586 m!1674179))

(assert (=> bs!342586 m!1674179))

(declare-fun m!1674253 () Bool)

(assert (=> bs!342586 m!1674253))

(declare-fun m!1674255 () Bool)

(assert (=> bs!342586 m!1674255))

(assert (=> b!1450704 d!421399))

(declare-fun d!421401 () Bool)

(declare-fun res!656905 () Bool)

(declare-fun e!925695 () Bool)

(assert (=> d!421401 (=> (not res!656905) (not e!925695))))

(assert (=> d!421401 (= res!656905 (not (isEmpty!9456 (rules!11588 thiss!10022))))))

(assert (=> d!421401 (= (inv!20172 thiss!10022) e!925695)))

(declare-fun b!1450739 () Bool)

(declare-fun res!656906 () Bool)

(assert (=> b!1450739 (=> (not res!656906) (not e!925695))))

(assert (=> b!1450739 (= res!656906 (rulesInvariant!2152 Lexer!2317 (rules!11588 thiss!10022)))))

(declare-fun b!1450740 () Bool)

(declare-fun res!656907 () Bool)

(assert (=> b!1450740 (=> (not res!656907) (not e!925695))))

(assert (=> b!1450740 (= res!656907 (rulesProduceEachTokenIndividually!869 Lexer!2317 (rules!11588 thiss!10022) (tokens!2070 thiss!10022)))))

(declare-fun b!1450741 () Bool)

(assert (=> b!1450741 (= e!925695 (separableTokens!253 Lexer!2317 (tokens!2070 thiss!10022) (rules!11588 thiss!10022)))))

(assert (= (and d!421401 res!656905) b!1450739))

(assert (= (and b!1450739 res!656906) b!1450740))

(assert (= (and b!1450740 res!656907) b!1450741))

(assert (=> d!421401 m!1674209))

(assert (=> b!1450739 m!1674195))

(assert (=> b!1450740 m!1674243))

(assert (=> b!1450741 m!1674245))

(assert (=> start!135226 d!421401))

(declare-fun d!421405 () Bool)

(declare-fun res!656908 () Bool)

(declare-fun e!925696 () Bool)

(assert (=> d!421405 (=> (not res!656908) (not e!925696))))

(assert (=> d!421405 (= res!656908 (not (isEmpty!9456 (rules!11588 other!32))))))

(assert (=> d!421405 (= (inv!20172 other!32) e!925696)))

(declare-fun b!1450742 () Bool)

(declare-fun res!656909 () Bool)

(assert (=> b!1450742 (=> (not res!656909) (not e!925696))))

(assert (=> b!1450742 (= res!656909 (rulesInvariant!2152 Lexer!2317 (rules!11588 other!32)))))

(declare-fun b!1450743 () Bool)

(declare-fun res!656910 () Bool)

(assert (=> b!1450743 (=> (not res!656910) (not e!925696))))

(assert (=> b!1450743 (= res!656910 (rulesProduceEachTokenIndividually!869 Lexer!2317 (rules!11588 other!32) (tokens!2070 other!32)))))

(declare-fun b!1450744 () Bool)

(assert (=> b!1450744 (= e!925696 (separableTokens!253 Lexer!2317 (tokens!2070 other!32) (rules!11588 other!32)))))

(assert (= (and d!421405 res!656908) b!1450742))

(assert (= (and b!1450742 res!656909) b!1450743))

(assert (= (and b!1450743 res!656910) b!1450744))

(declare-fun m!1674271 () Bool)

(assert (=> d!421405 m!1674271))

(assert (=> b!1450742 m!1674247))

(assert (=> b!1450743 m!1674249))

(assert (=> b!1450744 m!1674251))

(assert (=> start!135226 d!421405))

(declare-fun d!421407 () Bool)

(declare-fun list!6043 (Conc!5153) List!15182)

(assert (=> d!421407 (= (list!6041 (tokens!2070 other!32)) (list!6043 (c!238824 (tokens!2070 other!32))))))

(declare-fun bs!342588 () Bool)

(assert (= bs!342588 d!421407))

(declare-fun m!1674273 () Bool)

(assert (=> bs!342588 m!1674273))

(assert (=> b!1450701 d!421407))

(declare-fun d!421409 () Bool)

(declare-fun lt!500178 () Token!4988)

(declare-fun head!2972 (List!15182) Token!4988)

(assert (=> d!421409 (= lt!500178 (head!2972 (list!6041 (tokens!2070 other!32))))))

(declare-fun head!2973 (Conc!5153) Token!4988)

(assert (=> d!421409 (= lt!500178 (head!2973 (c!238824 (tokens!2070 other!32))))))

(assert (=> d!421409 (not (isEmpty!9457 (tokens!2070 other!32)))))

(assert (=> d!421409 (= (head!2971 (tokens!2070 other!32)) lt!500178)))

(declare-fun bs!342590 () Bool)

(assert (= bs!342590 d!421409))

(assert (=> bs!342590 m!1674185))

(assert (=> bs!342590 m!1674185))

(declare-fun m!1674277 () Bool)

(assert (=> bs!342590 m!1674277))

(declare-fun m!1674279 () Bool)

(assert (=> bs!342590 m!1674279))

(assert (=> bs!342590 m!1674199))

(assert (=> b!1450701 d!421409))

(declare-fun d!421413 () Bool)

(declare-fun lt!500190 () Bool)

(declare-fun e!925708 () Bool)

(assert (=> d!421413 (= lt!500190 e!925708)))

(declare-fun res!656928 () Bool)

(assert (=> d!421413 (=> (not res!656928) (not e!925708))))

(declare-datatypes ((tuple2!14206 0))(
  ( (tuple2!14207 (_1!7989 BalanceConc!10246) (_2!7989 BalanceConc!10244)) )
))
(declare-fun lex!1064 (LexerInterface!2319 List!15183 BalanceConc!10244) tuple2!14206)

(declare-fun print!1091 (LexerInterface!2319 BalanceConc!10246) BalanceConc!10244)

(declare-fun singletonSeq!1257 (Token!4988) BalanceConc!10246)

(assert (=> d!421413 (= res!656928 (= (list!6041 (_1!7989 (lex!1064 Lexer!2317 (rules!11588 thiss!10022) (print!1091 Lexer!2317 (singletonSeq!1257 lt!500165))))) (list!6041 (singletonSeq!1257 lt!500165))))))

(declare-fun e!925707 () Bool)

(assert (=> d!421413 (= lt!500190 e!925707)))

(declare-fun res!656926 () Bool)

(assert (=> d!421413 (=> (not res!656926) (not e!925707))))

(declare-fun lt!500189 () tuple2!14206)

(declare-fun size!12361 (BalanceConc!10246) Int)

(assert (=> d!421413 (= res!656926 (= (size!12361 (_1!7989 lt!500189)) 1))))

(assert (=> d!421413 (= lt!500189 (lex!1064 Lexer!2317 (rules!11588 thiss!10022) (print!1091 Lexer!2317 (singletonSeq!1257 lt!500165))))))

(assert (=> d!421413 (not (isEmpty!9456 (rules!11588 thiss!10022)))))

(assert (=> d!421413 (= (rulesProduceIndividualToken!1238 Lexer!2317 (rules!11588 thiss!10022) lt!500165) lt!500190)))

(declare-fun b!1450760 () Bool)

(declare-fun res!656927 () Bool)

(assert (=> b!1450760 (=> (not res!656927) (not e!925707))))

(declare-fun apply!3906 (BalanceConc!10246 Int) Token!4988)

(assert (=> b!1450760 (= res!656927 (= (apply!3906 (_1!7989 lt!500189) 0) lt!500165))))

(declare-fun b!1450761 () Bool)

(declare-fun isEmpty!9463 (BalanceConc!10244) Bool)

(assert (=> b!1450761 (= e!925707 (isEmpty!9463 (_2!7989 lt!500189)))))

(declare-fun b!1450762 () Bool)

(assert (=> b!1450762 (= e!925708 (isEmpty!9463 (_2!7989 (lex!1064 Lexer!2317 (rules!11588 thiss!10022) (print!1091 Lexer!2317 (singletonSeq!1257 lt!500165))))))))

(assert (= (and d!421413 res!656926) b!1450760))

(assert (= (and b!1450760 res!656927) b!1450761))

(assert (= (and d!421413 res!656928) b!1450762))

(declare-fun m!1674285 () Bool)

(assert (=> d!421413 m!1674285))

(assert (=> d!421413 m!1674209))

(declare-fun m!1674291 () Bool)

(assert (=> d!421413 m!1674291))

(declare-fun m!1674293 () Bool)

(assert (=> d!421413 m!1674293))

(assert (=> d!421413 m!1674291))

(declare-fun m!1674299 () Bool)

(assert (=> d!421413 m!1674299))

(declare-fun m!1674301 () Bool)

(assert (=> d!421413 m!1674301))

(assert (=> d!421413 m!1674291))

(assert (=> d!421413 m!1674299))

(declare-fun m!1674305 () Bool)

(assert (=> d!421413 m!1674305))

(declare-fun m!1674309 () Bool)

(assert (=> b!1450760 m!1674309))

(declare-fun m!1674313 () Bool)

(assert (=> b!1450761 m!1674313))

(assert (=> b!1450762 m!1674291))

(assert (=> b!1450762 m!1674291))

(assert (=> b!1450762 m!1674299))

(assert (=> b!1450762 m!1674299))

(assert (=> b!1450762 m!1674301))

(declare-fun m!1674317 () Bool)

(assert (=> b!1450762 m!1674317))

(assert (=> b!1450701 d!421413))

(declare-fun d!421419 () Bool)

(declare-fun lt!500196 () Token!4988)

(declare-fun last!246 (List!15182) Token!4988)

(assert (=> d!421419 (= lt!500196 (last!246 (list!6041 (tokens!2070 thiss!10022))))))

(declare-fun last!247 (Conc!5153) Token!4988)

(assert (=> d!421419 (= lt!500196 (last!247 (c!238824 (tokens!2070 thiss!10022))))))

(assert (=> d!421419 (not (isEmpty!9457 (tokens!2070 thiss!10022)))))

(assert (=> d!421419 (= (last!243 (tokens!2070 thiss!10022)) lt!500196)))

(declare-fun bs!342593 () Bool)

(assert (= bs!342593 d!421419))

(assert (=> bs!342593 m!1674179))

(assert (=> bs!342593 m!1674179))

(declare-fun m!1674321 () Bool)

(assert (=> bs!342593 m!1674321))

(declare-fun m!1674325 () Bool)

(assert (=> bs!342593 m!1674325))

(assert (=> bs!342593 m!1674215))

(assert (=> b!1450701 d!421419))

(declare-fun d!421423 () Bool)

(assert (=> d!421423 (= (list!6041 (tokens!2070 thiss!10022)) (list!6043 (c!238824 (tokens!2070 thiss!10022))))))

(declare-fun bs!342595 () Bool)

(assert (= bs!342595 d!421423))

(declare-fun m!1674329 () Bool)

(assert (=> bs!342595 m!1674329))

(assert (=> b!1450701 d!421423))

(declare-fun d!421427 () Bool)

(assert (=> d!421427 (rulesProduceIndividualToken!1238 Lexer!2317 (rules!11588 thiss!10022) lt!500165)))

(declare-fun lt!500205 () Unit!24025)

(declare-fun choose!8928 (LexerInterface!2319 List!15183 List!15182 Token!4988) Unit!24025)

(assert (=> d!421427 (= lt!500205 (choose!8928 Lexer!2317 (rules!11588 thiss!10022) lt!500159 lt!500165))))

(assert (=> d!421427 (not (isEmpty!9456 (rules!11588 thiss!10022)))))

(assert (=> d!421427 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!421 Lexer!2317 (rules!11588 thiss!10022) lt!500159 lt!500165) lt!500205)))

(declare-fun bs!342598 () Bool)

(assert (= bs!342598 d!421427))

(assert (=> bs!342598 m!1674189))

(declare-fun m!1674355 () Bool)

(assert (=> bs!342598 m!1674355))

(assert (=> bs!342598 m!1674209))

(assert (=> b!1450701 d!421427))

(declare-fun d!421437 () Bool)

(assert (=> d!421437 (rulesProduceIndividualToken!1238 Lexer!2317 (rules!11588 thiss!10022) lt!500158)))

(declare-fun lt!500206 () Unit!24025)

(assert (=> d!421437 (= lt!500206 (choose!8928 Lexer!2317 (rules!11588 thiss!10022) lt!500162 lt!500158))))

(assert (=> d!421437 (not (isEmpty!9456 (rules!11588 thiss!10022)))))

(assert (=> d!421437 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!421 Lexer!2317 (rules!11588 thiss!10022) lt!500162 lt!500158) lt!500206)))

(declare-fun bs!342599 () Bool)

(assert (= bs!342599 d!421437))

(assert (=> bs!342599 m!1674181))

(declare-fun m!1674357 () Bool)

(assert (=> bs!342599 m!1674357))

(assert (=> bs!342599 m!1674209))

(assert (=> b!1450701 d!421437))

(declare-fun d!421439 () Bool)

(declare-fun prefixMatchZipperSequence!338 (Regex!3977 BalanceConc!10244) Bool)

(declare-fun rulesRegex!400 (LexerInterface!2319 List!15183) Regex!3977)

(declare-fun ++!4055 (BalanceConc!10244 BalanceConc!10244) BalanceConc!10244)

(declare-fun charsOf!1526 (Token!4988) BalanceConc!10244)

(declare-fun singletonSeq!1258 (C!8132) BalanceConc!10244)

(declare-fun apply!3907 (BalanceConc!10244 Int) C!8132)

(assert (=> d!421439 (= (separableTokensPredicate!528 Lexer!2317 lt!500158 lt!500165 (rules!11588 thiss!10022)) (not (prefixMatchZipperSequence!338 (rulesRegex!400 Lexer!2317 (rules!11588 thiss!10022)) (++!4055 (charsOf!1526 lt!500158) (singletonSeq!1258 (apply!3907 (charsOf!1526 lt!500165) 0))))))))

(declare-fun bs!342600 () Bool)

(assert (= bs!342600 d!421439))

(declare-fun m!1674359 () Bool)

(assert (=> bs!342600 m!1674359))

(declare-fun m!1674361 () Bool)

(assert (=> bs!342600 m!1674361))

(declare-fun m!1674365 () Bool)

(assert (=> bs!342600 m!1674365))

(declare-fun m!1674367 () Bool)

(assert (=> bs!342600 m!1674367))

(declare-fun m!1674369 () Bool)

(assert (=> bs!342600 m!1674369))

(declare-fun m!1674371 () Bool)

(assert (=> bs!342600 m!1674371))

(declare-fun m!1674373 () Bool)

(assert (=> bs!342600 m!1674373))

(assert (=> bs!342600 m!1674367))

(assert (=> bs!342600 m!1674359))

(assert (=> bs!342600 m!1674361))

(assert (=> bs!342600 m!1674373))

(assert (=> bs!342600 m!1674365))

(assert (=> bs!342600 m!1674371))

(assert (=> b!1450701 d!421439))

(declare-fun d!421445 () Bool)

(declare-fun lt!500208 () Bool)

(declare-fun e!925716 () Bool)

(assert (=> d!421445 (= lt!500208 e!925716)))

(declare-fun res!656946 () Bool)

(assert (=> d!421445 (=> (not res!656946) (not e!925716))))

(assert (=> d!421445 (= res!656946 (= (list!6041 (_1!7989 (lex!1064 Lexer!2317 (rules!11588 thiss!10022) (print!1091 Lexer!2317 (singletonSeq!1257 lt!500158))))) (list!6041 (singletonSeq!1257 lt!500158))))))

(declare-fun e!925715 () Bool)

(assert (=> d!421445 (= lt!500208 e!925715)))

(declare-fun res!656944 () Bool)

(assert (=> d!421445 (=> (not res!656944) (not e!925715))))

(declare-fun lt!500207 () tuple2!14206)

(assert (=> d!421445 (= res!656944 (= (size!12361 (_1!7989 lt!500207)) 1))))

(assert (=> d!421445 (= lt!500207 (lex!1064 Lexer!2317 (rules!11588 thiss!10022) (print!1091 Lexer!2317 (singletonSeq!1257 lt!500158))))))

(assert (=> d!421445 (not (isEmpty!9456 (rules!11588 thiss!10022)))))

(assert (=> d!421445 (= (rulesProduceIndividualToken!1238 Lexer!2317 (rules!11588 thiss!10022) lt!500158) lt!500208)))

(declare-fun b!1450778 () Bool)

(declare-fun res!656945 () Bool)

(assert (=> b!1450778 (=> (not res!656945) (not e!925715))))

(assert (=> b!1450778 (= res!656945 (= (apply!3906 (_1!7989 lt!500207) 0) lt!500158))))

(declare-fun b!1450779 () Bool)

(assert (=> b!1450779 (= e!925715 (isEmpty!9463 (_2!7989 lt!500207)))))

(declare-fun b!1450780 () Bool)

(assert (=> b!1450780 (= e!925716 (isEmpty!9463 (_2!7989 (lex!1064 Lexer!2317 (rules!11588 thiss!10022) (print!1091 Lexer!2317 (singletonSeq!1257 lt!500158))))))))

(assert (= (and d!421445 res!656944) b!1450778))

(assert (= (and b!1450778 res!656945) b!1450779))

(assert (= (and d!421445 res!656946) b!1450780))

(declare-fun m!1674375 () Bool)

(assert (=> d!421445 m!1674375))

(assert (=> d!421445 m!1674209))

(declare-fun m!1674377 () Bool)

(assert (=> d!421445 m!1674377))

(declare-fun m!1674379 () Bool)

(assert (=> d!421445 m!1674379))

(assert (=> d!421445 m!1674377))

(declare-fun m!1674381 () Bool)

(assert (=> d!421445 m!1674381))

(declare-fun m!1674383 () Bool)

(assert (=> d!421445 m!1674383))

(assert (=> d!421445 m!1674377))

(assert (=> d!421445 m!1674381))

(declare-fun m!1674385 () Bool)

(assert (=> d!421445 m!1674385))

(declare-fun m!1674387 () Bool)

(assert (=> b!1450778 m!1674387))

(declare-fun m!1674389 () Bool)

(assert (=> b!1450779 m!1674389))

(assert (=> b!1450780 m!1674377))

(assert (=> b!1450780 m!1674377))

(assert (=> b!1450780 m!1674381))

(assert (=> b!1450780 m!1674381))

(assert (=> b!1450780 m!1674383))

(declare-fun m!1674391 () Bool)

(assert (=> b!1450780 m!1674391))

(assert (=> b!1450701 d!421445))

(declare-fun d!421447 () Bool)

(declare-fun isBalanced!1536 (Conc!5153) Bool)

(assert (=> d!421447 (= (inv!20170 (tokens!2070 thiss!10022)) (isBalanced!1536 (c!238824 (tokens!2070 thiss!10022))))))

(declare-fun bs!342601 () Bool)

(assert (= bs!342601 d!421447))

(declare-fun m!1674397 () Bool)

(assert (=> bs!342601 m!1674397))

(assert (=> b!1450700 d!421447))

(declare-fun d!421451 () Bool)

(declare-fun res!656952 () Bool)

(declare-fun e!925726 () Bool)

(assert (=> d!421451 (=> (not res!656952) (not e!925726))))

(declare-fun rulesValid!979 (LexerInterface!2319 List!15183) Bool)

(assert (=> d!421451 (= res!656952 (rulesValid!979 Lexer!2317 (rules!11588 thiss!10022)))))

(assert (=> d!421451 (= (rulesInvariant!2152 Lexer!2317 (rules!11588 thiss!10022)) e!925726)))

(declare-fun b!1450794 () Bool)

(declare-datatypes ((List!15184 0))(
  ( (Nil!15118) (Cons!15118 (h!20519 String!18021) (t!130585 List!15184)) )
))
(declare-fun noDuplicateTag!979 (LexerInterface!2319 List!15183 List!15184) Bool)

(assert (=> b!1450794 (= e!925726 (noDuplicateTag!979 Lexer!2317 (rules!11588 thiss!10022) Nil!15118))))

(assert (= (and d!421451 res!656952) b!1450794))

(declare-fun m!1674407 () Bool)

(assert (=> d!421451 m!1674407))

(declare-fun m!1674409 () Bool)

(assert (=> b!1450794 m!1674409))

(assert (=> b!1450697 d!421451))

(declare-fun d!421457 () Bool)

(declare-fun c!238831 () Bool)

(get-info :version)

(assert (=> d!421457 (= c!238831 ((_ is Node!5153) (c!238824 (tokens!2070 thiss!10022))))))

(declare-fun e!925743 () Bool)

(assert (=> d!421457 (= (inv!20171 (c!238824 (tokens!2070 thiss!10022))) e!925743)))

(declare-fun b!1450815 () Bool)

(declare-fun inv!20175 (Conc!5153) Bool)

(assert (=> b!1450815 (= e!925743 (inv!20175 (c!238824 (tokens!2070 thiss!10022))))))

(declare-fun b!1450816 () Bool)

(declare-fun e!925744 () Bool)

(assert (=> b!1450816 (= e!925743 e!925744)))

(declare-fun res!656955 () Bool)

(assert (=> b!1450816 (= res!656955 (not ((_ is Leaf!7686) (c!238824 (tokens!2070 thiss!10022)))))))

(assert (=> b!1450816 (=> res!656955 e!925744)))

(declare-fun b!1450817 () Bool)

(declare-fun inv!20176 (Conc!5153) Bool)

(assert (=> b!1450817 (= e!925744 (inv!20176 (c!238824 (tokens!2070 thiss!10022))))))

(assert (= (and d!421457 c!238831) b!1450815))

(assert (= (and d!421457 (not c!238831)) b!1450816))

(assert (= (and b!1450816 (not res!656955)) b!1450817))

(declare-fun m!1674423 () Bool)

(assert (=> b!1450815 m!1674423))

(declare-fun m!1674425 () Bool)

(assert (=> b!1450817 m!1674425))

(assert (=> b!1450702 d!421457))

(declare-fun d!421459 () Bool)

(assert (=> d!421459 (= (inv!20170 (tokens!2070 other!32)) (isBalanced!1536 (c!238824 (tokens!2070 other!32))))))

(declare-fun bs!342605 () Bool)

(assert (= bs!342605 d!421459))

(declare-fun m!1674427 () Bool)

(assert (=> bs!342605 m!1674427))

(assert (=> b!1450696 d!421459))

(declare-fun d!421461 () Bool)

(assert (=> d!421461 (= (isEmpty!9456 (rules!11588 thiss!10022)) ((_ is Nil!15117) (rules!11588 thiss!10022)))))

(assert (=> b!1450698 d!421461))

(declare-fun d!421463 () Bool)

(declare-fun c!238832 () Bool)

(assert (=> d!421463 (= c!238832 ((_ is Node!5153) (c!238824 (tokens!2070 other!32))))))

(declare-fun e!925749 () Bool)

(assert (=> d!421463 (= (inv!20171 (c!238824 (tokens!2070 other!32))) e!925749)))

(declare-fun b!1450821 () Bool)

(assert (=> b!1450821 (= e!925749 (inv!20175 (c!238824 (tokens!2070 other!32))))))

(declare-fun b!1450822 () Bool)

(declare-fun e!925750 () Bool)

(assert (=> b!1450822 (= e!925749 e!925750)))

(declare-fun res!656956 () Bool)

(assert (=> b!1450822 (= res!656956 (not ((_ is Leaf!7686) (c!238824 (tokens!2070 other!32)))))))

(assert (=> b!1450822 (=> res!656956 e!925750)))

(declare-fun b!1450823 () Bool)

(assert (=> b!1450823 (= e!925750 (inv!20176 (c!238824 (tokens!2070 other!32))))))

(assert (= (and d!421463 c!238832) b!1450821))

(assert (= (and d!421463 (not c!238832)) b!1450822))

(assert (= (and b!1450822 (not res!656956)) b!1450823))

(declare-fun m!1674433 () Bool)

(assert (=> b!1450821 m!1674433))

(declare-fun m!1674435 () Bool)

(assert (=> b!1450823 m!1674435))

(assert (=> b!1450703 d!421463))

(declare-fun b!1450837 () Bool)

(declare-fun b_free!36119 () Bool)

(declare-fun b_next!36823 () Bool)

(assert (=> b!1450837 (= b_free!36119 (not b_next!36823))))

(declare-fun tp!409377 () Bool)

(declare-fun b_and!98183 () Bool)

(assert (=> b!1450837 (= tp!409377 b_and!98183)))

(declare-fun b_free!36121 () Bool)

(declare-fun b_next!36825 () Bool)

(assert (=> b!1450837 (= b_free!36121 (not b_next!36825))))

(declare-fun tp!409378 () Bool)

(declare-fun b_and!98185 () Bool)

(assert (=> b!1450837 (= tp!409378 b_and!98185)))

(declare-fun e!925763 () Bool)

(assert (=> b!1450837 (= e!925763 (and tp!409377 tp!409378))))

(declare-fun e!925766 () Bool)

(declare-fun b!1450836 () Bool)

(declare-fun tp!409376 () Bool)

(declare-fun inv!20166 (String!18021) Bool)

(declare-fun inv!20178 (TokenValueInjection!5166) Bool)

(assert (=> b!1450836 (= e!925766 (and tp!409376 (inv!20166 (tag!2927 (h!20518 (rules!11588 thiss!10022)))) (inv!20178 (transformation!2663 (h!20518 (rules!11588 thiss!10022)))) e!925763))))

(declare-fun b!1450835 () Bool)

(declare-fun e!925765 () Bool)

(declare-fun tp!409375 () Bool)

(assert (=> b!1450835 (= e!925765 (and e!925766 tp!409375))))

(assert (=> b!1450700 (= tp!409338 e!925765)))

(assert (= b!1450836 b!1450837))

(assert (= b!1450835 b!1450836))

(assert (= (and b!1450700 ((_ is Cons!15117) (rules!11588 thiss!10022))) b!1450835))

(declare-fun m!1674441 () Bool)

(assert (=> b!1450836 m!1674441))

(declare-fun m!1674443 () Bool)

(assert (=> b!1450836 m!1674443))

(declare-fun tp!409385 () Bool)

(declare-fun tp!409386 () Bool)

(declare-fun b!1450846 () Bool)

(declare-fun e!925772 () Bool)

(assert (=> b!1450846 (= e!925772 (and (inv!20171 (left!12855 (c!238824 (tokens!2070 thiss!10022)))) tp!409386 (inv!20171 (right!13185 (c!238824 (tokens!2070 thiss!10022)))) tp!409385))))

(declare-fun b!1450848 () Bool)

(declare-fun e!925771 () Bool)

(declare-fun tp!409387 () Bool)

(assert (=> b!1450848 (= e!925771 tp!409387)))

(declare-fun b!1450847 () Bool)

(declare-fun inv!20179 (IArray!10311) Bool)

(assert (=> b!1450847 (= e!925772 (and (inv!20179 (xs!7894 (c!238824 (tokens!2070 thiss!10022)))) e!925771))))

(assert (=> b!1450702 (= tp!409335 (and (inv!20171 (c!238824 (tokens!2070 thiss!10022))) e!925772))))

(assert (= (and b!1450702 ((_ is Node!5153) (c!238824 (tokens!2070 thiss!10022)))) b!1450846))

(assert (= b!1450847 b!1450848))

(assert (= (and b!1450702 ((_ is Leaf!7686) (c!238824 (tokens!2070 thiss!10022)))) b!1450847))

(declare-fun m!1674445 () Bool)

(assert (=> b!1450846 m!1674445))

(declare-fun m!1674447 () Bool)

(assert (=> b!1450846 m!1674447))

(declare-fun m!1674449 () Bool)

(assert (=> b!1450847 m!1674449))

(assert (=> b!1450702 m!1674193))

(declare-fun b!1450851 () Bool)

(declare-fun b_free!36123 () Bool)

(declare-fun b_next!36827 () Bool)

(assert (=> b!1450851 (= b_free!36123 (not b_next!36827))))

(declare-fun tp!409390 () Bool)

(declare-fun b_and!98187 () Bool)

(assert (=> b!1450851 (= tp!409390 b_and!98187)))

(declare-fun b_free!36125 () Bool)

(declare-fun b_next!36829 () Bool)

(assert (=> b!1450851 (= b_free!36125 (not b_next!36829))))

(declare-fun tp!409391 () Bool)

(declare-fun b_and!98189 () Bool)

(assert (=> b!1450851 (= tp!409391 b_and!98189)))

(declare-fun e!925773 () Bool)

(assert (=> b!1450851 (= e!925773 (and tp!409390 tp!409391))))

(declare-fun tp!409389 () Bool)

(declare-fun e!925776 () Bool)

(declare-fun b!1450850 () Bool)

(assert (=> b!1450850 (= e!925776 (and tp!409389 (inv!20166 (tag!2927 (h!20518 (rules!11588 other!32)))) (inv!20178 (transformation!2663 (h!20518 (rules!11588 other!32)))) e!925773))))

(declare-fun b!1450849 () Bool)

(declare-fun e!925775 () Bool)

(declare-fun tp!409388 () Bool)

(assert (=> b!1450849 (= e!925775 (and e!925776 tp!409388))))

(assert (=> b!1450696 (= tp!409337 e!925775)))

(assert (= b!1450850 b!1450851))

(assert (= b!1450849 b!1450850))

(assert (= (and b!1450696 ((_ is Cons!15117) (rules!11588 other!32))) b!1450849))

(declare-fun m!1674451 () Bool)

(assert (=> b!1450850 m!1674451))

(declare-fun m!1674453 () Bool)

(assert (=> b!1450850 m!1674453))

(declare-fun tp!409393 () Bool)

(declare-fun tp!409392 () Bool)

(declare-fun e!925778 () Bool)

(declare-fun b!1450852 () Bool)

(assert (=> b!1450852 (= e!925778 (and (inv!20171 (left!12855 (c!238824 (tokens!2070 other!32)))) tp!409393 (inv!20171 (right!13185 (c!238824 (tokens!2070 other!32)))) tp!409392))))

(declare-fun b!1450854 () Bool)

(declare-fun e!925777 () Bool)

(declare-fun tp!409394 () Bool)

(assert (=> b!1450854 (= e!925777 tp!409394)))

(declare-fun b!1450853 () Bool)

(assert (=> b!1450853 (= e!925778 (and (inv!20179 (xs!7894 (c!238824 (tokens!2070 other!32)))) e!925777))))

(assert (=> b!1450703 (= tp!409336 (and (inv!20171 (c!238824 (tokens!2070 other!32))) e!925778))))

(assert (= (and b!1450703 ((_ is Node!5153) (c!238824 (tokens!2070 other!32)))) b!1450852))

(assert (= b!1450853 b!1450854))

(assert (= (and b!1450703 ((_ is Leaf!7686) (c!238824 (tokens!2070 other!32)))) b!1450853))

(declare-fun m!1674455 () Bool)

(assert (=> b!1450852 m!1674455))

(declare-fun m!1674457 () Bool)

(assert (=> b!1450852 m!1674457))

(declare-fun m!1674459 () Bool)

(assert (=> b!1450853 m!1674459))

(assert (=> b!1450703 m!1674205))

(check-sat (not b!1450778) (not d!421437) (not d!421459) (not b_next!36829) (not b!1450836) (not d!421397) (not d!421385) b_and!98187 (not d!421405) (not d!421427) (not b!1450779) (not b!1450731) (not d!421451) (not b!1450852) (not b!1450835) (not b!1450742) (not b!1450729) b_and!98185 (not b!1450761) (not b!1450732) (not b!1450760) (not b!1450739) (not d!421419) (not b_next!36825) (not b!1450846) (not d!421413) (not d!421409) (not b!1450780) (not b!1450850) (not b!1450853) (not b_next!36823) (not d!421401) (not b!1450823) (not b!1450815) (not b!1450740) (not b!1450794) (not b!1450743) (not b!1450821) (not b!1450847) b_and!98183 (not b!1450703) (not b!1450730) (not b!1450849) b_and!98189 (not d!421389) (not b!1450817) (not b!1450848) (not b!1450744) (not d!421423) (not d!421445) (not b_next!36827) (not d!421439) (not b!1450762) (not d!421407) (not b!1450702) (not d!421447) (not d!421399) (not b!1450741) (not b!1450854))
(check-sat b_and!98185 (not b_next!36825) (not b_next!36823) (not b_next!36829) b_and!98183 b_and!98189 (not b_next!36827) b_and!98187)
