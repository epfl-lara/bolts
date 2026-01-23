; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105490 () Bool)

(assert start!105490)

(declare-fun b!1188179 () Bool)

(declare-fun b_free!28669 () Bool)

(declare-fun b_next!29373 () Bool)

(assert (=> b!1188179 (= b_free!28669 (not b_next!29373))))

(declare-fun tp!339041 () Bool)

(declare-fun b_and!81837 () Bool)

(assert (=> b!1188179 (= tp!339041 b_and!81837)))

(declare-fun b_free!28671 () Bool)

(declare-fun b_next!29375 () Bool)

(assert (=> b!1188179 (= b_free!28671 (not b_next!29375))))

(declare-fun tp!339042 () Bool)

(declare-fun b_and!81839 () Bool)

(assert (=> b!1188179 (= tp!339042 b_and!81839)))

(declare-fun b!1188184 () Bool)

(declare-fun b_free!28673 () Bool)

(declare-fun b_next!29377 () Bool)

(assert (=> b!1188184 (= b_free!28673 (not b_next!29377))))

(declare-fun tp!339039 () Bool)

(declare-fun b_and!81841 () Bool)

(assert (=> b!1188184 (= tp!339039 b_and!81841)))

(declare-fun b_free!28675 () Bool)

(declare-fun b_next!29379 () Bool)

(assert (=> b!1188184 (= b_free!28675 (not b_next!29379))))

(declare-fun tp!339034 () Bool)

(declare-fun b_and!81843 () Bool)

(assert (=> b!1188184 (= tp!339034 b_and!81843)))

(declare-datatypes ((C!7040 0))(
  ( (C!7041 (val!3816 Int)) )
))
(declare-datatypes ((List!11970 0))(
  ( (Nil!11946) (Cons!11946 (h!17347 C!7040) (t!112072 List!11970)) )
))
(declare-datatypes ((IArray!7829 0))(
  ( (IArray!7830 (innerList!3972 List!11970)) )
))
(declare-datatypes ((Conc!3912 0))(
  ( (Node!3912 (left!10395 Conc!3912) (right!10725 Conc!3912) (csize!8054 Int) (cheight!4123 Int)) (Leaf!5988 (xs!6617 IArray!7829) (csize!8055 Int)) (Empty!3912) )
))
(declare-datatypes ((String!14452 0))(
  ( (String!14453 (value!67624 String)) )
))
(declare-datatypes ((List!11971 0))(
  ( (Nil!11947) (Cons!11947 (h!17348 (_ BitVec 16)) (t!112073 List!11971)) )
))
(declare-datatypes ((TokenValue!2157 0))(
  ( (FloatLiteralValue!4314 (text!15544 List!11971)) (TokenValueExt!2156 (__x!8025 Int)) (Broken!10785 (value!67625 List!11971)) (Object!2180) (End!2157) (Def!2157) (Underscore!2157) (Match!2157) (Else!2157) (Error!2157) (Case!2157) (If!2157) (Extends!2157) (Abstract!2157) (Class!2157) (Val!2157) (DelimiterValue!4314 (del!2217 List!11971)) (KeywordValue!2163 (value!67626 List!11971)) (CommentValue!4314 (value!67627 List!11971)) (WhitespaceValue!4314 (value!67628 List!11971)) (IndentationValue!2157 (value!67629 List!11971)) (String!14454) (Int32!2157) (Broken!10786 (value!67630 List!11971)) (Boolean!2158) (Unit!18319) (OperatorValue!2160 (op!2217 List!11971)) (IdentifierValue!4314 (value!67631 List!11971)) (IdentifierValue!4315 (value!67632 List!11971)) (WhitespaceValue!4315 (value!67633 List!11971)) (True!4314) (False!4314) (Broken!10787 (value!67634 List!11971)) (Broken!10788 (value!67635 List!11971)) (True!4315) (RightBrace!2157) (RightBracket!2157) (Colon!2157) (Null!2157) (Comma!2157) (LeftBracket!2157) (False!4315) (LeftBrace!2157) (ImaginaryLiteralValue!2157 (text!15545 List!11971)) (StringLiteralValue!6471 (value!67636 List!11971)) (EOFValue!2157 (value!67637 List!11971)) (IdentValue!2157 (value!67638 List!11971)) (DelimiterValue!4315 (value!67639 List!11971)) (DedentValue!2157 (value!67640 List!11971)) (NewLineValue!2157 (value!67641 List!11971)) (IntegerValue!6471 (value!67642 (_ BitVec 32)) (text!15546 List!11971)) (IntegerValue!6472 (value!67643 Int) (text!15547 List!11971)) (Times!2157) (Or!2157) (Equal!2157) (Minus!2157) (Broken!10789 (value!67644 List!11971)) (And!2157) (Div!2157) (LessEqual!2157) (Mod!2157) (Concat!5518) (Not!2157) (Plus!2157) (SpaceValue!2157 (value!67645 List!11971)) (IntegerValue!6473 (value!67646 Int) (text!15548 List!11971)) (StringLiteralValue!6472 (text!15549 List!11971)) (FloatLiteralValue!4315 (text!15550 List!11971)) (BytesLiteralValue!2157 (value!67647 List!11971)) (CommentValue!4315 (value!67648 List!11971)) (StringLiteralValue!6473 (value!67649 List!11971)) (ErrorTokenValue!2157 (msg!2218 List!11971)) )
))
(declare-datatypes ((Regex!3361 0))(
  ( (ElementMatch!3361 (c!197339 C!7040)) (Concat!5519 (regOne!7234 Regex!3361) (regTwo!7234 Regex!3361)) (EmptyExpr!3361) (Star!3361 (reg!3690 Regex!3361)) (EmptyLang!3361) (Union!3361 (regOne!7235 Regex!3361) (regTwo!7235 Regex!3361)) )
))
(declare-datatypes ((BalanceConc!7846 0))(
  ( (BalanceConc!7847 (c!197340 Conc!3912)) )
))
(declare-datatypes ((TokenValueInjection!4014 0))(
  ( (TokenValueInjection!4015 (toValue!3208 Int) (toChars!3067 Int)) )
))
(declare-datatypes ((Rule!3982 0))(
  ( (Rule!3983 (regex!2091 Regex!3361) (tag!2353 String!14452) (isSeparator!2091 Bool) (transformation!2091 TokenValueInjection!4014)) )
))
(declare-datatypes ((Token!3844 0))(
  ( (Token!3845 (value!67650 TokenValue!2157) (rule!3512 Rule!3982) (size!9418 Int) (originalCharacters!2645 List!11970)) )
))
(declare-datatypes ((List!11972 0))(
  ( (Nil!11948) (Cons!11948 (h!17349 Token!3844) (t!112074 List!11972)) )
))
(declare-fun l!6534 () List!11972)

(declare-fun b!1188178 () Bool)

(declare-fun e!763626 () Bool)

(declare-fun tp!339036 () Bool)

(declare-fun e!763621 () Bool)

(declare-fun inv!15781 (Token!3844) Bool)

(assert (=> b!1188178 (= e!763626 (and (inv!15781 (h!17349 l!6534)) e!763621 tp!339036))))

(declare-fun e!763618 () Bool)

(assert (=> b!1188179 (= e!763618 (and tp!339041 tp!339042))))

(declare-fun b!1188180 () Bool)

(declare-fun res!536855 () Bool)

(declare-fun e!763622 () Bool)

(assert (=> b!1188180 (=> (not res!536855) (not e!763622))))

(declare-datatypes ((List!11973 0))(
  ( (Nil!11949) (Cons!11949 (h!17350 Rule!3982) (t!112075 List!11973)) )
))
(declare-fun rules!4386 () List!11973)

(declare-datatypes ((LexerInterface!1786 0))(
  ( (LexerInterfaceExt!1783 (__x!8026 Int)) (Lexer!1784) )
))
(declare-fun thiss!27592 () LexerInterface!1786)

(declare-fun rulesProduceEachTokenIndividuallyList!652 (LexerInterface!1786 List!11973 List!11972) Bool)

(assert (=> b!1188180 (= res!536855 (rulesProduceEachTokenIndividuallyList!652 thiss!27592 rules!4386 l!6534))))

(declare-fun e!763627 () Bool)

(declare-fun b!1188181 () Bool)

(declare-fun tp!339040 () Bool)

(declare-fun e!763625 () Bool)

(declare-fun inv!15778 (String!14452) Bool)

(declare-fun inv!15782 (TokenValueInjection!4014) Bool)

(assert (=> b!1188181 (= e!763627 (and tp!339040 (inv!15778 (tag!2353 (h!17350 rules!4386))) (inv!15782 (transformation!2091 (h!17350 rules!4386))) e!763625))))

(declare-fun b!1188182 () Bool)

(declare-fun res!536851 () Bool)

(assert (=> b!1188182 (=> (not res!536851) (not e!763622))))

(declare-fun isEmpty!7186 (List!11973) Bool)

(assert (=> b!1188182 (= res!536851 (not (isEmpty!7186 rules!4386)))))

(declare-fun res!536850 () Bool)

(assert (=> start!105490 (=> (not res!536850) (not e!763622))))

(get-info :version)

(assert (=> start!105490 (= res!536850 ((_ is Lexer!1784) thiss!27592))))

(assert (=> start!105490 e!763622))

(assert (=> start!105490 true))

(declare-fun e!763619 () Bool)

(assert (=> start!105490 e!763619))

(assert (=> start!105490 e!763626))

(declare-fun b!1188183 () Bool)

(declare-fun e!763617 () Bool)

(declare-fun tp!339035 () Bool)

(assert (=> b!1188183 (= e!763617 (and tp!339035 (inv!15778 (tag!2353 (rule!3512 (h!17349 l!6534)))) (inv!15782 (transformation!2091 (rule!3512 (h!17349 l!6534)))) e!763618))))

(assert (=> b!1188184 (= e!763625 (and tp!339039 tp!339034))))

(declare-fun tp!339037 () Bool)

(declare-fun b!1188185 () Bool)

(declare-fun inv!21 (TokenValue!2157) Bool)

(assert (=> b!1188185 (= e!763621 (and (inv!21 (value!67650 (h!17349 l!6534))) e!763617 tp!339037))))

(declare-fun b!1188186 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!180 (LexerInterface!1786 List!11972 List!11973) Bool)

(assert (=> b!1188186 (= e!763622 (not (tokensListTwoByTwoPredicateSeparableList!180 thiss!27592 (t!112074 l!6534) rules!4386)))))

(declare-fun b!1188187 () Bool)

(declare-fun tp!339038 () Bool)

(assert (=> b!1188187 (= e!763619 (and e!763627 tp!339038))))

(declare-fun b!1188188 () Bool)

(declare-fun res!536854 () Bool)

(assert (=> b!1188188 (=> (not res!536854) (not e!763622))))

(declare-fun i!1621 () Int)

(assert (=> b!1188188 (= res!536854 (and (not ((_ is Nil!11948) l!6534)) (> i!1621 0)))))

(declare-fun b!1188189 () Bool)

(declare-fun res!536853 () Bool)

(assert (=> b!1188189 (=> (not res!536853) (not e!763622))))

(declare-fun rulesInvariant!1660 (LexerInterface!1786 List!11973) Bool)

(assert (=> b!1188189 (= res!536853 (rulesInvariant!1660 thiss!27592 rules!4386))))

(declare-fun b!1188190 () Bool)

(declare-fun res!536856 () Bool)

(assert (=> b!1188190 (=> (not res!536856) (not e!763622))))

(assert (=> b!1188190 (= res!536856 (tokensListTwoByTwoPredicateSeparableList!180 thiss!27592 l!6534 rules!4386))))

(declare-fun b!1188191 () Bool)

(declare-fun res!536852 () Bool)

(assert (=> b!1188191 (=> (not res!536852) (not e!763622))))

(assert (=> b!1188191 (= res!536852 (rulesProduceEachTokenIndividuallyList!652 thiss!27592 rules!4386 (t!112074 l!6534)))))

(assert (= (and start!105490 res!536850) b!1188182))

(assert (= (and b!1188182 res!536851) b!1188189))

(assert (= (and b!1188189 res!536853) b!1188180))

(assert (= (and b!1188180 res!536855) b!1188190))

(assert (= (and b!1188190 res!536856) b!1188188))

(assert (= (and b!1188188 res!536854) b!1188191))

(assert (= (and b!1188191 res!536852) b!1188186))

(assert (= b!1188181 b!1188184))

(assert (= b!1188187 b!1188181))

(assert (= (and start!105490 ((_ is Cons!11949) rules!4386)) b!1188187))

(assert (= b!1188183 b!1188179))

(assert (= b!1188185 b!1188183))

(assert (= b!1188178 b!1188185))

(assert (= (and start!105490 ((_ is Cons!11948) l!6534)) b!1188178))

(declare-fun m!1363703 () Bool)

(assert (=> b!1188181 m!1363703))

(declare-fun m!1363705 () Bool)

(assert (=> b!1188181 m!1363705))

(declare-fun m!1363707 () Bool)

(assert (=> b!1188190 m!1363707))

(declare-fun m!1363709 () Bool)

(assert (=> b!1188182 m!1363709))

(declare-fun m!1363711 () Bool)

(assert (=> b!1188185 m!1363711))

(declare-fun m!1363713 () Bool)

(assert (=> b!1188189 m!1363713))

(declare-fun m!1363715 () Bool)

(assert (=> b!1188191 m!1363715))

(declare-fun m!1363717 () Bool)

(assert (=> b!1188186 m!1363717))

(declare-fun m!1363719 () Bool)

(assert (=> b!1188183 m!1363719))

(declare-fun m!1363721 () Bool)

(assert (=> b!1188183 m!1363721))

(declare-fun m!1363723 () Bool)

(assert (=> b!1188178 m!1363723))

(declare-fun m!1363725 () Bool)

(assert (=> b!1188180 m!1363725))

(check-sat (not b_next!29377) (not b!1188187) b_and!81841 (not b_next!29379) (not b!1188178) (not b_next!29375) (not b!1188190) b_and!81839 b_and!81843 (not b!1188181) (not b!1188185) (not b!1188182) (not b_next!29373) (not b!1188186) (not b!1188180) (not b!1188189) (not b!1188191) b_and!81837 (not b!1188183))
(check-sat (not b_next!29377) b_and!81841 b_and!81837 (not b_next!29379) (not b_next!29375) b_and!81839 b_and!81843 (not b_next!29373))
(get-model)

(declare-fun d!339752 () Bool)

(assert (=> d!339752 (= (isEmpty!7186 rules!4386) ((_ is Nil!11949) rules!4386))))

(assert (=> b!1188182 d!339752))

(declare-fun d!339754 () Bool)

(declare-fun res!536863 () Bool)

(declare-fun e!763630 () Bool)

(assert (=> d!339754 (=> (not res!536863) (not e!763630))))

(declare-fun rulesValid!747 (LexerInterface!1786 List!11973) Bool)

(assert (=> d!339754 (= res!536863 (rulesValid!747 thiss!27592 rules!4386))))

(assert (=> d!339754 (= (rulesInvariant!1660 thiss!27592 rules!4386) e!763630)))

(declare-fun b!1188194 () Bool)

(declare-datatypes ((List!11975 0))(
  ( (Nil!11951) (Cons!11951 (h!17352 String!14452) (t!112097 List!11975)) )
))
(declare-fun noDuplicateTag!747 (LexerInterface!1786 List!11973 List!11975) Bool)

(assert (=> b!1188194 (= e!763630 (noDuplicateTag!747 thiss!27592 rules!4386 Nil!11951))))

(assert (= (and d!339754 res!536863) b!1188194))

(declare-fun m!1363727 () Bool)

(assert (=> d!339754 m!1363727))

(declare-fun m!1363729 () Bool)

(assert (=> b!1188194 m!1363729))

(assert (=> b!1188189 d!339754))

(declare-fun d!339758 () Bool)

(declare-fun res!536868 () Bool)

(declare-fun e!763633 () Bool)

(assert (=> d!339758 (=> (not res!536868) (not e!763633))))

(declare-fun isEmpty!7188 (List!11970) Bool)

(assert (=> d!339758 (= res!536868 (not (isEmpty!7188 (originalCharacters!2645 (h!17349 l!6534)))))))

(assert (=> d!339758 (= (inv!15781 (h!17349 l!6534)) e!763633)))

(declare-fun b!1188199 () Bool)

(declare-fun res!536869 () Bool)

(assert (=> b!1188199 (=> (not res!536869) (not e!763633))))

(declare-fun list!4386 (BalanceConc!7846) List!11970)

(declare-fun dynLambda!5353 (Int TokenValue!2157) BalanceConc!7846)

(assert (=> b!1188199 (= res!536869 (= (originalCharacters!2645 (h!17349 l!6534)) (list!4386 (dynLambda!5353 (toChars!3067 (transformation!2091 (rule!3512 (h!17349 l!6534)))) (value!67650 (h!17349 l!6534))))))))

(declare-fun b!1188200 () Bool)

(declare-fun size!9421 (List!11970) Int)

(assert (=> b!1188200 (= e!763633 (= (size!9418 (h!17349 l!6534)) (size!9421 (originalCharacters!2645 (h!17349 l!6534)))))))

(assert (= (and d!339758 res!536868) b!1188199))

(assert (= (and b!1188199 res!536869) b!1188200))

(declare-fun b_lambda!35679 () Bool)

(assert (=> (not b_lambda!35679) (not b!1188199)))

(declare-fun t!112077 () Bool)

(declare-fun tb!66413 () Bool)

(assert (=> (and b!1188179 (= (toChars!3067 (transformation!2091 (rule!3512 (h!17349 l!6534)))) (toChars!3067 (transformation!2091 (rule!3512 (h!17349 l!6534))))) t!112077) tb!66413))

(declare-fun b!1188205 () Bool)

(declare-fun e!763636 () Bool)

(declare-fun tp!339045 () Bool)

(declare-fun inv!15785 (Conc!3912) Bool)

(assert (=> b!1188205 (= e!763636 (and (inv!15785 (c!197340 (dynLambda!5353 (toChars!3067 (transformation!2091 (rule!3512 (h!17349 l!6534)))) (value!67650 (h!17349 l!6534))))) tp!339045))))

(declare-fun result!79838 () Bool)

(declare-fun inv!15786 (BalanceConc!7846) Bool)

(assert (=> tb!66413 (= result!79838 (and (inv!15786 (dynLambda!5353 (toChars!3067 (transformation!2091 (rule!3512 (h!17349 l!6534)))) (value!67650 (h!17349 l!6534)))) e!763636))))

(assert (= tb!66413 b!1188205))

(declare-fun m!1363731 () Bool)

(assert (=> b!1188205 m!1363731))

(declare-fun m!1363733 () Bool)

(assert (=> tb!66413 m!1363733))

(assert (=> b!1188199 t!112077))

(declare-fun b_and!81845 () Bool)

(assert (= b_and!81839 (and (=> t!112077 result!79838) b_and!81845)))

(declare-fun t!112079 () Bool)

(declare-fun tb!66415 () Bool)

(assert (=> (and b!1188184 (= (toChars!3067 (transformation!2091 (h!17350 rules!4386))) (toChars!3067 (transformation!2091 (rule!3512 (h!17349 l!6534))))) t!112079) tb!66415))

(declare-fun result!79842 () Bool)

(assert (= result!79842 result!79838))

(assert (=> b!1188199 t!112079))

(declare-fun b_and!81847 () Bool)

(assert (= b_and!81843 (and (=> t!112079 result!79842) b_and!81847)))

(declare-fun m!1363735 () Bool)

(assert (=> d!339758 m!1363735))

(declare-fun m!1363737 () Bool)

(assert (=> b!1188199 m!1363737))

(assert (=> b!1188199 m!1363737))

(declare-fun m!1363739 () Bool)

(assert (=> b!1188199 m!1363739))

(declare-fun m!1363741 () Bool)

(assert (=> b!1188200 m!1363741))

(assert (=> b!1188178 d!339758))

(declare-fun d!339760 () Bool)

(assert (=> d!339760 (= (inv!15778 (tag!2353 (rule!3512 (h!17349 l!6534)))) (= (mod (str.len (value!67624 (tag!2353 (rule!3512 (h!17349 l!6534))))) 2) 0))))

(assert (=> b!1188183 d!339760))

(declare-fun d!339762 () Bool)

(declare-fun res!536872 () Bool)

(declare-fun e!763639 () Bool)

(assert (=> d!339762 (=> (not res!536872) (not e!763639))))

(declare-fun semiInverseModEq!759 (Int Int) Bool)

(assert (=> d!339762 (= res!536872 (semiInverseModEq!759 (toChars!3067 (transformation!2091 (rule!3512 (h!17349 l!6534)))) (toValue!3208 (transformation!2091 (rule!3512 (h!17349 l!6534))))))))

(assert (=> d!339762 (= (inv!15782 (transformation!2091 (rule!3512 (h!17349 l!6534)))) e!763639)))

(declare-fun b!1188208 () Bool)

(declare-fun equivClasses!726 (Int Int) Bool)

(assert (=> b!1188208 (= e!763639 (equivClasses!726 (toChars!3067 (transformation!2091 (rule!3512 (h!17349 l!6534)))) (toValue!3208 (transformation!2091 (rule!3512 (h!17349 l!6534))))))))

(assert (= (and d!339762 res!536872) b!1188208))

(declare-fun m!1363743 () Bool)

(assert (=> d!339762 m!1363743))

(declare-fun m!1363745 () Bool)

(assert (=> b!1188208 m!1363745))

(assert (=> b!1188183 d!339762))

(declare-fun b!1188247 () Bool)

(declare-fun e!763672 () Bool)

(assert (=> b!1188247 (= e!763672 true)))

(declare-fun b!1188246 () Bool)

(declare-fun e!763671 () Bool)

(assert (=> b!1188246 (= e!763671 e!763672)))

(declare-fun b!1188245 () Bool)

(declare-fun e!763670 () Bool)

(assert (=> b!1188245 (= e!763670 e!763671)))

(declare-fun d!339764 () Bool)

(assert (=> d!339764 e!763670))

(assert (= b!1188246 b!1188247))

(assert (= b!1188245 b!1188246))

(assert (= (and d!339764 ((_ is Cons!11949) rules!4386)) b!1188245))

(declare-fun order!7457 () Int)

(declare-fun order!7459 () Int)

(declare-fun lambda!48971 () Int)

(declare-fun dynLambda!5354 (Int Int) Int)

(declare-fun dynLambda!5355 (Int Int) Int)

(assert (=> b!1188247 (< (dynLambda!5354 order!7457 (toValue!3208 (transformation!2091 (h!17350 rules!4386)))) (dynLambda!5355 order!7459 lambda!48971))))

(declare-fun order!7461 () Int)

(declare-fun dynLambda!5356 (Int Int) Int)

(assert (=> b!1188247 (< (dynLambda!5356 order!7461 (toChars!3067 (transformation!2091 (h!17350 rules!4386)))) (dynLambda!5355 order!7459 lambda!48971))))

(assert (=> d!339764 true))

(declare-fun lt!408566 () Bool)

(declare-fun forall!3162 (List!11972 Int) Bool)

(assert (=> d!339764 (= lt!408566 (forall!3162 l!6534 lambda!48971))))

(declare-fun e!763663 () Bool)

(assert (=> d!339764 (= lt!408566 e!763663)))

(declare-fun res!536887 () Bool)

(assert (=> d!339764 (=> res!536887 e!763663)))

(assert (=> d!339764 (= res!536887 (not ((_ is Cons!11948) l!6534)))))

(assert (=> d!339764 (not (isEmpty!7186 rules!4386))))

(assert (=> d!339764 (= (rulesProduceEachTokenIndividuallyList!652 thiss!27592 rules!4386 l!6534) lt!408566)))

(declare-fun b!1188235 () Bool)

(declare-fun e!763662 () Bool)

(assert (=> b!1188235 (= e!763663 e!763662)))

(declare-fun res!536886 () Bool)

(assert (=> b!1188235 (=> (not res!536886) (not e!763662))))

(declare-fun rulesProduceIndividualToken!813 (LexerInterface!1786 List!11973 Token!3844) Bool)

(assert (=> b!1188235 (= res!536886 (rulesProduceIndividualToken!813 thiss!27592 rules!4386 (h!17349 l!6534)))))

(declare-fun b!1188236 () Bool)

(assert (=> b!1188236 (= e!763662 (rulesProduceEachTokenIndividuallyList!652 thiss!27592 rules!4386 (t!112074 l!6534)))))

(assert (= (and d!339764 (not res!536887)) b!1188235))

(assert (= (and b!1188235 res!536886) b!1188236))

(declare-fun m!1363755 () Bool)

(assert (=> d!339764 m!1363755))

(assert (=> d!339764 m!1363709))

(declare-fun m!1363757 () Bool)

(assert (=> b!1188235 m!1363757))

(assert (=> b!1188236 m!1363715))

(assert (=> b!1188180 d!339764))

(declare-fun b!1188260 () Bool)

(declare-fun e!763679 () Bool)

(declare-fun inv!16 (TokenValue!2157) Bool)

(assert (=> b!1188260 (= e!763679 (inv!16 (value!67650 (h!17349 l!6534))))))

(declare-fun b!1188261 () Bool)

(declare-fun e!763680 () Bool)

(declare-fun inv!17 (TokenValue!2157) Bool)

(assert (=> b!1188261 (= e!763680 (inv!17 (value!67650 (h!17349 l!6534))))))

(declare-fun b!1188262 () Bool)

(assert (=> b!1188262 (= e!763679 e!763680)))

(declare-fun c!197346 () Bool)

(assert (=> b!1188262 (= c!197346 ((_ is IntegerValue!6472) (value!67650 (h!17349 l!6534))))))

(declare-fun b!1188263 () Bool)

(declare-fun res!536890 () Bool)

(declare-fun e!763681 () Bool)

(assert (=> b!1188263 (=> res!536890 e!763681)))

(assert (=> b!1188263 (= res!536890 (not ((_ is IntegerValue!6473) (value!67650 (h!17349 l!6534)))))))

(assert (=> b!1188263 (= e!763680 e!763681)))

(declare-fun b!1188264 () Bool)

(declare-fun inv!15 (TokenValue!2157) Bool)

(assert (=> b!1188264 (= e!763681 (inv!15 (value!67650 (h!17349 l!6534))))))

(declare-fun d!339770 () Bool)

(declare-fun c!197345 () Bool)

(assert (=> d!339770 (= c!197345 ((_ is IntegerValue!6471) (value!67650 (h!17349 l!6534))))))

(assert (=> d!339770 (= (inv!21 (value!67650 (h!17349 l!6534))) e!763679)))

(assert (= (and d!339770 c!197345) b!1188260))

(assert (= (and d!339770 (not c!197345)) b!1188262))

(assert (= (and b!1188262 c!197346) b!1188261))

(assert (= (and b!1188262 (not c!197346)) b!1188263))

(assert (= (and b!1188263 (not res!536890)) b!1188264))

(declare-fun m!1363759 () Bool)

(assert (=> b!1188260 m!1363759))

(declare-fun m!1363761 () Bool)

(assert (=> b!1188261 m!1363761))

(declare-fun m!1363763 () Bool)

(assert (=> b!1188264 m!1363763))

(assert (=> b!1188185 d!339770))

(declare-fun d!339772 () Bool)

(declare-fun res!536918 () Bool)

(declare-fun e!763755 () Bool)

(assert (=> d!339772 (=> res!536918 e!763755)))

(assert (=> d!339772 (= res!536918 (or (not ((_ is Cons!11948) l!6534)) (not ((_ is Cons!11948) (t!112074 l!6534)))))))

(assert (=> d!339772 (= (tokensListTwoByTwoPredicateSeparableList!180 thiss!27592 l!6534 rules!4386) e!763755)))

(declare-fun b!1188360 () Bool)

(declare-fun e!763756 () Bool)

(assert (=> b!1188360 (= e!763755 e!763756)))

(declare-fun res!536919 () Bool)

(assert (=> b!1188360 (=> (not res!536919) (not e!763756))))

(declare-fun separableTokensPredicate!170 (LexerInterface!1786 Token!3844 Token!3844 List!11973) Bool)

(assert (=> b!1188360 (= res!536919 (separableTokensPredicate!170 thiss!27592 (h!17349 l!6534) (h!17349 (t!112074 l!6534)) rules!4386))))

(declare-datatypes ((Unit!18328 0))(
  ( (Unit!18329) )
))
(declare-fun lt!408616 () Unit!18328)

(declare-fun Unit!18330 () Unit!18328)

(assert (=> b!1188360 (= lt!408616 Unit!18330)))

(declare-fun size!9422 (BalanceConc!7846) Int)

(declare-fun charsOf!1108 (Token!3844) BalanceConc!7846)

(assert (=> b!1188360 (> (size!9422 (charsOf!1108 (h!17349 (t!112074 l!6534)))) 0)))

(declare-fun lt!408612 () Unit!18328)

(declare-fun Unit!18331 () Unit!18328)

(assert (=> b!1188360 (= lt!408612 Unit!18331)))

(assert (=> b!1188360 (rulesProduceIndividualToken!813 thiss!27592 rules!4386 (h!17349 (t!112074 l!6534)))))

(declare-fun lt!408615 () Unit!18328)

(declare-fun Unit!18332 () Unit!18328)

(assert (=> b!1188360 (= lt!408615 Unit!18332)))

(assert (=> b!1188360 (rulesProduceIndividualToken!813 thiss!27592 rules!4386 (h!17349 l!6534))))

(declare-fun lt!408610 () Unit!18328)

(declare-fun lt!408613 () Unit!18328)

(assert (=> b!1188360 (= lt!408610 lt!408613)))

(assert (=> b!1188360 (rulesProduceIndividualToken!813 thiss!27592 rules!4386 (h!17349 (t!112074 l!6534)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!329 (LexerInterface!1786 List!11973 List!11972 Token!3844) Unit!18328)

(assert (=> b!1188360 (= lt!408613 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!329 thiss!27592 rules!4386 l!6534 (h!17349 (t!112074 l!6534))))))

(declare-fun lt!408611 () Unit!18328)

(declare-fun lt!408614 () Unit!18328)

(assert (=> b!1188360 (= lt!408611 lt!408614)))

(assert (=> b!1188360 (rulesProduceIndividualToken!813 thiss!27592 rules!4386 (h!17349 l!6534))))

(assert (=> b!1188360 (= lt!408614 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!329 thiss!27592 rules!4386 l!6534 (h!17349 l!6534)))))

(declare-fun b!1188361 () Bool)

(assert (=> b!1188361 (= e!763756 (tokensListTwoByTwoPredicateSeparableList!180 thiss!27592 (Cons!11948 (h!17349 (t!112074 l!6534)) (t!112074 (t!112074 l!6534))) rules!4386))))

(assert (= (and d!339772 (not res!536918)) b!1188360))

(assert (= (and b!1188360 res!536919) b!1188361))

(assert (=> b!1188360 m!1363757))

(declare-fun m!1363835 () Bool)

(assert (=> b!1188360 m!1363835))

(declare-fun m!1363837 () Bool)

(assert (=> b!1188360 m!1363837))

(declare-fun m!1363839 () Bool)

(assert (=> b!1188360 m!1363839))

(declare-fun m!1363841 () Bool)

(assert (=> b!1188360 m!1363841))

(assert (=> b!1188360 m!1363835))

(declare-fun m!1363843 () Bool)

(assert (=> b!1188360 m!1363843))

(declare-fun m!1363845 () Bool)

(assert (=> b!1188360 m!1363845))

(declare-fun m!1363847 () Bool)

(assert (=> b!1188361 m!1363847))

(assert (=> b!1188190 d!339772))

(declare-fun d!339792 () Bool)

(assert (=> d!339792 (= (inv!15778 (tag!2353 (h!17350 rules!4386))) (= (mod (str.len (value!67624 (tag!2353 (h!17350 rules!4386)))) 2) 0))))

(assert (=> b!1188181 d!339792))

(declare-fun d!339794 () Bool)

(declare-fun res!536920 () Bool)

(declare-fun e!763757 () Bool)

(assert (=> d!339794 (=> (not res!536920) (not e!763757))))

(assert (=> d!339794 (= res!536920 (semiInverseModEq!759 (toChars!3067 (transformation!2091 (h!17350 rules!4386))) (toValue!3208 (transformation!2091 (h!17350 rules!4386)))))))

(assert (=> d!339794 (= (inv!15782 (transformation!2091 (h!17350 rules!4386))) e!763757)))

(declare-fun b!1188362 () Bool)

(assert (=> b!1188362 (= e!763757 (equivClasses!726 (toChars!3067 (transformation!2091 (h!17350 rules!4386))) (toValue!3208 (transformation!2091 (h!17350 rules!4386)))))))

(assert (= (and d!339794 res!536920) b!1188362))

(declare-fun m!1363849 () Bool)

(assert (=> d!339794 m!1363849))

(declare-fun m!1363851 () Bool)

(assert (=> b!1188362 m!1363851))

(assert (=> b!1188181 d!339794))

(declare-fun d!339796 () Bool)

(declare-fun res!536921 () Bool)

(declare-fun e!763758 () Bool)

(assert (=> d!339796 (=> res!536921 e!763758)))

(assert (=> d!339796 (= res!536921 (or (not ((_ is Cons!11948) (t!112074 l!6534))) (not ((_ is Cons!11948) (t!112074 (t!112074 l!6534))))))))

(assert (=> d!339796 (= (tokensListTwoByTwoPredicateSeparableList!180 thiss!27592 (t!112074 l!6534) rules!4386) e!763758)))

(declare-fun b!1188363 () Bool)

(declare-fun e!763759 () Bool)

(assert (=> b!1188363 (= e!763758 e!763759)))

(declare-fun res!536922 () Bool)

(assert (=> b!1188363 (=> (not res!536922) (not e!763759))))

(assert (=> b!1188363 (= res!536922 (separableTokensPredicate!170 thiss!27592 (h!17349 (t!112074 l!6534)) (h!17349 (t!112074 (t!112074 l!6534))) rules!4386))))

(declare-fun lt!408623 () Unit!18328)

(declare-fun Unit!18333 () Unit!18328)

(assert (=> b!1188363 (= lt!408623 Unit!18333)))

(assert (=> b!1188363 (> (size!9422 (charsOf!1108 (h!17349 (t!112074 (t!112074 l!6534))))) 0)))

(declare-fun lt!408619 () Unit!18328)

(declare-fun Unit!18334 () Unit!18328)

(assert (=> b!1188363 (= lt!408619 Unit!18334)))

(assert (=> b!1188363 (rulesProduceIndividualToken!813 thiss!27592 rules!4386 (h!17349 (t!112074 (t!112074 l!6534))))))

(declare-fun lt!408622 () Unit!18328)

(declare-fun Unit!18335 () Unit!18328)

(assert (=> b!1188363 (= lt!408622 Unit!18335)))

(assert (=> b!1188363 (rulesProduceIndividualToken!813 thiss!27592 rules!4386 (h!17349 (t!112074 l!6534)))))

(declare-fun lt!408617 () Unit!18328)

(declare-fun lt!408620 () Unit!18328)

(assert (=> b!1188363 (= lt!408617 lt!408620)))

(assert (=> b!1188363 (rulesProduceIndividualToken!813 thiss!27592 rules!4386 (h!17349 (t!112074 (t!112074 l!6534))))))

(assert (=> b!1188363 (= lt!408620 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!329 thiss!27592 rules!4386 (t!112074 l!6534) (h!17349 (t!112074 (t!112074 l!6534)))))))

(declare-fun lt!408618 () Unit!18328)

(declare-fun lt!408621 () Unit!18328)

(assert (=> b!1188363 (= lt!408618 lt!408621)))

(assert (=> b!1188363 (rulesProduceIndividualToken!813 thiss!27592 rules!4386 (h!17349 (t!112074 l!6534)))))

(assert (=> b!1188363 (= lt!408621 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!329 thiss!27592 rules!4386 (t!112074 l!6534) (h!17349 (t!112074 l!6534))))))

(declare-fun b!1188364 () Bool)

(assert (=> b!1188364 (= e!763759 (tokensListTwoByTwoPredicateSeparableList!180 thiss!27592 (Cons!11948 (h!17349 (t!112074 (t!112074 l!6534))) (t!112074 (t!112074 (t!112074 l!6534)))) rules!4386))))

(assert (= (and d!339796 (not res!536921)) b!1188363))

(assert (= (and b!1188363 res!536922) b!1188364))

(assert (=> b!1188363 m!1363839))

(declare-fun m!1363853 () Bool)

(assert (=> b!1188363 m!1363853))

(declare-fun m!1363855 () Bool)

(assert (=> b!1188363 m!1363855))

(declare-fun m!1363857 () Bool)

(assert (=> b!1188363 m!1363857))

(declare-fun m!1363859 () Bool)

(assert (=> b!1188363 m!1363859))

(assert (=> b!1188363 m!1363853))

(declare-fun m!1363861 () Bool)

(assert (=> b!1188363 m!1363861))

(declare-fun m!1363863 () Bool)

(assert (=> b!1188363 m!1363863))

(declare-fun m!1363865 () Bool)

(assert (=> b!1188364 m!1363865))

(assert (=> b!1188186 d!339796))

(declare-fun bs!287692 () Bool)

(declare-fun d!339798 () Bool)

(assert (= bs!287692 (and d!339798 d!339764)))

(declare-fun lambda!48973 () Int)

(assert (=> bs!287692 (= lambda!48973 lambda!48971)))

(declare-fun b!1188369 () Bool)

(declare-fun e!763764 () Bool)

(assert (=> b!1188369 (= e!763764 true)))

(declare-fun b!1188368 () Bool)

(declare-fun e!763763 () Bool)

(assert (=> b!1188368 (= e!763763 e!763764)))

(declare-fun b!1188367 () Bool)

(declare-fun e!763762 () Bool)

(assert (=> b!1188367 (= e!763762 e!763763)))

(assert (=> d!339798 e!763762))

(assert (= b!1188368 b!1188369))

(assert (= b!1188367 b!1188368))

(assert (= (and d!339798 ((_ is Cons!11949) rules!4386)) b!1188367))

(assert (=> b!1188369 (< (dynLambda!5354 order!7457 (toValue!3208 (transformation!2091 (h!17350 rules!4386)))) (dynLambda!5355 order!7459 lambda!48973))))

(assert (=> b!1188369 (< (dynLambda!5356 order!7461 (toChars!3067 (transformation!2091 (h!17350 rules!4386)))) (dynLambda!5355 order!7459 lambda!48973))))

(assert (=> d!339798 true))

(declare-fun lt!408624 () Bool)

(assert (=> d!339798 (= lt!408624 (forall!3162 (t!112074 l!6534) lambda!48973))))

(declare-fun e!763761 () Bool)

(assert (=> d!339798 (= lt!408624 e!763761)))

(declare-fun res!536924 () Bool)

(assert (=> d!339798 (=> res!536924 e!763761)))

(assert (=> d!339798 (= res!536924 (not ((_ is Cons!11948) (t!112074 l!6534))))))

(assert (=> d!339798 (not (isEmpty!7186 rules!4386))))

(assert (=> d!339798 (= (rulesProduceEachTokenIndividuallyList!652 thiss!27592 rules!4386 (t!112074 l!6534)) lt!408624)))

(declare-fun b!1188365 () Bool)

(declare-fun e!763760 () Bool)

(assert (=> b!1188365 (= e!763761 e!763760)))

(declare-fun res!536923 () Bool)

(assert (=> b!1188365 (=> (not res!536923) (not e!763760))))

(assert (=> b!1188365 (= res!536923 (rulesProduceIndividualToken!813 thiss!27592 rules!4386 (h!17349 (t!112074 l!6534))))))

(declare-fun b!1188366 () Bool)

(assert (=> b!1188366 (= e!763760 (rulesProduceEachTokenIndividuallyList!652 thiss!27592 rules!4386 (t!112074 (t!112074 l!6534))))))

(assert (= (and d!339798 (not res!536924)) b!1188365))

(assert (= (and b!1188365 res!536923) b!1188366))

(declare-fun m!1363867 () Bool)

(assert (=> d!339798 m!1363867))

(assert (=> d!339798 m!1363709))

(assert (=> b!1188365 m!1363839))

(declare-fun m!1363869 () Bool)

(assert (=> b!1188366 m!1363869))

(assert (=> b!1188191 d!339798))

(declare-fun b!1188380 () Bool)

(declare-fun b_free!28685 () Bool)

(declare-fun b_next!29389 () Bool)

(assert (=> b!1188380 (= b_free!28685 (not b_next!29389))))

(declare-fun tp!339110 () Bool)

(declare-fun b_and!81861 () Bool)

(assert (=> b!1188380 (= tp!339110 b_and!81861)))

(declare-fun b_free!28687 () Bool)

(declare-fun b_next!29391 () Bool)

(assert (=> b!1188380 (= b_free!28687 (not b_next!29391))))

(declare-fun tb!66425 () Bool)

(declare-fun t!112094 () Bool)

(assert (=> (and b!1188380 (= (toChars!3067 (transformation!2091 (h!17350 (t!112075 rules!4386)))) (toChars!3067 (transformation!2091 (rule!3512 (h!17349 l!6534))))) t!112094) tb!66425))

(declare-fun result!79864 () Bool)

(assert (= result!79864 result!79838))

(assert (=> b!1188199 t!112094))

(declare-fun b_and!81863 () Bool)

(declare-fun tp!339109 () Bool)

(assert (=> b!1188380 (= tp!339109 (and (=> t!112094 result!79864) b_and!81863))))

(declare-fun e!763774 () Bool)

(assert (=> b!1188380 (= e!763774 (and tp!339110 tp!339109))))

(declare-fun e!763776 () Bool)

(declare-fun b!1188379 () Bool)

(declare-fun tp!339108 () Bool)

(assert (=> b!1188379 (= e!763776 (and tp!339108 (inv!15778 (tag!2353 (h!17350 (t!112075 rules!4386)))) (inv!15782 (transformation!2091 (h!17350 (t!112075 rules!4386)))) e!763774))))

(declare-fun b!1188378 () Bool)

(declare-fun e!763775 () Bool)

(declare-fun tp!339107 () Bool)

(assert (=> b!1188378 (= e!763775 (and e!763776 tp!339107))))

(assert (=> b!1188187 (= tp!339038 e!763775)))

(assert (= b!1188379 b!1188380))

(assert (= b!1188378 b!1188379))

(assert (= (and b!1188187 ((_ is Cons!11949) (t!112075 rules!4386))) b!1188378))

(declare-fun m!1363871 () Bool)

(assert (=> b!1188379 m!1363871))

(declare-fun m!1363873 () Bool)

(assert (=> b!1188379 m!1363873))

(declare-fun b!1188394 () Bool)

(declare-fun b_free!28689 () Bool)

(declare-fun b_next!29393 () Bool)

(assert (=> b!1188394 (= b_free!28689 (not b_next!29393))))

(declare-fun tp!339123 () Bool)

(declare-fun b_and!81865 () Bool)

(assert (=> b!1188394 (= tp!339123 b_and!81865)))

(declare-fun b_free!28691 () Bool)

(declare-fun b_next!29395 () Bool)

(assert (=> b!1188394 (= b_free!28691 (not b_next!29395))))

(declare-fun t!112096 () Bool)

(declare-fun tb!66427 () Bool)

(assert (=> (and b!1188394 (= (toChars!3067 (transformation!2091 (rule!3512 (h!17349 (t!112074 l!6534))))) (toChars!3067 (transformation!2091 (rule!3512 (h!17349 l!6534))))) t!112096) tb!66427))

(declare-fun result!79868 () Bool)

(assert (= result!79868 result!79838))

(assert (=> b!1188199 t!112096))

(declare-fun b_and!81867 () Bool)

(declare-fun tp!339122 () Bool)

(assert (=> b!1188394 (= tp!339122 (and (=> t!112096 result!79868) b_and!81867))))

(declare-fun b!1188391 () Bool)

(declare-fun tp!339124 () Bool)

(declare-fun e!763789 () Bool)

(declare-fun e!763794 () Bool)

(assert (=> b!1188391 (= e!763794 (and (inv!15781 (h!17349 (t!112074 l!6534))) e!763789 tp!339124))))

(declare-fun e!763793 () Bool)

(declare-fun e!763790 () Bool)

(declare-fun tp!339121 () Bool)

(declare-fun b!1188393 () Bool)

(assert (=> b!1188393 (= e!763793 (and tp!339121 (inv!15778 (tag!2353 (rule!3512 (h!17349 (t!112074 l!6534))))) (inv!15782 (transformation!2091 (rule!3512 (h!17349 (t!112074 l!6534))))) e!763790))))

(assert (=> b!1188394 (= e!763790 (and tp!339123 tp!339122))))

(assert (=> b!1188178 (= tp!339036 e!763794)))

(declare-fun b!1188392 () Bool)

(declare-fun tp!339125 () Bool)

(assert (=> b!1188392 (= e!763789 (and (inv!21 (value!67650 (h!17349 (t!112074 l!6534)))) e!763793 tp!339125))))

(assert (= b!1188393 b!1188394))

(assert (= b!1188392 b!1188393))

(assert (= b!1188391 b!1188392))

(assert (= (and b!1188178 ((_ is Cons!11948) (t!112074 l!6534))) b!1188391))

(declare-fun m!1363875 () Bool)

(assert (=> b!1188391 m!1363875))

(declare-fun m!1363877 () Bool)

(assert (=> b!1188393 m!1363877))

(declare-fun m!1363879 () Bool)

(assert (=> b!1188393 m!1363879))

(declare-fun m!1363881 () Bool)

(assert (=> b!1188392 m!1363881))

(declare-fun b!1188406 () Bool)

(declare-fun e!763797 () Bool)

(declare-fun tp!339140 () Bool)

(declare-fun tp!339139 () Bool)

(assert (=> b!1188406 (= e!763797 (and tp!339140 tp!339139))))

(declare-fun b!1188405 () Bool)

(declare-fun tp_is_empty!5851 () Bool)

(assert (=> b!1188405 (= e!763797 tp_is_empty!5851)))

(assert (=> b!1188183 (= tp!339035 e!763797)))

(declare-fun b!1188407 () Bool)

(declare-fun tp!339137 () Bool)

(assert (=> b!1188407 (= e!763797 tp!339137)))

(declare-fun b!1188408 () Bool)

(declare-fun tp!339136 () Bool)

(declare-fun tp!339138 () Bool)

(assert (=> b!1188408 (= e!763797 (and tp!339136 tp!339138))))

(assert (= (and b!1188183 ((_ is ElementMatch!3361) (regex!2091 (rule!3512 (h!17349 l!6534))))) b!1188405))

(assert (= (and b!1188183 ((_ is Concat!5519) (regex!2091 (rule!3512 (h!17349 l!6534))))) b!1188406))

(assert (= (and b!1188183 ((_ is Star!3361) (regex!2091 (rule!3512 (h!17349 l!6534))))) b!1188407))

(assert (= (and b!1188183 ((_ is Union!3361) (regex!2091 (rule!3512 (h!17349 l!6534))))) b!1188408))

(declare-fun b!1188413 () Bool)

(declare-fun e!763800 () Bool)

(declare-fun tp!339143 () Bool)

(assert (=> b!1188413 (= e!763800 (and tp_is_empty!5851 tp!339143))))

(assert (=> b!1188185 (= tp!339037 e!763800)))

(assert (= (and b!1188185 ((_ is Cons!11946) (originalCharacters!2645 (h!17349 l!6534)))) b!1188413))

(declare-fun b!1188415 () Bool)

(declare-fun e!763801 () Bool)

(declare-fun tp!339148 () Bool)

(declare-fun tp!339147 () Bool)

(assert (=> b!1188415 (= e!763801 (and tp!339148 tp!339147))))

(declare-fun b!1188414 () Bool)

(assert (=> b!1188414 (= e!763801 tp_is_empty!5851)))

(assert (=> b!1188181 (= tp!339040 e!763801)))

(declare-fun b!1188416 () Bool)

(declare-fun tp!339145 () Bool)

(assert (=> b!1188416 (= e!763801 tp!339145)))

(declare-fun b!1188417 () Bool)

(declare-fun tp!339144 () Bool)

(declare-fun tp!339146 () Bool)

(assert (=> b!1188417 (= e!763801 (and tp!339144 tp!339146))))

(assert (= (and b!1188181 ((_ is ElementMatch!3361) (regex!2091 (h!17350 rules!4386)))) b!1188414))

(assert (= (and b!1188181 ((_ is Concat!5519) (regex!2091 (h!17350 rules!4386)))) b!1188415))

(assert (= (and b!1188181 ((_ is Star!3361) (regex!2091 (h!17350 rules!4386)))) b!1188416))

(assert (= (and b!1188181 ((_ is Union!3361) (regex!2091 (h!17350 rules!4386)))) b!1188417))

(declare-fun b_lambda!35685 () Bool)

(assert (= b_lambda!35679 (or (and b!1188179 b_free!28671) (and b!1188184 b_free!28675 (= (toChars!3067 (transformation!2091 (h!17350 rules!4386))) (toChars!3067 (transformation!2091 (rule!3512 (h!17349 l!6534)))))) (and b!1188380 b_free!28687 (= (toChars!3067 (transformation!2091 (h!17350 (t!112075 rules!4386)))) (toChars!3067 (transformation!2091 (rule!3512 (h!17349 l!6534)))))) (and b!1188394 b_free!28691 (= (toChars!3067 (transformation!2091 (rule!3512 (h!17349 (t!112074 l!6534))))) (toChars!3067 (transformation!2091 (rule!3512 (h!17349 l!6534)))))) b_lambda!35685)))

(check-sat (not b!1188264) b_and!81841 (not b!1188260) (not d!339762) b_and!81837 (not d!339754) b_and!81847 (not b!1188236) (not b!1188261) b_and!81845 (not b!1188361) (not b_next!29377) (not b!1188393) (not b!1188366) (not b_next!29395) tp_is_empty!5851 (not b!1188391) (not b!1188392) (not b!1188208) b_and!81865 (not b!1188200) (not b!1188407) (not b_next!29379) (not b_lambda!35685) (not b_next!29375) b_and!81867 (not b!1188415) (not b!1188417) (not b!1188406) (not b_next!29393) (not b!1188364) (not b!1188362) (not d!339758) b_and!81863 (not b_next!29391) (not b!1188360) (not d!339798) (not b!1188199) (not b!1188194) (not b!1188413) (not d!339764) (not b!1188363) (not d!339794) (not b!1188245) (not b!1188365) (not b_next!29389) (not b!1188378) (not b!1188367) (not b!1188408) (not b!1188235) (not b_next!29373) (not b!1188416) (not tb!66413) b_and!81861 (not b!1188205) (not b!1188379))
(check-sat b_and!81841 b_and!81865 b_and!81837 (not b_next!29379) (not b_next!29393) b_and!81863 (not b_next!29391) (not b_next!29389) b_and!81847 (not b_next!29373) b_and!81845 b_and!81861 (not b_next!29377) (not b_next!29395) (not b_next!29375) b_and!81867)
