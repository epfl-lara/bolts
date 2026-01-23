; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!271210 () Bool)

(assert start!271210)

(declare-fun b!2803880 () Bool)

(declare-fun b_free!79557 () Bool)

(declare-fun b_next!80261 () Bool)

(assert (=> b!2803880 (= b_free!79557 (not b_next!80261))))

(declare-fun tp!894093 () Bool)

(declare-fun b_and!204295 () Bool)

(assert (=> b!2803880 (= tp!894093 b_and!204295)))

(declare-fun b_free!79559 () Bool)

(declare-fun b_next!80263 () Bool)

(assert (=> b!2803880 (= b_free!79559 (not b_next!80263))))

(declare-fun tp!894084 () Bool)

(declare-fun b_and!204297 () Bool)

(assert (=> b!2803880 (= tp!894084 b_and!204297)))

(declare-fun b!2803879 () Bool)

(declare-fun b_free!79561 () Bool)

(declare-fun b_next!80265 () Bool)

(assert (=> b!2803879 (= b_free!79561 (not b_next!80265))))

(declare-fun tp!894089 () Bool)

(declare-fun b_and!204299 () Bool)

(assert (=> b!2803879 (= tp!894089 b_and!204299)))

(declare-fun b_free!79563 () Bool)

(declare-fun b_next!80267 () Bool)

(assert (=> b!2803879 (= b_free!79563 (not b_next!80267))))

(declare-fun tp!894085 () Bool)

(declare-fun b_and!204301 () Bool)

(assert (=> b!2803879 (= tp!894085 b_and!204301)))

(declare-fun b!2803875 () Bool)

(declare-fun b_free!79565 () Bool)

(declare-fun b_next!80269 () Bool)

(assert (=> b!2803875 (= b_free!79565 (not b_next!80269))))

(declare-fun tp!894090 () Bool)

(declare-fun b_and!204303 () Bool)

(assert (=> b!2803875 (= tp!894090 b_and!204303)))

(declare-fun b_free!79567 () Bool)

(declare-fun b_next!80271 () Bool)

(assert (=> b!2803875 (= b_free!79567 (not b_next!80271))))

(declare-fun tp!894095 () Bool)

(declare-fun b_and!204305 () Bool)

(assert (=> b!2803875 (= tp!894095 b_and!204305)))

(declare-fun b!2803896 () Bool)

(declare-fun e!1772165 () Bool)

(assert (=> b!2803896 (= e!1772165 true)))

(declare-fun b!2803895 () Bool)

(declare-fun e!1772164 () Bool)

(assert (=> b!2803895 (= e!1772164 e!1772165)))

(declare-fun b!2803894 () Bool)

(declare-fun e!1772163 () Bool)

(assert (=> b!2803894 (= e!1772163 e!1772164)))

(declare-fun b!2803882 () Bool)

(assert (=> b!2803882 e!1772163))

(assert (= b!2803895 b!2803896))

(assert (= b!2803894 b!2803895))

(declare-datatypes ((List!32720 0))(
  ( (Nil!32620) (Cons!32620 (h!38040 (_ BitVec 16)) (t!228892 List!32720)) )
))
(declare-datatypes ((TokenValue!5090 0))(
  ( (FloatLiteralValue!10180 (text!36075 List!32720)) (TokenValueExt!5089 (__x!21837 Int)) (Broken!25450 (value!156623 List!32720)) (Object!5189) (End!5090) (Def!5090) (Underscore!5090) (Match!5090) (Else!5090) (Error!5090) (Case!5090) (If!5090) (Extends!5090) (Abstract!5090) (Class!5090) (Val!5090) (DelimiterValue!10180 (del!5150 List!32720)) (KeywordValue!5096 (value!156624 List!32720)) (CommentValue!10180 (value!156625 List!32720)) (WhitespaceValue!10180 (value!156626 List!32720)) (IndentationValue!5090 (value!156627 List!32720)) (String!35787) (Int32!5090) (Broken!25451 (value!156628 List!32720)) (Boolean!5091) (Unit!46728) (OperatorValue!5093 (op!5150 List!32720)) (IdentifierValue!10180 (value!156629 List!32720)) (IdentifierValue!10181 (value!156630 List!32720)) (WhitespaceValue!10181 (value!156631 List!32720)) (True!10180) (False!10180) (Broken!25452 (value!156632 List!32720)) (Broken!25453 (value!156633 List!32720)) (True!10181) (RightBrace!5090) (RightBracket!5090) (Colon!5090) (Null!5090) (Comma!5090) (LeftBracket!5090) (False!10181) (LeftBrace!5090) (ImaginaryLiteralValue!5090 (text!36076 List!32720)) (StringLiteralValue!15270 (value!156634 List!32720)) (EOFValue!5090 (value!156635 List!32720)) (IdentValue!5090 (value!156636 List!32720)) (DelimiterValue!10181 (value!156637 List!32720)) (DedentValue!5090 (value!156638 List!32720)) (NewLineValue!5090 (value!156639 List!32720)) (IntegerValue!15270 (value!156640 (_ BitVec 32)) (text!36077 List!32720)) (IntegerValue!15271 (value!156641 Int) (text!36078 List!32720)) (Times!5090) (Or!5090) (Equal!5090) (Minus!5090) (Broken!25454 (value!156642 List!32720)) (And!5090) (Div!5090) (LessEqual!5090) (Mod!5090) (Concat!13328) (Not!5090) (Plus!5090) (SpaceValue!5090 (value!156643 List!32720)) (IntegerValue!15272 (value!156644 Int) (text!36079 List!32720)) (StringLiteralValue!15271 (text!36080 List!32720)) (FloatLiteralValue!10181 (text!36081 List!32720)) (BytesLiteralValue!5090 (value!156645 List!32720)) (CommentValue!10181 (value!156646 List!32720)) (StringLiteralValue!15272 (value!156647 List!32720)) (ErrorTokenValue!5090 (msg!5151 List!32720)) )
))
(declare-datatypes ((C!16634 0))(
  ( (C!16635 (val!10251 Int)) )
))
(declare-datatypes ((List!32721 0))(
  ( (Nil!32621) (Cons!32621 (h!38041 C!16634) (t!228893 List!32721)) )
))
(declare-datatypes ((IArray!20195 0))(
  ( (IArray!20196 (innerList!10155 List!32721)) )
))
(declare-datatypes ((Conc!10095 0))(
  ( (Node!10095 (left!24618 Conc!10095) (right!24948 Conc!10095) (csize!20420 Int) (cheight!10306 Int)) (Leaf!15383 (xs!13207 IArray!20195) (csize!20421 Int)) (Empty!10095) )
))
(declare-datatypes ((BalanceConc!19804 0))(
  ( (BalanceConc!19805 (c!454534 Conc!10095)) )
))
(declare-datatypes ((TokenValueInjection!9620 0))(
  ( (TokenValueInjection!9621 (toValue!6866 Int) (toChars!6725 Int)) )
))
(declare-datatypes ((Regex!8238 0))(
  ( (ElementMatch!8238 (c!454535 C!16634)) (Concat!13329 (regOne!16988 Regex!8238) (regTwo!16988 Regex!8238)) (EmptyExpr!8238) (Star!8238 (reg!8567 Regex!8238)) (EmptyLang!8238) (Union!8238 (regOne!16989 Regex!8238) (regTwo!16989 Regex!8238)) )
))
(declare-datatypes ((String!35788 0))(
  ( (String!35789 (value!156648 String)) )
))
(declare-datatypes ((Rule!9536 0))(
  ( (Rule!9537 (regex!4868 Regex!8238) (tag!5372 String!35788) (isSeparator!4868 Bool) (transformation!4868 TokenValueInjection!9620)) )
))
(declare-datatypes ((List!32722 0))(
  ( (Nil!32622) (Cons!32622 (h!38042 Rule!9536) (t!228894 List!32722)) )
))
(declare-fun rules!2540 () List!32722)

(assert (= (and b!2803882 (is-Cons!32622 rules!2540)) b!2803894))

(declare-fun order!17255 () Int)

(declare-fun lambda!103012 () Int)

(declare-fun order!17253 () Int)

(declare-fun dynLambda!13627 (Int Int) Int)

(declare-fun dynLambda!13628 (Int Int) Int)

(assert (=> b!2803896 (< (dynLambda!13627 order!17253 (toValue!6866 (transformation!4868 (h!38042 rules!2540)))) (dynLambda!13628 order!17255 lambda!103012))))

(declare-fun order!17257 () Int)

(declare-fun dynLambda!13629 (Int Int) Int)

(assert (=> b!2803896 (< (dynLambda!13629 order!17257 (toChars!6725 (transformation!4868 (h!38042 rules!2540)))) (dynLambda!13628 order!17255 lambda!103012))))

(assert (=> b!2803882 true))

(declare-fun b!2803869 () Bool)

(declare-fun res!1168205 () Bool)

(declare-fun e!1772151 () Bool)

(assert (=> b!2803869 (=> (not res!1168205) (not e!1772151))))

(declare-datatypes ((Token!9138 0))(
  ( (Token!9139 (value!156649 TokenValue!5090) (rule!7296 Rule!9536) (size!25480 Int) (originalCharacters!5600 List!32721)) )
))
(declare-datatypes ((List!32723 0))(
  ( (Nil!32623) (Cons!32623 (h!38043 Token!9138) (t!228895 List!32723)) )
))
(declare-fun l!5055 () List!32723)

(declare-fun contains!6024 (List!32723 Token!9138) Bool)

(assert (=> b!2803869 (= res!1168205 (contains!6024 l!5055 (h!38043 l!5055)))))

(declare-fun tp!894088 () Bool)

(declare-fun b!2803870 () Bool)

(declare-fun e!1772148 () Bool)

(declare-fun e!1772142 () Bool)

(declare-fun inv!44301 (Token!9138) Bool)

(assert (=> b!2803870 (= e!1772148 (and (inv!44301 (h!38043 l!5055)) e!1772142 tp!894088))))

(declare-fun b!2803871 () Bool)

(declare-fun res!1168208 () Bool)

(assert (=> b!2803871 (=> (not res!1168208) (not e!1772151))))

(declare-datatypes ((LexerInterface!4459 0))(
  ( (LexerInterfaceExt!4456 (__x!21838 Int)) (Lexer!4457) )
))
(declare-fun thiss!19710 () LexerInterface!4459)

(declare-fun rulesInvariant!3899 (LexerInterface!4459 List!32722) Bool)

(assert (=> b!2803871 (= res!1168208 (rulesInvariant!3899 thiss!19710 rules!2540))))

(declare-fun b!2803873 () Bool)

(declare-fun res!1168209 () Bool)

(assert (=> b!2803873 (=> (not res!1168209) (not e!1772151))))

(declare-fun separatorToken!283 () Token!9138)

(declare-fun rulesProduceIndividualToken!2023 (LexerInterface!4459 List!32722 Token!9138) Bool)

(assert (=> b!2803873 (= res!1168209 (rulesProduceIndividualToken!2023 thiss!19710 rules!2540 separatorToken!283))))

(declare-fun tp!894092 () Bool)

(declare-fun e!1772144 () Bool)

(declare-fun b!2803874 () Bool)

(declare-fun inv!21 (TokenValue!5090) Bool)

(assert (=> b!2803874 (= e!1772142 (and (inv!21 (value!156649 (h!38043 l!5055))) e!1772144 tp!894092))))

(declare-fun e!1772149 () Bool)

(assert (=> b!2803875 (= e!1772149 (and tp!894090 tp!894095))))

(declare-fun b!2803876 () Bool)

(declare-fun res!1168206 () Bool)

(assert (=> b!2803876 (=> (not res!1168206) (not e!1772151))))

(assert (=> b!2803876 (= res!1168206 (and (isSeparator!4868 (rule!7296 separatorToken!283)) (is-Cons!32623 l!5055)))))

(declare-fun b!2803877 () Bool)

(declare-fun e!1772153 () Bool)

(declare-fun tp!894086 () Bool)

(declare-fun inv!44298 (String!35788) Bool)

(declare-fun inv!44302 (TokenValueInjection!9620) Bool)

(assert (=> b!2803877 (= e!1772144 (and tp!894086 (inv!44298 (tag!5372 (rule!7296 (h!38043 l!5055)))) (inv!44302 (transformation!4868 (rule!7296 (h!38043 l!5055)))) e!1772153))))

(declare-fun tp!894091 () Bool)

(declare-fun e!1772154 () Bool)

(declare-fun e!1772146 () Bool)

(declare-fun b!2803878 () Bool)

(assert (=> b!2803878 (= e!1772154 (and (inv!21 (value!156649 separatorToken!283)) e!1772146 tp!894091))))

(assert (=> b!2803879 (= e!1772153 (and tp!894089 tp!894085))))

(declare-fun e!1772155 () Bool)

(assert (=> b!2803880 (= e!1772155 (and tp!894093 tp!894084))))

(declare-fun b!2803881 () Bool)

(declare-fun res!1168204 () Bool)

(assert (=> b!2803881 (=> (not res!1168204) (not e!1772151))))

(declare-fun isEmpty!18146 (List!32722) Bool)

(assert (=> b!2803881 (= res!1168204 (not (isEmpty!18146 rules!2540)))))

(declare-fun forall!6721 (List!32723 Int) Bool)

(assert (=> b!2803882 (= e!1772151 (not (forall!6721 l!5055 lambda!103012)))))

(declare-fun b!2803883 () Bool)

(declare-fun tp!894083 () Bool)

(assert (=> b!2803883 (= e!1772146 (and tp!894083 (inv!44298 (tag!5372 (rule!7296 separatorToken!283))) (inv!44302 (transformation!4868 (rule!7296 separatorToken!283))) e!1772155))))

(declare-fun res!1168207 () Bool)

(assert (=> start!271210 (=> (not res!1168207) (not e!1772151))))

(assert (=> start!271210 (= res!1168207 (is-Lexer!4457 thiss!19710))))

(assert (=> start!271210 e!1772151))

(assert (=> start!271210 true))

(declare-fun e!1772150 () Bool)

(assert (=> start!271210 e!1772150))

(assert (=> start!271210 e!1772148))

(assert (=> start!271210 (and (inv!44301 separatorToken!283) e!1772154)))

(declare-fun b!2803872 () Bool)

(declare-fun res!1168203 () Bool)

(assert (=> b!2803872 (=> (not res!1168203) (not e!1772151))))

(declare-fun rulesProduceEachTokenIndividuallyList!1533 (LexerInterface!4459 List!32722 List!32723) Bool)

(assert (=> b!2803872 (= res!1168203 (rulesProduceEachTokenIndividuallyList!1533 thiss!19710 rules!2540 l!5055))))

(declare-fun tp!894087 () Bool)

(declare-fun b!2803884 () Bool)

(declare-fun e!1772156 () Bool)

(assert (=> b!2803884 (= e!1772156 (and tp!894087 (inv!44298 (tag!5372 (h!38042 rules!2540))) (inv!44302 (transformation!4868 (h!38042 rules!2540))) e!1772149))))

(declare-fun b!2803885 () Bool)

(declare-fun tp!894094 () Bool)

(assert (=> b!2803885 (= e!1772150 (and e!1772156 tp!894094))))

(assert (= (and start!271210 res!1168207) b!2803881))

(assert (= (and b!2803881 res!1168204) b!2803871))

(assert (= (and b!2803871 res!1168208) b!2803872))

(assert (= (and b!2803872 res!1168203) b!2803873))

(assert (= (and b!2803873 res!1168209) b!2803876))

(assert (= (and b!2803876 res!1168206) b!2803869))

(assert (= (and b!2803869 res!1168205) b!2803882))

(assert (= b!2803884 b!2803875))

(assert (= b!2803885 b!2803884))

(assert (= (and start!271210 (is-Cons!32622 rules!2540)) b!2803885))

(assert (= b!2803877 b!2803879))

(assert (= b!2803874 b!2803877))

(assert (= b!2803870 b!2803874))

(assert (= (and start!271210 (is-Cons!32623 l!5055)) b!2803870))

(assert (= b!2803883 b!2803880))

(assert (= b!2803878 b!2803883))

(assert (= start!271210 b!2803878))

(declare-fun m!3233589 () Bool)

(assert (=> b!2803869 m!3233589))

(declare-fun m!3233591 () Bool)

(assert (=> b!2803870 m!3233591))

(declare-fun m!3233593 () Bool)

(assert (=> b!2803872 m!3233593))

(declare-fun m!3233595 () Bool)

(assert (=> b!2803881 m!3233595))

(declare-fun m!3233597 () Bool)

(assert (=> b!2803882 m!3233597))

(declare-fun m!3233599 () Bool)

(assert (=> b!2803878 m!3233599))

(declare-fun m!3233601 () Bool)

(assert (=> b!2803877 m!3233601))

(declare-fun m!3233603 () Bool)

(assert (=> b!2803877 m!3233603))

(declare-fun m!3233605 () Bool)

(assert (=> start!271210 m!3233605))

(declare-fun m!3233607 () Bool)

(assert (=> b!2803874 m!3233607))

(declare-fun m!3233609 () Bool)

(assert (=> b!2803873 m!3233609))

(declare-fun m!3233611 () Bool)

(assert (=> b!2803871 m!3233611))

(declare-fun m!3233613 () Bool)

(assert (=> b!2803883 m!3233613))

(declare-fun m!3233615 () Bool)

(assert (=> b!2803883 m!3233615))

(declare-fun m!3233617 () Bool)

(assert (=> b!2803884 m!3233617))

(declare-fun m!3233619 () Bool)

(assert (=> b!2803884 m!3233619))

(push 1)

(assert (not b!2803870))

(assert (not b_next!80269))

(assert (not b!2803874))

(assert (not b!2803885))

(assert b_and!204295)

(assert (not b!2803871))

(assert (not b!2803882))

(assert b_and!204299)

(assert (not b_next!80265))

(assert (not b_next!80271))

(assert (not b!2803869))

(assert b_and!204297)

(assert (not b!2803884))

(assert (not b!2803877))

(assert b_and!204301)

(assert (not b!2803878))

(assert (not b_next!80261))

(assert b_and!204305)

(assert b_and!204303)

(assert (not b!2803873))

(assert (not b!2803894))

(assert (not b!2803881))

(assert (not b!2803883))

(assert (not b_next!80263))

(assert (not b_next!80267))

(assert (not start!271210))

(assert (not b!2803872))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!80269))

(assert b_and!204301)

(assert b_and!204295)

(assert b_and!204303)

(assert b_and!204299)

(assert (not b_next!80265))

(assert (not b_next!80271))

(assert b_and!204297)

(assert (not b_next!80261))

(assert b_and!204305)

(assert (not b_next!80263))

(assert (not b_next!80267))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!516088 () Bool)

(declare-fun d!814278 () Bool)

(assert (= bs!516088 (and d!814278 b!2803882)))

(declare-fun lambda!103018 () Int)

(assert (=> bs!516088 (= lambda!103018 lambda!103012)))

(declare-fun b!2803986 () Bool)

(declare-fun e!1772240 () Bool)

(assert (=> b!2803986 (= e!1772240 true)))

(declare-fun b!2803985 () Bool)

(declare-fun e!1772239 () Bool)

(assert (=> b!2803985 (= e!1772239 e!1772240)))

(declare-fun b!2803984 () Bool)

(declare-fun e!1772238 () Bool)

(assert (=> b!2803984 (= e!1772238 e!1772239)))

(assert (=> d!814278 e!1772238))

(assert (= b!2803985 b!2803986))

(assert (= b!2803984 b!2803985))

(assert (= (and d!814278 (is-Cons!32622 rules!2540)) b!2803984))

(assert (=> b!2803986 (< (dynLambda!13627 order!17253 (toValue!6866 (transformation!4868 (h!38042 rules!2540)))) (dynLambda!13628 order!17255 lambda!103018))))

(assert (=> b!2803986 (< (dynLambda!13629 order!17257 (toChars!6725 (transformation!4868 (h!38042 rules!2540)))) (dynLambda!13628 order!17255 lambda!103018))))

(assert (=> d!814278 true))

(declare-fun lt!1002829 () Bool)

(assert (=> d!814278 (= lt!1002829 (forall!6721 l!5055 lambda!103018))))

(declare-fun e!1772236 () Bool)

(assert (=> d!814278 (= lt!1002829 e!1772236)))

(declare-fun res!1168246 () Bool)

(assert (=> d!814278 (=> res!1168246 e!1772236)))

(assert (=> d!814278 (= res!1168246 (not (is-Cons!32623 l!5055)))))

(assert (=> d!814278 (not (isEmpty!18146 rules!2540))))

(assert (=> d!814278 (= (rulesProduceEachTokenIndividuallyList!1533 thiss!19710 rules!2540 l!5055) lt!1002829)))

(declare-fun b!2803982 () Bool)

(declare-fun e!1772237 () Bool)

(assert (=> b!2803982 (= e!1772236 e!1772237)))

(declare-fun res!1168247 () Bool)

(assert (=> b!2803982 (=> (not res!1168247) (not e!1772237))))

(assert (=> b!2803982 (= res!1168247 (rulesProduceIndividualToken!2023 thiss!19710 rules!2540 (h!38043 l!5055)))))

(declare-fun b!2803983 () Bool)

(assert (=> b!2803983 (= e!1772237 (rulesProduceEachTokenIndividuallyList!1533 thiss!19710 rules!2540 (t!228895 l!5055)))))

(assert (= (and d!814278 (not res!1168246)) b!2803982))

(assert (= (and b!2803982 res!1168247) b!2803983))

(declare-fun m!3233659 () Bool)

(assert (=> d!814278 m!3233659))

(assert (=> d!814278 m!3233595))

(declare-fun m!3233661 () Bool)

(assert (=> b!2803982 m!3233661))

(declare-fun m!3233663 () Bool)

(assert (=> b!2803983 m!3233663))

(assert (=> b!2803872 d!814278))

(declare-fun d!814280 () Bool)

(assert (=> d!814280 (= (inv!44298 (tag!5372 (rule!7296 separatorToken!283))) (= (mod (str.len (value!156648 (tag!5372 (rule!7296 separatorToken!283)))) 2) 0))))

(assert (=> b!2803883 d!814280))

(declare-fun d!814282 () Bool)

(declare-fun res!1168250 () Bool)

(declare-fun e!1772243 () Bool)

(assert (=> d!814282 (=> (not res!1168250) (not e!1772243))))

(declare-fun semiInverseModEq!2010 (Int Int) Bool)

(assert (=> d!814282 (= res!1168250 (semiInverseModEq!2010 (toChars!6725 (transformation!4868 (rule!7296 separatorToken!283))) (toValue!6866 (transformation!4868 (rule!7296 separatorToken!283)))))))

(assert (=> d!814282 (= (inv!44302 (transformation!4868 (rule!7296 separatorToken!283))) e!1772243)))

(declare-fun b!2803989 () Bool)

(declare-fun equivClasses!1911 (Int Int) Bool)

(assert (=> b!2803989 (= e!1772243 (equivClasses!1911 (toChars!6725 (transformation!4868 (rule!7296 separatorToken!283))) (toValue!6866 (transformation!4868 (rule!7296 separatorToken!283)))))))

(assert (= (and d!814282 res!1168250) b!2803989))

(declare-fun m!3233665 () Bool)

(assert (=> d!814282 m!3233665))

(declare-fun m!3233667 () Bool)

(assert (=> b!2803989 m!3233667))

(assert (=> b!2803883 d!814282))

(declare-fun d!814284 () Bool)

(assert (=> d!814284 (= (inv!44298 (tag!5372 (h!38042 rules!2540))) (= (mod (str.len (value!156648 (tag!5372 (h!38042 rules!2540)))) 2) 0))))

(assert (=> b!2803884 d!814284))

(declare-fun d!814286 () Bool)

(declare-fun res!1168251 () Bool)

(declare-fun e!1772244 () Bool)

(assert (=> d!814286 (=> (not res!1168251) (not e!1772244))))

(assert (=> d!814286 (= res!1168251 (semiInverseModEq!2010 (toChars!6725 (transformation!4868 (h!38042 rules!2540))) (toValue!6866 (transformation!4868 (h!38042 rules!2540)))))))

(assert (=> d!814286 (= (inv!44302 (transformation!4868 (h!38042 rules!2540))) e!1772244)))

(declare-fun b!2803990 () Bool)

(assert (=> b!2803990 (= e!1772244 (equivClasses!1911 (toChars!6725 (transformation!4868 (h!38042 rules!2540))) (toValue!6866 (transformation!4868 (h!38042 rules!2540)))))))

(assert (= (and d!814286 res!1168251) b!2803990))

(declare-fun m!3233669 () Bool)

(assert (=> d!814286 m!3233669))

(declare-fun m!3233671 () Bool)

(assert (=> b!2803990 m!3233671))

(assert (=> b!2803884 d!814286))

(declare-fun d!814288 () Bool)

(declare-fun lt!1002834 () Bool)

(declare-fun e!1772249 () Bool)

(assert (=> d!814288 (= lt!1002834 e!1772249)))

(declare-fun res!1168259 () Bool)

(assert (=> d!814288 (=> (not res!1168259) (not e!1772249))))

(declare-datatypes ((IArray!20199 0))(
  ( (IArray!20200 (innerList!10157 List!32723)) )
))
(declare-datatypes ((Conc!10097 0))(
  ( (Node!10097 (left!24622 Conc!10097) (right!24952 Conc!10097) (csize!20424 Int) (cheight!10308 Int)) (Leaf!15385 (xs!13209 IArray!20199) (csize!20425 Int)) (Empty!10097) )
))
(declare-datatypes ((BalanceConc!19808 0))(
  ( (BalanceConc!19809 (c!454552 Conc!10097)) )
))
(declare-fun list!12233 (BalanceConc!19808) List!32723)

(declare-datatypes ((tuple2!33294 0))(
  ( (tuple2!33295 (_1!19740 BalanceConc!19808) (_2!19740 BalanceConc!19804)) )
))
(declare-fun lex!1967 (LexerInterface!4459 List!32722 BalanceConc!19804) tuple2!33294)

(declare-fun print!1686 (LexerInterface!4459 BalanceConc!19808) BalanceConc!19804)

(declare-fun singletonSeq!2107 (Token!9138) BalanceConc!19808)

(assert (=> d!814288 (= res!1168259 (= (list!12233 (_1!19740 (lex!1967 thiss!19710 rules!2540 (print!1686 thiss!19710 (singletonSeq!2107 separatorToken!283))))) (list!12233 (singletonSeq!2107 separatorToken!283))))))

(declare-fun e!1772250 () Bool)

(assert (=> d!814288 (= lt!1002834 e!1772250)))

(declare-fun res!1168260 () Bool)

(assert (=> d!814288 (=> (not res!1168260) (not e!1772250))))

(declare-fun lt!1002835 () tuple2!33294)

(declare-fun size!25482 (BalanceConc!19808) Int)

(assert (=> d!814288 (= res!1168260 (= (size!25482 (_1!19740 lt!1002835)) 1))))

(assert (=> d!814288 (= lt!1002835 (lex!1967 thiss!19710 rules!2540 (print!1686 thiss!19710 (singletonSeq!2107 separatorToken!283))))))

(assert (=> d!814288 (not (isEmpty!18146 rules!2540))))

(assert (=> d!814288 (= (rulesProduceIndividualToken!2023 thiss!19710 rules!2540 separatorToken!283) lt!1002834)))

(declare-fun b!2803997 () Bool)

(declare-fun res!1168258 () Bool)

(assert (=> b!2803997 (=> (not res!1168258) (not e!1772250))))

(declare-fun apply!7634 (BalanceConc!19808 Int) Token!9138)

(assert (=> b!2803997 (= res!1168258 (= (apply!7634 (_1!19740 lt!1002835) 0) separatorToken!283))))

(declare-fun b!2803998 () Bool)

(declare-fun isEmpty!18148 (BalanceConc!19804) Bool)

(assert (=> b!2803998 (= e!1772250 (isEmpty!18148 (_2!19740 lt!1002835)))))

(declare-fun b!2803999 () Bool)

(assert (=> b!2803999 (= e!1772249 (isEmpty!18148 (_2!19740 (lex!1967 thiss!19710 rules!2540 (print!1686 thiss!19710 (singletonSeq!2107 separatorToken!283))))))))

(assert (= (and d!814288 res!1168260) b!2803997))

(assert (= (and b!2803997 res!1168258) b!2803998))

(assert (= (and d!814288 res!1168259) b!2803999))

(declare-fun m!3233673 () Bool)

(assert (=> d!814288 m!3233673))

(declare-fun m!3233675 () Bool)

(assert (=> d!814288 m!3233675))

(declare-fun m!3233677 () Bool)

(assert (=> d!814288 m!3233677))

(declare-fun m!3233679 () Bool)

(assert (=> d!814288 m!3233679))

(declare-fun m!3233681 () Bool)

(assert (=> d!814288 m!3233681))

(assert (=> d!814288 m!3233673))

(assert (=> d!814288 m!3233677))

(assert (=> d!814288 m!3233595))

(declare-fun m!3233683 () Bool)

(assert (=> d!814288 m!3233683))

(assert (=> d!814288 m!3233673))

(declare-fun m!3233685 () Bool)

(assert (=> b!2803997 m!3233685))

(declare-fun m!3233687 () Bool)

(assert (=> b!2803998 m!3233687))

(assert (=> b!2803999 m!3233673))

(assert (=> b!2803999 m!3233673))

(assert (=> b!2803999 m!3233677))

(assert (=> b!2803999 m!3233677))

(assert (=> b!2803999 m!3233679))

(declare-fun m!3233689 () Bool)

(assert (=> b!2803999 m!3233689))

(assert (=> b!2803873 d!814288))

(declare-fun d!814290 () Bool)

(declare-fun c!454549 () Bool)

(assert (=> d!814290 (= c!454549 (is-IntegerValue!15270 (value!156649 (h!38043 l!5055))))))

(declare-fun e!1772262 () Bool)

(assert (=> d!814290 (= (inv!21 (value!156649 (h!38043 l!5055))) e!1772262)))

(declare-fun b!2804014 () Bool)

(declare-fun e!1772263 () Bool)

(declare-fun inv!17 (TokenValue!5090) Bool)

(assert (=> b!2804014 (= e!1772263 (inv!17 (value!156649 (h!38043 l!5055))))))

(declare-fun b!2804015 () Bool)

(assert (=> b!2804015 (= e!1772262 e!1772263)))

(declare-fun c!454548 () Bool)

(assert (=> b!2804015 (= c!454548 (is-IntegerValue!15271 (value!156649 (h!38043 l!5055))))))

(declare-fun b!2804016 () Bool)

(declare-fun inv!16 (TokenValue!5090) Bool)

(assert (=> b!2804016 (= e!1772262 (inv!16 (value!156649 (h!38043 l!5055))))))

(declare-fun b!2804017 () Bool)

(declare-fun e!1772261 () Bool)

(declare-fun inv!15 (TokenValue!5090) Bool)

(assert (=> b!2804017 (= e!1772261 (inv!15 (value!156649 (h!38043 l!5055))))))

(declare-fun b!2804018 () Bool)

(declare-fun res!1168267 () Bool)

(assert (=> b!2804018 (=> res!1168267 e!1772261)))

(assert (=> b!2804018 (= res!1168267 (not (is-IntegerValue!15272 (value!156649 (h!38043 l!5055)))))))

(assert (=> b!2804018 (= e!1772263 e!1772261)))

(assert (= (and d!814290 c!454549) b!2804016))

(assert (= (and d!814290 (not c!454549)) b!2804015))

(assert (= (and b!2804015 c!454548) b!2804014))

(assert (= (and b!2804015 (not c!454548)) b!2804018))

(assert (= (and b!2804018 (not res!1168267)) b!2804017))

(declare-fun m!3233691 () Bool)

(assert (=> b!2804014 m!3233691))

(declare-fun m!3233693 () Bool)

(assert (=> b!2804016 m!3233693))

(declare-fun m!3233695 () Bool)

(assert (=> b!2804017 m!3233695))

(assert (=> b!2803874 d!814290))

(declare-fun d!814292 () Bool)

(declare-fun res!1168272 () Bool)

(declare-fun e!1772266 () Bool)

(assert (=> d!814292 (=> (not res!1168272) (not e!1772266))))

(declare-fun isEmpty!18149 (List!32721) Bool)

(assert (=> d!814292 (= res!1168272 (not (isEmpty!18149 (originalCharacters!5600 separatorToken!283))))))

(assert (=> d!814292 (= (inv!44301 separatorToken!283) e!1772266)))

(declare-fun b!2804023 () Bool)

(declare-fun res!1168273 () Bool)

(assert (=> b!2804023 (=> (not res!1168273) (not e!1772266))))

(declare-fun list!12234 (BalanceConc!19804) List!32721)

(declare-fun dynLambda!13633 (Int TokenValue!5090) BalanceConc!19804)

(assert (=> b!2804023 (= res!1168273 (= (originalCharacters!5600 separatorToken!283) (list!12234 (dynLambda!13633 (toChars!6725 (transformation!4868 (rule!7296 separatorToken!283))) (value!156649 separatorToken!283)))))))

(declare-fun b!2804024 () Bool)

(declare-fun size!25483 (List!32721) Int)

(assert (=> b!2804024 (= e!1772266 (= (size!25480 separatorToken!283) (size!25483 (originalCharacters!5600 separatorToken!283))))))

(assert (= (and d!814292 res!1168272) b!2804023))

(assert (= (and b!2804023 res!1168273) b!2804024))

(declare-fun b_lambda!83755 () Bool)

(assert (=> (not b_lambda!83755) (not b!2804023)))

(declare-fun t!228908 () Bool)

(declare-fun tb!152981 () Bool)

(assert (=> (and b!2803880 (= (toChars!6725 (transformation!4868 (rule!7296 separatorToken!283))) (toChars!6725 (transformation!4868 (rule!7296 separatorToken!283)))) t!228908) tb!152981))

(declare-fun b!2804031 () Bool)

(declare-fun e!1772271 () Bool)

(declare-fun tp!894137 () Bool)

(declare-fun inv!44305 (Conc!10095) Bool)

(assert (=> b!2804031 (= e!1772271 (and (inv!44305 (c!454534 (dynLambda!13633 (toChars!6725 (transformation!4868 (rule!7296 separatorToken!283))) (value!156649 separatorToken!283)))) tp!894137))))

(declare-fun result!190076 () Bool)

(declare-fun inv!44306 (BalanceConc!19804) Bool)

(assert (=> tb!152981 (= result!190076 (and (inv!44306 (dynLambda!13633 (toChars!6725 (transformation!4868 (rule!7296 separatorToken!283))) (value!156649 separatorToken!283))) e!1772271))))

(assert (= tb!152981 b!2804031))

(declare-fun m!3233697 () Bool)

(assert (=> b!2804031 m!3233697))

(declare-fun m!3233699 () Bool)

(assert (=> tb!152981 m!3233699))

(assert (=> b!2804023 t!228908))

(declare-fun b_and!204319 () Bool)

(assert (= b_and!204297 (and (=> t!228908 result!190076) b_and!204319)))

(declare-fun t!228910 () Bool)

(declare-fun tb!152983 () Bool)

(assert (=> (and b!2803879 (= (toChars!6725 (transformation!4868 (rule!7296 (h!38043 l!5055)))) (toChars!6725 (transformation!4868 (rule!7296 separatorToken!283)))) t!228910) tb!152983))

(declare-fun result!190080 () Bool)

(assert (= result!190080 result!190076))

(assert (=> b!2804023 t!228910))

(declare-fun b_and!204321 () Bool)

(assert (= b_and!204301 (and (=> t!228910 result!190080) b_and!204321)))

(declare-fun tb!152985 () Bool)

(declare-fun t!228912 () Bool)

(assert (=> (and b!2803875 (= (toChars!6725 (transformation!4868 (h!38042 rules!2540))) (toChars!6725 (transformation!4868 (rule!7296 separatorToken!283)))) t!228912) tb!152985))

(declare-fun result!190082 () Bool)

(assert (= result!190082 result!190076))

(assert (=> b!2804023 t!228912))

(declare-fun b_and!204323 () Bool)

(assert (= b_and!204305 (and (=> t!228912 result!190082) b_and!204323)))

(declare-fun m!3233701 () Bool)

(assert (=> d!814292 m!3233701))

(declare-fun m!3233703 () Bool)

(assert (=> b!2804023 m!3233703))

(assert (=> b!2804023 m!3233703))

(declare-fun m!3233705 () Bool)

(assert (=> b!2804023 m!3233705))

(declare-fun m!3233707 () Bool)

(assert (=> b!2804024 m!3233707))

(assert (=> start!271210 d!814292))

(declare-fun d!814294 () Bool)

(assert (=> d!814294 (= (inv!44298 (tag!5372 (rule!7296 (h!38043 l!5055)))) (= (mod (str.len (value!156648 (tag!5372 (rule!7296 (h!38043 l!5055))))) 2) 0))))

(assert (=> b!2803877 d!814294))

(declare-fun d!814296 () Bool)

(declare-fun res!1168276 () Bool)

(declare-fun e!1772275 () Bool)

(assert (=> d!814296 (=> (not res!1168276) (not e!1772275))))

(assert (=> d!814296 (= res!1168276 (semiInverseModEq!2010 (toChars!6725 (transformation!4868 (rule!7296 (h!38043 l!5055)))) (toValue!6866 (transformation!4868 (rule!7296 (h!38043 l!5055))))))))

(assert (=> d!814296 (= (inv!44302 (transformation!4868 (rule!7296 (h!38043 l!5055)))) e!1772275)))

(declare-fun b!2804035 () Bool)

(assert (=> b!2804035 (= e!1772275 (equivClasses!1911 (toChars!6725 (transformation!4868 (rule!7296 (h!38043 l!5055)))) (toValue!6866 (transformation!4868 (rule!7296 (h!38043 l!5055))))))))

(assert (= (and d!814296 res!1168276) b!2804035))

(declare-fun m!3233709 () Bool)

(assert (=> d!814296 m!3233709))

(declare-fun m!3233711 () Bool)

(assert (=> b!2804035 m!3233711))

(assert (=> b!2803877 d!814296))

(declare-fun d!814298 () Bool)

(declare-fun c!454551 () Bool)

(assert (=> d!814298 (= c!454551 (is-IntegerValue!15270 (value!156649 separatorToken!283)))))

(declare-fun e!1772277 () Bool)

(assert (=> d!814298 (= (inv!21 (value!156649 separatorToken!283)) e!1772277)))

(declare-fun b!2804036 () Bool)

(declare-fun e!1772278 () Bool)

(assert (=> b!2804036 (= e!1772278 (inv!17 (value!156649 separatorToken!283)))))

(declare-fun b!2804037 () Bool)

(assert (=> b!2804037 (= e!1772277 e!1772278)))

(declare-fun c!454550 () Bool)

(assert (=> b!2804037 (= c!454550 (is-IntegerValue!15271 (value!156649 separatorToken!283)))))

(declare-fun b!2804038 () Bool)

(assert (=> b!2804038 (= e!1772277 (inv!16 (value!156649 separatorToken!283)))))

(declare-fun b!2804039 () Bool)

(declare-fun e!1772276 () Bool)

(assert (=> b!2804039 (= e!1772276 (inv!15 (value!156649 separatorToken!283)))))

(declare-fun b!2804040 () Bool)

(declare-fun res!1168277 () Bool)

(assert (=> b!2804040 (=> res!1168277 e!1772276)))

(assert (=> b!2804040 (= res!1168277 (not (is-IntegerValue!15272 (value!156649 separatorToken!283))))))

(assert (=> b!2804040 (= e!1772278 e!1772276)))

(assert (= (and d!814298 c!454551) b!2804038))

(assert (= (and d!814298 (not c!454551)) b!2804037))

(assert (= (and b!2804037 c!454550) b!2804036))

(assert (= (and b!2804037 (not c!454550)) b!2804040))

(assert (= (and b!2804040 (not res!1168277)) b!2804039))

(declare-fun m!3233713 () Bool)

(assert (=> b!2804036 m!3233713))

(declare-fun m!3233715 () Bool)

(assert (=> b!2804038 m!3233715))

(declare-fun m!3233717 () Bool)

(assert (=> b!2804039 m!3233717))

(assert (=> b!2803878 d!814298))

(declare-fun d!814300 () Bool)

(declare-fun lt!1002841 () Bool)

(declare-fun content!4550 (List!32723) (Set Token!9138))

(assert (=> d!814300 (= lt!1002841 (set.member (h!38043 l!5055) (content!4550 l!5055)))))

(declare-fun e!1772283 () Bool)

(assert (=> d!814300 (= lt!1002841 e!1772283)))

(declare-fun res!1168283 () Bool)

(assert (=> d!814300 (=> (not res!1168283) (not e!1772283))))

(assert (=> d!814300 (= res!1168283 (is-Cons!32623 l!5055))))

(assert (=> d!814300 (= (contains!6024 l!5055 (h!38043 l!5055)) lt!1002841)))

(declare-fun b!2804045 () Bool)

(declare-fun e!1772284 () Bool)

(assert (=> b!2804045 (= e!1772283 e!1772284)))

(declare-fun res!1168282 () Bool)

(assert (=> b!2804045 (=> res!1168282 e!1772284)))

(assert (=> b!2804045 (= res!1168282 (= (h!38043 l!5055) (h!38043 l!5055)))))

(declare-fun b!2804046 () Bool)

(assert (=> b!2804046 (= e!1772284 (contains!6024 (t!228895 l!5055) (h!38043 l!5055)))))

(assert (= (and d!814300 res!1168283) b!2804045))

(assert (= (and b!2804045 (not res!1168282)) b!2804046))

(declare-fun m!3233725 () Bool)

(assert (=> d!814300 m!3233725))

(declare-fun m!3233727 () Bool)

(assert (=> d!814300 m!3233727))

(declare-fun m!3233729 () Bool)

(assert (=> b!2804046 m!3233729))

(assert (=> b!2803869 d!814300))

(declare-fun d!814304 () Bool)

(declare-fun res!1168284 () Bool)

(declare-fun e!1772285 () Bool)

(assert (=> d!814304 (=> (not res!1168284) (not e!1772285))))

(assert (=> d!814304 (= res!1168284 (not (isEmpty!18149 (originalCharacters!5600 (h!38043 l!5055)))))))

(assert (=> d!814304 (= (inv!44301 (h!38043 l!5055)) e!1772285)))

(declare-fun b!2804047 () Bool)

(declare-fun res!1168285 () Bool)

(assert (=> b!2804047 (=> (not res!1168285) (not e!1772285))))

(assert (=> b!2804047 (= res!1168285 (= (originalCharacters!5600 (h!38043 l!5055)) (list!12234 (dynLambda!13633 (toChars!6725 (transformation!4868 (rule!7296 (h!38043 l!5055)))) (value!156649 (h!38043 l!5055))))))))

(declare-fun b!2804048 () Bool)

(assert (=> b!2804048 (= e!1772285 (= (size!25480 (h!38043 l!5055)) (size!25483 (originalCharacters!5600 (h!38043 l!5055)))))))

(assert (= (and d!814304 res!1168284) b!2804047))

(assert (= (and b!2804047 res!1168285) b!2804048))

(declare-fun b_lambda!83757 () Bool)

(assert (=> (not b_lambda!83757) (not b!2804047)))

(declare-fun t!228914 () Bool)

(declare-fun tb!152987 () Bool)

(assert (=> (and b!2803880 (= (toChars!6725 (transformation!4868 (rule!7296 separatorToken!283))) (toChars!6725 (transformation!4868 (rule!7296 (h!38043 l!5055))))) t!228914) tb!152987))

(declare-fun b!2804049 () Bool)

(declare-fun e!1772286 () Bool)

(declare-fun tp!894138 () Bool)

(assert (=> b!2804049 (= e!1772286 (and (inv!44305 (c!454534 (dynLambda!13633 (toChars!6725 (transformation!4868 (rule!7296 (h!38043 l!5055)))) (value!156649 (h!38043 l!5055))))) tp!894138))))

(declare-fun result!190084 () Bool)

(assert (=> tb!152987 (= result!190084 (and (inv!44306 (dynLambda!13633 (toChars!6725 (transformation!4868 (rule!7296 (h!38043 l!5055)))) (value!156649 (h!38043 l!5055)))) e!1772286))))

(assert (= tb!152987 b!2804049))

(declare-fun m!3233731 () Bool)

(assert (=> b!2804049 m!3233731))

(declare-fun m!3233733 () Bool)

(assert (=> tb!152987 m!3233733))

(assert (=> b!2804047 t!228914))

(declare-fun b_and!204325 () Bool)

(assert (= b_and!204319 (and (=> t!228914 result!190084) b_and!204325)))

(declare-fun t!228916 () Bool)

(declare-fun tb!152989 () Bool)

(assert (=> (and b!2803879 (= (toChars!6725 (transformation!4868 (rule!7296 (h!38043 l!5055)))) (toChars!6725 (transformation!4868 (rule!7296 (h!38043 l!5055))))) t!228916) tb!152989))

(declare-fun result!190086 () Bool)

(assert (= result!190086 result!190084))

(assert (=> b!2804047 t!228916))

(declare-fun b_and!204327 () Bool)

(assert (= b_and!204321 (and (=> t!228916 result!190086) b_and!204327)))

(declare-fun t!228918 () Bool)

(declare-fun tb!152991 () Bool)

(assert (=> (and b!2803875 (= (toChars!6725 (transformation!4868 (h!38042 rules!2540))) (toChars!6725 (transformation!4868 (rule!7296 (h!38043 l!5055))))) t!228918) tb!152991))

(declare-fun result!190088 () Bool)

(assert (= result!190088 result!190084))

(assert (=> b!2804047 t!228918))

(declare-fun b_and!204329 () Bool)

(assert (= b_and!204323 (and (=> t!228918 result!190088) b_and!204329)))

(declare-fun m!3233735 () Bool)

(assert (=> d!814304 m!3233735))

(declare-fun m!3233737 () Bool)

(assert (=> b!2804047 m!3233737))

(assert (=> b!2804047 m!3233737))

(declare-fun m!3233739 () Bool)

(assert (=> b!2804047 m!3233739))

(declare-fun m!3233741 () Bool)

(assert (=> b!2804048 m!3233741))

(assert (=> b!2803870 d!814304))

(declare-fun d!814306 () Bool)

(assert (=> d!814306 (= (isEmpty!18146 rules!2540) (is-Nil!32622 rules!2540))))

(assert (=> b!2803881 d!814306))

(declare-fun d!814308 () Bool)

(declare-fun res!1168290 () Bool)

(declare-fun e!1772291 () Bool)

(assert (=> d!814308 (=> res!1168290 e!1772291)))

(assert (=> d!814308 (= res!1168290 (is-Nil!32623 l!5055))))

(assert (=> d!814308 (= (forall!6721 l!5055 lambda!103012) e!1772291)))

(declare-fun b!2804054 () Bool)

(declare-fun e!1772292 () Bool)

(assert (=> b!2804054 (= e!1772291 e!1772292)))

(declare-fun res!1168291 () Bool)

(assert (=> b!2804054 (=> (not res!1168291) (not e!1772292))))

(declare-fun dynLambda!13634 (Int Token!9138) Bool)

(assert (=> b!2804054 (= res!1168291 (dynLambda!13634 lambda!103012 (h!38043 l!5055)))))

(declare-fun b!2804055 () Bool)

(assert (=> b!2804055 (= e!1772292 (forall!6721 (t!228895 l!5055) lambda!103012))))

(assert (= (and d!814308 (not res!1168290)) b!2804054))

(assert (= (and b!2804054 res!1168291) b!2804055))

(declare-fun b_lambda!83759 () Bool)

(assert (=> (not b_lambda!83759) (not b!2804054)))

(declare-fun m!3233743 () Bool)

(assert (=> b!2804054 m!3233743))

(declare-fun m!3233745 () Bool)

(assert (=> b!2804055 m!3233745))

(assert (=> b!2803882 d!814308))

(declare-fun d!814310 () Bool)

(declare-fun res!1168294 () Bool)

(declare-fun e!1772295 () Bool)

(assert (=> d!814310 (=> (not res!1168294) (not e!1772295))))

(declare-fun rulesValid!1799 (LexerInterface!4459 List!32722) Bool)

(assert (=> d!814310 (= res!1168294 (rulesValid!1799 thiss!19710 rules!2540))))

(assert (=> d!814310 (= (rulesInvariant!3899 thiss!19710 rules!2540) e!1772295)))

(declare-fun b!2804058 () Bool)

(declare-datatypes ((List!32728 0))(
  ( (Nil!32628) (Cons!32628 (h!38048 String!35788) (t!228932 List!32728)) )
))
(declare-fun noDuplicateTag!1795 (LexerInterface!4459 List!32722 List!32728) Bool)

(assert (=> b!2804058 (= e!1772295 (noDuplicateTag!1795 thiss!19710 rules!2540 Nil!32628))))

(assert (= (and d!814310 res!1168294) b!2804058))

(declare-fun m!3233747 () Bool)

(assert (=> d!814310 m!3233747))

(declare-fun m!3233749 () Bool)

(assert (=> b!2804058 m!3233749))

(assert (=> b!2803871 d!814310))

(declare-fun b!2804070 () Bool)

(declare-fun e!1772298 () Bool)

(declare-fun tp!894153 () Bool)

(declare-fun tp!894149 () Bool)

(assert (=> b!2804070 (= e!1772298 (and tp!894153 tp!894149))))

(assert (=> b!2803877 (= tp!894086 e!1772298)))

(declare-fun b!2804069 () Bool)

(declare-fun tp_is_empty!14285 () Bool)

(assert (=> b!2804069 (= e!1772298 tp_is_empty!14285)))

(declare-fun b!2804072 () Bool)

(declare-fun tp!894151 () Bool)

(declare-fun tp!894152 () Bool)

(assert (=> b!2804072 (= e!1772298 (and tp!894151 tp!894152))))

(declare-fun b!2804071 () Bool)

(declare-fun tp!894150 () Bool)

(assert (=> b!2804071 (= e!1772298 tp!894150)))

(assert (= (and b!2803877 (is-ElementMatch!8238 (regex!4868 (rule!7296 (h!38043 l!5055))))) b!2804069))

(assert (= (and b!2803877 (is-Concat!13329 (regex!4868 (rule!7296 (h!38043 l!5055))))) b!2804070))

(assert (= (and b!2803877 (is-Star!8238 (regex!4868 (rule!7296 (h!38043 l!5055))))) b!2804071))

(assert (= (and b!2803877 (is-Union!8238 (regex!4868 (rule!7296 (h!38043 l!5055))))) b!2804072))

(declare-fun b!2804077 () Bool)

(declare-fun e!1772301 () Bool)

(declare-fun tp!894156 () Bool)

(assert (=> b!2804077 (= e!1772301 (and tp_is_empty!14285 tp!894156))))

(assert (=> b!2803878 (= tp!894091 e!1772301)))

(assert (= (and b!2803878 (is-Cons!32621 (originalCharacters!5600 separatorToken!283))) b!2804077))

(declare-fun b!2804079 () Bool)

(declare-fun e!1772302 () Bool)

(declare-fun tp!894161 () Bool)

(declare-fun tp!894157 () Bool)

(assert (=> b!2804079 (= e!1772302 (and tp!894161 tp!894157))))

(assert (=> b!2803883 (= tp!894083 e!1772302)))

(declare-fun b!2804078 () Bool)

(assert (=> b!2804078 (= e!1772302 tp_is_empty!14285)))

(declare-fun b!2804081 () Bool)

(declare-fun tp!894159 () Bool)

(declare-fun tp!894160 () Bool)

(assert (=> b!2804081 (= e!1772302 (and tp!894159 tp!894160))))

(declare-fun b!2804080 () Bool)

(declare-fun tp!894158 () Bool)

(assert (=> b!2804080 (= e!1772302 tp!894158)))

(assert (= (and b!2803883 (is-ElementMatch!8238 (regex!4868 (rule!7296 separatorToken!283)))) b!2804078))

(assert (= (and b!2803883 (is-Concat!13329 (regex!4868 (rule!7296 separatorToken!283)))) b!2804079))

(assert (= (and b!2803883 (is-Star!8238 (regex!4868 (rule!7296 separatorToken!283)))) b!2804080))

(assert (= (and b!2803883 (is-Union!8238 (regex!4868 (rule!7296 separatorToken!283)))) b!2804081))

(declare-fun b!2804083 () Bool)

(declare-fun e!1772303 () Bool)

(declare-fun tp!894166 () Bool)

(declare-fun tp!894162 () Bool)

(assert (=> b!2804083 (= e!1772303 (and tp!894166 tp!894162))))

(assert (=> b!2803884 (= tp!894087 e!1772303)))

(declare-fun b!2804082 () Bool)

(assert (=> b!2804082 (= e!1772303 tp_is_empty!14285)))

(declare-fun b!2804085 () Bool)

(declare-fun tp!894164 () Bool)

(declare-fun tp!894165 () Bool)

(assert (=> b!2804085 (= e!1772303 (and tp!894164 tp!894165))))

(declare-fun b!2804084 () Bool)

(declare-fun tp!894163 () Bool)

(assert (=> b!2804084 (= e!1772303 tp!894163)))

(assert (= (and b!2803884 (is-ElementMatch!8238 (regex!4868 (h!38042 rules!2540)))) b!2804082))

(assert (= (and b!2803884 (is-Concat!13329 (regex!4868 (h!38042 rules!2540)))) b!2804083))

(assert (= (and b!2803884 (is-Star!8238 (regex!4868 (h!38042 rules!2540)))) b!2804084))

(assert (= (and b!2803884 (is-Union!8238 (regex!4868 (h!38042 rules!2540)))) b!2804085))

(declare-fun b!2804086 () Bool)

(declare-fun e!1772304 () Bool)

(declare-fun tp!894167 () Bool)

(assert (=> b!2804086 (= e!1772304 (and tp_is_empty!14285 tp!894167))))

(assert (=> b!2803874 (= tp!894092 e!1772304)))

(assert (= (and b!2803874 (is-Cons!32621 (originalCharacters!5600 (h!38043 l!5055)))) b!2804086))

(declare-fun b!2804089 () Bool)

(declare-fun e!1772307 () Bool)

(assert (=> b!2804089 (= e!1772307 true)))

(declare-fun b!2804088 () Bool)

(declare-fun e!1772306 () Bool)

(assert (=> b!2804088 (= e!1772306 e!1772307)))

(declare-fun b!2804087 () Bool)

(declare-fun e!1772305 () Bool)

(assert (=> b!2804087 (= e!1772305 e!1772306)))

(assert (=> b!2803894 e!1772305))

(assert (= b!2804088 b!2804089))

(assert (= b!2804087 b!2804088))

(assert (= (and b!2803894 (is-Cons!32622 (t!228894 rules!2540))) b!2804087))

(assert (=> b!2804089 (< (dynLambda!13627 order!17253 (toValue!6866 (transformation!4868 (h!38042 (t!228894 rules!2540))))) (dynLambda!13628 order!17255 lambda!103012))))

(assert (=> b!2804089 (< (dynLambda!13629 order!17257 (toChars!6725 (transformation!4868 (h!38042 (t!228894 rules!2540))))) (dynLambda!13628 order!17255 lambda!103012))))

(declare-fun b!2804100 () Bool)

(declare-fun b_free!79581 () Bool)

(declare-fun b_next!80285 () Bool)

(assert (=> b!2804100 (= b_free!79581 (not b_next!80285))))

(declare-fun tp!894177 () Bool)

(declare-fun b_and!204331 () Bool)

(assert (=> b!2804100 (= tp!894177 b_and!204331)))

(declare-fun b_free!79583 () Bool)

(declare-fun b_next!80287 () Bool)

(assert (=> b!2804100 (= b_free!79583 (not b_next!80287))))

(declare-fun t!228920 () Bool)

(declare-fun tb!152993 () Bool)

(assert (=> (and b!2804100 (= (toChars!6725 (transformation!4868 (h!38042 (t!228894 rules!2540)))) (toChars!6725 (transformation!4868 (rule!7296 separatorToken!283)))) t!228920) tb!152993))

(declare-fun result!190096 () Bool)

(assert (= result!190096 result!190076))

(assert (=> b!2804023 t!228920))

(declare-fun tb!152995 () Bool)

(declare-fun t!228922 () Bool)

(assert (=> (and b!2804100 (= (toChars!6725 (transformation!4868 (h!38042 (t!228894 rules!2540)))) (toChars!6725 (transformation!4868 (rule!7296 (h!38043 l!5055))))) t!228922) tb!152995))

(declare-fun result!190098 () Bool)

(assert (= result!190098 result!190084))

(assert (=> b!2804047 t!228922))

(declare-fun tp!894176 () Bool)

(declare-fun b_and!204333 () Bool)

(assert (=> b!2804100 (= tp!894176 (and (=> t!228920 result!190096) (=> t!228922 result!190098) b_and!204333))))

(declare-fun e!1772319 () Bool)

(assert (=> b!2804100 (= e!1772319 (and tp!894177 tp!894176))))

(declare-fun b!2804099 () Bool)

(declare-fun e!1772317 () Bool)

(declare-fun tp!894179 () Bool)

(assert (=> b!2804099 (= e!1772317 (and tp!894179 (inv!44298 (tag!5372 (h!38042 (t!228894 rules!2540)))) (inv!44302 (transformation!4868 (h!38042 (t!228894 rules!2540)))) e!1772319))))

(declare-fun b!2804098 () Bool)

(declare-fun e!1772316 () Bool)

(declare-fun tp!894178 () Bool)

(assert (=> b!2804098 (= e!1772316 (and e!1772317 tp!894178))))

(assert (=> b!2803885 (= tp!894094 e!1772316)))

(assert (= b!2804099 b!2804100))

(assert (= b!2804098 b!2804099))

(assert (= (and b!2803885 (is-Cons!32622 (t!228894 rules!2540))) b!2804098))

(declare-fun m!3233751 () Bool)

(assert (=> b!2804099 m!3233751))

(declare-fun m!3233753 () Bool)

(assert (=> b!2804099 m!3233753))

(declare-fun b!2804114 () Bool)

(declare-fun b_free!79585 () Bool)

(declare-fun b_next!80289 () Bool)

(assert (=> b!2804114 (= b_free!79585 (not b_next!80289))))

(declare-fun tp!894193 () Bool)

(declare-fun b_and!204335 () Bool)

(assert (=> b!2804114 (= tp!894193 b_and!204335)))

(declare-fun b_free!79587 () Bool)

(declare-fun b_next!80291 () Bool)

(assert (=> b!2804114 (= b_free!79587 (not b_next!80291))))

(declare-fun tb!152997 () Bool)

(declare-fun t!228924 () Bool)

(assert (=> (and b!2804114 (= (toChars!6725 (transformation!4868 (rule!7296 (h!38043 (t!228895 l!5055))))) (toChars!6725 (transformation!4868 (rule!7296 separatorToken!283)))) t!228924) tb!152997))

(declare-fun result!190102 () Bool)

(assert (= result!190102 result!190076))

(assert (=> b!2804023 t!228924))

(declare-fun t!228926 () Bool)

(declare-fun tb!152999 () Bool)

(assert (=> (and b!2804114 (= (toChars!6725 (transformation!4868 (rule!7296 (h!38043 (t!228895 l!5055))))) (toChars!6725 (transformation!4868 (rule!7296 (h!38043 l!5055))))) t!228926) tb!152999))

(declare-fun result!190104 () Bool)

(assert (= result!190104 result!190084))

(assert (=> b!2804047 t!228926))

(declare-fun b_and!204337 () Bool)

(declare-fun tp!894191 () Bool)

(assert (=> b!2804114 (= tp!894191 (and (=> t!228924 result!190102) (=> t!228926 result!190104) b_and!204337))))

(declare-fun tp!894194 () Bool)

(declare-fun e!1772333 () Bool)

(declare-fun e!1772336 () Bool)

(declare-fun b!2804111 () Bool)

(assert (=> b!2804111 (= e!1772336 (and (inv!44301 (h!38043 (t!228895 l!5055))) e!1772333 tp!894194))))

(declare-fun e!1772334 () Bool)

(assert (=> b!2804114 (= e!1772334 (and tp!894193 tp!894191))))

(assert (=> b!2803870 (= tp!894088 e!1772336)))

(declare-fun tp!894192 () Bool)

(declare-fun b!2804112 () Bool)

(declare-fun e!1772335 () Bool)

(assert (=> b!2804112 (= e!1772333 (and (inv!21 (value!156649 (h!38043 (t!228895 l!5055)))) e!1772335 tp!894192))))

(declare-fun b!2804113 () Bool)

(declare-fun tp!894190 () Bool)

(assert (=> b!2804113 (= e!1772335 (and tp!894190 (inv!44298 (tag!5372 (rule!7296 (h!38043 (t!228895 l!5055))))) (inv!44302 (transformation!4868 (rule!7296 (h!38043 (t!228895 l!5055))))) e!1772334))))

(assert (= b!2804113 b!2804114))

(assert (= b!2804112 b!2804113))

(assert (= b!2804111 b!2804112))

(assert (= (and b!2803870 (is-Cons!32623 (t!228895 l!5055))) b!2804111))

(declare-fun m!3233755 () Bool)

(assert (=> b!2804111 m!3233755))

(declare-fun m!3233757 () Bool)

(assert (=> b!2804112 m!3233757))

(declare-fun m!3233759 () Bool)

(assert (=> b!2804113 m!3233759))

(declare-fun m!3233761 () Bool)

(assert (=> b!2804113 m!3233761))

(declare-fun b_lambda!83761 () Bool)

(assert (= b_lambda!83757 (or (and b!2804100 b_free!79583 (= (toChars!6725 (transformation!4868 (h!38042 (t!228894 rules!2540)))) (toChars!6725 (transformation!4868 (rule!7296 (h!38043 l!5055)))))) (and b!2804114 b_free!79587 (= (toChars!6725 (transformation!4868 (rule!7296 (h!38043 (t!228895 l!5055))))) (toChars!6725 (transformation!4868 (rule!7296 (h!38043 l!5055)))))) (and b!2803879 b_free!79563) (and b!2803880 b_free!79559 (= (toChars!6725 (transformation!4868 (rule!7296 separatorToken!283))) (toChars!6725 (transformation!4868 (rule!7296 (h!38043 l!5055)))))) (and b!2803875 b_free!79567 (= (toChars!6725 (transformation!4868 (h!38042 rules!2540))) (toChars!6725 (transformation!4868 (rule!7296 (h!38043 l!5055)))))) b_lambda!83761)))

(declare-fun b_lambda!83763 () Bool)

(assert (= b_lambda!83759 (or b!2803882 b_lambda!83763)))

(declare-fun bs!516090 () Bool)

(declare-fun d!814312 () Bool)

(assert (= bs!516090 (and d!814312 b!2803882)))

(assert (=> bs!516090 (= (dynLambda!13634 lambda!103012 (h!38043 l!5055)) (rulesProduceIndividualToken!2023 thiss!19710 rules!2540 (h!38043 l!5055)))))

(assert (=> bs!516090 m!3233661))

(assert (=> b!2804054 d!814312))

(declare-fun b_lambda!83765 () Bool)

(assert (= b_lambda!83755 (or (and b!2804100 b_free!79583 (= (toChars!6725 (transformation!4868 (h!38042 (t!228894 rules!2540)))) (toChars!6725 (transformation!4868 (rule!7296 separatorToken!283))))) (and b!2804114 b_free!79587 (= (toChars!6725 (transformation!4868 (rule!7296 (h!38043 (t!228895 l!5055))))) (toChars!6725 (transformation!4868 (rule!7296 separatorToken!283))))) (and b!2803880 b_free!79559) (and b!2803875 b_free!79567 (= (toChars!6725 (transformation!4868 (h!38042 rules!2540))) (toChars!6725 (transformation!4868 (rule!7296 separatorToken!283))))) (and b!2803879 b_free!79563 (= (toChars!6725 (transformation!4868 (rule!7296 (h!38043 l!5055)))) (toChars!6725 (transformation!4868 (rule!7296 separatorToken!283))))) b_lambda!83765)))

(push 1)

(assert (not b!2804080))

(assert (not b!2803997))

(assert b_and!204299)

(assert (not b_next!80271))

(assert (not d!814286))

(assert (not b_next!80285))

(assert (not b!2804031))

(assert (not b!2804047))

(assert (not b_next!80269))

(assert (not bs!516090))

(assert (not d!814300))

(assert (not d!814288))

(assert (not b!2804016))

(assert (not b!2804046))

(assert b_and!204331)

(assert (not b_next!80291))

(assert (not b!2804048))

(assert (not b_next!80261))

(assert (not b_lambda!83763))

(assert (not b!2804035))

(assert (not tb!152987))

(assert tp_is_empty!14285)

(assert (not b!2803982))

(assert (not b!2804085))

(assert (not d!814310))

(assert (not b!2804058))

(assert (not d!814292))

(assert (not b_lambda!83761))

(assert (not b!2804079))

(assert (not b!2804023))

(assert (not b!2804111))

(assert (not b!2804113))

(assert (not b!2803990))

(assert b_and!204295)

(assert b_and!204337)

(assert (not b!2804086))

(assert b_and!204303)

(assert b_and!204335)

(assert b_and!204325)

(assert (not b!2803983))

(assert (not b!2804070))

(assert (not b!2804036))

(assert (not b!2804017))

(assert (not b!2804077))

(assert (not d!814304))

(assert (not b!2804072))

(assert (not b_next!80289))

(assert b_and!204327)

(assert (not tb!152981))

(assert b_and!204329)

(assert (not b_next!80265))

(assert (not b!2804112))

(assert (not b!2803999))

(assert (not b!2804024))

(assert (not d!814278))

(assert (not b!2804087))

(assert (not b_next!80263))

(assert (not b_next!80267))

(assert (not b!2804049))

(assert (not b_lambda!83765))

(assert (not b!2804098))

(assert (not b!2804081))

(assert (not b!2804055))

(assert (not b!2803989))

(assert (not b!2804083))

(assert (not d!814296))

(assert (not d!814282))

(assert (not b!2804014))

(assert (not b!2804039))

(assert (not b!2803984))

(assert b_and!204333)

(assert (not b!2804099))

(assert (not b!2803998))

(assert (not b!2804038))

(assert (not b_next!80287))

(assert (not b!2804071))

(assert (not b!2804084))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!80269))

(assert (not b_next!80261))

(assert b_and!204325)

(assert b_and!204299)

(assert b_and!204329)

(assert (not b_next!80265))

(assert (not b_next!80271))

(assert (not b_next!80285))

(assert b_and!204333)

(assert (not b_next!80287))

(assert b_and!204331)

(assert (not b_next!80291))

(assert b_and!204295)

(assert b_and!204337)

(assert b_and!204303)

(assert b_and!204335)

(assert (not b_next!80289))

(assert b_and!204327)

(assert (not b_next!80263))

(assert (not b_next!80267))

(check-sat)

(pop 1)

