; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!336058 () Bool)

(assert start!336058)

(declare-fun b!3610021 () Bool)

(declare-fun b_free!93705 () Bool)

(declare-fun b_next!94409 () Bool)

(assert (=> b!3610021 (= b_free!93705 (not b_next!94409))))

(declare-fun tp!1103574 () Bool)

(declare-fun b_and!263179 () Bool)

(assert (=> b!3610021 (= tp!1103574 b_and!263179)))

(declare-fun b_free!93707 () Bool)

(declare-fun b_next!94411 () Bool)

(assert (=> b!3610021 (= b_free!93707 (not b_next!94411))))

(declare-fun tp!1103567 () Bool)

(declare-fun b_and!263181 () Bool)

(assert (=> b!3610021 (= tp!1103567 b_and!263181)))

(declare-fun b!3609998 () Bool)

(declare-fun b_free!93709 () Bool)

(declare-fun b_next!94413 () Bool)

(assert (=> b!3609998 (= b_free!93709 (not b_next!94413))))

(declare-fun tp!1103576 () Bool)

(declare-fun b_and!263183 () Bool)

(assert (=> b!3609998 (= tp!1103576 b_and!263183)))

(declare-fun b_free!93711 () Bool)

(declare-fun b_next!94415 () Bool)

(assert (=> b!3609998 (= b_free!93711 (not b_next!94415))))

(declare-fun tp!1103570 () Bool)

(declare-fun b_and!263185 () Bool)

(assert (=> b!3609998 (= tp!1103570 b_and!263185)))

(declare-fun b!3610015 () Bool)

(declare-fun b_free!93713 () Bool)

(declare-fun b_next!94417 () Bool)

(assert (=> b!3610015 (= b_free!93713 (not b_next!94417))))

(declare-fun tp!1103578 () Bool)

(declare-fun b_and!263187 () Bool)

(assert (=> b!3610015 (= tp!1103578 b_and!263187)))

(declare-fun b_free!93715 () Bool)

(declare-fun b_next!94419 () Bool)

(assert (=> b!3610015 (= b_free!93715 (not b_next!94419))))

(declare-fun tp!1103568 () Bool)

(declare-fun b_and!263189 () Bool)

(assert (=> b!3610015 (= tp!1103568 b_and!263189)))

(declare-fun b!3610000 () Bool)

(declare-fun b_free!93717 () Bool)

(declare-fun b_next!94421 () Bool)

(assert (=> b!3610000 (= b_free!93717 (not b_next!94421))))

(declare-fun tp!1103569 () Bool)

(declare-fun b_and!263191 () Bool)

(assert (=> b!3610000 (= tp!1103569 b_and!263191)))

(declare-fun b_free!93719 () Bool)

(declare-fun b_next!94423 () Bool)

(assert (=> b!3610000 (= b_free!93719 (not b_next!94423))))

(declare-fun tp!1103564 () Bool)

(declare-fun b_and!263193 () Bool)

(assert (=> b!3610000 (= tp!1103564 b_and!263193)))

(declare-fun b!3609981 () Bool)

(declare-fun res!1460149 () Bool)

(declare-fun e!2234144 () Bool)

(assert (=> b!3609981 (=> (not res!1460149) (not e!2234144))))

(declare-datatypes ((List!38117 0))(
  ( (Nil!37993) (Cons!37993 (h!43413 (_ BitVec 16)) (t!293288 List!38117)) )
))
(declare-datatypes ((TokenValue!5866 0))(
  ( (FloatLiteralValue!11732 (text!41507 List!38117)) (TokenValueExt!5865 (__x!23949 Int)) (Broken!29330 (value!181060 List!38117)) (Object!5989) (End!5866) (Def!5866) (Underscore!5866) (Match!5866) (Else!5866) (Error!5866) (Case!5866) (If!5866) (Extends!5866) (Abstract!5866) (Class!5866) (Val!5866) (DelimiterValue!11732 (del!5926 List!38117)) (KeywordValue!5872 (value!181061 List!38117)) (CommentValue!11732 (value!181062 List!38117)) (WhitespaceValue!11732 (value!181063 List!38117)) (IndentationValue!5866 (value!181064 List!38117)) (String!42663) (Int32!5866) (Broken!29331 (value!181065 List!38117)) (Boolean!5867) (Unit!54165) (OperatorValue!5869 (op!5926 List!38117)) (IdentifierValue!11732 (value!181066 List!38117)) (IdentifierValue!11733 (value!181067 List!38117)) (WhitespaceValue!11733 (value!181068 List!38117)) (True!11732) (False!11732) (Broken!29332 (value!181069 List!38117)) (Broken!29333 (value!181070 List!38117)) (True!11733) (RightBrace!5866) (RightBracket!5866) (Colon!5866) (Null!5866) (Comma!5866) (LeftBracket!5866) (False!11733) (LeftBrace!5866) (ImaginaryLiteralValue!5866 (text!41508 List!38117)) (StringLiteralValue!17598 (value!181071 List!38117)) (EOFValue!5866 (value!181072 List!38117)) (IdentValue!5866 (value!181073 List!38117)) (DelimiterValue!11733 (value!181074 List!38117)) (DedentValue!5866 (value!181075 List!38117)) (NewLineValue!5866 (value!181076 List!38117)) (IntegerValue!17598 (value!181077 (_ BitVec 32)) (text!41509 List!38117)) (IntegerValue!17599 (value!181078 Int) (text!41510 List!38117)) (Times!5866) (Or!5866) (Equal!5866) (Minus!5866) (Broken!29334 (value!181079 List!38117)) (And!5866) (Div!5866) (LessEqual!5866) (Mod!5866) (Concat!16261) (Not!5866) (Plus!5866) (SpaceValue!5866 (value!181080 List!38117)) (IntegerValue!17600 (value!181081 Int) (text!41511 List!38117)) (StringLiteralValue!17599 (text!41512 List!38117)) (FloatLiteralValue!11733 (text!41513 List!38117)) (BytesLiteralValue!5866 (value!181082 List!38117)) (CommentValue!11733 (value!181083 List!38117)) (StringLiteralValue!17600 (value!181084 List!38117)) (ErrorTokenValue!5866 (msg!5927 List!38117)) )
))
(declare-datatypes ((C!20976 0))(
  ( (C!20977 (val!12536 Int)) )
))
(declare-datatypes ((Regex!10395 0))(
  ( (ElementMatch!10395 (c!624556 C!20976)) (Concat!16262 (regOne!21302 Regex!10395) (regTwo!21302 Regex!10395)) (EmptyExpr!10395) (Star!10395 (reg!10724 Regex!10395)) (EmptyLang!10395) (Union!10395 (regOne!21303 Regex!10395) (regTwo!21303 Regex!10395)) )
))
(declare-datatypes ((String!42664 0))(
  ( (String!42665 (value!181085 String)) )
))
(declare-datatypes ((List!38118 0))(
  ( (Nil!37994) (Cons!37994 (h!43414 C!20976) (t!293289 List!38118)) )
))
(declare-datatypes ((IArray!23159 0))(
  ( (IArray!23160 (innerList!11637 List!38118)) )
))
(declare-datatypes ((Conc!11577 0))(
  ( (Node!11577 (left!29685 Conc!11577) (right!30015 Conc!11577) (csize!23384 Int) (cheight!11788 Int)) (Leaf!18006 (xs!14779 IArray!23159) (csize!23385 Int)) (Empty!11577) )
))
(declare-datatypes ((BalanceConc!22768 0))(
  ( (BalanceConc!22769 (c!624557 Conc!11577)) )
))
(declare-datatypes ((TokenValueInjection!11160 0))(
  ( (TokenValueInjection!11161 (toValue!7920 Int) (toChars!7779 Int)) )
))
(declare-datatypes ((Rule!11072 0))(
  ( (Rule!11073 (regex!5636 Regex!10395) (tag!6342 String!42664) (isSeparator!5636 Bool) (transformation!5636 TokenValueInjection!11160)) )
))
(declare-datatypes ((List!38119 0))(
  ( (Nil!37995) (Cons!37995 (h!43415 Rule!11072) (t!293290 List!38119)) )
))
(declare-fun rules!3307 () List!38119)

(declare-fun isEmpty!22434 (List!38119) Bool)

(assert (=> b!3609981 (= res!1460149 (not (isEmpty!22434 rules!3307)))))

(declare-fun tp!1103571 () Bool)

(declare-datatypes ((Token!10638 0))(
  ( (Token!10639 (value!181086 TokenValue!5866) (rule!8386 Rule!11072) (size!28965 Int) (originalCharacters!6350 List!38118)) )
))
(declare-fun token!511 () Token!10638)

(declare-fun b!3609982 () Bool)

(declare-fun e!2234146 () Bool)

(declare-fun e!2234171 () Bool)

(declare-fun inv!51364 (String!42664) Bool)

(declare-fun inv!51367 (TokenValueInjection!11160) Bool)

(assert (=> b!3609982 (= e!2234171 (and tp!1103571 (inv!51364 (tag!6342 (rule!8386 token!511))) (inv!51367 (transformation!5636 (rule!8386 token!511))) e!2234146))))

(declare-fun b!3609983 () Bool)

(declare-fun e!2234169 () Bool)

(declare-datatypes ((tuple2!37888 0))(
  ( (tuple2!37889 (_1!22078 Token!10638) (_2!22078 List!38118)) )
))
(declare-fun lt!1242645 () tuple2!37888)

(declare-fun lt!1242663 () Rule!11072)

(assert (=> b!3609983 (= e!2234169 (= (rule!8386 (_1!22078 lt!1242645)) lt!1242663))))

(declare-fun b!3609984 () Bool)

(declare-fun res!1460131 () Bool)

(declare-fun e!2234167 () Bool)

(assert (=> b!3609984 (=> (not res!1460131) (not e!2234167))))

(declare-fun rule!403 () Rule!11072)

(assert (=> b!3609984 (= res!1460131 (= (rule!8386 token!511) rule!403))))

(declare-fun b!3609985 () Bool)

(declare-fun res!1460143 () Bool)

(declare-fun e!2234164 () Bool)

(assert (=> b!3609985 (=> res!1460143 e!2234164)))

(declare-fun suffix!1395 () List!38118)

(declare-fun isEmpty!22435 (List!38118) Bool)

(assert (=> b!3609985 (= res!1460143 (isEmpty!22435 suffix!1395))))

(declare-fun b!3609986 () Bool)

(declare-fun e!2234155 () Bool)

(assert (=> b!3609986 (= e!2234155 e!2234167)))

(declare-fun res!1460129 () Bool)

(assert (=> b!3609986 (=> (not res!1460129) (not e!2234167))))

(declare-fun lt!1242662 () tuple2!37888)

(assert (=> b!3609986 (= res!1460129 (= (_1!22078 lt!1242662) token!511))))

(declare-datatypes ((Option!7902 0))(
  ( (None!7901) (Some!7901 (v!37643 tuple2!37888)) )
))
(declare-fun lt!1242630 () Option!7902)

(declare-fun get!12330 (Option!7902) tuple2!37888)

(assert (=> b!3609986 (= lt!1242662 (get!12330 lt!1242630))))

(declare-fun b!3609987 () Bool)

(declare-datatypes ((Unit!54166 0))(
  ( (Unit!54167) )
))
(declare-fun e!2234173 () Unit!54166)

(declare-fun e!2234172 () Unit!54166)

(assert (=> b!3609987 (= e!2234173 e!2234172)))

(declare-fun c!624553 () Bool)

(assert (=> b!3609987 (= c!624553 (isSeparator!5636 (rule!8386 (_1!22078 lt!1242645))))))

(declare-fun res!1460130 () Bool)

(assert (=> start!336058 (=> (not res!1460130) (not e!2234144))))

(declare-datatypes ((LexerInterface!5225 0))(
  ( (LexerInterfaceExt!5222 (__x!23950 Int)) (Lexer!5223) )
))
(declare-fun thiss!23823 () LexerInterface!5225)

(get-info :version)

(assert (=> start!336058 (= res!1460130 ((_ is Lexer!5223) thiss!23823))))

(assert (=> start!336058 e!2234144))

(declare-fun e!2234145 () Bool)

(assert (=> start!336058 e!2234145))

(declare-fun e!2234157 () Bool)

(assert (=> start!336058 e!2234157))

(assert (=> start!336058 true))

(declare-fun e!2234174 () Bool)

(declare-fun inv!51368 (Token!10638) Bool)

(assert (=> start!336058 (and (inv!51368 token!511) e!2234174)))

(declare-fun e!2234152 () Bool)

(assert (=> start!336058 e!2234152))

(declare-fun e!2234161 () Bool)

(assert (=> start!336058 e!2234161))

(declare-fun b!3609988 () Bool)

(declare-fun e!2234166 () Bool)

(assert (=> b!3609988 (= e!2234166 (not (= suffix!1395 Nil!37994)))))

(declare-fun lt!1242646 () C!20976)

(declare-fun contains!7335 (List!38118 C!20976) Bool)

(declare-fun usedCharacters!850 (Regex!10395) List!38118)

(assert (=> b!3609988 (not (contains!7335 (usedCharacters!850 (regex!5636 (rule!8386 (_1!22078 lt!1242645)))) lt!1242646))))

(declare-fun lt!1242639 () Unit!54166)

(declare-fun anOtherTypeRule!33 () Rule!11072)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!342 (LexerInterface!5225 List!38119 List!38119 Rule!11072 Rule!11072 C!20976) Unit!54166)

(assert (=> b!3609988 (= lt!1242639 (lemmaNonSepRuleNotContainsCharContainedInASepRule!342 thiss!23823 rules!3307 rules!3307 (rule!8386 (_1!22078 lt!1242645)) anOtherTypeRule!33 lt!1242646))))

(declare-fun b!3609989 () Bool)

(declare-fun Unit!54168 () Unit!54166)

(assert (=> b!3609989 (= e!2234172 Unit!54168)))

(declare-fun b!3609990 () Bool)

(declare-fun e!2234147 () Bool)

(assert (=> b!3609990 (= e!2234147 e!2234169)))

(declare-fun res!1460133 () Bool)

(assert (=> b!3609990 (=> (not res!1460133) (not e!2234169))))

(declare-fun matchR!4964 (Regex!10395 List!38118) Bool)

(declare-fun list!14012 (BalanceConc!22768) List!38118)

(declare-fun charsOf!3650 (Token!10638) BalanceConc!22768)

(assert (=> b!3609990 (= res!1460133 (matchR!4964 (regex!5636 lt!1242663) (list!14012 (charsOf!3650 (_1!22078 lt!1242645)))))))

(declare-datatypes ((Option!7903 0))(
  ( (None!7902) (Some!7902 (v!37644 Rule!11072)) )
))
(declare-fun lt!1242656 () Option!7903)

(declare-fun get!12331 (Option!7903) Rule!11072)

(assert (=> b!3609990 (= lt!1242663 (get!12331 lt!1242656))))

(declare-fun b!3609991 () Bool)

(assert (=> b!3609991 false))

(declare-fun lt!1242631 () Unit!54166)

(declare-fun call!260948 () Unit!54166)

(assert (=> b!3609991 (= lt!1242631 call!260948)))

(declare-fun call!260949 () Bool)

(assert (=> b!3609991 (not call!260949)))

(declare-fun lt!1242636 () C!20976)

(declare-fun lt!1242637 () Unit!54166)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!224 (LexerInterface!5225 List!38119 List!38119 Rule!11072 Rule!11072 C!20976) Unit!54166)

(assert (=> b!3609991 (= lt!1242637 (lemmaSepRuleNotContainsCharContainedInANonSepRule!224 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8386 (_1!22078 lt!1242645)) lt!1242636))))

(declare-fun Unit!54169 () Unit!54166)

(assert (=> b!3609991 (= e!2234172 Unit!54169)))

(declare-fun b!3609992 () Bool)

(declare-fun e!2234162 () Bool)

(declare-fun e!2234165 () Bool)

(assert (=> b!3609992 (= e!2234162 e!2234165)))

(declare-fun res!1460148 () Bool)

(assert (=> b!3609992 (=> res!1460148 e!2234165)))

(declare-fun lt!1242634 () List!38118)

(declare-fun lt!1242643 () List!38118)

(declare-fun isPrefix!2999 (List!38118 List!38118) Bool)

(assert (=> b!3609992 (= res!1460148 (not (isPrefix!2999 lt!1242634 lt!1242643)))))

(declare-fun ++!9452 (List!38118 List!38118) List!38118)

(assert (=> b!3609992 (isPrefix!2999 lt!1242634 (++!9452 lt!1242634 (_2!22078 lt!1242645)))))

(declare-fun lt!1242648 () Unit!54166)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1920 (List!38118 List!38118) Unit!54166)

(assert (=> b!3609992 (= lt!1242648 (lemmaConcatTwoListThenFirstIsPrefix!1920 lt!1242634 (_2!22078 lt!1242645)))))

(declare-fun lt!1242653 () BalanceConc!22768)

(assert (=> b!3609992 (= lt!1242634 (list!14012 lt!1242653))))

(assert (=> b!3609992 (= lt!1242653 (charsOf!3650 (_1!22078 lt!1242645)))))

(assert (=> b!3609992 e!2234147))

(declare-fun res!1460128 () Bool)

(assert (=> b!3609992 (=> (not res!1460128) (not e!2234147))))

(declare-fun isDefined!6134 (Option!7903) Bool)

(assert (=> b!3609992 (= res!1460128 (isDefined!6134 lt!1242656))))

(declare-fun getRuleFromTag!1242 (LexerInterface!5225 List!38119 String!42664) Option!7903)

(assert (=> b!3609992 (= lt!1242656 (getRuleFromTag!1242 thiss!23823 rules!3307 (tag!6342 (rule!8386 (_1!22078 lt!1242645)))))))

(declare-fun lt!1242629 () Unit!54166)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1242 (LexerInterface!5225 List!38119 List!38118 Token!10638) Unit!54166)

(assert (=> b!3609992 (= lt!1242629 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1242 thiss!23823 rules!3307 lt!1242643 (_1!22078 lt!1242645)))))

(declare-fun lt!1242655 () Option!7902)

(assert (=> b!3609992 (= lt!1242645 (get!12330 lt!1242655))))

(declare-fun lt!1242651 () Unit!54166)

(declare-fun lt!1242658 () List!38118)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!905 (LexerInterface!5225 List!38119 List!38118 List!38118) Unit!54166)

(assert (=> b!3609992 (= lt!1242651 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!905 thiss!23823 rules!3307 lt!1242658 suffix!1395))))

(declare-fun maxPrefix!2759 (LexerInterface!5225 List!38119 List!38118) Option!7902)

(assert (=> b!3609992 (= lt!1242655 (maxPrefix!2759 thiss!23823 rules!3307 lt!1242643))))

(assert (=> b!3609992 (isPrefix!2999 lt!1242658 lt!1242643)))

(declare-fun lt!1242664 () Unit!54166)

(assert (=> b!3609992 (= lt!1242664 (lemmaConcatTwoListThenFirstIsPrefix!1920 lt!1242658 suffix!1395))))

(assert (=> b!3609992 (= lt!1242643 (++!9452 lt!1242658 suffix!1395))))

(declare-fun tp!1103572 () Bool)

(declare-fun b!3609993 () Bool)

(declare-fun e!2234143 () Bool)

(assert (=> b!3609993 (= e!2234161 (and tp!1103572 (inv!51364 (tag!6342 anOtherTypeRule!33)) (inv!51367 (transformation!5636 anOtherTypeRule!33)) e!2234143))))

(declare-fun tp!1103573 () Bool)

(declare-fun b!3609994 () Bool)

(declare-fun e!2234156 () Bool)

(assert (=> b!3609994 (= e!2234152 (and tp!1103573 (inv!51364 (tag!6342 rule!403)) (inv!51367 (transformation!5636 rule!403)) e!2234156))))

(declare-fun b!3609995 () Bool)

(assert (=> b!3609995 false))

(declare-fun lt!1242661 () Unit!54166)

(assert (=> b!3609995 (= lt!1242661 call!260948)))

(assert (=> b!3609995 (not call!260949)))

(declare-fun lt!1242649 () Unit!54166)

(assert (=> b!3609995 (= lt!1242649 (lemmaNonSepRuleNotContainsCharContainedInASepRule!342 thiss!23823 rules!3307 rules!3307 (rule!8386 (_1!22078 lt!1242645)) rule!403 lt!1242636))))

(declare-fun e!2234154 () Unit!54166)

(declare-fun Unit!54170 () Unit!54166)

(assert (=> b!3609995 (= e!2234154 Unit!54170)))

(declare-fun b!3609996 () Bool)

(declare-fun res!1460136 () Bool)

(assert (=> b!3609996 (=> (not res!1460136) (not e!2234167))))

(assert (=> b!3609996 (= res!1460136 (isEmpty!22435 (_2!22078 lt!1242662)))))

(declare-fun b!3609997 () Bool)

(declare-fun res!1460134 () Bool)

(assert (=> b!3609997 (=> res!1460134 e!2234162)))

(assert (=> b!3609997 (= res!1460134 (not (contains!7335 (usedCharacters!850 (regex!5636 anOtherTypeRule!33)) lt!1242646)))))

(assert (=> b!3609998 (= e!2234156 (and tp!1103576 tp!1103570))))

(declare-fun b!3609999 () Bool)

(declare-fun res!1460144 () Bool)

(assert (=> b!3609999 (=> res!1460144 e!2234165)))

(assert (=> b!3609999 (= res!1460144 (not (matchR!4964 (regex!5636 (rule!8386 (_1!22078 lt!1242645))) lt!1242634)))))

(assert (=> b!3610000 (= e!2234146 (and tp!1103569 tp!1103564))))

(declare-fun b!3610001 () Bool)

(declare-fun e!2234151 () Bool)

(declare-fun e!2234148 () Bool)

(assert (=> b!3610001 (= e!2234151 e!2234148)))

(declare-fun res!1460137 () Bool)

(assert (=> b!3610001 (=> res!1460137 e!2234148)))

(declare-fun lt!1242660 () List!38118)

(declare-fun lt!1242665 () Option!7902)

(assert (=> b!3610001 (= res!1460137 (or (not (= lt!1242660 (_2!22078 lt!1242645))) (not (= lt!1242665 (Some!7901 (tuple2!37889 (_1!22078 lt!1242645) lt!1242660))))))))

(assert (=> b!3610001 (= (_2!22078 lt!1242645) lt!1242660)))

(declare-fun lt!1242647 () Unit!54166)

(declare-fun lemmaSamePrefixThenSameSuffix!1354 (List!38118 List!38118 List!38118 List!38118 List!38118) Unit!54166)

(assert (=> b!3610001 (= lt!1242647 (lemmaSamePrefixThenSameSuffix!1354 lt!1242634 (_2!22078 lt!1242645) lt!1242634 lt!1242660 lt!1242643))))

(declare-fun getSuffix!1574 (List!38118 List!38118) List!38118)

(assert (=> b!3610001 (= lt!1242660 (getSuffix!1574 lt!1242643 lt!1242634))))

(declare-fun lt!1242642 () TokenValue!5866)

(declare-fun lt!1242640 () Int)

(assert (=> b!3610001 (= lt!1242665 (Some!7901 (tuple2!37889 (Token!10639 lt!1242642 (rule!8386 (_1!22078 lt!1242645)) lt!1242640 lt!1242634) (_2!22078 lt!1242645))))))

(declare-fun maxPrefixOneRule!1903 (LexerInterface!5225 Rule!11072 List!38118) Option!7902)

(assert (=> b!3610001 (= lt!1242665 (maxPrefixOneRule!1903 thiss!23823 (rule!8386 (_1!22078 lt!1242645)) lt!1242643))))

(declare-fun size!28966 (List!38118) Int)

(assert (=> b!3610001 (= lt!1242640 (size!28966 lt!1242634))))

(declare-fun apply!9142 (TokenValueInjection!11160 BalanceConc!22768) TokenValue!5866)

(declare-fun seqFromList!4189 (List!38118) BalanceConc!22768)

(assert (=> b!3610001 (= lt!1242642 (apply!9142 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))) (seqFromList!4189 lt!1242634)))))

(declare-fun lt!1242652 () Unit!54166)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!975 (LexerInterface!5225 List!38119 List!38118 List!38118 List!38118 Rule!11072) Unit!54166)

(assert (=> b!3610001 (= lt!1242652 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!975 thiss!23823 rules!3307 lt!1242634 lt!1242643 (_2!22078 lt!1242645) (rule!8386 (_1!22078 lt!1242645))))))

(declare-fun b!3610002 () Bool)

(declare-fun res!1460139 () Bool)

(assert (=> b!3610002 (=> (not res!1460139) (not e!2234144))))

(declare-fun rulesInvariant!4622 (LexerInterface!5225 List!38119) Bool)

(assert (=> b!3610002 (= res!1460139 (rulesInvariant!4622 thiss!23823 rules!3307))))

(declare-fun b!3610003 () Bool)

(declare-fun tp!1103566 () Bool)

(declare-fun inv!21 (TokenValue!5866) Bool)

(assert (=> b!3610003 (= e!2234174 (and (inv!21 (value!181086 token!511)) e!2234171 tp!1103566))))

(declare-fun b!3610004 () Bool)

(assert (=> b!3610004 (= e!2234167 (not e!2234164))))

(declare-fun res!1460141 () Bool)

(assert (=> b!3610004 (=> res!1460141 e!2234164)))

(assert (=> b!3610004 (= res!1460141 (not (matchR!4964 (regex!5636 rule!403) lt!1242658)))))

(declare-fun ruleValid!1901 (LexerInterface!5225 Rule!11072) Bool)

(assert (=> b!3610004 (ruleValid!1901 thiss!23823 rule!403)))

(declare-fun lt!1242666 () Unit!54166)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1056 (LexerInterface!5225 Rule!11072 List!38119) Unit!54166)

(assert (=> b!3610004 (= lt!1242666 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1056 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3610005 () Bool)

(declare-fun Unit!54171 () Unit!54166)

(assert (=> b!3610005 (= e!2234154 Unit!54171)))

(declare-fun b!3610006 () Bool)

(declare-fun res!1460132 () Bool)

(assert (=> b!3610006 (=> (not res!1460132) (not e!2234144))))

(declare-fun contains!7336 (List!38119 Rule!11072) Bool)

(assert (=> b!3610006 (= res!1460132 (contains!7336 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3610007 () Bool)

(assert (=> b!3610007 (= e!2234165 e!2234151)))

(declare-fun res!1460147 () Bool)

(assert (=> b!3610007 (=> res!1460147 e!2234151)))

(declare-fun lt!1242644 () TokenValue!5866)

(declare-fun lt!1242633 () Int)

(assert (=> b!3610007 (= res!1460147 (not (= lt!1242655 (Some!7901 (tuple2!37889 (Token!10639 lt!1242644 (rule!8386 (_1!22078 lt!1242645)) lt!1242633 lt!1242634) (_2!22078 lt!1242645))))))))

(declare-fun size!28967 (BalanceConc!22768) Int)

(assert (=> b!3610007 (= lt!1242633 (size!28967 lt!1242653))))

(assert (=> b!3610007 (= lt!1242644 (apply!9142 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))) lt!1242653))))

(declare-fun lt!1242659 () Unit!54166)

(declare-fun lemmaCharactersSize!689 (Token!10638) Unit!54166)

(assert (=> b!3610007 (= lt!1242659 (lemmaCharactersSize!689 (_1!22078 lt!1242645)))))

(declare-fun lt!1242641 () Unit!54166)

(declare-fun lemmaEqSameImage!827 (TokenValueInjection!11160 BalanceConc!22768 BalanceConc!22768) Unit!54166)

(assert (=> b!3610007 (= lt!1242641 (lemmaEqSameImage!827 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))) lt!1242653 (seqFromList!4189 (originalCharacters!6350 (_1!22078 lt!1242645)))))))

(declare-fun lt!1242638 () Unit!54166)

(declare-fun lemmaSemiInverse!1393 (TokenValueInjection!11160 BalanceConc!22768) Unit!54166)

(assert (=> b!3610007 (= lt!1242638 (lemmaSemiInverse!1393 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))) lt!1242653))))

(declare-fun b!3610008 () Bool)

(assert (=> b!3610008 (= e!2234173 e!2234154)))

(declare-fun c!624555 () Bool)

(assert (=> b!3610008 (= c!624555 (not (isSeparator!5636 (rule!8386 (_1!22078 lt!1242645)))))))

(declare-fun b!3610009 () Bool)

(declare-fun res!1460138 () Bool)

(assert (=> b!3610009 (=> res!1460138 e!2234162)))

(declare-fun sepAndNonSepRulesDisjointChars!1806 (List!38119 List!38119) Bool)

(assert (=> b!3610009 (= res!1460138 (not (sepAndNonSepRulesDisjointChars!1806 rules!3307 rules!3307)))))

(declare-fun b!3610010 () Bool)

(assert (=> b!3610010 (= e!2234144 e!2234155)))

(declare-fun res!1460145 () Bool)

(assert (=> b!3610010 (=> (not res!1460145) (not e!2234155))))

(declare-fun isDefined!6135 (Option!7902) Bool)

(assert (=> b!3610010 (= res!1460145 (isDefined!6135 lt!1242630))))

(assert (=> b!3610010 (= lt!1242630 (maxPrefix!2759 thiss!23823 rules!3307 lt!1242658))))

(declare-fun lt!1242657 () BalanceConc!22768)

(assert (=> b!3610010 (= lt!1242658 (list!14012 lt!1242657))))

(assert (=> b!3610010 (= lt!1242657 (charsOf!3650 token!511))))

(declare-fun b!3610011 () Bool)

(declare-fun res!1460140 () Bool)

(assert (=> b!3610011 (=> (not res!1460140) (not e!2234144))))

(assert (=> b!3610011 (= res!1460140 (not (= (isSeparator!5636 anOtherTypeRule!33) (isSeparator!5636 rule!403))))))

(declare-fun b!3610012 () Bool)

(assert (=> b!3610012 (= e!2234164 e!2234162)))

(declare-fun res!1460150 () Bool)

(assert (=> b!3610012 (=> res!1460150 e!2234162)))

(declare-fun lt!1242632 () List!38118)

(assert (=> b!3610012 (= res!1460150 (contains!7335 lt!1242632 lt!1242646))))

(declare-fun head!7594 (List!38118) C!20976)

(assert (=> b!3610012 (= lt!1242646 (head!7594 suffix!1395))))

(assert (=> b!3610012 (= lt!1242632 (usedCharacters!850 (regex!5636 rule!403)))))

(declare-fun b!3610013 () Bool)

(declare-fun e!2234153 () Bool)

(assert (=> b!3610013 (= e!2234153 e!2234166)))

(declare-fun res!1460142 () Bool)

(assert (=> b!3610013 (=> res!1460142 e!2234166)))

(assert (=> b!3610013 (= res!1460142 (isSeparator!5636 rule!403))))

(assert (=> b!3610013 (contains!7335 lt!1242634 lt!1242646)))

(declare-fun lt!1242635 () Unit!54166)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!14 (List!38118 List!38118 List!38118 List!38118) Unit!54166)

(assert (=> b!3610013 (= lt!1242635 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!14 lt!1242658 suffix!1395 lt!1242634 lt!1242643))))

(declare-fun bm!260943 () Bool)

(declare-fun call!260950 () List!38118)

(assert (=> bm!260943 (= call!260949 (contains!7335 call!260950 lt!1242636))))

(declare-fun b!3610014 () Bool)

(declare-fun e!2234163 () Bool)

(declare-fun tp!1103577 () Bool)

(assert (=> b!3610014 (= e!2234145 (and e!2234163 tp!1103577))))

(declare-fun e!2234150 () Bool)

(assert (=> b!3610015 (= e!2234150 (and tp!1103578 tp!1103568))))

(declare-fun b!3610016 () Bool)

(declare-fun res!1460146 () Bool)

(assert (=> b!3610016 (=> (not res!1460146) (not e!2234144))))

(assert (=> b!3610016 (= res!1460146 (contains!7336 rules!3307 rule!403))))

(declare-fun b!3610017 () Bool)

(declare-fun e!2234149 () Unit!54166)

(declare-fun Unit!54172 () Unit!54166)

(assert (=> b!3610017 (= e!2234149 Unit!54172)))

(declare-fun b!3610018 () Bool)

(declare-fun tp!1103565 () Bool)

(assert (=> b!3610018 (= e!2234163 (and tp!1103565 (inv!51364 (tag!6342 (h!43415 rules!3307))) (inv!51367 (transformation!5636 (h!43415 rules!3307))) e!2234150))))

(declare-fun b!3610019 () Bool)

(declare-fun tp_is_empty!17873 () Bool)

(declare-fun tp!1103575 () Bool)

(assert (=> b!3610019 (= e!2234157 (and tp_is_empty!17873 tp!1103575))))

(declare-fun b!3610020 () Bool)

(declare-fun Unit!54173 () Unit!54166)

(assert (=> b!3610020 (= e!2234149 Unit!54173)))

(declare-fun lt!1242628 () Unit!54166)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!620 (Regex!10395 List!38118 C!20976) Unit!54166)

(assert (=> b!3610020 (= lt!1242628 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!620 (regex!5636 rule!403) lt!1242658 lt!1242636))))

(assert (=> b!3610020 false))

(assert (=> b!3610021 (= e!2234143 (and tp!1103574 tp!1103567))))

(declare-fun bm!260944 () Bool)

(assert (=> bm!260944 (= call!260948 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!620 (regex!5636 (rule!8386 (_1!22078 lt!1242645))) lt!1242634 lt!1242636))))

(declare-fun b!3610022 () Bool)

(assert (=> b!3610022 (= e!2234148 e!2234153)))

(declare-fun res!1460135 () Bool)

(assert (=> b!3610022 (=> res!1460135 e!2234153)))

(assert (=> b!3610022 (= res!1460135 (<= lt!1242633 (size!28967 lt!1242657)))))

(declare-fun lt!1242654 () Unit!54166)

(assert (=> b!3610022 (= lt!1242654 e!2234173)))

(declare-fun c!624552 () Bool)

(assert (=> b!3610022 (= c!624552 (isSeparator!5636 rule!403))))

(declare-fun lt!1242650 () Unit!54166)

(assert (=> b!3610022 (= lt!1242650 e!2234149)))

(declare-fun c!624554 () Bool)

(assert (=> b!3610022 (= c!624554 (not (contains!7335 lt!1242632 lt!1242636)))))

(assert (=> b!3610022 (= lt!1242636 (head!7594 lt!1242634))))

(declare-fun bm!260945 () Bool)

(assert (=> bm!260945 (= call!260950 (usedCharacters!850 (regex!5636 (rule!8386 (_1!22078 lt!1242645)))))))

(assert (= (and start!336058 res!1460130) b!3609981))

(assert (= (and b!3609981 res!1460149) b!3610002))

(assert (= (and b!3610002 res!1460139) b!3610016))

(assert (= (and b!3610016 res!1460146) b!3610006))

(assert (= (and b!3610006 res!1460132) b!3610011))

(assert (= (and b!3610011 res!1460140) b!3610010))

(assert (= (and b!3610010 res!1460145) b!3609986))

(assert (= (and b!3609986 res!1460129) b!3609996))

(assert (= (and b!3609996 res!1460136) b!3609984))

(assert (= (and b!3609984 res!1460131) b!3610004))

(assert (= (and b!3610004 (not res!1460141)) b!3609985))

(assert (= (and b!3609985 (not res!1460143)) b!3610012))

(assert (= (and b!3610012 (not res!1460150)) b!3609997))

(assert (= (and b!3609997 (not res!1460134)) b!3610009))

(assert (= (and b!3610009 (not res!1460138)) b!3609992))

(assert (= (and b!3609992 res!1460128) b!3609990))

(assert (= (and b!3609990 res!1460133) b!3609983))

(assert (= (and b!3609992 (not res!1460148)) b!3609999))

(assert (= (and b!3609999 (not res!1460144)) b!3610007))

(assert (= (and b!3610007 (not res!1460147)) b!3610001))

(assert (= (and b!3610001 (not res!1460137)) b!3610022))

(assert (= (and b!3610022 c!624554) b!3610020))

(assert (= (and b!3610022 (not c!624554)) b!3610017))

(assert (= (and b!3610022 c!624552) b!3610008))

(assert (= (and b!3610022 (not c!624552)) b!3609987))

(assert (= (and b!3610008 c!624555) b!3609995))

(assert (= (and b!3610008 (not c!624555)) b!3610005))

(assert (= (and b!3609987 c!624553) b!3609991))

(assert (= (and b!3609987 (not c!624553)) b!3609989))

(assert (= (or b!3609995 b!3609991) bm!260944))

(assert (= (or b!3609995 b!3609991) bm!260945))

(assert (= (or b!3609995 b!3609991) bm!260943))

(assert (= (and b!3610022 (not res!1460135)) b!3610013))

(assert (= (and b!3610013 (not res!1460142)) b!3609988))

(assert (= b!3610018 b!3610015))

(assert (= b!3610014 b!3610018))

(assert (= (and start!336058 ((_ is Cons!37995) rules!3307)) b!3610014))

(assert (= (and start!336058 ((_ is Cons!37994) suffix!1395)) b!3610019))

(assert (= b!3609982 b!3610000))

(assert (= b!3610003 b!3609982))

(assert (= start!336058 b!3610003))

(assert (= b!3609994 b!3609998))

(assert (= start!336058 b!3609994))

(assert (= b!3609993 b!3610021))

(assert (= start!336058 b!3609993))

(declare-fun m!4107499 () Bool)

(assert (=> bm!260944 m!4107499))

(declare-fun m!4107501 () Bool)

(assert (=> b!3609996 m!4107501))

(declare-fun m!4107503 () Bool)

(assert (=> b!3609995 m!4107503))

(declare-fun m!4107505 () Bool)

(assert (=> b!3609982 m!4107505))

(declare-fun m!4107507 () Bool)

(assert (=> b!3609982 m!4107507))

(declare-fun m!4107509 () Bool)

(assert (=> b!3609992 m!4107509))

(declare-fun m!4107511 () Bool)

(assert (=> b!3609992 m!4107511))

(declare-fun m!4107513 () Bool)

(assert (=> b!3609992 m!4107513))

(declare-fun m!4107515 () Bool)

(assert (=> b!3609992 m!4107515))

(declare-fun m!4107517 () Bool)

(assert (=> b!3609992 m!4107517))

(declare-fun m!4107519 () Bool)

(assert (=> b!3609992 m!4107519))

(declare-fun m!4107521 () Bool)

(assert (=> b!3609992 m!4107521))

(declare-fun m!4107523 () Bool)

(assert (=> b!3609992 m!4107523))

(declare-fun m!4107525 () Bool)

(assert (=> b!3609992 m!4107525))

(declare-fun m!4107527 () Bool)

(assert (=> b!3609992 m!4107527))

(declare-fun m!4107529 () Bool)

(assert (=> b!3609992 m!4107529))

(declare-fun m!4107531 () Bool)

(assert (=> b!3609992 m!4107531))

(declare-fun m!4107533 () Bool)

(assert (=> b!3609992 m!4107533))

(declare-fun m!4107535 () Bool)

(assert (=> b!3609992 m!4107535))

(declare-fun m!4107537 () Bool)

(assert (=> b!3609992 m!4107537))

(assert (=> b!3609992 m!4107533))

(declare-fun m!4107539 () Bool)

(assert (=> b!3609993 m!4107539))

(declare-fun m!4107541 () Bool)

(assert (=> b!3609993 m!4107541))

(declare-fun m!4107543 () Bool)

(assert (=> b!3610013 m!4107543))

(declare-fun m!4107545 () Bool)

(assert (=> b!3610013 m!4107545))

(declare-fun m!4107547 () Bool)

(assert (=> start!336058 m!4107547))

(declare-fun m!4107549 () Bool)

(assert (=> b!3610007 m!4107549))

(declare-fun m!4107551 () Bool)

(assert (=> b!3610007 m!4107551))

(declare-fun m!4107553 () Bool)

(assert (=> b!3610007 m!4107553))

(declare-fun m!4107555 () Bool)

(assert (=> b!3610007 m!4107555))

(assert (=> b!3610007 m!4107553))

(declare-fun m!4107557 () Bool)

(assert (=> b!3610007 m!4107557))

(declare-fun m!4107559 () Bool)

(assert (=> b!3610007 m!4107559))

(declare-fun m!4107561 () Bool)

(assert (=> b!3609999 m!4107561))

(declare-fun m!4107563 () Bool)

(assert (=> bm!260943 m!4107563))

(declare-fun m!4107565 () Bool)

(assert (=> b!3610004 m!4107565))

(declare-fun m!4107567 () Bool)

(assert (=> b!3610004 m!4107567))

(declare-fun m!4107569 () Bool)

(assert (=> b!3610004 m!4107569))

(declare-fun m!4107571 () Bool)

(assert (=> b!3610001 m!4107571))

(declare-fun m!4107573 () Bool)

(assert (=> b!3610001 m!4107573))

(declare-fun m!4107575 () Bool)

(assert (=> b!3610001 m!4107575))

(assert (=> b!3610001 m!4107571))

(declare-fun m!4107577 () Bool)

(assert (=> b!3610001 m!4107577))

(declare-fun m!4107579 () Bool)

(assert (=> b!3610001 m!4107579))

(declare-fun m!4107581 () Bool)

(assert (=> b!3610001 m!4107581))

(declare-fun m!4107583 () Bool)

(assert (=> b!3610001 m!4107583))

(declare-fun m!4107585 () Bool)

(assert (=> b!3610009 m!4107585))

(declare-fun m!4107587 () Bool)

(assert (=> b!3610006 m!4107587))

(declare-fun m!4107589 () Bool)

(assert (=> b!3610003 m!4107589))

(declare-fun m!4107591 () Bool)

(assert (=> b!3609994 m!4107591))

(declare-fun m!4107593 () Bool)

(assert (=> b!3609994 m!4107593))

(declare-fun m!4107595 () Bool)

(assert (=> b!3609981 m!4107595))

(declare-fun m!4107597 () Bool)

(assert (=> b!3609991 m!4107597))

(declare-fun m!4107599 () Bool)

(assert (=> b!3610022 m!4107599))

(declare-fun m!4107601 () Bool)

(assert (=> b!3610022 m!4107601))

(declare-fun m!4107603 () Bool)

(assert (=> b!3610022 m!4107603))

(declare-fun m!4107605 () Bool)

(assert (=> b!3610010 m!4107605))

(declare-fun m!4107607 () Bool)

(assert (=> b!3610010 m!4107607))

(declare-fun m!4107609 () Bool)

(assert (=> b!3610010 m!4107609))

(declare-fun m!4107611 () Bool)

(assert (=> b!3610010 m!4107611))

(declare-fun m!4107613 () Bool)

(assert (=> b!3609997 m!4107613))

(assert (=> b!3609997 m!4107613))

(declare-fun m!4107615 () Bool)

(assert (=> b!3609997 m!4107615))

(declare-fun m!4107617 () Bool)

(assert (=> b!3609988 m!4107617))

(assert (=> b!3609988 m!4107617))

(declare-fun m!4107619 () Bool)

(assert (=> b!3609988 m!4107619))

(declare-fun m!4107621 () Bool)

(assert (=> b!3609988 m!4107621))

(assert (=> bm!260945 m!4107617))

(assert (=> b!3609990 m!4107525))

(assert (=> b!3609990 m!4107525))

(declare-fun m!4107623 () Bool)

(assert (=> b!3609990 m!4107623))

(assert (=> b!3609990 m!4107623))

(declare-fun m!4107625 () Bool)

(assert (=> b!3609990 m!4107625))

(declare-fun m!4107627 () Bool)

(assert (=> b!3609990 m!4107627))

(declare-fun m!4107629 () Bool)

(assert (=> b!3609986 m!4107629))

(declare-fun m!4107631 () Bool)

(assert (=> b!3610018 m!4107631))

(declare-fun m!4107633 () Bool)

(assert (=> b!3610018 m!4107633))

(declare-fun m!4107635 () Bool)

(assert (=> b!3610020 m!4107635))

(declare-fun m!4107637 () Bool)

(assert (=> b!3610002 m!4107637))

(declare-fun m!4107639 () Bool)

(assert (=> b!3610012 m!4107639))

(declare-fun m!4107641 () Bool)

(assert (=> b!3610012 m!4107641))

(declare-fun m!4107643 () Bool)

(assert (=> b!3610012 m!4107643))

(declare-fun m!4107645 () Bool)

(assert (=> b!3610016 m!4107645))

(declare-fun m!4107647 () Bool)

(assert (=> b!3609985 m!4107647))

(check-sat (not b!3610022) tp_is_empty!17873 (not b_next!94409) b_and!263181 (not b!3610014) (not b!3609993) (not b!3609982) b_and!263187 b_and!263185 b_and!263191 (not b!3610009) (not b!3609996) (not bm!260944) (not b!3610004) (not b!3610002) (not b!3609997) b_and!263179 (not b!3610001) (not b_next!94415) (not b!3610020) (not b!3610007) (not b!3609992) (not b!3609986) (not start!336058) (not b!3609999) (not b!3610006) (not b_next!94419) (not b!3609994) (not b_next!94423) (not b_next!94411) (not b!3609995) (not b!3610010) (not bm!260945) (not bm!260943) (not b!3610019) (not b!3610012) (not b!3609988) b_and!263193 (not b_next!94421) (not b!3609991) b_and!263183 b_and!263189 (not b!3610018) (not b!3610003) (not b_next!94417) (not b!3609981) (not b_next!94413) (not b!3610013) (not b!3610016) (not b!3609985) (not b!3609990))
(check-sat (not b_next!94409) b_and!263181 b_and!263187 b_and!263185 b_and!263191 (not b_next!94417) (not b_next!94413) b_and!263179 (not b_next!94415) (not b_next!94419) (not b_next!94423) (not b_next!94411) b_and!263193 (not b_next!94421) b_and!263183 b_and!263189)
(get-model)

(declare-fun b!3610138 () Bool)

(declare-fun e!2234247 () Bool)

(declare-fun e!2234241 () Bool)

(assert (=> b!3610138 (= e!2234247 e!2234241)))

(declare-fun res!1460243 () Bool)

(assert (=> b!3610138 (=> (not res!1460243) (not e!2234241))))

(declare-fun lt!1242696 () Bool)

(assert (=> b!3610138 (= res!1460243 (not lt!1242696))))

(declare-fun b!3610139 () Bool)

(declare-fun res!1460242 () Bool)

(assert (=> b!3610139 (=> res!1460242 e!2234247)))

(declare-fun e!2234242 () Bool)

(assert (=> b!3610139 (= res!1460242 e!2234242)))

(declare-fun res!1460244 () Bool)

(assert (=> b!3610139 (=> (not res!1460244) (not e!2234242))))

(assert (=> b!3610139 (= res!1460244 lt!1242696)))

(declare-fun b!3610140 () Bool)

(declare-fun res!1460239 () Bool)

(declare-fun e!2234244 () Bool)

(assert (=> b!3610140 (=> res!1460239 e!2234244)))

(declare-fun tail!5597 (List!38118) List!38118)

(assert (=> b!3610140 (= res!1460239 (not (isEmpty!22435 (tail!5597 (list!14012 (charsOf!3650 (_1!22078 lt!1242645)))))))))

(declare-fun b!3610141 () Bool)

(assert (=> b!3610141 (= e!2234244 (not (= (head!7594 (list!14012 (charsOf!3650 (_1!22078 lt!1242645)))) (c!624556 (regex!5636 lt!1242663)))))))

(declare-fun b!3610143 () Bool)

(assert (=> b!3610143 (= e!2234242 (= (head!7594 (list!14012 (charsOf!3650 (_1!22078 lt!1242645)))) (c!624556 (regex!5636 lt!1242663))))))

(declare-fun b!3610144 () Bool)

(declare-fun e!2234246 () Bool)

(declare-fun nullable!3599 (Regex!10395) Bool)

(assert (=> b!3610144 (= e!2234246 (nullable!3599 (regex!5636 lt!1242663)))))

(declare-fun b!3610145 () Bool)

(declare-fun e!2234245 () Bool)

(declare-fun call!260956 () Bool)

(assert (=> b!3610145 (= e!2234245 (= lt!1242696 call!260956))))

(declare-fun b!3610148 () Bool)

(assert (=> b!3610148 (= e!2234241 e!2234244)))

(declare-fun res!1460238 () Bool)

(assert (=> b!3610148 (=> res!1460238 e!2234244)))

(assert (=> b!3610148 (= res!1460238 call!260956)))

(declare-fun b!3610149 () Bool)

(declare-fun res!1460245 () Bool)

(assert (=> b!3610149 (=> (not res!1460245) (not e!2234242))))

(assert (=> b!3610149 (= res!1460245 (isEmpty!22435 (tail!5597 (list!14012 (charsOf!3650 (_1!22078 lt!1242645))))))))

(declare-fun bm!260951 () Bool)

(assert (=> bm!260951 (= call!260956 (isEmpty!22435 (list!14012 (charsOf!3650 (_1!22078 lt!1242645)))))))

(declare-fun b!3610142 () Bool)

(declare-fun e!2234243 () Bool)

(assert (=> b!3610142 (= e!2234245 e!2234243)))

(declare-fun c!624578 () Bool)

(assert (=> b!3610142 (= c!624578 ((_ is EmptyLang!10395) (regex!5636 lt!1242663)))))

(declare-fun d!1063085 () Bool)

(assert (=> d!1063085 e!2234245))

(declare-fun c!624580 () Bool)

(assert (=> d!1063085 (= c!624580 ((_ is EmptyExpr!10395) (regex!5636 lt!1242663)))))

(assert (=> d!1063085 (= lt!1242696 e!2234246)))

(declare-fun c!624579 () Bool)

(assert (=> d!1063085 (= c!624579 (isEmpty!22435 (list!14012 (charsOf!3650 (_1!22078 lt!1242645)))))))

(declare-fun validRegex!4761 (Regex!10395) Bool)

(assert (=> d!1063085 (validRegex!4761 (regex!5636 lt!1242663))))

(assert (=> d!1063085 (= (matchR!4964 (regex!5636 lt!1242663) (list!14012 (charsOf!3650 (_1!22078 lt!1242645)))) lt!1242696)))

(declare-fun b!3610150 () Bool)

(declare-fun derivativeStep!3148 (Regex!10395 C!20976) Regex!10395)

(assert (=> b!3610150 (= e!2234246 (matchR!4964 (derivativeStep!3148 (regex!5636 lt!1242663) (head!7594 (list!14012 (charsOf!3650 (_1!22078 lt!1242645))))) (tail!5597 (list!14012 (charsOf!3650 (_1!22078 lt!1242645))))))))

(declare-fun b!3610152 () Bool)

(assert (=> b!3610152 (= e!2234243 (not lt!1242696))))

(declare-fun b!3610154 () Bool)

(declare-fun res!1460240 () Bool)

(assert (=> b!3610154 (=> res!1460240 e!2234247)))

(assert (=> b!3610154 (= res!1460240 (not ((_ is ElementMatch!10395) (regex!5636 lt!1242663))))))

(assert (=> b!3610154 (= e!2234243 e!2234247)))

(declare-fun b!3610155 () Bool)

(declare-fun res!1460241 () Bool)

(assert (=> b!3610155 (=> (not res!1460241) (not e!2234242))))

(assert (=> b!3610155 (= res!1460241 (not call!260956))))

(assert (= (and d!1063085 c!624579) b!3610144))

(assert (= (and d!1063085 (not c!624579)) b!3610150))

(assert (= (and d!1063085 c!624580) b!3610145))

(assert (= (and d!1063085 (not c!624580)) b!3610142))

(assert (= (and b!3610142 c!624578) b!3610152))

(assert (= (and b!3610142 (not c!624578)) b!3610154))

(assert (= (and b!3610154 (not res!1460240)) b!3610139))

(assert (= (and b!3610139 res!1460244) b!3610155))

(assert (= (and b!3610155 res!1460241) b!3610149))

(assert (= (and b!3610149 res!1460245) b!3610143))

(assert (= (and b!3610139 (not res!1460242)) b!3610138))

(assert (= (and b!3610138 res!1460243) b!3610148))

(assert (= (and b!3610148 (not res!1460238)) b!3610140))

(assert (= (and b!3610140 (not res!1460239)) b!3610141))

(assert (= (or b!3610145 b!3610148 b!3610155) bm!260951))

(declare-fun m!4107741 () Bool)

(assert (=> b!3610144 m!4107741))

(assert (=> b!3610150 m!4107623))

(declare-fun m!4107743 () Bool)

(assert (=> b!3610150 m!4107743))

(assert (=> b!3610150 m!4107743))

(declare-fun m!4107745 () Bool)

(assert (=> b!3610150 m!4107745))

(assert (=> b!3610150 m!4107623))

(declare-fun m!4107747 () Bool)

(assert (=> b!3610150 m!4107747))

(assert (=> b!3610150 m!4107745))

(assert (=> b!3610150 m!4107747))

(declare-fun m!4107749 () Bool)

(assert (=> b!3610150 m!4107749))

(assert (=> bm!260951 m!4107623))

(declare-fun m!4107751 () Bool)

(assert (=> bm!260951 m!4107751))

(assert (=> b!3610140 m!4107623))

(assert (=> b!3610140 m!4107747))

(assert (=> b!3610140 m!4107747))

(declare-fun m!4107753 () Bool)

(assert (=> b!3610140 m!4107753))

(assert (=> b!3610143 m!4107623))

(assert (=> b!3610143 m!4107743))

(assert (=> b!3610149 m!4107623))

(assert (=> b!3610149 m!4107747))

(assert (=> b!3610149 m!4107747))

(assert (=> b!3610149 m!4107753))

(assert (=> b!3610141 m!4107623))

(assert (=> b!3610141 m!4107743))

(assert (=> d!1063085 m!4107623))

(assert (=> d!1063085 m!4107751))

(declare-fun m!4107755 () Bool)

(assert (=> d!1063085 m!4107755))

(assert (=> b!3609990 d!1063085))

(declare-fun d!1063095 () Bool)

(declare-fun list!14014 (Conc!11577) List!38118)

(assert (=> d!1063095 (= (list!14012 (charsOf!3650 (_1!22078 lt!1242645))) (list!14014 (c!624557 (charsOf!3650 (_1!22078 lt!1242645)))))))

(declare-fun bs!570833 () Bool)

(assert (= bs!570833 d!1063095))

(declare-fun m!4107763 () Bool)

(assert (=> bs!570833 m!4107763))

(assert (=> b!3609990 d!1063095))

(declare-fun d!1063099 () Bool)

(declare-fun lt!1242705 () BalanceConc!22768)

(assert (=> d!1063099 (= (list!14012 lt!1242705) (originalCharacters!6350 (_1!22078 lt!1242645)))))

(declare-fun dynLambda!16440 (Int TokenValue!5866) BalanceConc!22768)

(assert (=> d!1063099 (= lt!1242705 (dynLambda!16440 (toChars!7779 (transformation!5636 (rule!8386 (_1!22078 lt!1242645)))) (value!181086 (_1!22078 lt!1242645))))))

(assert (=> d!1063099 (= (charsOf!3650 (_1!22078 lt!1242645)) lt!1242705)))

(declare-fun b_lambda!106821 () Bool)

(assert (=> (not b_lambda!106821) (not d!1063099)))

(declare-fun tb!206945 () Bool)

(declare-fun t!293300 () Bool)

(assert (=> (and b!3610021 (= (toChars!7779 (transformation!5636 anOtherTypeRule!33)) (toChars!7779 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293300) tb!206945))

(declare-fun b!3610168 () Bool)

(declare-fun e!2234256 () Bool)

(declare-fun tp!1103581 () Bool)

(declare-fun inv!51371 (Conc!11577) Bool)

(assert (=> b!3610168 (= e!2234256 (and (inv!51371 (c!624557 (dynLambda!16440 (toChars!7779 (transformation!5636 (rule!8386 (_1!22078 lt!1242645)))) (value!181086 (_1!22078 lt!1242645))))) tp!1103581))))

(declare-fun result!252208 () Bool)

(declare-fun inv!51372 (BalanceConc!22768) Bool)

(assert (=> tb!206945 (= result!252208 (and (inv!51372 (dynLambda!16440 (toChars!7779 (transformation!5636 (rule!8386 (_1!22078 lt!1242645)))) (value!181086 (_1!22078 lt!1242645)))) e!2234256))))

(assert (= tb!206945 b!3610168))

(declare-fun m!4107765 () Bool)

(assert (=> b!3610168 m!4107765))

(declare-fun m!4107767 () Bool)

(assert (=> tb!206945 m!4107767))

(assert (=> d!1063099 t!293300))

(declare-fun b_and!263203 () Bool)

(assert (= b_and!263181 (and (=> t!293300 result!252208) b_and!263203)))

(declare-fun tb!206947 () Bool)

(declare-fun t!293302 () Bool)

(assert (=> (and b!3609998 (= (toChars!7779 (transformation!5636 rule!403)) (toChars!7779 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293302) tb!206947))

(declare-fun result!252212 () Bool)

(assert (= result!252212 result!252208))

(assert (=> d!1063099 t!293302))

(declare-fun b_and!263205 () Bool)

(assert (= b_and!263185 (and (=> t!293302 result!252212) b_and!263205)))

(declare-fun tb!206949 () Bool)

(declare-fun t!293304 () Bool)

(assert (=> (and b!3610015 (= (toChars!7779 (transformation!5636 (h!43415 rules!3307))) (toChars!7779 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293304) tb!206949))

(declare-fun result!252214 () Bool)

(assert (= result!252214 result!252208))

(assert (=> d!1063099 t!293304))

(declare-fun b_and!263207 () Bool)

(assert (= b_and!263189 (and (=> t!293304 result!252214) b_and!263207)))

(declare-fun tb!206951 () Bool)

(declare-fun t!293306 () Bool)

(assert (=> (and b!3610000 (= (toChars!7779 (transformation!5636 (rule!8386 token!511))) (toChars!7779 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293306) tb!206951))

(declare-fun result!252216 () Bool)

(assert (= result!252216 result!252208))

(assert (=> d!1063099 t!293306))

(declare-fun b_and!263209 () Bool)

(assert (= b_and!263193 (and (=> t!293306 result!252216) b_and!263209)))

(declare-fun m!4107769 () Bool)

(assert (=> d!1063099 m!4107769))

(declare-fun m!4107771 () Bool)

(assert (=> d!1063099 m!4107771))

(assert (=> b!3609990 d!1063099))

(declare-fun d!1063101 () Bool)

(assert (=> d!1063101 (= (get!12331 lt!1242656) (v!37644 lt!1242656))))

(assert (=> b!3609990 d!1063101))

(declare-fun d!1063103 () Bool)

(declare-fun lt!1242717 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5435 (List!38118) (InoxSet C!20976))

(assert (=> d!1063103 (= lt!1242717 (select (content!5435 lt!1242634) lt!1242646))))

(declare-fun e!2234262 () Bool)

(assert (=> d!1063103 (= lt!1242717 e!2234262)))

(declare-fun res!1460250 () Bool)

(assert (=> d!1063103 (=> (not res!1460250) (not e!2234262))))

(assert (=> d!1063103 (= res!1460250 ((_ is Cons!37994) lt!1242634))))

(assert (=> d!1063103 (= (contains!7335 lt!1242634 lt!1242646) lt!1242717)))

(declare-fun b!3610173 () Bool)

(declare-fun e!2234261 () Bool)

(assert (=> b!3610173 (= e!2234262 e!2234261)))

(declare-fun res!1460251 () Bool)

(assert (=> b!3610173 (=> res!1460251 e!2234261)))

(assert (=> b!3610173 (= res!1460251 (= (h!43414 lt!1242634) lt!1242646))))

(declare-fun b!3610174 () Bool)

(assert (=> b!3610174 (= e!2234261 (contains!7335 (t!293289 lt!1242634) lt!1242646))))

(assert (= (and d!1063103 res!1460250) b!3610173))

(assert (= (and b!3610173 (not res!1460251)) b!3610174))

(declare-fun m!4107781 () Bool)

(assert (=> d!1063103 m!4107781))

(declare-fun m!4107783 () Bool)

(assert (=> d!1063103 m!4107783))

(declare-fun m!4107785 () Bool)

(assert (=> b!3610174 m!4107785))

(assert (=> b!3610013 d!1063103))

(declare-fun d!1063111 () Bool)

(assert (=> d!1063111 (contains!7335 lt!1242634 (head!7594 suffix!1395))))

(declare-fun lt!1242722 () Unit!54166)

(declare-fun choose!21103 (List!38118 List!38118 List!38118 List!38118) Unit!54166)

(assert (=> d!1063111 (= lt!1242722 (choose!21103 lt!1242658 suffix!1395 lt!1242634 lt!1242643))))

(assert (=> d!1063111 (isPrefix!2999 lt!1242634 lt!1242643)))

(assert (=> d!1063111 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!14 lt!1242658 suffix!1395 lt!1242634 lt!1242643) lt!1242722)))

(declare-fun bs!570838 () Bool)

(assert (= bs!570838 d!1063111))

(assert (=> bs!570838 m!4107641))

(assert (=> bs!570838 m!4107641))

(declare-fun m!4107793 () Bool)

(assert (=> bs!570838 m!4107793))

(declare-fun m!4107795 () Bool)

(assert (=> bs!570838 m!4107795))

(assert (=> bs!570838 m!4107513))

(assert (=> b!3610013 d!1063111))

(declare-fun d!1063117 () Bool)

(assert (=> d!1063117 (not (contains!7335 (usedCharacters!850 (regex!5636 (rule!8386 (_1!22078 lt!1242645)))) lt!1242636))))

(declare-fun lt!1242725 () Unit!54166)

(declare-fun choose!21104 (LexerInterface!5225 List!38119 List!38119 Rule!11072 Rule!11072 C!20976) Unit!54166)

(assert (=> d!1063117 (= lt!1242725 (choose!21104 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8386 (_1!22078 lt!1242645)) lt!1242636))))

(assert (=> d!1063117 (rulesInvariant!4622 thiss!23823 rules!3307)))

(assert (=> d!1063117 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!224 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8386 (_1!22078 lt!1242645)) lt!1242636) lt!1242725)))

(declare-fun bs!570839 () Bool)

(assert (= bs!570839 d!1063117))

(assert (=> bs!570839 m!4107617))

(assert (=> bs!570839 m!4107617))

(declare-fun m!4107797 () Bool)

(assert (=> bs!570839 m!4107797))

(declare-fun m!4107799 () Bool)

(assert (=> bs!570839 m!4107799))

(assert (=> bs!570839 m!4107637))

(assert (=> b!3609991 d!1063117))

(declare-fun d!1063119 () Bool)

(declare-fun lt!1242726 () Bool)

(assert (=> d!1063119 (= lt!1242726 (select (content!5435 lt!1242632) lt!1242646))))

(declare-fun e!2234265 () Bool)

(assert (=> d!1063119 (= lt!1242726 e!2234265)))

(declare-fun res!1460252 () Bool)

(assert (=> d!1063119 (=> (not res!1460252) (not e!2234265))))

(assert (=> d!1063119 (= res!1460252 ((_ is Cons!37994) lt!1242632))))

(assert (=> d!1063119 (= (contains!7335 lt!1242632 lt!1242646) lt!1242726)))

(declare-fun b!3610175 () Bool)

(declare-fun e!2234264 () Bool)

(assert (=> b!3610175 (= e!2234265 e!2234264)))

(declare-fun res!1460253 () Bool)

(assert (=> b!3610175 (=> res!1460253 e!2234264)))

(assert (=> b!3610175 (= res!1460253 (= (h!43414 lt!1242632) lt!1242646))))

(declare-fun b!3610176 () Bool)

(assert (=> b!3610176 (= e!2234264 (contains!7335 (t!293289 lt!1242632) lt!1242646))))

(assert (= (and d!1063119 res!1460252) b!3610175))

(assert (= (and b!3610175 (not res!1460253)) b!3610176))

(declare-fun m!4107801 () Bool)

(assert (=> d!1063119 m!4107801))

(declare-fun m!4107803 () Bool)

(assert (=> d!1063119 m!4107803))

(declare-fun m!4107805 () Bool)

(assert (=> b!3610176 m!4107805))

(assert (=> b!3610012 d!1063119))

(declare-fun d!1063121 () Bool)

(assert (=> d!1063121 (= (head!7594 suffix!1395) (h!43414 suffix!1395))))

(assert (=> b!3610012 d!1063121))

(declare-fun c!624596 () Bool)

(declare-fun bm!260960 () Bool)

(declare-fun call!260968 () List!38118)

(declare-fun call!260965 () List!38118)

(declare-fun call!260967 () List!38118)

(assert (=> bm!260960 (= call!260965 (++!9452 (ite c!624596 call!260968 call!260967) (ite c!624596 call!260967 call!260968)))))

(declare-fun b!3610193 () Bool)

(declare-fun e!2234276 () List!38118)

(assert (=> b!3610193 (= e!2234276 call!260965)))

(declare-fun b!3610194 () Bool)

(declare-fun e!2234277 () List!38118)

(assert (=> b!3610194 (= e!2234277 (Cons!37994 (c!624556 (regex!5636 rule!403)) Nil!37994))))

(declare-fun b!3610195 () Bool)

(declare-fun c!624598 () Bool)

(assert (=> b!3610195 (= c!624598 ((_ is Star!10395) (regex!5636 rule!403)))))

(declare-fun e!2234274 () List!38118)

(assert (=> b!3610195 (= e!2234277 e!2234274)))

(declare-fun b!3610196 () Bool)

(declare-fun e!2234275 () List!38118)

(assert (=> b!3610196 (= e!2234275 Nil!37994)))

(declare-fun d!1063123 () Bool)

(declare-fun c!624597 () Bool)

(assert (=> d!1063123 (= c!624597 (or ((_ is EmptyExpr!10395) (regex!5636 rule!403)) ((_ is EmptyLang!10395) (regex!5636 rule!403))))))

(assert (=> d!1063123 (= (usedCharacters!850 (regex!5636 rule!403)) e!2234275)))

(declare-fun b!3610197 () Bool)

(assert (=> b!3610197 (= e!2234275 e!2234277)))

(declare-fun c!624599 () Bool)

(assert (=> b!3610197 (= c!624599 ((_ is ElementMatch!10395) (regex!5636 rule!403)))))

(declare-fun b!3610198 () Bool)

(declare-fun call!260966 () List!38118)

(assert (=> b!3610198 (= e!2234274 call!260966)))

(declare-fun b!3610199 () Bool)

(assert (=> b!3610199 (= e!2234276 call!260965)))

(declare-fun bm!260961 () Bool)

(assert (=> bm!260961 (= call!260966 (usedCharacters!850 (ite c!624598 (reg!10724 (regex!5636 rule!403)) (ite c!624596 (regOne!21303 (regex!5636 rule!403)) (regTwo!21302 (regex!5636 rule!403))))))))

(declare-fun bm!260962 () Bool)

(assert (=> bm!260962 (= call!260967 (usedCharacters!850 (ite c!624596 (regTwo!21303 (regex!5636 rule!403)) (regOne!21302 (regex!5636 rule!403)))))))

(declare-fun b!3610200 () Bool)

(assert (=> b!3610200 (= e!2234274 e!2234276)))

(assert (=> b!3610200 (= c!624596 ((_ is Union!10395) (regex!5636 rule!403)))))

(declare-fun bm!260963 () Bool)

(assert (=> bm!260963 (= call!260968 call!260966)))

(assert (= (and d!1063123 c!624597) b!3610196))

(assert (= (and d!1063123 (not c!624597)) b!3610197))

(assert (= (and b!3610197 c!624599) b!3610194))

(assert (= (and b!3610197 (not c!624599)) b!3610195))

(assert (= (and b!3610195 c!624598) b!3610198))

(assert (= (and b!3610195 (not c!624598)) b!3610200))

(assert (= (and b!3610200 c!624596) b!3610199))

(assert (= (and b!3610200 (not c!624596)) b!3610193))

(assert (= (or b!3610199 b!3610193) bm!260963))

(assert (= (or b!3610199 b!3610193) bm!260962))

(assert (= (or b!3610199 b!3610193) bm!260960))

(assert (= (or b!3610198 bm!260963) bm!260961))

(declare-fun m!4107807 () Bool)

(assert (=> bm!260960 m!4107807))

(declare-fun m!4107809 () Bool)

(assert (=> bm!260961 m!4107809))

(declare-fun m!4107811 () Bool)

(assert (=> bm!260962 m!4107811))

(assert (=> b!3610012 d!1063123))

(declare-fun d!1063125 () Bool)

(declare-fun res!1460258 () Bool)

(declare-fun e!2234282 () Bool)

(assert (=> d!1063125 (=> res!1460258 e!2234282)))

(assert (=> d!1063125 (= res!1460258 (not ((_ is Cons!37995) rules!3307)))))

(assert (=> d!1063125 (= (sepAndNonSepRulesDisjointChars!1806 rules!3307 rules!3307) e!2234282)))

(declare-fun b!3610205 () Bool)

(declare-fun e!2234283 () Bool)

(assert (=> b!3610205 (= e!2234282 e!2234283)))

(declare-fun res!1460259 () Bool)

(assert (=> b!3610205 (=> (not res!1460259) (not e!2234283))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!823 (Rule!11072 List!38119) Bool)

(assert (=> b!3610205 (= res!1460259 (ruleDisjointCharsFromAllFromOtherType!823 (h!43415 rules!3307) rules!3307))))

(declare-fun b!3610206 () Bool)

(assert (=> b!3610206 (= e!2234283 (sepAndNonSepRulesDisjointChars!1806 rules!3307 (t!293290 rules!3307)))))

(assert (= (and d!1063125 (not res!1460258)) b!3610205))

(assert (= (and b!3610205 res!1460259) b!3610206))

(declare-fun m!4107813 () Bool)

(assert (=> b!3610205 m!4107813))

(declare-fun m!4107815 () Bool)

(assert (=> b!3610206 m!4107815))

(assert (=> b!3610009 d!1063125))

(declare-fun d!1063127 () Bool)

(declare-fun res!1460264 () Bool)

(declare-fun e!2234286 () Bool)

(assert (=> d!1063127 (=> (not res!1460264) (not e!2234286))))

(assert (=> d!1063127 (= res!1460264 (not (isEmpty!22435 (originalCharacters!6350 token!511))))))

(assert (=> d!1063127 (= (inv!51368 token!511) e!2234286)))

(declare-fun b!3610211 () Bool)

(declare-fun res!1460265 () Bool)

(assert (=> b!3610211 (=> (not res!1460265) (not e!2234286))))

(assert (=> b!3610211 (= res!1460265 (= (originalCharacters!6350 token!511) (list!14012 (dynLambda!16440 (toChars!7779 (transformation!5636 (rule!8386 token!511))) (value!181086 token!511)))))))

(declare-fun b!3610212 () Bool)

(assert (=> b!3610212 (= e!2234286 (= (size!28965 token!511) (size!28966 (originalCharacters!6350 token!511))))))

(assert (= (and d!1063127 res!1460264) b!3610211))

(assert (= (and b!3610211 res!1460265) b!3610212))

(declare-fun b_lambda!106825 () Bool)

(assert (=> (not b_lambda!106825) (not b!3610211)))

(declare-fun tb!206961 () Bool)

(declare-fun t!293316 () Bool)

(assert (=> (and b!3610021 (= (toChars!7779 (transformation!5636 anOtherTypeRule!33)) (toChars!7779 (transformation!5636 (rule!8386 token!511)))) t!293316) tb!206961))

(declare-fun b!3610213 () Bool)

(declare-fun e!2234287 () Bool)

(declare-fun tp!1103582 () Bool)

(assert (=> b!3610213 (= e!2234287 (and (inv!51371 (c!624557 (dynLambda!16440 (toChars!7779 (transformation!5636 (rule!8386 token!511))) (value!181086 token!511)))) tp!1103582))))

(declare-fun result!252226 () Bool)

(assert (=> tb!206961 (= result!252226 (and (inv!51372 (dynLambda!16440 (toChars!7779 (transformation!5636 (rule!8386 token!511))) (value!181086 token!511))) e!2234287))))

(assert (= tb!206961 b!3610213))

(declare-fun m!4107817 () Bool)

(assert (=> b!3610213 m!4107817))

(declare-fun m!4107819 () Bool)

(assert (=> tb!206961 m!4107819))

(assert (=> b!3610211 t!293316))

(declare-fun b_and!263219 () Bool)

(assert (= b_and!263203 (and (=> t!293316 result!252226) b_and!263219)))

(declare-fun t!293318 () Bool)

(declare-fun tb!206963 () Bool)

(assert (=> (and b!3609998 (= (toChars!7779 (transformation!5636 rule!403)) (toChars!7779 (transformation!5636 (rule!8386 token!511)))) t!293318) tb!206963))

(declare-fun result!252228 () Bool)

(assert (= result!252228 result!252226))

(assert (=> b!3610211 t!293318))

(declare-fun b_and!263221 () Bool)

(assert (= b_and!263205 (and (=> t!293318 result!252228) b_and!263221)))

(declare-fun tb!206965 () Bool)

(declare-fun t!293320 () Bool)

(assert (=> (and b!3610015 (= (toChars!7779 (transformation!5636 (h!43415 rules!3307))) (toChars!7779 (transformation!5636 (rule!8386 token!511)))) t!293320) tb!206965))

(declare-fun result!252230 () Bool)

(assert (= result!252230 result!252226))

(assert (=> b!3610211 t!293320))

(declare-fun b_and!263223 () Bool)

(assert (= b_and!263207 (and (=> t!293320 result!252230) b_and!263223)))

(declare-fun t!293322 () Bool)

(declare-fun tb!206967 () Bool)

(assert (=> (and b!3610000 (= (toChars!7779 (transformation!5636 (rule!8386 token!511))) (toChars!7779 (transformation!5636 (rule!8386 token!511)))) t!293322) tb!206967))

(declare-fun result!252232 () Bool)

(assert (= result!252232 result!252226))

(assert (=> b!3610211 t!293322))

(declare-fun b_and!263225 () Bool)

(assert (= b_and!263209 (and (=> t!293322 result!252232) b_and!263225)))

(declare-fun m!4107821 () Bool)

(assert (=> d!1063127 m!4107821))

(declare-fun m!4107823 () Bool)

(assert (=> b!3610211 m!4107823))

(assert (=> b!3610211 m!4107823))

(declare-fun m!4107825 () Bool)

(assert (=> b!3610211 m!4107825))

(declare-fun m!4107827 () Bool)

(assert (=> b!3610212 m!4107827))

(assert (=> start!336058 d!1063127))

(declare-fun d!1063129 () Bool)

(declare-fun isEmpty!22437 (Option!7902) Bool)

(assert (=> d!1063129 (= (isDefined!6135 lt!1242630) (not (isEmpty!22437 lt!1242630)))))

(declare-fun bs!570840 () Bool)

(assert (= bs!570840 d!1063129))

(declare-fun m!4107829 () Bool)

(assert (=> bs!570840 m!4107829))

(assert (=> b!3610010 d!1063129))

(declare-fun bm!260966 () Bool)

(declare-fun call!260971 () Option!7902)

(assert (=> bm!260966 (= call!260971 (maxPrefixOneRule!1903 thiss!23823 (h!43415 rules!3307) lt!1242658))))

(declare-fun d!1063131 () Bool)

(declare-fun e!2234296 () Bool)

(assert (=> d!1063131 e!2234296))

(declare-fun res!1460284 () Bool)

(assert (=> d!1063131 (=> res!1460284 e!2234296)))

(declare-fun lt!1242737 () Option!7902)

(assert (=> d!1063131 (= res!1460284 (isEmpty!22437 lt!1242737))))

(declare-fun e!2234294 () Option!7902)

(assert (=> d!1063131 (= lt!1242737 e!2234294)))

(declare-fun c!624602 () Bool)

(assert (=> d!1063131 (= c!624602 (and ((_ is Cons!37995) rules!3307) ((_ is Nil!37995) (t!293290 rules!3307))))))

(declare-fun lt!1242740 () Unit!54166)

(declare-fun lt!1242741 () Unit!54166)

(assert (=> d!1063131 (= lt!1242740 lt!1242741)))

(assert (=> d!1063131 (isPrefix!2999 lt!1242658 lt!1242658)))

(declare-fun lemmaIsPrefixRefl!1916 (List!38118 List!38118) Unit!54166)

(assert (=> d!1063131 (= lt!1242741 (lemmaIsPrefixRefl!1916 lt!1242658 lt!1242658))))

(declare-fun rulesValidInductive!1981 (LexerInterface!5225 List!38119) Bool)

(assert (=> d!1063131 (rulesValidInductive!1981 thiss!23823 rules!3307)))

(assert (=> d!1063131 (= (maxPrefix!2759 thiss!23823 rules!3307 lt!1242658) lt!1242737)))

(declare-fun b!3610232 () Bool)

(declare-fun e!2234295 () Bool)

(assert (=> b!3610232 (= e!2234296 e!2234295)))

(declare-fun res!1460283 () Bool)

(assert (=> b!3610232 (=> (not res!1460283) (not e!2234295))))

(assert (=> b!3610232 (= res!1460283 (isDefined!6135 lt!1242737))))

(declare-fun b!3610233 () Bool)

(declare-fun res!1460286 () Bool)

(assert (=> b!3610233 (=> (not res!1460286) (not e!2234295))))

(assert (=> b!3610233 (= res!1460286 (= (++!9452 (list!14012 (charsOf!3650 (_1!22078 (get!12330 lt!1242737)))) (_2!22078 (get!12330 lt!1242737))) lt!1242658))))

(declare-fun b!3610234 () Bool)

(declare-fun res!1460282 () Bool)

(assert (=> b!3610234 (=> (not res!1460282) (not e!2234295))))

(assert (=> b!3610234 (= res!1460282 (= (value!181086 (_1!22078 (get!12330 lt!1242737))) (apply!9142 (transformation!5636 (rule!8386 (_1!22078 (get!12330 lt!1242737)))) (seqFromList!4189 (originalCharacters!6350 (_1!22078 (get!12330 lt!1242737)))))))))

(declare-fun b!3610235 () Bool)

(declare-fun lt!1242739 () Option!7902)

(declare-fun lt!1242738 () Option!7902)

(assert (=> b!3610235 (= e!2234294 (ite (and ((_ is None!7901) lt!1242739) ((_ is None!7901) lt!1242738)) None!7901 (ite ((_ is None!7901) lt!1242738) lt!1242739 (ite ((_ is None!7901) lt!1242739) lt!1242738 (ite (>= (size!28965 (_1!22078 (v!37643 lt!1242739))) (size!28965 (_1!22078 (v!37643 lt!1242738)))) lt!1242739 lt!1242738)))))))

(assert (=> b!3610235 (= lt!1242739 call!260971)))

(assert (=> b!3610235 (= lt!1242738 (maxPrefix!2759 thiss!23823 (t!293290 rules!3307) lt!1242658))))

(declare-fun b!3610236 () Bool)

(declare-fun res!1460281 () Bool)

(assert (=> b!3610236 (=> (not res!1460281) (not e!2234295))))

(assert (=> b!3610236 (= res!1460281 (= (list!14012 (charsOf!3650 (_1!22078 (get!12330 lt!1242737)))) (originalCharacters!6350 (_1!22078 (get!12330 lt!1242737)))))))

(declare-fun b!3610237 () Bool)

(assert (=> b!3610237 (= e!2234294 call!260971)))

(declare-fun b!3610238 () Bool)

(assert (=> b!3610238 (= e!2234295 (contains!7336 rules!3307 (rule!8386 (_1!22078 (get!12330 lt!1242737)))))))

(declare-fun b!3610239 () Bool)

(declare-fun res!1460280 () Bool)

(assert (=> b!3610239 (=> (not res!1460280) (not e!2234295))))

(assert (=> b!3610239 (= res!1460280 (< (size!28966 (_2!22078 (get!12330 lt!1242737))) (size!28966 lt!1242658)))))

(declare-fun b!3610240 () Bool)

(declare-fun res!1460285 () Bool)

(assert (=> b!3610240 (=> (not res!1460285) (not e!2234295))))

(assert (=> b!3610240 (= res!1460285 (matchR!4964 (regex!5636 (rule!8386 (_1!22078 (get!12330 lt!1242737)))) (list!14012 (charsOf!3650 (_1!22078 (get!12330 lt!1242737))))))))

(assert (= (and d!1063131 c!624602) b!3610237))

(assert (= (and d!1063131 (not c!624602)) b!3610235))

(assert (= (or b!3610237 b!3610235) bm!260966))

(assert (= (and d!1063131 (not res!1460284)) b!3610232))

(assert (= (and b!3610232 res!1460283) b!3610236))

(assert (= (and b!3610236 res!1460281) b!3610239))

(assert (= (and b!3610239 res!1460280) b!3610233))

(assert (= (and b!3610233 res!1460286) b!3610234))

(assert (= (and b!3610234 res!1460282) b!3610240))

(assert (= (and b!3610240 res!1460285) b!3610238))

(declare-fun m!4107831 () Bool)

(assert (=> b!3610234 m!4107831))

(declare-fun m!4107833 () Bool)

(assert (=> b!3610234 m!4107833))

(assert (=> b!3610234 m!4107833))

(declare-fun m!4107835 () Bool)

(assert (=> b!3610234 m!4107835))

(declare-fun m!4107837 () Bool)

(assert (=> d!1063131 m!4107837))

(declare-fun m!4107839 () Bool)

(assert (=> d!1063131 m!4107839))

(declare-fun m!4107841 () Bool)

(assert (=> d!1063131 m!4107841))

(declare-fun m!4107843 () Bool)

(assert (=> d!1063131 m!4107843))

(assert (=> b!3610236 m!4107831))

(declare-fun m!4107845 () Bool)

(assert (=> b!3610236 m!4107845))

(assert (=> b!3610236 m!4107845))

(declare-fun m!4107847 () Bool)

(assert (=> b!3610236 m!4107847))

(assert (=> b!3610233 m!4107831))

(assert (=> b!3610233 m!4107845))

(assert (=> b!3610233 m!4107845))

(assert (=> b!3610233 m!4107847))

(assert (=> b!3610233 m!4107847))

(declare-fun m!4107849 () Bool)

(assert (=> b!3610233 m!4107849))

(assert (=> b!3610238 m!4107831))

(declare-fun m!4107851 () Bool)

(assert (=> b!3610238 m!4107851))

(declare-fun m!4107853 () Bool)

(assert (=> b!3610232 m!4107853))

(assert (=> b!3610240 m!4107831))

(assert (=> b!3610240 m!4107845))

(assert (=> b!3610240 m!4107845))

(assert (=> b!3610240 m!4107847))

(assert (=> b!3610240 m!4107847))

(declare-fun m!4107855 () Bool)

(assert (=> b!3610240 m!4107855))

(assert (=> b!3610239 m!4107831))

(declare-fun m!4107857 () Bool)

(assert (=> b!3610239 m!4107857))

(declare-fun m!4107859 () Bool)

(assert (=> b!3610239 m!4107859))

(declare-fun m!4107861 () Bool)

(assert (=> b!3610235 m!4107861))

(declare-fun m!4107863 () Bool)

(assert (=> bm!260966 m!4107863))

(assert (=> b!3610010 d!1063131))

(declare-fun d!1063133 () Bool)

(assert (=> d!1063133 (= (list!14012 lt!1242657) (list!14014 (c!624557 lt!1242657)))))

(declare-fun bs!570841 () Bool)

(assert (= bs!570841 d!1063133))

(declare-fun m!4107865 () Bool)

(assert (=> bs!570841 m!4107865))

(assert (=> b!3610010 d!1063133))

(declare-fun d!1063135 () Bool)

(declare-fun lt!1242742 () BalanceConc!22768)

(assert (=> d!1063135 (= (list!14012 lt!1242742) (originalCharacters!6350 token!511))))

(assert (=> d!1063135 (= lt!1242742 (dynLambda!16440 (toChars!7779 (transformation!5636 (rule!8386 token!511))) (value!181086 token!511)))))

(assert (=> d!1063135 (= (charsOf!3650 token!511) lt!1242742)))

(declare-fun b_lambda!106827 () Bool)

(assert (=> (not b_lambda!106827) (not d!1063135)))

(assert (=> d!1063135 t!293316))

(declare-fun b_and!263227 () Bool)

(assert (= b_and!263219 (and (=> t!293316 result!252226) b_and!263227)))

(assert (=> d!1063135 t!293318))

(declare-fun b_and!263229 () Bool)

(assert (= b_and!263221 (and (=> t!293318 result!252228) b_and!263229)))

(assert (=> d!1063135 t!293320))

(declare-fun b_and!263231 () Bool)

(assert (= b_and!263223 (and (=> t!293320 result!252230) b_and!263231)))

(assert (=> d!1063135 t!293322))

(declare-fun b_and!263233 () Bool)

(assert (= b_and!263225 (and (=> t!293322 result!252232) b_and!263233)))

(declare-fun m!4107867 () Bool)

(assert (=> d!1063135 m!4107867))

(assert (=> d!1063135 m!4107823))

(assert (=> b!3610010 d!1063135))

(declare-fun d!1063137 () Bool)

(declare-fun lt!1242743 () Bool)

(assert (=> d!1063137 (= lt!1242743 (select (content!5435 (usedCharacters!850 (regex!5636 (rule!8386 (_1!22078 lt!1242645))))) lt!1242646))))

(declare-fun e!2234298 () Bool)

(assert (=> d!1063137 (= lt!1242743 e!2234298)))

(declare-fun res!1460287 () Bool)

(assert (=> d!1063137 (=> (not res!1460287) (not e!2234298))))

(assert (=> d!1063137 (= res!1460287 ((_ is Cons!37994) (usedCharacters!850 (regex!5636 (rule!8386 (_1!22078 lt!1242645))))))))

(assert (=> d!1063137 (= (contains!7335 (usedCharacters!850 (regex!5636 (rule!8386 (_1!22078 lt!1242645)))) lt!1242646) lt!1242743)))

(declare-fun b!3610241 () Bool)

(declare-fun e!2234297 () Bool)

(assert (=> b!3610241 (= e!2234298 e!2234297)))

(declare-fun res!1460288 () Bool)

(assert (=> b!3610241 (=> res!1460288 e!2234297)))

(assert (=> b!3610241 (= res!1460288 (= (h!43414 (usedCharacters!850 (regex!5636 (rule!8386 (_1!22078 lt!1242645))))) lt!1242646))))

(declare-fun b!3610242 () Bool)

(assert (=> b!3610242 (= e!2234297 (contains!7335 (t!293289 (usedCharacters!850 (regex!5636 (rule!8386 (_1!22078 lt!1242645))))) lt!1242646))))

(assert (= (and d!1063137 res!1460287) b!3610241))

(assert (= (and b!3610241 (not res!1460288)) b!3610242))

(assert (=> d!1063137 m!4107617))

(declare-fun m!4107869 () Bool)

(assert (=> d!1063137 m!4107869))

(declare-fun m!4107871 () Bool)

(assert (=> d!1063137 m!4107871))

(declare-fun m!4107873 () Bool)

(assert (=> b!3610242 m!4107873))

(assert (=> b!3609988 d!1063137))

(declare-fun bm!260967 () Bool)

(declare-fun call!260975 () List!38118)

(declare-fun call!260974 () List!38118)

(declare-fun c!624603 () Bool)

(declare-fun call!260972 () List!38118)

(assert (=> bm!260967 (= call!260972 (++!9452 (ite c!624603 call!260975 call!260974) (ite c!624603 call!260974 call!260975)))))

(declare-fun b!3610243 () Bool)

(declare-fun e!2234301 () List!38118)

(assert (=> b!3610243 (= e!2234301 call!260972)))

(declare-fun b!3610244 () Bool)

(declare-fun e!2234302 () List!38118)

(assert (=> b!3610244 (= e!2234302 (Cons!37994 (c!624556 (regex!5636 (rule!8386 (_1!22078 lt!1242645)))) Nil!37994))))

(declare-fun b!3610245 () Bool)

(declare-fun c!624605 () Bool)

(assert (=> b!3610245 (= c!624605 ((_ is Star!10395) (regex!5636 (rule!8386 (_1!22078 lt!1242645)))))))

(declare-fun e!2234299 () List!38118)

(assert (=> b!3610245 (= e!2234302 e!2234299)))

(declare-fun b!3610246 () Bool)

(declare-fun e!2234300 () List!38118)

(assert (=> b!3610246 (= e!2234300 Nil!37994)))

(declare-fun d!1063139 () Bool)

(declare-fun c!624604 () Bool)

(assert (=> d!1063139 (= c!624604 (or ((_ is EmptyExpr!10395) (regex!5636 (rule!8386 (_1!22078 lt!1242645)))) ((_ is EmptyLang!10395) (regex!5636 (rule!8386 (_1!22078 lt!1242645))))))))

(assert (=> d!1063139 (= (usedCharacters!850 (regex!5636 (rule!8386 (_1!22078 lt!1242645)))) e!2234300)))

(declare-fun b!3610247 () Bool)

(assert (=> b!3610247 (= e!2234300 e!2234302)))

(declare-fun c!624606 () Bool)

(assert (=> b!3610247 (= c!624606 ((_ is ElementMatch!10395) (regex!5636 (rule!8386 (_1!22078 lt!1242645)))))))

(declare-fun b!3610248 () Bool)

(declare-fun call!260973 () List!38118)

(assert (=> b!3610248 (= e!2234299 call!260973)))

(declare-fun b!3610249 () Bool)

(assert (=> b!3610249 (= e!2234301 call!260972)))

(declare-fun bm!260968 () Bool)

(assert (=> bm!260968 (= call!260973 (usedCharacters!850 (ite c!624605 (reg!10724 (regex!5636 (rule!8386 (_1!22078 lt!1242645)))) (ite c!624603 (regOne!21303 (regex!5636 (rule!8386 (_1!22078 lt!1242645)))) (regTwo!21302 (regex!5636 (rule!8386 (_1!22078 lt!1242645))))))))))

(declare-fun bm!260969 () Bool)

(assert (=> bm!260969 (= call!260974 (usedCharacters!850 (ite c!624603 (regTwo!21303 (regex!5636 (rule!8386 (_1!22078 lt!1242645)))) (regOne!21302 (regex!5636 (rule!8386 (_1!22078 lt!1242645)))))))))

(declare-fun b!3610250 () Bool)

(assert (=> b!3610250 (= e!2234299 e!2234301)))

(assert (=> b!3610250 (= c!624603 ((_ is Union!10395) (regex!5636 (rule!8386 (_1!22078 lt!1242645)))))))

(declare-fun bm!260970 () Bool)

(assert (=> bm!260970 (= call!260975 call!260973)))

(assert (= (and d!1063139 c!624604) b!3610246))

(assert (= (and d!1063139 (not c!624604)) b!3610247))

(assert (= (and b!3610247 c!624606) b!3610244))

(assert (= (and b!3610247 (not c!624606)) b!3610245))

(assert (= (and b!3610245 c!624605) b!3610248))

(assert (= (and b!3610245 (not c!624605)) b!3610250))

(assert (= (and b!3610250 c!624603) b!3610249))

(assert (= (and b!3610250 (not c!624603)) b!3610243))

(assert (= (or b!3610249 b!3610243) bm!260970))

(assert (= (or b!3610249 b!3610243) bm!260969))

(assert (= (or b!3610249 b!3610243) bm!260967))

(assert (= (or b!3610248 bm!260970) bm!260968))

(declare-fun m!4107875 () Bool)

(assert (=> bm!260967 m!4107875))

(declare-fun m!4107877 () Bool)

(assert (=> bm!260968 m!4107877))

(declare-fun m!4107879 () Bool)

(assert (=> bm!260969 m!4107879))

(assert (=> b!3609988 d!1063139))

(declare-fun d!1063141 () Bool)

(assert (=> d!1063141 (not (contains!7335 (usedCharacters!850 (regex!5636 (rule!8386 (_1!22078 lt!1242645)))) lt!1242646))))

(declare-fun lt!1242746 () Unit!54166)

(declare-fun choose!21106 (LexerInterface!5225 List!38119 List!38119 Rule!11072 Rule!11072 C!20976) Unit!54166)

(assert (=> d!1063141 (= lt!1242746 (choose!21106 thiss!23823 rules!3307 rules!3307 (rule!8386 (_1!22078 lt!1242645)) anOtherTypeRule!33 lt!1242646))))

(assert (=> d!1063141 (rulesInvariant!4622 thiss!23823 rules!3307)))

(assert (=> d!1063141 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!342 thiss!23823 rules!3307 rules!3307 (rule!8386 (_1!22078 lt!1242645)) anOtherTypeRule!33 lt!1242646) lt!1242746)))

(declare-fun bs!570842 () Bool)

(assert (= bs!570842 d!1063141))

(assert (=> bs!570842 m!4107617))

(assert (=> bs!570842 m!4107617))

(assert (=> bs!570842 m!4107619))

(declare-fun m!4107881 () Bool)

(assert (=> bs!570842 m!4107881))

(assert (=> bs!570842 m!4107637))

(assert (=> b!3609988 d!1063141))

(declare-fun d!1063143 () Bool)

(declare-fun lt!1242749 () Bool)

(declare-fun content!5436 (List!38119) (InoxSet Rule!11072))

(assert (=> d!1063143 (= lt!1242749 (select (content!5436 rules!3307) rule!403))))

(declare-fun e!2234308 () Bool)

(assert (=> d!1063143 (= lt!1242749 e!2234308)))

(declare-fun res!1460294 () Bool)

(assert (=> d!1063143 (=> (not res!1460294) (not e!2234308))))

(assert (=> d!1063143 (= res!1460294 ((_ is Cons!37995) rules!3307))))

(assert (=> d!1063143 (= (contains!7336 rules!3307 rule!403) lt!1242749)))

(declare-fun b!3610255 () Bool)

(declare-fun e!2234307 () Bool)

(assert (=> b!3610255 (= e!2234308 e!2234307)))

(declare-fun res!1460293 () Bool)

(assert (=> b!3610255 (=> res!1460293 e!2234307)))

(assert (=> b!3610255 (= res!1460293 (= (h!43415 rules!3307) rule!403))))

(declare-fun b!3610256 () Bool)

(assert (=> b!3610256 (= e!2234307 (contains!7336 (t!293290 rules!3307) rule!403))))

(assert (= (and d!1063143 res!1460294) b!3610255))

(assert (= (and b!3610255 (not res!1460293)) b!3610256))

(declare-fun m!4107883 () Bool)

(assert (=> d!1063143 m!4107883))

(declare-fun m!4107885 () Bool)

(assert (=> d!1063143 m!4107885))

(declare-fun m!4107887 () Bool)

(assert (=> b!3610256 m!4107887))

(assert (=> b!3610016 d!1063143))

(declare-fun d!1063145 () Bool)

(assert (=> d!1063145 (not (contains!7335 (usedCharacters!850 (regex!5636 (rule!8386 (_1!22078 lt!1242645)))) lt!1242636))))

(declare-fun lt!1242750 () Unit!54166)

(assert (=> d!1063145 (= lt!1242750 (choose!21106 thiss!23823 rules!3307 rules!3307 (rule!8386 (_1!22078 lt!1242645)) rule!403 lt!1242636))))

(assert (=> d!1063145 (rulesInvariant!4622 thiss!23823 rules!3307)))

(assert (=> d!1063145 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!342 thiss!23823 rules!3307 rules!3307 (rule!8386 (_1!22078 lt!1242645)) rule!403 lt!1242636) lt!1242750)))

(declare-fun bs!570843 () Bool)

(assert (= bs!570843 d!1063145))

(assert (=> bs!570843 m!4107617))

(assert (=> bs!570843 m!4107617))

(assert (=> bs!570843 m!4107797))

(declare-fun m!4107889 () Bool)

(assert (=> bs!570843 m!4107889))

(assert (=> bs!570843 m!4107637))

(assert (=> b!3609995 d!1063145))

(declare-fun d!1063147 () Bool)

(declare-fun lt!1242751 () Bool)

(assert (=> d!1063147 (= lt!1242751 (select (content!5435 (usedCharacters!850 (regex!5636 anOtherTypeRule!33))) lt!1242646))))

(declare-fun e!2234310 () Bool)

(assert (=> d!1063147 (= lt!1242751 e!2234310)))

(declare-fun res!1460295 () Bool)

(assert (=> d!1063147 (=> (not res!1460295) (not e!2234310))))

(assert (=> d!1063147 (= res!1460295 ((_ is Cons!37994) (usedCharacters!850 (regex!5636 anOtherTypeRule!33))))))

(assert (=> d!1063147 (= (contains!7335 (usedCharacters!850 (regex!5636 anOtherTypeRule!33)) lt!1242646) lt!1242751)))

(declare-fun b!3610257 () Bool)

(declare-fun e!2234309 () Bool)

(assert (=> b!3610257 (= e!2234310 e!2234309)))

(declare-fun res!1460296 () Bool)

(assert (=> b!3610257 (=> res!1460296 e!2234309)))

(assert (=> b!3610257 (= res!1460296 (= (h!43414 (usedCharacters!850 (regex!5636 anOtherTypeRule!33))) lt!1242646))))

(declare-fun b!3610258 () Bool)

(assert (=> b!3610258 (= e!2234309 (contains!7335 (t!293289 (usedCharacters!850 (regex!5636 anOtherTypeRule!33))) lt!1242646))))

(assert (= (and d!1063147 res!1460295) b!3610257))

(assert (= (and b!3610257 (not res!1460296)) b!3610258))

(assert (=> d!1063147 m!4107613))

(declare-fun m!4107891 () Bool)

(assert (=> d!1063147 m!4107891))

(declare-fun m!4107893 () Bool)

(assert (=> d!1063147 m!4107893))

(declare-fun m!4107895 () Bool)

(assert (=> b!3610258 m!4107895))

(assert (=> b!3609997 d!1063147))

(declare-fun call!260976 () List!38118)

(declare-fun call!260979 () List!38118)

(declare-fun call!260978 () List!38118)

(declare-fun bm!260971 () Bool)

(declare-fun c!624608 () Bool)

(assert (=> bm!260971 (= call!260976 (++!9452 (ite c!624608 call!260979 call!260978) (ite c!624608 call!260978 call!260979)))))

(declare-fun b!3610259 () Bool)

(declare-fun e!2234313 () List!38118)

(assert (=> b!3610259 (= e!2234313 call!260976)))

(declare-fun b!3610260 () Bool)

(declare-fun e!2234314 () List!38118)

(assert (=> b!3610260 (= e!2234314 (Cons!37994 (c!624556 (regex!5636 anOtherTypeRule!33)) Nil!37994))))

(declare-fun b!3610261 () Bool)

(declare-fun c!624610 () Bool)

(assert (=> b!3610261 (= c!624610 ((_ is Star!10395) (regex!5636 anOtherTypeRule!33)))))

(declare-fun e!2234311 () List!38118)

(assert (=> b!3610261 (= e!2234314 e!2234311)))

(declare-fun b!3610262 () Bool)

(declare-fun e!2234312 () List!38118)

(assert (=> b!3610262 (= e!2234312 Nil!37994)))

(declare-fun d!1063149 () Bool)

(declare-fun c!624609 () Bool)

(assert (=> d!1063149 (= c!624609 (or ((_ is EmptyExpr!10395) (regex!5636 anOtherTypeRule!33)) ((_ is EmptyLang!10395) (regex!5636 anOtherTypeRule!33))))))

(assert (=> d!1063149 (= (usedCharacters!850 (regex!5636 anOtherTypeRule!33)) e!2234312)))

(declare-fun b!3610263 () Bool)

(assert (=> b!3610263 (= e!2234312 e!2234314)))

(declare-fun c!624611 () Bool)

(assert (=> b!3610263 (= c!624611 ((_ is ElementMatch!10395) (regex!5636 anOtherTypeRule!33)))))

(declare-fun b!3610264 () Bool)

(declare-fun call!260977 () List!38118)

(assert (=> b!3610264 (= e!2234311 call!260977)))

(declare-fun b!3610265 () Bool)

(assert (=> b!3610265 (= e!2234313 call!260976)))

(declare-fun bm!260972 () Bool)

(assert (=> bm!260972 (= call!260977 (usedCharacters!850 (ite c!624610 (reg!10724 (regex!5636 anOtherTypeRule!33)) (ite c!624608 (regOne!21303 (regex!5636 anOtherTypeRule!33)) (regTwo!21302 (regex!5636 anOtherTypeRule!33))))))))

(declare-fun bm!260973 () Bool)

(assert (=> bm!260973 (= call!260978 (usedCharacters!850 (ite c!624608 (regTwo!21303 (regex!5636 anOtherTypeRule!33)) (regOne!21302 (regex!5636 anOtherTypeRule!33)))))))

(declare-fun b!3610266 () Bool)

(assert (=> b!3610266 (= e!2234311 e!2234313)))

(assert (=> b!3610266 (= c!624608 ((_ is Union!10395) (regex!5636 anOtherTypeRule!33)))))

(declare-fun bm!260974 () Bool)

(assert (=> bm!260974 (= call!260979 call!260977)))

(assert (= (and d!1063149 c!624609) b!3610262))

(assert (= (and d!1063149 (not c!624609)) b!3610263))

(assert (= (and b!3610263 c!624611) b!3610260))

(assert (= (and b!3610263 (not c!624611)) b!3610261))

(assert (= (and b!3610261 c!624610) b!3610264))

(assert (= (and b!3610261 (not c!624610)) b!3610266))

(assert (= (and b!3610266 c!624608) b!3610265))

(assert (= (and b!3610266 (not c!624608)) b!3610259))

(assert (= (or b!3610265 b!3610259) bm!260974))

(assert (= (or b!3610265 b!3610259) bm!260973))

(assert (= (or b!3610265 b!3610259) bm!260971))

(assert (= (or b!3610264 bm!260974) bm!260972))

(declare-fun m!4107897 () Bool)

(assert (=> bm!260971 m!4107897))

(declare-fun m!4107899 () Bool)

(assert (=> bm!260972 m!4107899))

(declare-fun m!4107901 () Bool)

(assert (=> bm!260973 m!4107901))

(assert (=> b!3609997 d!1063149))

(declare-fun d!1063151 () Bool)

(assert (=> d!1063151 (= (isEmpty!22435 (_2!22078 lt!1242662)) ((_ is Nil!37994) (_2!22078 lt!1242662)))))

(assert (=> b!3609996 d!1063151))

(declare-fun d!1063153 () Bool)

(assert (=> d!1063153 (= (inv!51364 (tag!6342 anOtherTypeRule!33)) (= (mod (str.len (value!181085 (tag!6342 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3609993 d!1063153))

(declare-fun d!1063155 () Bool)

(declare-fun res!1460299 () Bool)

(declare-fun e!2234317 () Bool)

(assert (=> d!1063155 (=> (not res!1460299) (not e!2234317))))

(declare-fun semiInverseModEq!2397 (Int Int) Bool)

(assert (=> d!1063155 (= res!1460299 (semiInverseModEq!2397 (toChars!7779 (transformation!5636 anOtherTypeRule!33)) (toValue!7920 (transformation!5636 anOtherTypeRule!33))))))

(assert (=> d!1063155 (= (inv!51367 (transformation!5636 anOtherTypeRule!33)) e!2234317)))

(declare-fun b!3610269 () Bool)

(declare-fun equivClasses!2296 (Int Int) Bool)

(assert (=> b!3610269 (= e!2234317 (equivClasses!2296 (toChars!7779 (transformation!5636 anOtherTypeRule!33)) (toValue!7920 (transformation!5636 anOtherTypeRule!33))))))

(assert (= (and d!1063155 res!1460299) b!3610269))

(declare-fun m!4107903 () Bool)

(assert (=> d!1063155 m!4107903))

(declare-fun m!4107905 () Bool)

(assert (=> b!3610269 m!4107905))

(assert (=> b!3609993 d!1063155))

(declare-fun d!1063157 () Bool)

(declare-fun lt!1242752 () Bool)

(assert (=> d!1063157 (= lt!1242752 (select (content!5435 call!260950) lt!1242636))))

(declare-fun e!2234319 () Bool)

(assert (=> d!1063157 (= lt!1242752 e!2234319)))

(declare-fun res!1460300 () Bool)

(assert (=> d!1063157 (=> (not res!1460300) (not e!2234319))))

(assert (=> d!1063157 (= res!1460300 ((_ is Cons!37994) call!260950))))

(assert (=> d!1063157 (= (contains!7335 call!260950 lt!1242636) lt!1242752)))

(declare-fun b!3610270 () Bool)

(declare-fun e!2234318 () Bool)

(assert (=> b!3610270 (= e!2234319 e!2234318)))

(declare-fun res!1460301 () Bool)

(assert (=> b!3610270 (=> res!1460301 e!2234318)))

(assert (=> b!3610270 (= res!1460301 (= (h!43414 call!260950) lt!1242636))))

(declare-fun b!3610271 () Bool)

(assert (=> b!3610271 (= e!2234318 (contains!7335 (t!293289 call!260950) lt!1242636))))

(assert (= (and d!1063157 res!1460300) b!3610270))

(assert (= (and b!3610270 (not res!1460301)) b!3610271))

(declare-fun m!4107907 () Bool)

(assert (=> d!1063157 m!4107907))

(declare-fun m!4107909 () Bool)

(assert (=> d!1063157 m!4107909))

(declare-fun m!4107911 () Bool)

(assert (=> b!3610271 m!4107911))

(assert (=> bm!260943 d!1063157))

(declare-fun d!1063159 () Bool)

(assert (=> d!1063159 (= (get!12330 lt!1242655) (v!37643 lt!1242655))))

(assert (=> b!3609992 d!1063159))

(declare-fun d!1063161 () Bool)

(declare-fun e!2234326 () Bool)

(assert (=> d!1063161 e!2234326))

(declare-fun res!1460313 () Bool)

(assert (=> d!1063161 (=> res!1460313 e!2234326)))

(declare-fun lt!1242755 () Bool)

(assert (=> d!1063161 (= res!1460313 (not lt!1242755))))

(declare-fun e!2234328 () Bool)

(assert (=> d!1063161 (= lt!1242755 e!2234328)))

(declare-fun res!1460310 () Bool)

(assert (=> d!1063161 (=> res!1460310 e!2234328)))

(assert (=> d!1063161 (= res!1460310 ((_ is Nil!37994) lt!1242634))))

(assert (=> d!1063161 (= (isPrefix!2999 lt!1242634 lt!1242643) lt!1242755)))

(declare-fun b!3610282 () Bool)

(declare-fun e!2234327 () Bool)

(assert (=> b!3610282 (= e!2234327 (isPrefix!2999 (tail!5597 lt!1242634) (tail!5597 lt!1242643)))))

(declare-fun b!3610283 () Bool)

(assert (=> b!3610283 (= e!2234326 (>= (size!28966 lt!1242643) (size!28966 lt!1242634)))))

(declare-fun b!3610281 () Bool)

(declare-fun res!1460311 () Bool)

(assert (=> b!3610281 (=> (not res!1460311) (not e!2234327))))

(assert (=> b!3610281 (= res!1460311 (= (head!7594 lt!1242634) (head!7594 lt!1242643)))))

(declare-fun b!3610280 () Bool)

(assert (=> b!3610280 (= e!2234328 e!2234327)))

(declare-fun res!1460312 () Bool)

(assert (=> b!3610280 (=> (not res!1460312) (not e!2234327))))

(assert (=> b!3610280 (= res!1460312 (not ((_ is Nil!37994) lt!1242643)))))

(assert (= (and d!1063161 (not res!1460310)) b!3610280))

(assert (= (and b!3610280 res!1460312) b!3610281))

(assert (= (and b!3610281 res!1460311) b!3610282))

(assert (= (and d!1063161 (not res!1460313)) b!3610283))

(declare-fun m!4107913 () Bool)

(assert (=> b!3610282 m!4107913))

(declare-fun m!4107915 () Bool)

(assert (=> b!3610282 m!4107915))

(assert (=> b!3610282 m!4107913))

(assert (=> b!3610282 m!4107915))

(declare-fun m!4107917 () Bool)

(assert (=> b!3610282 m!4107917))

(declare-fun m!4107919 () Bool)

(assert (=> b!3610283 m!4107919))

(assert (=> b!3610283 m!4107579))

(assert (=> b!3610281 m!4107603))

(declare-fun m!4107921 () Bool)

(assert (=> b!3610281 m!4107921))

(assert (=> b!3609992 d!1063161))

(declare-fun d!1063163 () Bool)

(declare-fun e!2234333 () Bool)

(assert (=> d!1063163 e!2234333))

(declare-fun res!1460318 () Bool)

(assert (=> d!1063163 (=> (not res!1460318) (not e!2234333))))

(declare-fun lt!1242758 () List!38118)

(assert (=> d!1063163 (= res!1460318 (= (content!5435 lt!1242758) ((_ map or) (content!5435 lt!1242634) (content!5435 (_2!22078 lt!1242645)))))))

(declare-fun e!2234334 () List!38118)

(assert (=> d!1063163 (= lt!1242758 e!2234334)))

(declare-fun c!624614 () Bool)

(assert (=> d!1063163 (= c!624614 ((_ is Nil!37994) lt!1242634))))

(assert (=> d!1063163 (= (++!9452 lt!1242634 (_2!22078 lt!1242645)) lt!1242758)))

(declare-fun b!3610295 () Bool)

(assert (=> b!3610295 (= e!2234333 (or (not (= (_2!22078 lt!1242645) Nil!37994)) (= lt!1242758 lt!1242634)))))

(declare-fun b!3610294 () Bool)

(declare-fun res!1460319 () Bool)

(assert (=> b!3610294 (=> (not res!1460319) (not e!2234333))))

(assert (=> b!3610294 (= res!1460319 (= (size!28966 lt!1242758) (+ (size!28966 lt!1242634) (size!28966 (_2!22078 lt!1242645)))))))

(declare-fun b!3610292 () Bool)

(assert (=> b!3610292 (= e!2234334 (_2!22078 lt!1242645))))

(declare-fun b!3610293 () Bool)

(assert (=> b!3610293 (= e!2234334 (Cons!37994 (h!43414 lt!1242634) (++!9452 (t!293289 lt!1242634) (_2!22078 lt!1242645))))))

(assert (= (and d!1063163 c!624614) b!3610292))

(assert (= (and d!1063163 (not c!624614)) b!3610293))

(assert (= (and d!1063163 res!1460318) b!3610294))

(assert (= (and b!3610294 res!1460319) b!3610295))

(declare-fun m!4107923 () Bool)

(assert (=> d!1063163 m!4107923))

(assert (=> d!1063163 m!4107781))

(declare-fun m!4107925 () Bool)

(assert (=> d!1063163 m!4107925))

(declare-fun m!4107927 () Bool)

(assert (=> b!3610294 m!4107927))

(assert (=> b!3610294 m!4107579))

(declare-fun m!4107929 () Bool)

(assert (=> b!3610294 m!4107929))

(declare-fun m!4107931 () Bool)

(assert (=> b!3610293 m!4107931))

(assert (=> b!3609992 d!1063163))

(declare-fun d!1063165 () Bool)

(declare-fun isEmpty!22438 (Option!7903) Bool)

(assert (=> d!1063165 (= (isDefined!6134 lt!1242656) (not (isEmpty!22438 lt!1242656)))))

(declare-fun bs!570844 () Bool)

(assert (= bs!570844 d!1063165))

(declare-fun m!4107933 () Bool)

(assert (=> bs!570844 m!4107933))

(assert (=> b!3609992 d!1063165))

(declare-fun d!1063167 () Bool)

(declare-fun e!2234335 () Bool)

(assert (=> d!1063167 e!2234335))

(declare-fun res!1460323 () Bool)

(assert (=> d!1063167 (=> res!1460323 e!2234335)))

(declare-fun lt!1242759 () Bool)

(assert (=> d!1063167 (= res!1460323 (not lt!1242759))))

(declare-fun e!2234337 () Bool)

(assert (=> d!1063167 (= lt!1242759 e!2234337)))

(declare-fun res!1460320 () Bool)

(assert (=> d!1063167 (=> res!1460320 e!2234337)))

(assert (=> d!1063167 (= res!1460320 ((_ is Nil!37994) lt!1242658))))

(assert (=> d!1063167 (= (isPrefix!2999 lt!1242658 lt!1242643) lt!1242759)))

(declare-fun b!3610298 () Bool)

(declare-fun e!2234336 () Bool)

(assert (=> b!3610298 (= e!2234336 (isPrefix!2999 (tail!5597 lt!1242658) (tail!5597 lt!1242643)))))

(declare-fun b!3610299 () Bool)

(assert (=> b!3610299 (= e!2234335 (>= (size!28966 lt!1242643) (size!28966 lt!1242658)))))

(declare-fun b!3610297 () Bool)

(declare-fun res!1460321 () Bool)

(assert (=> b!3610297 (=> (not res!1460321) (not e!2234336))))

(assert (=> b!3610297 (= res!1460321 (= (head!7594 lt!1242658) (head!7594 lt!1242643)))))

(declare-fun b!3610296 () Bool)

(assert (=> b!3610296 (= e!2234337 e!2234336)))

(declare-fun res!1460322 () Bool)

(assert (=> b!3610296 (=> (not res!1460322) (not e!2234336))))

(assert (=> b!3610296 (= res!1460322 (not ((_ is Nil!37994) lt!1242643)))))

(assert (= (and d!1063167 (not res!1460320)) b!3610296))

(assert (= (and b!3610296 res!1460322) b!3610297))

(assert (= (and b!3610297 res!1460321) b!3610298))

(assert (= (and d!1063167 (not res!1460323)) b!3610299))

(declare-fun m!4107935 () Bool)

(assert (=> b!3610298 m!4107935))

(assert (=> b!3610298 m!4107915))

(assert (=> b!3610298 m!4107935))

(assert (=> b!3610298 m!4107915))

(declare-fun m!4107937 () Bool)

(assert (=> b!3610298 m!4107937))

(assert (=> b!3610299 m!4107919))

(assert (=> b!3610299 m!4107859))

(declare-fun m!4107939 () Bool)

(assert (=> b!3610297 m!4107939))

(assert (=> b!3610297 m!4107921))

(assert (=> b!3609992 d!1063167))

(assert (=> b!3609992 d!1063099))

(declare-fun d!1063169 () Bool)

(declare-fun e!2234338 () Bool)

(assert (=> d!1063169 e!2234338))

(declare-fun res!1460324 () Bool)

(assert (=> d!1063169 (=> (not res!1460324) (not e!2234338))))

(declare-fun lt!1242760 () List!38118)

(assert (=> d!1063169 (= res!1460324 (= (content!5435 lt!1242760) ((_ map or) (content!5435 lt!1242658) (content!5435 suffix!1395))))))

(declare-fun e!2234339 () List!38118)

(assert (=> d!1063169 (= lt!1242760 e!2234339)))

(declare-fun c!624615 () Bool)

(assert (=> d!1063169 (= c!624615 ((_ is Nil!37994) lt!1242658))))

(assert (=> d!1063169 (= (++!9452 lt!1242658 suffix!1395) lt!1242760)))

(declare-fun b!3610303 () Bool)

(assert (=> b!3610303 (= e!2234338 (or (not (= suffix!1395 Nil!37994)) (= lt!1242760 lt!1242658)))))

(declare-fun b!3610302 () Bool)

(declare-fun res!1460325 () Bool)

(assert (=> b!3610302 (=> (not res!1460325) (not e!2234338))))

(assert (=> b!3610302 (= res!1460325 (= (size!28966 lt!1242760) (+ (size!28966 lt!1242658) (size!28966 suffix!1395))))))

(declare-fun b!3610300 () Bool)

(assert (=> b!3610300 (= e!2234339 suffix!1395)))

(declare-fun b!3610301 () Bool)

(assert (=> b!3610301 (= e!2234339 (Cons!37994 (h!43414 lt!1242658) (++!9452 (t!293289 lt!1242658) suffix!1395)))))

(assert (= (and d!1063169 c!624615) b!3610300))

(assert (= (and d!1063169 (not c!624615)) b!3610301))

(assert (= (and d!1063169 res!1460324) b!3610302))

(assert (= (and b!3610302 res!1460325) b!3610303))

(declare-fun m!4107941 () Bool)

(assert (=> d!1063169 m!4107941))

(declare-fun m!4107943 () Bool)

(assert (=> d!1063169 m!4107943))

(declare-fun m!4107945 () Bool)

(assert (=> d!1063169 m!4107945))

(declare-fun m!4107947 () Bool)

(assert (=> b!3610302 m!4107947))

(assert (=> b!3610302 m!4107859))

(declare-fun m!4107949 () Bool)

(assert (=> b!3610302 m!4107949))

(declare-fun m!4107951 () Bool)

(assert (=> b!3610301 m!4107951))

(assert (=> b!3609992 d!1063169))

(declare-fun b!3610316 () Bool)

(declare-fun lt!1242769 () Unit!54166)

(declare-fun lt!1242768 () Unit!54166)

(assert (=> b!3610316 (= lt!1242769 lt!1242768)))

(assert (=> b!3610316 (rulesInvariant!4622 thiss!23823 (t!293290 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!528 (LexerInterface!5225 Rule!11072 List!38119) Unit!54166)

(assert (=> b!3610316 (= lt!1242768 (lemmaInvariantOnRulesThenOnTail!528 thiss!23823 (h!43415 rules!3307) (t!293290 rules!3307)))))

(declare-fun e!2234350 () Option!7903)

(assert (=> b!3610316 (= e!2234350 (getRuleFromTag!1242 thiss!23823 (t!293290 rules!3307) (tag!6342 (rule!8386 (_1!22078 lt!1242645)))))))

(declare-fun b!3610317 () Bool)

(declare-fun e!2234348 () Option!7903)

(assert (=> b!3610317 (= e!2234348 e!2234350)))

(declare-fun c!624621 () Bool)

(assert (=> b!3610317 (= c!624621 (and ((_ is Cons!37995) rules!3307) (not (= (tag!6342 (h!43415 rules!3307)) (tag!6342 (rule!8386 (_1!22078 lt!1242645)))))))))

(declare-fun d!1063171 () Bool)

(declare-fun e!2234351 () Bool)

(assert (=> d!1063171 e!2234351))

(declare-fun res!1460330 () Bool)

(assert (=> d!1063171 (=> res!1460330 e!2234351)))

(declare-fun lt!1242767 () Option!7903)

(assert (=> d!1063171 (= res!1460330 (isEmpty!22438 lt!1242767))))

(assert (=> d!1063171 (= lt!1242767 e!2234348)))

(declare-fun c!624620 () Bool)

(assert (=> d!1063171 (= c!624620 (and ((_ is Cons!37995) rules!3307) (= (tag!6342 (h!43415 rules!3307)) (tag!6342 (rule!8386 (_1!22078 lt!1242645))))))))

(assert (=> d!1063171 (rulesInvariant!4622 thiss!23823 rules!3307)))

(assert (=> d!1063171 (= (getRuleFromTag!1242 thiss!23823 rules!3307 (tag!6342 (rule!8386 (_1!22078 lt!1242645)))) lt!1242767)))

(declare-fun b!3610318 () Bool)

(assert (=> b!3610318 (= e!2234348 (Some!7902 (h!43415 rules!3307)))))

(declare-fun b!3610319 () Bool)

(declare-fun e!2234349 () Bool)

(assert (=> b!3610319 (= e!2234349 (= (tag!6342 (get!12331 lt!1242767)) (tag!6342 (rule!8386 (_1!22078 lt!1242645)))))))

(declare-fun b!3610320 () Bool)

(assert (=> b!3610320 (= e!2234351 e!2234349)))

(declare-fun res!1460331 () Bool)

(assert (=> b!3610320 (=> (not res!1460331) (not e!2234349))))

(assert (=> b!3610320 (= res!1460331 (contains!7336 rules!3307 (get!12331 lt!1242767)))))

(declare-fun b!3610321 () Bool)

(assert (=> b!3610321 (= e!2234350 None!7902)))

(assert (= (and d!1063171 c!624620) b!3610318))

(assert (= (and d!1063171 (not c!624620)) b!3610317))

(assert (= (and b!3610317 c!624621) b!3610316))

(assert (= (and b!3610317 (not c!624621)) b!3610321))

(assert (= (and d!1063171 (not res!1460330)) b!3610320))

(assert (= (and b!3610320 res!1460331) b!3610319))

(declare-fun m!4107953 () Bool)

(assert (=> b!3610316 m!4107953))

(declare-fun m!4107955 () Bool)

(assert (=> b!3610316 m!4107955))

(declare-fun m!4107957 () Bool)

(assert (=> b!3610316 m!4107957))

(declare-fun m!4107959 () Bool)

(assert (=> d!1063171 m!4107959))

(assert (=> d!1063171 m!4107637))

(declare-fun m!4107961 () Bool)

(assert (=> b!3610319 m!4107961))

(assert (=> b!3610320 m!4107961))

(assert (=> b!3610320 m!4107961))

(declare-fun m!4107963 () Bool)

(assert (=> b!3610320 m!4107963))

(assert (=> b!3609992 d!1063171))

(declare-fun d!1063173 () Bool)

(assert (=> d!1063173 (isPrefix!2999 lt!1242634 (++!9452 lt!1242634 (_2!22078 lt!1242645)))))

(declare-fun lt!1242772 () Unit!54166)

(declare-fun choose!21109 (List!38118 List!38118) Unit!54166)

(assert (=> d!1063173 (= lt!1242772 (choose!21109 lt!1242634 (_2!22078 lt!1242645)))))

(assert (=> d!1063173 (= (lemmaConcatTwoListThenFirstIsPrefix!1920 lt!1242634 (_2!22078 lt!1242645)) lt!1242772)))

(declare-fun bs!570845 () Bool)

(assert (= bs!570845 d!1063173))

(assert (=> bs!570845 m!4107533))

(assert (=> bs!570845 m!4107533))

(assert (=> bs!570845 m!4107535))

(declare-fun m!4107965 () Bool)

(assert (=> bs!570845 m!4107965))

(assert (=> b!3609992 d!1063173))

(declare-fun call!260980 () Option!7902)

(declare-fun bm!260975 () Bool)

(assert (=> bm!260975 (= call!260980 (maxPrefixOneRule!1903 thiss!23823 (h!43415 rules!3307) lt!1242643))))

(declare-fun d!1063175 () Bool)

(declare-fun e!2234354 () Bool)

(assert (=> d!1063175 e!2234354))

(declare-fun res!1460336 () Bool)

(assert (=> d!1063175 (=> res!1460336 e!2234354)))

(declare-fun lt!1242773 () Option!7902)

(assert (=> d!1063175 (= res!1460336 (isEmpty!22437 lt!1242773))))

(declare-fun e!2234352 () Option!7902)

(assert (=> d!1063175 (= lt!1242773 e!2234352)))

(declare-fun c!624622 () Bool)

(assert (=> d!1063175 (= c!624622 (and ((_ is Cons!37995) rules!3307) ((_ is Nil!37995) (t!293290 rules!3307))))))

(declare-fun lt!1242776 () Unit!54166)

(declare-fun lt!1242777 () Unit!54166)

(assert (=> d!1063175 (= lt!1242776 lt!1242777)))

(assert (=> d!1063175 (isPrefix!2999 lt!1242643 lt!1242643)))

(assert (=> d!1063175 (= lt!1242777 (lemmaIsPrefixRefl!1916 lt!1242643 lt!1242643))))

(assert (=> d!1063175 (rulesValidInductive!1981 thiss!23823 rules!3307)))

(assert (=> d!1063175 (= (maxPrefix!2759 thiss!23823 rules!3307 lt!1242643) lt!1242773)))

(declare-fun b!3610322 () Bool)

(declare-fun e!2234353 () Bool)

(assert (=> b!3610322 (= e!2234354 e!2234353)))

(declare-fun res!1460335 () Bool)

(assert (=> b!3610322 (=> (not res!1460335) (not e!2234353))))

(assert (=> b!3610322 (= res!1460335 (isDefined!6135 lt!1242773))))

(declare-fun b!3610323 () Bool)

(declare-fun res!1460338 () Bool)

(assert (=> b!3610323 (=> (not res!1460338) (not e!2234353))))

(assert (=> b!3610323 (= res!1460338 (= (++!9452 (list!14012 (charsOf!3650 (_1!22078 (get!12330 lt!1242773)))) (_2!22078 (get!12330 lt!1242773))) lt!1242643))))

(declare-fun b!3610324 () Bool)

(declare-fun res!1460334 () Bool)

(assert (=> b!3610324 (=> (not res!1460334) (not e!2234353))))

(assert (=> b!3610324 (= res!1460334 (= (value!181086 (_1!22078 (get!12330 lt!1242773))) (apply!9142 (transformation!5636 (rule!8386 (_1!22078 (get!12330 lt!1242773)))) (seqFromList!4189 (originalCharacters!6350 (_1!22078 (get!12330 lt!1242773)))))))))

(declare-fun b!3610325 () Bool)

(declare-fun lt!1242775 () Option!7902)

(declare-fun lt!1242774 () Option!7902)

(assert (=> b!3610325 (= e!2234352 (ite (and ((_ is None!7901) lt!1242775) ((_ is None!7901) lt!1242774)) None!7901 (ite ((_ is None!7901) lt!1242774) lt!1242775 (ite ((_ is None!7901) lt!1242775) lt!1242774 (ite (>= (size!28965 (_1!22078 (v!37643 lt!1242775))) (size!28965 (_1!22078 (v!37643 lt!1242774)))) lt!1242775 lt!1242774)))))))

(assert (=> b!3610325 (= lt!1242775 call!260980)))

(assert (=> b!3610325 (= lt!1242774 (maxPrefix!2759 thiss!23823 (t!293290 rules!3307) lt!1242643))))

(declare-fun b!3610326 () Bool)

(declare-fun res!1460333 () Bool)

(assert (=> b!3610326 (=> (not res!1460333) (not e!2234353))))

(assert (=> b!3610326 (= res!1460333 (= (list!14012 (charsOf!3650 (_1!22078 (get!12330 lt!1242773)))) (originalCharacters!6350 (_1!22078 (get!12330 lt!1242773)))))))

(declare-fun b!3610327 () Bool)

(assert (=> b!3610327 (= e!2234352 call!260980)))

(declare-fun b!3610328 () Bool)

(assert (=> b!3610328 (= e!2234353 (contains!7336 rules!3307 (rule!8386 (_1!22078 (get!12330 lt!1242773)))))))

(declare-fun b!3610329 () Bool)

(declare-fun res!1460332 () Bool)

(assert (=> b!3610329 (=> (not res!1460332) (not e!2234353))))

(assert (=> b!3610329 (= res!1460332 (< (size!28966 (_2!22078 (get!12330 lt!1242773))) (size!28966 lt!1242643)))))

(declare-fun b!3610330 () Bool)

(declare-fun res!1460337 () Bool)

(assert (=> b!3610330 (=> (not res!1460337) (not e!2234353))))

(assert (=> b!3610330 (= res!1460337 (matchR!4964 (regex!5636 (rule!8386 (_1!22078 (get!12330 lt!1242773)))) (list!14012 (charsOf!3650 (_1!22078 (get!12330 lt!1242773))))))))

(assert (= (and d!1063175 c!624622) b!3610327))

(assert (= (and d!1063175 (not c!624622)) b!3610325))

(assert (= (or b!3610327 b!3610325) bm!260975))

(assert (= (and d!1063175 (not res!1460336)) b!3610322))

(assert (= (and b!3610322 res!1460335) b!3610326))

(assert (= (and b!3610326 res!1460333) b!3610329))

(assert (= (and b!3610329 res!1460332) b!3610323))

(assert (= (and b!3610323 res!1460338) b!3610324))

(assert (= (and b!3610324 res!1460334) b!3610330))

(assert (= (and b!3610330 res!1460337) b!3610328))

(declare-fun m!4107967 () Bool)

(assert (=> b!3610324 m!4107967))

(declare-fun m!4107969 () Bool)

(assert (=> b!3610324 m!4107969))

(assert (=> b!3610324 m!4107969))

(declare-fun m!4107971 () Bool)

(assert (=> b!3610324 m!4107971))

(declare-fun m!4107973 () Bool)

(assert (=> d!1063175 m!4107973))

(declare-fun m!4107975 () Bool)

(assert (=> d!1063175 m!4107975))

(declare-fun m!4107977 () Bool)

(assert (=> d!1063175 m!4107977))

(assert (=> d!1063175 m!4107843))

(assert (=> b!3610326 m!4107967))

(declare-fun m!4107979 () Bool)

(assert (=> b!3610326 m!4107979))

(assert (=> b!3610326 m!4107979))

(declare-fun m!4107981 () Bool)

(assert (=> b!3610326 m!4107981))

(assert (=> b!3610323 m!4107967))

(assert (=> b!3610323 m!4107979))

(assert (=> b!3610323 m!4107979))

(assert (=> b!3610323 m!4107981))

(assert (=> b!3610323 m!4107981))

(declare-fun m!4107983 () Bool)

(assert (=> b!3610323 m!4107983))

(assert (=> b!3610328 m!4107967))

(declare-fun m!4107985 () Bool)

(assert (=> b!3610328 m!4107985))

(declare-fun m!4107987 () Bool)

(assert (=> b!3610322 m!4107987))

(assert (=> b!3610330 m!4107967))

(assert (=> b!3610330 m!4107979))

(assert (=> b!3610330 m!4107979))

(assert (=> b!3610330 m!4107981))

(assert (=> b!3610330 m!4107981))

(declare-fun m!4107989 () Bool)

(assert (=> b!3610330 m!4107989))

(assert (=> b!3610329 m!4107967))

(declare-fun m!4107991 () Bool)

(assert (=> b!3610329 m!4107991))

(assert (=> b!3610329 m!4107919))

(declare-fun m!4107993 () Bool)

(assert (=> b!3610325 m!4107993))

(declare-fun m!4107995 () Bool)

(assert (=> bm!260975 m!4107995))

(assert (=> b!3609992 d!1063175))

(declare-fun d!1063177 () Bool)

(declare-fun e!2234355 () Bool)

(assert (=> d!1063177 e!2234355))

(declare-fun res!1460342 () Bool)

(assert (=> d!1063177 (=> res!1460342 e!2234355)))

(declare-fun lt!1242778 () Bool)

(assert (=> d!1063177 (= res!1460342 (not lt!1242778))))

(declare-fun e!2234357 () Bool)

(assert (=> d!1063177 (= lt!1242778 e!2234357)))

(declare-fun res!1460339 () Bool)

(assert (=> d!1063177 (=> res!1460339 e!2234357)))

(assert (=> d!1063177 (= res!1460339 ((_ is Nil!37994) lt!1242634))))

(assert (=> d!1063177 (= (isPrefix!2999 lt!1242634 (++!9452 lt!1242634 (_2!22078 lt!1242645))) lt!1242778)))

(declare-fun b!3610333 () Bool)

(declare-fun e!2234356 () Bool)

(assert (=> b!3610333 (= e!2234356 (isPrefix!2999 (tail!5597 lt!1242634) (tail!5597 (++!9452 lt!1242634 (_2!22078 lt!1242645)))))))

(declare-fun b!3610334 () Bool)

(assert (=> b!3610334 (= e!2234355 (>= (size!28966 (++!9452 lt!1242634 (_2!22078 lt!1242645))) (size!28966 lt!1242634)))))

(declare-fun b!3610332 () Bool)

(declare-fun res!1460340 () Bool)

(assert (=> b!3610332 (=> (not res!1460340) (not e!2234356))))

(assert (=> b!3610332 (= res!1460340 (= (head!7594 lt!1242634) (head!7594 (++!9452 lt!1242634 (_2!22078 lt!1242645)))))))

(declare-fun b!3610331 () Bool)

(assert (=> b!3610331 (= e!2234357 e!2234356)))

(declare-fun res!1460341 () Bool)

(assert (=> b!3610331 (=> (not res!1460341) (not e!2234356))))

(assert (=> b!3610331 (= res!1460341 (not ((_ is Nil!37994) (++!9452 lt!1242634 (_2!22078 lt!1242645)))))))

(assert (= (and d!1063177 (not res!1460339)) b!3610331))

(assert (= (and b!3610331 res!1460341) b!3610332))

(assert (= (and b!3610332 res!1460340) b!3610333))

(assert (= (and d!1063177 (not res!1460342)) b!3610334))

(assert (=> b!3610333 m!4107913))

(assert (=> b!3610333 m!4107533))

(declare-fun m!4107997 () Bool)

(assert (=> b!3610333 m!4107997))

(assert (=> b!3610333 m!4107913))

(assert (=> b!3610333 m!4107997))

(declare-fun m!4107999 () Bool)

(assert (=> b!3610333 m!4107999))

(assert (=> b!3610334 m!4107533))

(declare-fun m!4108001 () Bool)

(assert (=> b!3610334 m!4108001))

(assert (=> b!3610334 m!4107579))

(assert (=> b!3610332 m!4107603))

(assert (=> b!3610332 m!4107533))

(declare-fun m!4108003 () Bool)

(assert (=> b!3610332 m!4108003))

(assert (=> b!3609992 d!1063177))

(declare-fun d!1063179 () Bool)

(assert (=> d!1063179 (isPrefix!2999 lt!1242658 (++!9452 lt!1242658 suffix!1395))))

(declare-fun lt!1242779 () Unit!54166)

(assert (=> d!1063179 (= lt!1242779 (choose!21109 lt!1242658 suffix!1395))))

(assert (=> d!1063179 (= (lemmaConcatTwoListThenFirstIsPrefix!1920 lt!1242658 suffix!1395) lt!1242779)))

(declare-fun bs!570846 () Bool)

(assert (= bs!570846 d!1063179))

(assert (=> bs!570846 m!4107523))

(assert (=> bs!570846 m!4107523))

(declare-fun m!4108005 () Bool)

(assert (=> bs!570846 m!4108005))

(declare-fun m!4108007 () Bool)

(assert (=> bs!570846 m!4108007))

(assert (=> b!3609992 d!1063179))

(declare-fun d!1063181 () Bool)

(assert (=> d!1063181 (= (list!14012 lt!1242653) (list!14014 (c!624557 lt!1242653)))))

(declare-fun bs!570847 () Bool)

(assert (= bs!570847 d!1063181))

(declare-fun m!4108009 () Bool)

(assert (=> bs!570847 m!4108009))

(assert (=> b!3609992 d!1063181))

(declare-fun e!2234380 () Bool)

(declare-fun lt!1242829 () Token!10638)

(declare-fun b!3610379 () Bool)

(assert (=> b!3610379 (= e!2234380 (= (rule!8386 lt!1242829) (get!12331 (getRuleFromTag!1242 thiss!23823 rules!3307 (tag!6342 (rule!8386 lt!1242829))))))))

(declare-fun b!3610381 () Bool)

(declare-fun e!2234381 () Unit!54166)

(declare-fun Unit!54175 () Unit!54166)

(assert (=> b!3610381 (= e!2234381 Unit!54175)))

(declare-fun d!1063183 () Bool)

(assert (=> d!1063183 (isDefined!6135 (maxPrefix!2759 thiss!23823 rules!3307 (++!9452 lt!1242658 suffix!1395)))))

(declare-fun lt!1242837 () Unit!54166)

(assert (=> d!1063183 (= lt!1242837 e!2234381)))

(declare-fun c!624628 () Bool)

(assert (=> d!1063183 (= c!624628 (isEmpty!22437 (maxPrefix!2759 thiss!23823 rules!3307 (++!9452 lt!1242658 suffix!1395))))))

(declare-fun lt!1242840 () Unit!54166)

(declare-fun lt!1242828 () Unit!54166)

(assert (=> d!1063183 (= lt!1242840 lt!1242828)))

(assert (=> d!1063183 e!2234380))

(declare-fun res!1460363 () Bool)

(assert (=> d!1063183 (=> (not res!1460363) (not e!2234380))))

(assert (=> d!1063183 (= res!1460363 (isDefined!6134 (getRuleFromTag!1242 thiss!23823 rules!3307 (tag!6342 (rule!8386 lt!1242829)))))))

(assert (=> d!1063183 (= lt!1242828 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1242 thiss!23823 rules!3307 lt!1242658 lt!1242829))))

(declare-fun lt!1242841 () Unit!54166)

(declare-fun lt!1242835 () Unit!54166)

(assert (=> d!1063183 (= lt!1242841 lt!1242835)))

(declare-fun lt!1242836 () List!38118)

(assert (=> d!1063183 (isPrefix!2999 lt!1242836 (++!9452 lt!1242658 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!449 (List!38118 List!38118 List!38118) Unit!54166)

(assert (=> d!1063183 (= lt!1242835 (lemmaPrefixStaysPrefixWhenAddingToSuffix!449 lt!1242836 lt!1242658 suffix!1395))))

(assert (=> d!1063183 (= lt!1242836 (list!14012 (charsOf!3650 lt!1242829)))))

(declare-fun lt!1242831 () Unit!54166)

(declare-fun lt!1242843 () Unit!54166)

(assert (=> d!1063183 (= lt!1242831 lt!1242843)))

(declare-fun lt!1242839 () List!38118)

(declare-fun lt!1242832 () List!38118)

(assert (=> d!1063183 (isPrefix!2999 lt!1242839 (++!9452 lt!1242839 lt!1242832))))

(assert (=> d!1063183 (= lt!1242843 (lemmaConcatTwoListThenFirstIsPrefix!1920 lt!1242839 lt!1242832))))

(assert (=> d!1063183 (= lt!1242832 (_2!22078 (get!12330 (maxPrefix!2759 thiss!23823 rules!3307 lt!1242658))))))

(assert (=> d!1063183 (= lt!1242839 (list!14012 (charsOf!3650 lt!1242829)))))

(declare-datatypes ((List!38121 0))(
  ( (Nil!37997) (Cons!37997 (h!43417 Token!10638) (t!293412 List!38121)) )
))
(declare-fun head!7595 (List!38121) Token!10638)

(declare-datatypes ((IArray!23161 0))(
  ( (IArray!23162 (innerList!11638 List!38121)) )
))
(declare-datatypes ((Conc!11578 0))(
  ( (Node!11578 (left!29690 Conc!11578) (right!30020 Conc!11578) (csize!23386 Int) (cheight!11789 Int)) (Leaf!18007 (xs!14780 IArray!23161) (csize!23387 Int)) (Empty!11578) )
))
(declare-datatypes ((BalanceConc!22770 0))(
  ( (BalanceConc!22771 (c!624700 Conc!11578)) )
))
(declare-fun list!14015 (BalanceConc!22770) List!38121)

(declare-datatypes ((tuple2!37892 0))(
  ( (tuple2!37893 (_1!22080 BalanceConc!22770) (_2!22080 BalanceConc!22768)) )
))
(declare-fun lex!2481 (LexerInterface!5225 List!38119 BalanceConc!22768) tuple2!37892)

(assert (=> d!1063183 (= lt!1242829 (head!7595 (list!14015 (_1!22080 (lex!2481 thiss!23823 rules!3307 (seqFromList!4189 lt!1242658))))))))

(assert (=> d!1063183 (not (isEmpty!22434 rules!3307))))

(assert (=> d!1063183 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!905 thiss!23823 rules!3307 lt!1242658 suffix!1395) lt!1242837)))

(declare-fun b!3610378 () Bool)

(declare-fun res!1460364 () Bool)

(assert (=> b!3610378 (=> (not res!1460364) (not e!2234380))))

(assert (=> b!3610378 (= res!1460364 (matchR!4964 (regex!5636 (get!12331 (getRuleFromTag!1242 thiss!23823 rules!3307 (tag!6342 (rule!8386 lt!1242829))))) (list!14012 (charsOf!3650 lt!1242829))))))

(declare-fun b!3610380 () Bool)

(declare-fun Unit!54176 () Unit!54166)

(assert (=> b!3610380 (= e!2234381 Unit!54176)))

(declare-fun lt!1242838 () List!38118)

(assert (=> b!3610380 (= lt!1242838 (++!9452 lt!1242658 suffix!1395))))

(declare-fun lt!1242842 () Unit!54166)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!485 (LexerInterface!5225 Rule!11072 List!38119 List!38118) Unit!54166)

(assert (=> b!3610380 (= lt!1242842 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!485 thiss!23823 (rule!8386 lt!1242829) rules!3307 lt!1242838))))

(assert (=> b!3610380 (isEmpty!22437 (maxPrefixOneRule!1903 thiss!23823 (rule!8386 lt!1242829) lt!1242838))))

(declare-fun lt!1242844 () Unit!54166)

(assert (=> b!3610380 (= lt!1242844 lt!1242842)))

(declare-fun lt!1242834 () List!38118)

(assert (=> b!3610380 (= lt!1242834 (list!14012 (charsOf!3650 lt!1242829)))))

(declare-fun lt!1242830 () Unit!54166)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!473 (LexerInterface!5225 Rule!11072 List!38118 List!38118) Unit!54166)

(assert (=> b!3610380 (= lt!1242830 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!473 thiss!23823 (rule!8386 lt!1242829) lt!1242834 (++!9452 lt!1242658 suffix!1395)))))

(assert (=> b!3610380 (not (matchR!4964 (regex!5636 (rule!8386 lt!1242829)) lt!1242834))))

(declare-fun lt!1242833 () Unit!54166)

(assert (=> b!3610380 (= lt!1242833 lt!1242830)))

(assert (=> b!3610380 false))

(assert (= (and d!1063183 res!1460363) b!3610378))

(assert (= (and b!3610378 res!1460364) b!3610379))

(assert (= (and d!1063183 c!624628) b!3610380))

(assert (= (and d!1063183 (not c!624628)) b!3610381))

(declare-fun m!4108033 () Bool)

(assert (=> b!3610379 m!4108033))

(assert (=> b!3610379 m!4108033))

(declare-fun m!4108035 () Bool)

(assert (=> b!3610379 m!4108035))

(assert (=> d!1063183 m!4107595))

(declare-fun m!4108037 () Bool)

(assert (=> d!1063183 m!4108037))

(declare-fun m!4108039 () Bool)

(assert (=> d!1063183 m!4108039))

(declare-fun m!4108041 () Bool)

(assert (=> d!1063183 m!4108041))

(declare-fun m!4108043 () Bool)

(assert (=> d!1063183 m!4108043))

(assert (=> d!1063183 m!4108041))

(declare-fun m!4108045 () Bool)

(assert (=> d!1063183 m!4108045))

(declare-fun m!4108047 () Bool)

(assert (=> d!1063183 m!4108047))

(assert (=> d!1063183 m!4108033))

(assert (=> d!1063183 m!4107607))

(declare-fun m!4108049 () Bool)

(assert (=> d!1063183 m!4108049))

(declare-fun m!4108051 () Bool)

(assert (=> d!1063183 m!4108051))

(declare-fun m!4108053 () Bool)

(assert (=> d!1063183 m!4108053))

(declare-fun m!4108055 () Bool)

(assert (=> d!1063183 m!4108055))

(assert (=> d!1063183 m!4108053))

(assert (=> d!1063183 m!4107607))

(declare-fun m!4108057 () Bool)

(assert (=> d!1063183 m!4108057))

(assert (=> d!1063183 m!4107523))

(assert (=> d!1063183 m!4108049))

(assert (=> d!1063183 m!4107523))

(assert (=> d!1063183 m!4108045))

(declare-fun m!4108059 () Bool)

(assert (=> d!1063183 m!4108059))

(declare-fun m!4108061 () Bool)

(assert (=> d!1063183 m!4108061))

(assert (=> d!1063183 m!4107523))

(declare-fun m!4108063 () Bool)

(assert (=> d!1063183 m!4108063))

(assert (=> d!1063183 m!4108033))

(declare-fun m!4108065 () Bool)

(assert (=> d!1063183 m!4108065))

(assert (=> d!1063183 m!4108039))

(declare-fun m!4108067 () Bool)

(assert (=> d!1063183 m!4108067))

(assert (=> d!1063183 m!4108049))

(declare-fun m!4108069 () Bool)

(assert (=> d!1063183 m!4108069))

(assert (=> b!3610378 m!4108033))

(assert (=> b!3610378 m!4108035))

(assert (=> b!3610378 m!4108039))

(assert (=> b!3610378 m!4108039))

(assert (=> b!3610378 m!4108067))

(assert (=> b!3610378 m!4108033))

(assert (=> b!3610378 m!4108067))

(declare-fun m!4108071 () Bool)

(assert (=> b!3610378 m!4108071))

(declare-fun m!4108073 () Bool)

(assert (=> b!3610380 m!4108073))

(declare-fun m!4108075 () Bool)

(assert (=> b!3610380 m!4108075))

(declare-fun m!4108077 () Bool)

(assert (=> b!3610380 m!4108077))

(assert (=> b!3610380 m!4108039))

(assert (=> b!3610380 m!4108075))

(assert (=> b!3610380 m!4107523))

(declare-fun m!4108079 () Bool)

(assert (=> b!3610380 m!4108079))

(assert (=> b!3610380 m!4108039))

(assert (=> b!3610380 m!4108067))

(declare-fun m!4108081 () Bool)

(assert (=> b!3610380 m!4108081))

(assert (=> b!3610380 m!4107523))

(assert (=> b!3609992 d!1063183))

(declare-fun d!1063197 () Bool)

(declare-fun e!2234387 () Bool)

(assert (=> d!1063197 e!2234387))

(declare-fun res!1460376 () Bool)

(assert (=> d!1063197 (=> (not res!1460376) (not e!2234387))))

(assert (=> d!1063197 (= res!1460376 (isDefined!6134 (getRuleFromTag!1242 thiss!23823 rules!3307 (tag!6342 (rule!8386 (_1!22078 lt!1242645))))))))

(declare-fun lt!1242855 () Unit!54166)

(declare-fun choose!21112 (LexerInterface!5225 List!38119 List!38118 Token!10638) Unit!54166)

(assert (=> d!1063197 (= lt!1242855 (choose!21112 thiss!23823 rules!3307 lt!1242643 (_1!22078 lt!1242645)))))

(assert (=> d!1063197 (rulesInvariant!4622 thiss!23823 rules!3307)))

(assert (=> d!1063197 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1242 thiss!23823 rules!3307 lt!1242643 (_1!22078 lt!1242645)) lt!1242855)))

(declare-fun b!3610395 () Bool)

(declare-fun res!1460377 () Bool)

(assert (=> b!3610395 (=> (not res!1460377) (not e!2234387))))

(assert (=> b!3610395 (= res!1460377 (matchR!4964 (regex!5636 (get!12331 (getRuleFromTag!1242 thiss!23823 rules!3307 (tag!6342 (rule!8386 (_1!22078 lt!1242645)))))) (list!14012 (charsOf!3650 (_1!22078 lt!1242645)))))))

(declare-fun b!3610396 () Bool)

(assert (=> b!3610396 (= e!2234387 (= (rule!8386 (_1!22078 lt!1242645)) (get!12331 (getRuleFromTag!1242 thiss!23823 rules!3307 (tag!6342 (rule!8386 (_1!22078 lt!1242645)))))))))

(assert (= (and d!1063197 res!1460376) b!3610395))

(assert (= (and b!3610395 res!1460377) b!3610396))

(assert (=> d!1063197 m!4107511))

(assert (=> d!1063197 m!4107511))

(declare-fun m!4108127 () Bool)

(assert (=> d!1063197 m!4108127))

(declare-fun m!4108129 () Bool)

(assert (=> d!1063197 m!4108129))

(assert (=> d!1063197 m!4107637))

(assert (=> b!3610395 m!4107511))

(assert (=> b!3610395 m!4107525))

(assert (=> b!3610395 m!4107623))

(assert (=> b!3610395 m!4107511))

(declare-fun m!4108131 () Bool)

(assert (=> b!3610395 m!4108131))

(assert (=> b!3610395 m!4107525))

(assert (=> b!3610395 m!4107623))

(declare-fun m!4108133 () Bool)

(assert (=> b!3610395 m!4108133))

(assert (=> b!3610396 m!4107511))

(assert (=> b!3610396 m!4107511))

(assert (=> b!3610396 m!4108131))

(assert (=> b!3609992 d!1063197))

(declare-fun d!1063209 () Bool)

(assert (=> d!1063209 (= (inv!51364 (tag!6342 rule!403)) (= (mod (str.len (value!181085 (tag!6342 rule!403))) 2) 0))))

(assert (=> b!3609994 d!1063209))

(declare-fun d!1063211 () Bool)

(declare-fun res!1460387 () Bool)

(declare-fun e!2234397 () Bool)

(assert (=> d!1063211 (=> (not res!1460387) (not e!2234397))))

(assert (=> d!1063211 (= res!1460387 (semiInverseModEq!2397 (toChars!7779 (transformation!5636 rule!403)) (toValue!7920 (transformation!5636 rule!403))))))

(assert (=> d!1063211 (= (inv!51367 (transformation!5636 rule!403)) e!2234397)))

(declare-fun b!3610413 () Bool)

(assert (=> b!3610413 (= e!2234397 (equivClasses!2296 (toChars!7779 (transformation!5636 rule!403)) (toValue!7920 (transformation!5636 rule!403))))))

(assert (= (and d!1063211 res!1460387) b!3610413))

(declare-fun m!4108139 () Bool)

(assert (=> d!1063211 m!4108139))

(declare-fun m!4108141 () Bool)

(assert (=> b!3610413 m!4108141))

(assert (=> b!3609994 d!1063211))

(declare-fun d!1063213 () Bool)

(declare-fun lt!1242859 () List!38118)

(assert (=> d!1063213 (= (++!9452 lt!1242634 lt!1242859) lt!1242643)))

(declare-fun e!2234403 () List!38118)

(assert (=> d!1063213 (= lt!1242859 e!2234403)))

(declare-fun c!624635 () Bool)

(assert (=> d!1063213 (= c!624635 ((_ is Cons!37994) lt!1242634))))

(assert (=> d!1063213 (>= (size!28966 lt!1242643) (size!28966 lt!1242634))))

(assert (=> d!1063213 (= (getSuffix!1574 lt!1242643 lt!1242634) lt!1242859)))

(declare-fun b!3610424 () Bool)

(assert (=> b!3610424 (= e!2234403 (getSuffix!1574 (tail!5597 lt!1242643) (t!293289 lt!1242634)))))

(declare-fun b!3610425 () Bool)

(assert (=> b!3610425 (= e!2234403 lt!1242643)))

(assert (= (and d!1063213 c!624635) b!3610424))

(assert (= (and d!1063213 (not c!624635)) b!3610425))

(declare-fun m!4108159 () Bool)

(assert (=> d!1063213 m!4108159))

(assert (=> d!1063213 m!4107919))

(assert (=> d!1063213 m!4107579))

(assert (=> b!3610424 m!4107915))

(assert (=> b!3610424 m!4107915))

(declare-fun m!4108161 () Bool)

(assert (=> b!3610424 m!4108161))

(assert (=> b!3610001 d!1063213))

(declare-fun d!1063219 () Bool)

(assert (=> d!1063219 (= (maxPrefixOneRule!1903 thiss!23823 (rule!8386 (_1!22078 lt!1242645)) lt!1242643) (Some!7901 (tuple2!37889 (Token!10639 (apply!9142 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))) (seqFromList!4189 lt!1242634)) (rule!8386 (_1!22078 lt!1242645)) (size!28966 lt!1242634) lt!1242634) (_2!22078 lt!1242645))))))

(declare-fun lt!1242867 () Unit!54166)

(declare-fun choose!21113 (LexerInterface!5225 List!38119 List!38118 List!38118 List!38118 Rule!11072) Unit!54166)

(assert (=> d!1063219 (= lt!1242867 (choose!21113 thiss!23823 rules!3307 lt!1242634 lt!1242643 (_2!22078 lt!1242645) (rule!8386 (_1!22078 lt!1242645))))))

(assert (=> d!1063219 (not (isEmpty!22434 rules!3307))))

(assert (=> d!1063219 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!975 thiss!23823 rules!3307 lt!1242634 lt!1242643 (_2!22078 lt!1242645) (rule!8386 (_1!22078 lt!1242645))) lt!1242867)))

(declare-fun bs!570853 () Bool)

(assert (= bs!570853 d!1063219))

(assert (=> bs!570853 m!4107571))

(assert (=> bs!570853 m!4107577))

(assert (=> bs!570853 m!4107571))

(assert (=> bs!570853 m!4107575))

(declare-fun m!4108195 () Bool)

(assert (=> bs!570853 m!4108195))

(assert (=> bs!570853 m!4107595))

(assert (=> bs!570853 m!4107579))

(assert (=> b!3610001 d!1063219))

(declare-fun d!1063235 () Bool)

(declare-fun dynLambda!16441 (Int BalanceConc!22768) TokenValue!5866)

(assert (=> d!1063235 (= (apply!9142 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))) (seqFromList!4189 lt!1242634)) (dynLambda!16441 (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645)))) (seqFromList!4189 lt!1242634)))))

(declare-fun b_lambda!106841 () Bool)

(assert (=> (not b_lambda!106841) (not d!1063235)))

(declare-fun tb!207001 () Bool)

(declare-fun t!293356 () Bool)

(assert (=> (and b!3610021 (= (toValue!7920 (transformation!5636 anOtherTypeRule!33)) (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293356) tb!207001))

(declare-fun result!252268 () Bool)

(assert (=> tb!207001 (= result!252268 (inv!21 (dynLambda!16441 (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645)))) (seqFromList!4189 lt!1242634))))))

(declare-fun m!4108197 () Bool)

(assert (=> tb!207001 m!4108197))

(assert (=> d!1063235 t!293356))

(declare-fun b_and!263283 () Bool)

(assert (= b_and!263179 (and (=> t!293356 result!252268) b_and!263283)))

(declare-fun t!293358 () Bool)

(declare-fun tb!207003 () Bool)

(assert (=> (and b!3609998 (= (toValue!7920 (transformation!5636 rule!403)) (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293358) tb!207003))

(declare-fun result!252272 () Bool)

(assert (= result!252272 result!252268))

(assert (=> d!1063235 t!293358))

(declare-fun b_and!263285 () Bool)

(assert (= b_and!263183 (and (=> t!293358 result!252272) b_and!263285)))

(declare-fun tb!207005 () Bool)

(declare-fun t!293360 () Bool)

(assert (=> (and b!3610015 (= (toValue!7920 (transformation!5636 (h!43415 rules!3307))) (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293360) tb!207005))

(declare-fun result!252274 () Bool)

(assert (= result!252274 result!252268))

(assert (=> d!1063235 t!293360))

(declare-fun b_and!263287 () Bool)

(assert (= b_and!263187 (and (=> t!293360 result!252274) b_and!263287)))

(declare-fun t!293362 () Bool)

(declare-fun tb!207007 () Bool)

(assert (=> (and b!3610000 (= (toValue!7920 (transformation!5636 (rule!8386 token!511))) (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293362) tb!207007))

(declare-fun result!252276 () Bool)

(assert (= result!252276 result!252268))

(assert (=> d!1063235 t!293362))

(declare-fun b_and!263289 () Bool)

(assert (= b_and!263191 (and (=> t!293362 result!252276) b_and!263289)))

(assert (=> d!1063235 m!4107571))

(declare-fun m!4108199 () Bool)

(assert (=> d!1063235 m!4108199))

(assert (=> b!3610001 d!1063235))

(declare-fun d!1063237 () Bool)

(declare-fun fromListB!1937 (List!38118) BalanceConc!22768)

(assert (=> d!1063237 (= (seqFromList!4189 lt!1242634) (fromListB!1937 lt!1242634))))

(declare-fun bs!570854 () Bool)

(assert (= bs!570854 d!1063237))

(declare-fun m!4108207 () Bool)

(assert (=> bs!570854 m!4108207))

(assert (=> b!3610001 d!1063237))

(declare-fun b!3610592 () Bool)

(declare-fun e!2234510 () Bool)

(declare-datatypes ((tuple2!37896 0))(
  ( (tuple2!37897 (_1!22082 List!38118) (_2!22082 List!38118)) )
))
(declare-fun findLongestMatchInner!1005 (Regex!10395 List!38118 Int List!38118 List!38118 Int) tuple2!37896)

(assert (=> b!3610592 (= e!2234510 (matchR!4964 (regex!5636 (rule!8386 (_1!22078 lt!1242645))) (_1!22082 (findLongestMatchInner!1005 (regex!5636 (rule!8386 (_1!22078 lt!1242645))) Nil!37994 (size!28966 Nil!37994) lt!1242643 lt!1242643 (size!28966 lt!1242643)))))))

(declare-fun b!3610593 () Bool)

(declare-fun e!2234508 () Bool)

(declare-fun lt!1242914 () Option!7902)

(assert (=> b!3610593 (= e!2234508 (= (size!28965 (_1!22078 (get!12330 lt!1242914))) (size!28966 (originalCharacters!6350 (_1!22078 (get!12330 lt!1242914))))))))

(declare-fun b!3610594 () Bool)

(declare-fun res!1460480 () Bool)

(assert (=> b!3610594 (=> (not res!1460480) (not e!2234508))))

(assert (=> b!3610594 (= res!1460480 (= (rule!8386 (_1!22078 (get!12330 lt!1242914))) (rule!8386 (_1!22078 lt!1242645))))))

(declare-fun b!3610595 () Bool)

(declare-fun res!1460481 () Bool)

(assert (=> b!3610595 (=> (not res!1460481) (not e!2234508))))

(assert (=> b!3610595 (= res!1460481 (< (size!28966 (_2!22078 (get!12330 lt!1242914))) (size!28966 lt!1242643)))))

(declare-fun b!3610596 () Bool)

(declare-fun res!1460479 () Bool)

(assert (=> b!3610596 (=> (not res!1460479) (not e!2234508))))

(assert (=> b!3610596 (= res!1460479 (= (++!9452 (list!14012 (charsOf!3650 (_1!22078 (get!12330 lt!1242914)))) (_2!22078 (get!12330 lt!1242914))) lt!1242643))))

(declare-fun b!3610597 () Bool)

(declare-fun e!2234507 () Option!7902)

(declare-fun lt!1242916 () tuple2!37896)

(assert (=> b!3610597 (= e!2234507 (Some!7901 (tuple2!37889 (Token!10639 (apply!9142 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))) (seqFromList!4189 (_1!22082 lt!1242916))) (rule!8386 (_1!22078 lt!1242645)) (size!28967 (seqFromList!4189 (_1!22082 lt!1242916))) (_1!22082 lt!1242916)) (_2!22082 lt!1242916))))))

(declare-fun lt!1242918 () Unit!54166)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!978 (Regex!10395 List!38118) Unit!54166)

(assert (=> b!3610597 (= lt!1242918 (longestMatchIsAcceptedByMatchOrIsEmpty!978 (regex!5636 (rule!8386 (_1!22078 lt!1242645))) lt!1242643))))

(declare-fun res!1460483 () Bool)

(assert (=> b!3610597 (= res!1460483 (isEmpty!22435 (_1!22082 (findLongestMatchInner!1005 (regex!5636 (rule!8386 (_1!22078 lt!1242645))) Nil!37994 (size!28966 Nil!37994) lt!1242643 lt!1242643 (size!28966 lt!1242643)))))))

(assert (=> b!3610597 (=> res!1460483 e!2234510)))

(assert (=> b!3610597 e!2234510))

(declare-fun lt!1242917 () Unit!54166)

(assert (=> b!3610597 (= lt!1242917 lt!1242918)))

(declare-fun lt!1242915 () Unit!54166)

(assert (=> b!3610597 (= lt!1242915 (lemmaSemiInverse!1393 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))) (seqFromList!4189 (_1!22082 lt!1242916))))))

(declare-fun b!3610598 () Bool)

(declare-fun res!1460478 () Bool)

(assert (=> b!3610598 (=> (not res!1460478) (not e!2234508))))

(assert (=> b!3610598 (= res!1460478 (= (value!181086 (_1!22078 (get!12330 lt!1242914))) (apply!9142 (transformation!5636 (rule!8386 (_1!22078 (get!12330 lt!1242914)))) (seqFromList!4189 (originalCharacters!6350 (_1!22078 (get!12330 lt!1242914)))))))))

(declare-fun d!1063241 () Bool)

(declare-fun e!2234509 () Bool)

(assert (=> d!1063241 e!2234509))

(declare-fun res!1460482 () Bool)

(assert (=> d!1063241 (=> res!1460482 e!2234509)))

(assert (=> d!1063241 (= res!1460482 (isEmpty!22437 lt!1242914))))

(assert (=> d!1063241 (= lt!1242914 e!2234507)))

(declare-fun c!624677 () Bool)

(assert (=> d!1063241 (= c!624677 (isEmpty!22435 (_1!22082 lt!1242916)))))

(declare-fun findLongestMatch!920 (Regex!10395 List!38118) tuple2!37896)

(assert (=> d!1063241 (= lt!1242916 (findLongestMatch!920 (regex!5636 (rule!8386 (_1!22078 lt!1242645))) lt!1242643))))

(assert (=> d!1063241 (ruleValid!1901 thiss!23823 (rule!8386 (_1!22078 lt!1242645)))))

(assert (=> d!1063241 (= (maxPrefixOneRule!1903 thiss!23823 (rule!8386 (_1!22078 lt!1242645)) lt!1242643) lt!1242914)))

(declare-fun b!3610599 () Bool)

(assert (=> b!3610599 (= e!2234507 None!7901)))

(declare-fun b!3610600 () Bool)

(assert (=> b!3610600 (= e!2234509 e!2234508)))

(declare-fun res!1460477 () Bool)

(assert (=> b!3610600 (=> (not res!1460477) (not e!2234508))))

(assert (=> b!3610600 (= res!1460477 (matchR!4964 (regex!5636 (rule!8386 (_1!22078 lt!1242645))) (list!14012 (charsOf!3650 (_1!22078 (get!12330 lt!1242914))))))))

(assert (= (and d!1063241 c!624677) b!3610599))

(assert (= (and d!1063241 (not c!624677)) b!3610597))

(assert (= (and b!3610597 (not res!1460483)) b!3610592))

(assert (= (and d!1063241 (not res!1460482)) b!3610600))

(assert (= (and b!3610600 res!1460477) b!3610596))

(assert (= (and b!3610596 res!1460479) b!3610595))

(assert (= (and b!3610595 res!1460481) b!3610594))

(assert (= (and b!3610594 res!1460480) b!3610598))

(assert (= (and b!3610598 res!1460478) b!3610593))

(declare-fun m!4108345 () Bool)

(assert (=> d!1063241 m!4108345))

(declare-fun m!4108347 () Bool)

(assert (=> d!1063241 m!4108347))

(declare-fun m!4108349 () Bool)

(assert (=> d!1063241 m!4108349))

(declare-fun m!4108351 () Bool)

(assert (=> d!1063241 m!4108351))

(declare-fun m!4108353 () Bool)

(assert (=> b!3610597 m!4108353))

(declare-fun m!4108355 () Bool)

(assert (=> b!3610597 m!4108355))

(declare-fun m!4108357 () Bool)

(assert (=> b!3610597 m!4108357))

(declare-fun m!4108359 () Bool)

(assert (=> b!3610597 m!4108359))

(assert (=> b!3610597 m!4107919))

(declare-fun m!4108361 () Bool)

(assert (=> b!3610597 m!4108361))

(assert (=> b!3610597 m!4108353))

(declare-fun m!4108363 () Bool)

(assert (=> b!3610597 m!4108363))

(assert (=> b!3610597 m!4108353))

(declare-fun m!4108365 () Bool)

(assert (=> b!3610597 m!4108365))

(assert (=> b!3610597 m!4108353))

(assert (=> b!3610597 m!4107919))

(declare-fun m!4108367 () Bool)

(assert (=> b!3610597 m!4108367))

(assert (=> b!3610597 m!4108359))

(declare-fun m!4108369 () Bool)

(assert (=> b!3610593 m!4108369))

(declare-fun m!4108371 () Bool)

(assert (=> b!3610593 m!4108371))

(assert (=> b!3610595 m!4108369))

(declare-fun m!4108373 () Bool)

(assert (=> b!3610595 m!4108373))

(assert (=> b!3610595 m!4107919))

(assert (=> b!3610598 m!4108369))

(declare-fun m!4108375 () Bool)

(assert (=> b!3610598 m!4108375))

(assert (=> b!3610598 m!4108375))

(declare-fun m!4108377 () Bool)

(assert (=> b!3610598 m!4108377))

(assert (=> b!3610592 m!4108359))

(assert (=> b!3610592 m!4107919))

(assert (=> b!3610592 m!4108359))

(assert (=> b!3610592 m!4107919))

(assert (=> b!3610592 m!4108361))

(declare-fun m!4108379 () Bool)

(assert (=> b!3610592 m!4108379))

(assert (=> b!3610596 m!4108369))

(declare-fun m!4108381 () Bool)

(assert (=> b!3610596 m!4108381))

(assert (=> b!3610596 m!4108381))

(declare-fun m!4108383 () Bool)

(assert (=> b!3610596 m!4108383))

(assert (=> b!3610596 m!4108383))

(declare-fun m!4108385 () Bool)

(assert (=> b!3610596 m!4108385))

(assert (=> b!3610600 m!4108369))

(assert (=> b!3610600 m!4108381))

(assert (=> b!3610600 m!4108381))

(assert (=> b!3610600 m!4108383))

(assert (=> b!3610600 m!4108383))

(declare-fun m!4108387 () Bool)

(assert (=> b!3610600 m!4108387))

(assert (=> b!3610594 m!4108369))

(assert (=> b!3610001 d!1063241))

(declare-fun d!1063299 () Bool)

(assert (=> d!1063299 (= (_2!22078 lt!1242645) lt!1242660)))

(declare-fun lt!1242927 () Unit!54166)

(declare-fun choose!21114 (List!38118 List!38118 List!38118 List!38118 List!38118) Unit!54166)

(assert (=> d!1063299 (= lt!1242927 (choose!21114 lt!1242634 (_2!22078 lt!1242645) lt!1242634 lt!1242660 lt!1242643))))

(assert (=> d!1063299 (isPrefix!2999 lt!1242634 lt!1242643)))

(assert (=> d!1063299 (= (lemmaSamePrefixThenSameSuffix!1354 lt!1242634 (_2!22078 lt!1242645) lt!1242634 lt!1242660 lt!1242643) lt!1242927)))

(declare-fun bs!570861 () Bool)

(assert (= bs!570861 d!1063299))

(declare-fun m!4108393 () Bool)

(assert (=> bs!570861 m!4108393))

(assert (=> bs!570861 m!4107513))

(assert (=> b!3610001 d!1063299))

(declare-fun d!1063303 () Bool)

(declare-fun lt!1242930 () Int)

(assert (=> d!1063303 (>= lt!1242930 0)))

(declare-fun e!2234521 () Int)

(assert (=> d!1063303 (= lt!1242930 e!2234521)))

(declare-fun c!624681 () Bool)

(assert (=> d!1063303 (= c!624681 ((_ is Nil!37994) lt!1242634))))

(assert (=> d!1063303 (= (size!28966 lt!1242634) lt!1242930)))

(declare-fun b!3610617 () Bool)

(assert (=> b!3610617 (= e!2234521 0)))

(declare-fun b!3610618 () Bool)

(assert (=> b!3610618 (= e!2234521 (+ 1 (size!28966 (t!293289 lt!1242634))))))

(assert (= (and d!1063303 c!624681) b!3610617))

(assert (= (and d!1063303 (not c!624681)) b!3610618))

(declare-fun m!4108395 () Bool)

(assert (=> b!3610618 m!4108395))

(assert (=> b!3610001 d!1063303))

(declare-fun d!1063305 () Bool)

(assert (=> d!1063305 (= (isEmpty!22434 rules!3307) ((_ is Nil!37995) rules!3307))))

(assert (=> b!3609981 d!1063305))

(declare-fun d!1063307 () Bool)

(declare-fun res!1460496 () Bool)

(declare-fun e!2234524 () Bool)

(assert (=> d!1063307 (=> (not res!1460496) (not e!2234524))))

(declare-fun rulesValid!2154 (LexerInterface!5225 List!38119) Bool)

(assert (=> d!1063307 (= res!1460496 (rulesValid!2154 thiss!23823 rules!3307))))

(assert (=> d!1063307 (= (rulesInvariant!4622 thiss!23823 rules!3307) e!2234524)))

(declare-fun b!3610621 () Bool)

(declare-datatypes ((List!38123 0))(
  ( (Nil!37999) (Cons!37999 (h!43419 String!42664) (t!293414 List!38123)) )
))
(declare-fun noDuplicateTag!2150 (LexerInterface!5225 List!38119 List!38123) Bool)

(assert (=> b!3610621 (= e!2234524 (noDuplicateTag!2150 thiss!23823 rules!3307 Nil!37999))))

(assert (= (and d!1063307 res!1460496) b!3610621))

(declare-fun m!4108397 () Bool)

(assert (=> d!1063307 m!4108397))

(declare-fun m!4108399 () Bool)

(assert (=> b!3610621 m!4108399))

(assert (=> b!3610002 d!1063307))

(declare-fun d!1063309 () Bool)

(assert (=> d!1063309 (not (matchR!4964 (regex!5636 (rule!8386 (_1!22078 lt!1242645))) lt!1242634))))

(declare-fun lt!1242933 () Unit!54166)

(declare-fun choose!21115 (Regex!10395 List!38118 C!20976) Unit!54166)

(assert (=> d!1063309 (= lt!1242933 (choose!21115 (regex!5636 (rule!8386 (_1!22078 lt!1242645))) lt!1242634 lt!1242636))))

(assert (=> d!1063309 (validRegex!4761 (regex!5636 (rule!8386 (_1!22078 lt!1242645))))))

(assert (=> d!1063309 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!620 (regex!5636 (rule!8386 (_1!22078 lt!1242645))) lt!1242634 lt!1242636) lt!1242933)))

(declare-fun bs!570862 () Bool)

(assert (= bs!570862 d!1063309))

(assert (=> bs!570862 m!4107561))

(declare-fun m!4108401 () Bool)

(assert (=> bs!570862 m!4108401))

(declare-fun m!4108403 () Bool)

(assert (=> bs!570862 m!4108403))

(assert (=> bm!260944 d!1063309))

(declare-fun d!1063311 () Bool)

(assert (=> d!1063311 (= (inv!51364 (tag!6342 (h!43415 rules!3307))) (= (mod (str.len (value!181085 (tag!6342 (h!43415 rules!3307)))) 2) 0))))

(assert (=> b!3610018 d!1063311))

(declare-fun d!1063313 () Bool)

(declare-fun res!1460497 () Bool)

(declare-fun e!2234525 () Bool)

(assert (=> d!1063313 (=> (not res!1460497) (not e!2234525))))

(assert (=> d!1063313 (= res!1460497 (semiInverseModEq!2397 (toChars!7779 (transformation!5636 (h!43415 rules!3307))) (toValue!7920 (transformation!5636 (h!43415 rules!3307)))))))

(assert (=> d!1063313 (= (inv!51367 (transformation!5636 (h!43415 rules!3307))) e!2234525)))

(declare-fun b!3610622 () Bool)

(assert (=> b!3610622 (= e!2234525 (equivClasses!2296 (toChars!7779 (transformation!5636 (h!43415 rules!3307))) (toValue!7920 (transformation!5636 (h!43415 rules!3307)))))))

(assert (= (and d!1063313 res!1460497) b!3610622))

(declare-fun m!4108405 () Bool)

(assert (=> d!1063313 m!4108405))

(declare-fun m!4108407 () Bool)

(assert (=> b!3610622 m!4108407))

(assert (=> b!3610018 d!1063313))

(declare-fun d!1063315 () Bool)

(assert (=> d!1063315 (not (matchR!4964 (regex!5636 rule!403) lt!1242658))))

(declare-fun lt!1242934 () Unit!54166)

(assert (=> d!1063315 (= lt!1242934 (choose!21115 (regex!5636 rule!403) lt!1242658 lt!1242636))))

(assert (=> d!1063315 (validRegex!4761 (regex!5636 rule!403))))

(assert (=> d!1063315 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!620 (regex!5636 rule!403) lt!1242658 lt!1242636) lt!1242934)))

(declare-fun bs!570863 () Bool)

(assert (= bs!570863 d!1063315))

(assert (=> bs!570863 m!4107565))

(declare-fun m!4108409 () Bool)

(assert (=> bs!570863 m!4108409))

(declare-fun m!4108411 () Bool)

(assert (=> bs!570863 m!4108411))

(assert (=> b!3610020 d!1063315))

(declare-fun b!3610623 () Bool)

(declare-fun e!2234532 () Bool)

(declare-fun e!2234526 () Bool)

(assert (=> b!3610623 (= e!2234532 e!2234526)))

(declare-fun res!1460503 () Bool)

(assert (=> b!3610623 (=> (not res!1460503) (not e!2234526))))

(declare-fun lt!1242935 () Bool)

(assert (=> b!3610623 (= res!1460503 (not lt!1242935))))

(declare-fun b!3610624 () Bool)

(declare-fun res!1460502 () Bool)

(assert (=> b!3610624 (=> res!1460502 e!2234532)))

(declare-fun e!2234527 () Bool)

(assert (=> b!3610624 (= res!1460502 e!2234527)))

(declare-fun res!1460504 () Bool)

(assert (=> b!3610624 (=> (not res!1460504) (not e!2234527))))

(assert (=> b!3610624 (= res!1460504 lt!1242935)))

(declare-fun b!3610625 () Bool)

(declare-fun res!1460499 () Bool)

(declare-fun e!2234529 () Bool)

(assert (=> b!3610625 (=> res!1460499 e!2234529)))

(assert (=> b!3610625 (= res!1460499 (not (isEmpty!22435 (tail!5597 lt!1242634))))))

(declare-fun b!3610626 () Bool)

(assert (=> b!3610626 (= e!2234529 (not (= (head!7594 lt!1242634) (c!624556 (regex!5636 (rule!8386 (_1!22078 lt!1242645)))))))))

(declare-fun b!3610628 () Bool)

(assert (=> b!3610628 (= e!2234527 (= (head!7594 lt!1242634) (c!624556 (regex!5636 (rule!8386 (_1!22078 lt!1242645))))))))

(declare-fun b!3610629 () Bool)

(declare-fun e!2234531 () Bool)

(assert (=> b!3610629 (= e!2234531 (nullable!3599 (regex!5636 (rule!8386 (_1!22078 lt!1242645)))))))

(declare-fun b!3610630 () Bool)

(declare-fun e!2234530 () Bool)

(declare-fun call!261006 () Bool)

(assert (=> b!3610630 (= e!2234530 (= lt!1242935 call!261006))))

(declare-fun b!3610631 () Bool)

(assert (=> b!3610631 (= e!2234526 e!2234529)))

(declare-fun res!1460498 () Bool)

(assert (=> b!3610631 (=> res!1460498 e!2234529)))

(assert (=> b!3610631 (= res!1460498 call!261006)))

(declare-fun b!3610632 () Bool)

(declare-fun res!1460505 () Bool)

(assert (=> b!3610632 (=> (not res!1460505) (not e!2234527))))

(assert (=> b!3610632 (= res!1460505 (isEmpty!22435 (tail!5597 lt!1242634)))))

(declare-fun bm!261001 () Bool)

(assert (=> bm!261001 (= call!261006 (isEmpty!22435 lt!1242634))))

(declare-fun b!3610627 () Bool)

(declare-fun e!2234528 () Bool)

(assert (=> b!3610627 (= e!2234530 e!2234528)))

(declare-fun c!624683 () Bool)

(assert (=> b!3610627 (= c!624683 ((_ is EmptyLang!10395) (regex!5636 (rule!8386 (_1!22078 lt!1242645)))))))

(declare-fun d!1063317 () Bool)

(assert (=> d!1063317 e!2234530))

(declare-fun c!624685 () Bool)

(assert (=> d!1063317 (= c!624685 ((_ is EmptyExpr!10395) (regex!5636 (rule!8386 (_1!22078 lt!1242645)))))))

(assert (=> d!1063317 (= lt!1242935 e!2234531)))

(declare-fun c!624684 () Bool)

(assert (=> d!1063317 (= c!624684 (isEmpty!22435 lt!1242634))))

(assert (=> d!1063317 (validRegex!4761 (regex!5636 (rule!8386 (_1!22078 lt!1242645))))))

(assert (=> d!1063317 (= (matchR!4964 (regex!5636 (rule!8386 (_1!22078 lt!1242645))) lt!1242634) lt!1242935)))

(declare-fun b!3610633 () Bool)

(assert (=> b!3610633 (= e!2234531 (matchR!4964 (derivativeStep!3148 (regex!5636 (rule!8386 (_1!22078 lt!1242645))) (head!7594 lt!1242634)) (tail!5597 lt!1242634)))))

(declare-fun b!3610634 () Bool)

(assert (=> b!3610634 (= e!2234528 (not lt!1242935))))

(declare-fun b!3610635 () Bool)

(declare-fun res!1460500 () Bool)

(assert (=> b!3610635 (=> res!1460500 e!2234532)))

(assert (=> b!3610635 (= res!1460500 (not ((_ is ElementMatch!10395) (regex!5636 (rule!8386 (_1!22078 lt!1242645))))))))

(assert (=> b!3610635 (= e!2234528 e!2234532)))

(declare-fun b!3610636 () Bool)

(declare-fun res!1460501 () Bool)

(assert (=> b!3610636 (=> (not res!1460501) (not e!2234527))))

(assert (=> b!3610636 (= res!1460501 (not call!261006))))

(assert (= (and d!1063317 c!624684) b!3610629))

(assert (= (and d!1063317 (not c!624684)) b!3610633))

(assert (= (and d!1063317 c!624685) b!3610630))

(assert (= (and d!1063317 (not c!624685)) b!3610627))

(assert (= (and b!3610627 c!624683) b!3610634))

(assert (= (and b!3610627 (not c!624683)) b!3610635))

(assert (= (and b!3610635 (not res!1460500)) b!3610624))

(assert (= (and b!3610624 res!1460504) b!3610636))

(assert (= (and b!3610636 res!1460501) b!3610632))

(assert (= (and b!3610632 res!1460505) b!3610628))

(assert (= (and b!3610624 (not res!1460502)) b!3610623))

(assert (= (and b!3610623 res!1460503) b!3610631))

(assert (= (and b!3610631 (not res!1460498)) b!3610625))

(assert (= (and b!3610625 (not res!1460499)) b!3610626))

(assert (= (or b!3610630 b!3610631 b!3610636) bm!261001))

(declare-fun m!4108413 () Bool)

(assert (=> b!3610629 m!4108413))

(assert (=> b!3610633 m!4107603))

(assert (=> b!3610633 m!4107603))

(declare-fun m!4108415 () Bool)

(assert (=> b!3610633 m!4108415))

(assert (=> b!3610633 m!4107913))

(assert (=> b!3610633 m!4108415))

(assert (=> b!3610633 m!4107913))

(declare-fun m!4108417 () Bool)

(assert (=> b!3610633 m!4108417))

(declare-fun m!4108419 () Bool)

(assert (=> bm!261001 m!4108419))

(assert (=> b!3610625 m!4107913))

(assert (=> b!3610625 m!4107913))

(declare-fun m!4108421 () Bool)

(assert (=> b!3610625 m!4108421))

(assert (=> b!3610628 m!4107603))

(assert (=> b!3610632 m!4107913))

(assert (=> b!3610632 m!4107913))

(assert (=> b!3610632 m!4108421))

(assert (=> b!3610626 m!4107603))

(assert (=> d!1063317 m!4108419))

(assert (=> d!1063317 m!4108403))

(assert (=> b!3609999 d!1063317))

(declare-fun d!1063319 () Bool)

(assert (=> d!1063319 (= (isEmpty!22435 suffix!1395) ((_ is Nil!37994) suffix!1395))))

(assert (=> b!3609985 d!1063319))

(declare-fun d!1063321 () Bool)

(declare-fun lt!1242936 () Bool)

(assert (=> d!1063321 (= lt!1242936 (select (content!5436 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2234534 () Bool)

(assert (=> d!1063321 (= lt!1242936 e!2234534)))

(declare-fun res!1460507 () Bool)

(assert (=> d!1063321 (=> (not res!1460507) (not e!2234534))))

(assert (=> d!1063321 (= res!1460507 ((_ is Cons!37995) rules!3307))))

(assert (=> d!1063321 (= (contains!7336 rules!3307 anOtherTypeRule!33) lt!1242936)))

(declare-fun b!3610637 () Bool)

(declare-fun e!2234533 () Bool)

(assert (=> b!3610637 (= e!2234534 e!2234533)))

(declare-fun res!1460506 () Bool)

(assert (=> b!3610637 (=> res!1460506 e!2234533)))

(assert (=> b!3610637 (= res!1460506 (= (h!43415 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3610638 () Bool)

(assert (=> b!3610638 (= e!2234533 (contains!7336 (t!293290 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1063321 res!1460507) b!3610637))

(assert (= (and b!3610637 (not res!1460506)) b!3610638))

(assert (=> d!1063321 m!4107883))

(declare-fun m!4108423 () Bool)

(assert (=> d!1063321 m!4108423))

(declare-fun m!4108425 () Bool)

(assert (=> b!3610638 m!4108425))

(assert (=> b!3610006 d!1063321))

(declare-fun d!1063323 () Bool)

(assert (=> d!1063323 (= (get!12330 lt!1242630) (v!37643 lt!1242630))))

(assert (=> b!3609986 d!1063323))

(declare-fun b!3610707 () Bool)

(declare-fun e!2234568 () Bool)

(assert (=> b!3610707 (= e!2234568 true)))

(declare-fun d!1063325 () Bool)

(assert (=> d!1063325 e!2234568))

(assert (= d!1063325 b!3610707))

(declare-fun order!20763 () Int)

(declare-fun order!20765 () Int)

(declare-fun lambda!124062 () Int)

(declare-fun dynLambda!16442 (Int Int) Int)

(declare-fun dynLambda!16443 (Int Int) Int)

(assert (=> b!3610707 (< (dynLambda!16442 order!20763 (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) (dynLambda!16443 order!20765 lambda!124062))))

(declare-fun order!20767 () Int)

(declare-fun dynLambda!16444 (Int Int) Int)

(assert (=> b!3610707 (< (dynLambda!16444 order!20767 (toChars!7779 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) (dynLambda!16443 order!20765 lambda!124062))))

(assert (=> d!1063325 (= (list!14012 (dynLambda!16440 (toChars!7779 (transformation!5636 (rule!8386 (_1!22078 lt!1242645)))) (dynLambda!16441 (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645)))) lt!1242653))) (list!14012 lt!1242653))))

(declare-fun lt!1242996 () Unit!54166)

(declare-fun ForallOf!658 (Int BalanceConc!22768) Unit!54166)

(assert (=> d!1063325 (= lt!1242996 (ForallOf!658 lambda!124062 lt!1242653))))

(assert (=> d!1063325 (= (lemmaSemiInverse!1393 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))) lt!1242653) lt!1242996)))

(declare-fun b_lambda!106849 () Bool)

(assert (=> (not b_lambda!106849) (not d!1063325)))

(declare-fun tb!207021 () Bool)

(declare-fun t!293376 () Bool)

(assert (=> (and b!3610021 (= (toChars!7779 (transformation!5636 anOtherTypeRule!33)) (toChars!7779 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293376) tb!207021))

(declare-fun b!3610708 () Bool)

(declare-fun e!2234569 () Bool)

(declare-fun tp!1103634 () Bool)

(assert (=> b!3610708 (= e!2234569 (and (inv!51371 (c!624557 (dynLambda!16440 (toChars!7779 (transformation!5636 (rule!8386 (_1!22078 lt!1242645)))) (dynLambda!16441 (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645)))) lt!1242653)))) tp!1103634))))

(declare-fun result!252296 () Bool)

(assert (=> tb!207021 (= result!252296 (and (inv!51372 (dynLambda!16440 (toChars!7779 (transformation!5636 (rule!8386 (_1!22078 lt!1242645)))) (dynLambda!16441 (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645)))) lt!1242653))) e!2234569))))

(assert (= tb!207021 b!3610708))

(declare-fun m!4108517 () Bool)

(assert (=> b!3610708 m!4108517))

(declare-fun m!4108519 () Bool)

(assert (=> tb!207021 m!4108519))

(assert (=> d!1063325 t!293376))

(declare-fun b_and!263303 () Bool)

(assert (= b_and!263227 (and (=> t!293376 result!252296) b_and!263303)))

(declare-fun t!293378 () Bool)

(declare-fun tb!207023 () Bool)

(assert (=> (and b!3609998 (= (toChars!7779 (transformation!5636 rule!403)) (toChars!7779 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293378) tb!207023))

(declare-fun result!252298 () Bool)

(assert (= result!252298 result!252296))

(assert (=> d!1063325 t!293378))

(declare-fun b_and!263305 () Bool)

(assert (= b_and!263229 (and (=> t!293378 result!252298) b_and!263305)))

(declare-fun tb!207025 () Bool)

(declare-fun t!293380 () Bool)

(assert (=> (and b!3610015 (= (toChars!7779 (transformation!5636 (h!43415 rules!3307))) (toChars!7779 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293380) tb!207025))

(declare-fun result!252300 () Bool)

(assert (= result!252300 result!252296))

(assert (=> d!1063325 t!293380))

(declare-fun b_and!263307 () Bool)

(assert (= b_and!263231 (and (=> t!293380 result!252300) b_and!263307)))

(declare-fun t!293382 () Bool)

(declare-fun tb!207027 () Bool)

(assert (=> (and b!3610000 (= (toChars!7779 (transformation!5636 (rule!8386 token!511))) (toChars!7779 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293382) tb!207027))

(declare-fun result!252302 () Bool)

(assert (= result!252302 result!252296))

(assert (=> d!1063325 t!293382))

(declare-fun b_and!263309 () Bool)

(assert (= b_and!263233 (and (=> t!293382 result!252302) b_and!263309)))

(declare-fun b_lambda!106851 () Bool)

(assert (=> (not b_lambda!106851) (not d!1063325)))

(declare-fun t!293384 () Bool)

(declare-fun tb!207029 () Bool)

(assert (=> (and b!3610021 (= (toValue!7920 (transformation!5636 anOtherTypeRule!33)) (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293384) tb!207029))

(declare-fun result!252304 () Bool)

(assert (=> tb!207029 (= result!252304 (inv!21 (dynLambda!16441 (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645)))) lt!1242653)))))

(declare-fun m!4108521 () Bool)

(assert (=> tb!207029 m!4108521))

(assert (=> d!1063325 t!293384))

(declare-fun b_and!263311 () Bool)

(assert (= b_and!263283 (and (=> t!293384 result!252304) b_and!263311)))

(declare-fun tb!207031 () Bool)

(declare-fun t!293386 () Bool)

(assert (=> (and b!3609998 (= (toValue!7920 (transformation!5636 rule!403)) (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293386) tb!207031))

(declare-fun result!252306 () Bool)

(assert (= result!252306 result!252304))

(assert (=> d!1063325 t!293386))

(declare-fun b_and!263313 () Bool)

(assert (= b_and!263285 (and (=> t!293386 result!252306) b_and!263313)))

(declare-fun tb!207033 () Bool)

(declare-fun t!293388 () Bool)

(assert (=> (and b!3610015 (= (toValue!7920 (transformation!5636 (h!43415 rules!3307))) (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293388) tb!207033))

(declare-fun result!252308 () Bool)

(assert (= result!252308 result!252304))

(assert (=> d!1063325 t!293388))

(declare-fun b_and!263315 () Bool)

(assert (= b_and!263287 (and (=> t!293388 result!252308) b_and!263315)))

(declare-fun t!293390 () Bool)

(declare-fun tb!207035 () Bool)

(assert (=> (and b!3610000 (= (toValue!7920 (transformation!5636 (rule!8386 token!511))) (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293390) tb!207035))

(declare-fun result!252310 () Bool)

(assert (= result!252310 result!252304))

(assert (=> d!1063325 t!293390))

(declare-fun b_and!263317 () Bool)

(assert (= b_and!263289 (and (=> t!293390 result!252310) b_and!263317)))

(declare-fun m!4108523 () Bool)

(assert (=> d!1063325 m!4108523))

(declare-fun m!4108525 () Bool)

(assert (=> d!1063325 m!4108525))

(assert (=> d!1063325 m!4108523))

(assert (=> d!1063325 m!4107509))

(assert (=> d!1063325 m!4108525))

(declare-fun m!4108527 () Bool)

(assert (=> d!1063325 m!4108527))

(declare-fun m!4108529 () Bool)

(assert (=> d!1063325 m!4108529))

(assert (=> b!3610007 d!1063325))

(declare-fun d!1063335 () Bool)

(assert (=> d!1063335 (= (size!28965 (_1!22078 lt!1242645)) (size!28966 (originalCharacters!6350 (_1!22078 lt!1242645))))))

(declare-fun Unit!54179 () Unit!54166)

(assert (=> d!1063335 (= (lemmaCharactersSize!689 (_1!22078 lt!1242645)) Unit!54179)))

(declare-fun bs!570867 () Bool)

(assert (= bs!570867 d!1063335))

(declare-fun m!4108531 () Bool)

(assert (=> bs!570867 m!4108531))

(assert (=> b!3610007 d!1063335))

(declare-fun d!1063337 () Bool)

(declare-fun lt!1242999 () Int)

(assert (=> d!1063337 (= lt!1242999 (size!28966 (list!14012 lt!1242653)))))

(declare-fun size!28969 (Conc!11577) Int)

(assert (=> d!1063337 (= lt!1242999 (size!28969 (c!624557 lt!1242653)))))

(assert (=> d!1063337 (= (size!28967 lt!1242653) lt!1242999)))

(declare-fun bs!570868 () Bool)

(assert (= bs!570868 d!1063337))

(assert (=> bs!570868 m!4107509))

(assert (=> bs!570868 m!4107509))

(declare-fun m!4108533 () Bool)

(assert (=> bs!570868 m!4108533))

(declare-fun m!4108535 () Bool)

(assert (=> bs!570868 m!4108535))

(assert (=> b!3610007 d!1063337))

(declare-fun d!1063339 () Bool)

(assert (=> d!1063339 (= (seqFromList!4189 (originalCharacters!6350 (_1!22078 lt!1242645))) (fromListB!1937 (originalCharacters!6350 (_1!22078 lt!1242645))))))

(declare-fun bs!570869 () Bool)

(assert (= bs!570869 d!1063339))

(declare-fun m!4108537 () Bool)

(assert (=> bs!570869 m!4108537))

(assert (=> b!3610007 d!1063339))

(declare-fun d!1063341 () Bool)

(assert (=> d!1063341 (= (apply!9142 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))) lt!1242653) (dynLambda!16441 (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645)))) lt!1242653))))

(declare-fun b_lambda!106853 () Bool)

(assert (=> (not b_lambda!106853) (not d!1063341)))

(assert (=> d!1063341 t!293384))

(declare-fun b_and!263319 () Bool)

(assert (= b_and!263311 (and (=> t!293384 result!252304) b_and!263319)))

(assert (=> d!1063341 t!293386))

(declare-fun b_and!263321 () Bool)

(assert (= b_and!263313 (and (=> t!293386 result!252306) b_and!263321)))

(assert (=> d!1063341 t!293388))

(declare-fun b_and!263323 () Bool)

(assert (= b_and!263315 (and (=> t!293388 result!252308) b_and!263323)))

(assert (=> d!1063341 t!293390))

(declare-fun b_and!263325 () Bool)

(assert (= b_and!263317 (and (=> t!293390 result!252310) b_and!263325)))

(assert (=> d!1063341 m!4108523))

(assert (=> b!3610007 d!1063341))

(declare-fun b!3610715 () Bool)

(declare-fun e!2234575 () Bool)

(assert (=> b!3610715 (= e!2234575 true)))

(declare-fun d!1063343 () Bool)

(assert (=> d!1063343 e!2234575))

(assert (= d!1063343 b!3610715))

(declare-fun order!20769 () Int)

(declare-fun lambda!124065 () Int)

(declare-fun dynLambda!16445 (Int Int) Int)

(assert (=> b!3610715 (< (dynLambda!16442 order!20763 (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) (dynLambda!16445 order!20769 lambda!124065))))

(assert (=> b!3610715 (< (dynLambda!16444 order!20767 (toChars!7779 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) (dynLambda!16445 order!20769 lambda!124065))))

(assert (=> d!1063343 (= (dynLambda!16441 (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645)))) lt!1242653) (dynLambda!16441 (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645)))) (seqFromList!4189 (originalCharacters!6350 (_1!22078 lt!1242645)))))))

(declare-fun lt!1243002 () Unit!54166)

(declare-fun Forall2of!316 (Int BalanceConc!22768 BalanceConc!22768) Unit!54166)

(assert (=> d!1063343 (= lt!1243002 (Forall2of!316 lambda!124065 lt!1242653 (seqFromList!4189 (originalCharacters!6350 (_1!22078 lt!1242645)))))))

(assert (=> d!1063343 (= (list!14012 lt!1242653) (list!14012 (seqFromList!4189 (originalCharacters!6350 (_1!22078 lt!1242645)))))))

(assert (=> d!1063343 (= (lemmaEqSameImage!827 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))) lt!1242653 (seqFromList!4189 (originalCharacters!6350 (_1!22078 lt!1242645)))) lt!1243002)))

(declare-fun b_lambda!106855 () Bool)

(assert (=> (not b_lambda!106855) (not d!1063343)))

(assert (=> d!1063343 t!293384))

(declare-fun b_and!263327 () Bool)

(assert (= b_and!263319 (and (=> t!293384 result!252304) b_and!263327)))

(assert (=> d!1063343 t!293386))

(declare-fun b_and!263329 () Bool)

(assert (= b_and!263321 (and (=> t!293386 result!252306) b_and!263329)))

(assert (=> d!1063343 t!293388))

(declare-fun b_and!263331 () Bool)

(assert (= b_and!263323 (and (=> t!293388 result!252308) b_and!263331)))

(assert (=> d!1063343 t!293390))

(declare-fun b_and!263333 () Bool)

(assert (= b_and!263325 (and (=> t!293390 result!252310) b_and!263333)))

(declare-fun b_lambda!106857 () Bool)

(assert (=> (not b_lambda!106857) (not d!1063343)))

(declare-fun tb!207037 () Bool)

(declare-fun t!293392 () Bool)

(assert (=> (and b!3610021 (= (toValue!7920 (transformation!5636 anOtherTypeRule!33)) (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293392) tb!207037))

(declare-fun result!252312 () Bool)

(assert (=> tb!207037 (= result!252312 (inv!21 (dynLambda!16441 (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645)))) (seqFromList!4189 (originalCharacters!6350 (_1!22078 lt!1242645))))))))

(declare-fun m!4108539 () Bool)

(assert (=> tb!207037 m!4108539))

(assert (=> d!1063343 t!293392))

(declare-fun b_and!263335 () Bool)

(assert (= b_and!263327 (and (=> t!293392 result!252312) b_and!263335)))

(declare-fun tb!207039 () Bool)

(declare-fun t!293394 () Bool)

(assert (=> (and b!3609998 (= (toValue!7920 (transformation!5636 rule!403)) (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293394) tb!207039))

(declare-fun result!252314 () Bool)

(assert (= result!252314 result!252312))

(assert (=> d!1063343 t!293394))

(declare-fun b_and!263337 () Bool)

(assert (= b_and!263329 (and (=> t!293394 result!252314) b_and!263337)))

(declare-fun t!293396 () Bool)

(declare-fun tb!207041 () Bool)

(assert (=> (and b!3610015 (= (toValue!7920 (transformation!5636 (h!43415 rules!3307))) (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293396) tb!207041))

(declare-fun result!252316 () Bool)

(assert (= result!252316 result!252312))

(assert (=> d!1063343 t!293396))

(declare-fun b_and!263339 () Bool)

(assert (= b_and!263331 (and (=> t!293396 result!252316) b_and!263339)))

(declare-fun tb!207043 () Bool)

(declare-fun t!293398 () Bool)

(assert (=> (and b!3610000 (= (toValue!7920 (transformation!5636 (rule!8386 token!511))) (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293398) tb!207043))

(declare-fun result!252318 () Bool)

(assert (= result!252318 result!252312))

(assert (=> d!1063343 t!293398))

(declare-fun b_and!263341 () Bool)

(assert (= b_and!263333 (and (=> t!293398 result!252318) b_and!263341)))

(assert (=> d!1063343 m!4107553))

(declare-fun m!4108541 () Bool)

(assert (=> d!1063343 m!4108541))

(assert (=> d!1063343 m!4107553))

(declare-fun m!4108543 () Bool)

(assert (=> d!1063343 m!4108543))

(assert (=> d!1063343 m!4107509))

(assert (=> d!1063343 m!4107553))

(declare-fun m!4108545 () Bool)

(assert (=> d!1063343 m!4108545))

(assert (=> d!1063343 m!4108523))

(assert (=> b!3610007 d!1063343))

(assert (=> bm!260945 d!1063139))

(declare-fun d!1063345 () Bool)

(assert (=> d!1063345 (= (inv!51364 (tag!6342 (rule!8386 token!511))) (= (mod (str.len (value!181085 (tag!6342 (rule!8386 token!511)))) 2) 0))))

(assert (=> b!3609982 d!1063345))

(declare-fun d!1063347 () Bool)

(declare-fun res!1460523 () Bool)

(declare-fun e!2234577 () Bool)

(assert (=> d!1063347 (=> (not res!1460523) (not e!2234577))))

(assert (=> d!1063347 (= res!1460523 (semiInverseModEq!2397 (toChars!7779 (transformation!5636 (rule!8386 token!511))) (toValue!7920 (transformation!5636 (rule!8386 token!511)))))))

(assert (=> d!1063347 (= (inv!51367 (transformation!5636 (rule!8386 token!511))) e!2234577)))

(declare-fun b!3610716 () Bool)

(assert (=> b!3610716 (= e!2234577 (equivClasses!2296 (toChars!7779 (transformation!5636 (rule!8386 token!511))) (toValue!7920 (transformation!5636 (rule!8386 token!511)))))))

(assert (= (and d!1063347 res!1460523) b!3610716))

(declare-fun m!4108547 () Bool)

(assert (=> d!1063347 m!4108547))

(declare-fun m!4108549 () Bool)

(assert (=> b!3610716 m!4108549))

(assert (=> b!3609982 d!1063347))

(declare-fun b!3610727 () Bool)

(declare-fun res!1460526 () Bool)

(declare-fun e!2234585 () Bool)

(assert (=> b!3610727 (=> res!1460526 e!2234585)))

(assert (=> b!3610727 (= res!1460526 (not ((_ is IntegerValue!17600) (value!181086 token!511))))))

(declare-fun e!2234586 () Bool)

(assert (=> b!3610727 (= e!2234586 e!2234585)))

(declare-fun d!1063349 () Bool)

(declare-fun c!624695 () Bool)

(assert (=> d!1063349 (= c!624695 ((_ is IntegerValue!17598) (value!181086 token!511)))))

(declare-fun e!2234584 () Bool)

(assert (=> d!1063349 (= (inv!21 (value!181086 token!511)) e!2234584)))

(declare-fun b!3610728 () Bool)

(declare-fun inv!17 (TokenValue!5866) Bool)

(assert (=> b!3610728 (= e!2234586 (inv!17 (value!181086 token!511)))))

(declare-fun b!3610729 () Bool)

(assert (=> b!3610729 (= e!2234584 e!2234586)))

(declare-fun c!624696 () Bool)

(assert (=> b!3610729 (= c!624696 ((_ is IntegerValue!17599) (value!181086 token!511)))))

(declare-fun b!3610730 () Bool)

(declare-fun inv!15 (TokenValue!5866) Bool)

(assert (=> b!3610730 (= e!2234585 (inv!15 (value!181086 token!511)))))

(declare-fun b!3610731 () Bool)

(declare-fun inv!16 (TokenValue!5866) Bool)

(assert (=> b!3610731 (= e!2234584 (inv!16 (value!181086 token!511)))))

(assert (= (and d!1063349 c!624695) b!3610731))

(assert (= (and d!1063349 (not c!624695)) b!3610729))

(assert (= (and b!3610729 c!624696) b!3610728))

(assert (= (and b!3610729 (not c!624696)) b!3610727))

(assert (= (and b!3610727 (not res!1460526)) b!3610730))

(declare-fun m!4108551 () Bool)

(assert (=> b!3610728 m!4108551))

(declare-fun m!4108553 () Bool)

(assert (=> b!3610730 m!4108553))

(declare-fun m!4108555 () Bool)

(assert (=> b!3610731 m!4108555))

(assert (=> b!3610003 d!1063349))

(declare-fun d!1063351 () Bool)

(declare-fun lt!1243003 () Int)

(assert (=> d!1063351 (= lt!1243003 (size!28966 (list!14012 lt!1242657)))))

(assert (=> d!1063351 (= lt!1243003 (size!28969 (c!624557 lt!1242657)))))

(assert (=> d!1063351 (= (size!28967 lt!1242657) lt!1243003)))

(declare-fun bs!570870 () Bool)

(assert (= bs!570870 d!1063351))

(assert (=> bs!570870 m!4107609))

(assert (=> bs!570870 m!4107609))

(declare-fun m!4108557 () Bool)

(assert (=> bs!570870 m!4108557))

(declare-fun m!4108559 () Bool)

(assert (=> bs!570870 m!4108559))

(assert (=> b!3610022 d!1063351))

(declare-fun d!1063353 () Bool)

(declare-fun lt!1243004 () Bool)

(assert (=> d!1063353 (= lt!1243004 (select (content!5435 lt!1242632) lt!1242636))))

(declare-fun e!2234588 () Bool)

(assert (=> d!1063353 (= lt!1243004 e!2234588)))

(declare-fun res!1460527 () Bool)

(assert (=> d!1063353 (=> (not res!1460527) (not e!2234588))))

(assert (=> d!1063353 (= res!1460527 ((_ is Cons!37994) lt!1242632))))

(assert (=> d!1063353 (= (contains!7335 lt!1242632 lt!1242636) lt!1243004)))

(declare-fun b!3610732 () Bool)

(declare-fun e!2234587 () Bool)

(assert (=> b!3610732 (= e!2234588 e!2234587)))

(declare-fun res!1460528 () Bool)

(assert (=> b!3610732 (=> res!1460528 e!2234587)))

(assert (=> b!3610732 (= res!1460528 (= (h!43414 lt!1242632) lt!1242636))))

(declare-fun b!3610733 () Bool)

(assert (=> b!3610733 (= e!2234587 (contains!7335 (t!293289 lt!1242632) lt!1242636))))

(assert (= (and d!1063353 res!1460527) b!3610732))

(assert (= (and b!3610732 (not res!1460528)) b!3610733))

(assert (=> d!1063353 m!4107801))

(declare-fun m!4108561 () Bool)

(assert (=> d!1063353 m!4108561))

(declare-fun m!4108563 () Bool)

(assert (=> b!3610733 m!4108563))

(assert (=> b!3610022 d!1063353))

(declare-fun d!1063355 () Bool)

(assert (=> d!1063355 (= (head!7594 lt!1242634) (h!43414 lt!1242634))))

(assert (=> b!3610022 d!1063355))

(declare-fun b!3610734 () Bool)

(declare-fun e!2234595 () Bool)

(declare-fun e!2234589 () Bool)

(assert (=> b!3610734 (= e!2234595 e!2234589)))

(declare-fun res!1460534 () Bool)

(assert (=> b!3610734 (=> (not res!1460534) (not e!2234589))))

(declare-fun lt!1243005 () Bool)

(assert (=> b!3610734 (= res!1460534 (not lt!1243005))))

(declare-fun b!3610735 () Bool)

(declare-fun res!1460533 () Bool)

(assert (=> b!3610735 (=> res!1460533 e!2234595)))

(declare-fun e!2234590 () Bool)

(assert (=> b!3610735 (= res!1460533 e!2234590)))

(declare-fun res!1460535 () Bool)

(assert (=> b!3610735 (=> (not res!1460535) (not e!2234590))))

(assert (=> b!3610735 (= res!1460535 lt!1243005)))

(declare-fun b!3610736 () Bool)

(declare-fun res!1460530 () Bool)

(declare-fun e!2234592 () Bool)

(assert (=> b!3610736 (=> res!1460530 e!2234592)))

(assert (=> b!3610736 (= res!1460530 (not (isEmpty!22435 (tail!5597 lt!1242658))))))

(declare-fun b!3610737 () Bool)

(assert (=> b!3610737 (= e!2234592 (not (= (head!7594 lt!1242658) (c!624556 (regex!5636 rule!403)))))))

(declare-fun b!3610739 () Bool)

(assert (=> b!3610739 (= e!2234590 (= (head!7594 lt!1242658) (c!624556 (regex!5636 rule!403))))))

(declare-fun b!3610740 () Bool)

(declare-fun e!2234594 () Bool)

(assert (=> b!3610740 (= e!2234594 (nullable!3599 (regex!5636 rule!403)))))

(declare-fun b!3610741 () Bool)

(declare-fun e!2234593 () Bool)

(declare-fun call!261008 () Bool)

(assert (=> b!3610741 (= e!2234593 (= lt!1243005 call!261008))))

(declare-fun b!3610742 () Bool)

(assert (=> b!3610742 (= e!2234589 e!2234592)))

(declare-fun res!1460529 () Bool)

(assert (=> b!3610742 (=> res!1460529 e!2234592)))

(assert (=> b!3610742 (= res!1460529 call!261008)))

(declare-fun b!3610743 () Bool)

(declare-fun res!1460536 () Bool)

(assert (=> b!3610743 (=> (not res!1460536) (not e!2234590))))

(assert (=> b!3610743 (= res!1460536 (isEmpty!22435 (tail!5597 lt!1242658)))))

(declare-fun bm!261003 () Bool)

(assert (=> bm!261003 (= call!261008 (isEmpty!22435 lt!1242658))))

(declare-fun b!3610738 () Bool)

(declare-fun e!2234591 () Bool)

(assert (=> b!3610738 (= e!2234593 e!2234591)))

(declare-fun c!624697 () Bool)

(assert (=> b!3610738 (= c!624697 ((_ is EmptyLang!10395) (regex!5636 rule!403)))))

(declare-fun d!1063357 () Bool)

(assert (=> d!1063357 e!2234593))

(declare-fun c!624699 () Bool)

(assert (=> d!1063357 (= c!624699 ((_ is EmptyExpr!10395) (regex!5636 rule!403)))))

(assert (=> d!1063357 (= lt!1243005 e!2234594)))

(declare-fun c!624698 () Bool)

(assert (=> d!1063357 (= c!624698 (isEmpty!22435 lt!1242658))))

(assert (=> d!1063357 (validRegex!4761 (regex!5636 rule!403))))

(assert (=> d!1063357 (= (matchR!4964 (regex!5636 rule!403) lt!1242658) lt!1243005)))

(declare-fun b!3610744 () Bool)

(assert (=> b!3610744 (= e!2234594 (matchR!4964 (derivativeStep!3148 (regex!5636 rule!403) (head!7594 lt!1242658)) (tail!5597 lt!1242658)))))

(declare-fun b!3610745 () Bool)

(assert (=> b!3610745 (= e!2234591 (not lt!1243005))))

(declare-fun b!3610746 () Bool)

(declare-fun res!1460531 () Bool)

(assert (=> b!3610746 (=> res!1460531 e!2234595)))

(assert (=> b!3610746 (= res!1460531 (not ((_ is ElementMatch!10395) (regex!5636 rule!403))))))

(assert (=> b!3610746 (= e!2234591 e!2234595)))

(declare-fun b!3610747 () Bool)

(declare-fun res!1460532 () Bool)

(assert (=> b!3610747 (=> (not res!1460532) (not e!2234590))))

(assert (=> b!3610747 (= res!1460532 (not call!261008))))

(assert (= (and d!1063357 c!624698) b!3610740))

(assert (= (and d!1063357 (not c!624698)) b!3610744))

(assert (= (and d!1063357 c!624699) b!3610741))

(assert (= (and d!1063357 (not c!624699)) b!3610738))

(assert (= (and b!3610738 c!624697) b!3610745))

(assert (= (and b!3610738 (not c!624697)) b!3610746))

(assert (= (and b!3610746 (not res!1460531)) b!3610735))

(assert (= (and b!3610735 res!1460535) b!3610747))

(assert (= (and b!3610747 res!1460532) b!3610743))

(assert (= (and b!3610743 res!1460536) b!3610739))

(assert (= (and b!3610735 (not res!1460533)) b!3610734))

(assert (= (and b!3610734 res!1460534) b!3610742))

(assert (= (and b!3610742 (not res!1460529)) b!3610736))

(assert (= (and b!3610736 (not res!1460530)) b!3610737))

(assert (= (or b!3610741 b!3610742 b!3610747) bm!261003))

(declare-fun m!4108565 () Bool)

(assert (=> b!3610740 m!4108565))

(assert (=> b!3610744 m!4107939))

(assert (=> b!3610744 m!4107939))

(declare-fun m!4108567 () Bool)

(assert (=> b!3610744 m!4108567))

(assert (=> b!3610744 m!4107935))

(assert (=> b!3610744 m!4108567))

(assert (=> b!3610744 m!4107935))

(declare-fun m!4108569 () Bool)

(assert (=> b!3610744 m!4108569))

(declare-fun m!4108571 () Bool)

(assert (=> bm!261003 m!4108571))

(assert (=> b!3610736 m!4107935))

(assert (=> b!3610736 m!4107935))

(declare-fun m!4108573 () Bool)

(assert (=> b!3610736 m!4108573))

(assert (=> b!3610739 m!4107939))

(assert (=> b!3610743 m!4107935))

(assert (=> b!3610743 m!4107935))

(assert (=> b!3610743 m!4108573))

(assert (=> b!3610737 m!4107939))

(assert (=> d!1063357 m!4108571))

(assert (=> d!1063357 m!4108411))

(assert (=> b!3610004 d!1063357))

(declare-fun d!1063359 () Bool)

(declare-fun res!1460541 () Bool)

(declare-fun e!2234598 () Bool)

(assert (=> d!1063359 (=> (not res!1460541) (not e!2234598))))

(assert (=> d!1063359 (= res!1460541 (validRegex!4761 (regex!5636 rule!403)))))

(assert (=> d!1063359 (= (ruleValid!1901 thiss!23823 rule!403) e!2234598)))

(declare-fun b!3610752 () Bool)

(declare-fun res!1460542 () Bool)

(assert (=> b!3610752 (=> (not res!1460542) (not e!2234598))))

(assert (=> b!3610752 (= res!1460542 (not (nullable!3599 (regex!5636 rule!403))))))

(declare-fun b!3610753 () Bool)

(assert (=> b!3610753 (= e!2234598 (not (= (tag!6342 rule!403) (String!42665 ""))))))

(assert (= (and d!1063359 res!1460541) b!3610752))

(assert (= (and b!3610752 res!1460542) b!3610753))

(assert (=> d!1063359 m!4108411))

(assert (=> b!3610752 m!4108565))

(assert (=> b!3610004 d!1063359))

(declare-fun d!1063361 () Bool)

(assert (=> d!1063361 (ruleValid!1901 thiss!23823 rule!403)))

(declare-fun lt!1243008 () Unit!54166)

(declare-fun choose!21116 (LexerInterface!5225 Rule!11072 List!38119) Unit!54166)

(assert (=> d!1063361 (= lt!1243008 (choose!21116 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1063361 (contains!7336 rules!3307 rule!403)))

(assert (=> d!1063361 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1056 thiss!23823 rule!403 rules!3307) lt!1243008)))

(declare-fun bs!570871 () Bool)

(assert (= bs!570871 d!1063361))

(assert (=> bs!570871 m!4107567))

(declare-fun m!4108575 () Bool)

(assert (=> bs!570871 m!4108575))

(assert (=> bs!570871 m!4107645))

(assert (=> b!3610004 d!1063361))

(declare-fun b!3610766 () Bool)

(declare-fun e!2234601 () Bool)

(declare-fun tp!1103647 () Bool)

(assert (=> b!3610766 (= e!2234601 tp!1103647)))

(declare-fun b!3610764 () Bool)

(assert (=> b!3610764 (= e!2234601 tp_is_empty!17873)))

(declare-fun b!3610765 () Bool)

(declare-fun tp!1103649 () Bool)

(declare-fun tp!1103648 () Bool)

(assert (=> b!3610765 (= e!2234601 (and tp!1103649 tp!1103648))))

(declare-fun b!3610767 () Bool)

(declare-fun tp!1103645 () Bool)

(declare-fun tp!1103646 () Bool)

(assert (=> b!3610767 (= e!2234601 (and tp!1103645 tp!1103646))))

(assert (=> b!3609993 (= tp!1103572 e!2234601)))

(assert (= (and b!3609993 ((_ is ElementMatch!10395) (regex!5636 anOtherTypeRule!33))) b!3610764))

(assert (= (and b!3609993 ((_ is Concat!16262) (regex!5636 anOtherTypeRule!33))) b!3610765))

(assert (= (and b!3609993 ((_ is Star!10395) (regex!5636 anOtherTypeRule!33))) b!3610766))

(assert (= (and b!3609993 ((_ is Union!10395) (regex!5636 anOtherTypeRule!33))) b!3610767))

(declare-fun b!3610770 () Bool)

(declare-fun e!2234602 () Bool)

(declare-fun tp!1103652 () Bool)

(assert (=> b!3610770 (= e!2234602 tp!1103652)))

(declare-fun b!3610768 () Bool)

(assert (=> b!3610768 (= e!2234602 tp_is_empty!17873)))

(declare-fun b!3610769 () Bool)

(declare-fun tp!1103654 () Bool)

(declare-fun tp!1103653 () Bool)

(assert (=> b!3610769 (= e!2234602 (and tp!1103654 tp!1103653))))

(declare-fun b!3610771 () Bool)

(declare-fun tp!1103650 () Bool)

(declare-fun tp!1103651 () Bool)

(assert (=> b!3610771 (= e!2234602 (and tp!1103650 tp!1103651))))

(assert (=> b!3609982 (= tp!1103571 e!2234602)))

(assert (= (and b!3609982 ((_ is ElementMatch!10395) (regex!5636 (rule!8386 token!511)))) b!3610768))

(assert (= (and b!3609982 ((_ is Concat!16262) (regex!5636 (rule!8386 token!511)))) b!3610769))

(assert (= (and b!3609982 ((_ is Star!10395) (regex!5636 (rule!8386 token!511)))) b!3610770))

(assert (= (and b!3609982 ((_ is Union!10395) (regex!5636 (rule!8386 token!511)))) b!3610771))

(declare-fun b!3610774 () Bool)

(declare-fun e!2234603 () Bool)

(declare-fun tp!1103657 () Bool)

(assert (=> b!3610774 (= e!2234603 tp!1103657)))

(declare-fun b!3610772 () Bool)

(assert (=> b!3610772 (= e!2234603 tp_is_empty!17873)))

(declare-fun b!3610773 () Bool)

(declare-fun tp!1103659 () Bool)

(declare-fun tp!1103658 () Bool)

(assert (=> b!3610773 (= e!2234603 (and tp!1103659 tp!1103658))))

(declare-fun b!3610775 () Bool)

(declare-fun tp!1103655 () Bool)

(declare-fun tp!1103656 () Bool)

(assert (=> b!3610775 (= e!2234603 (and tp!1103655 tp!1103656))))

(assert (=> b!3610018 (= tp!1103565 e!2234603)))

(assert (= (and b!3610018 ((_ is ElementMatch!10395) (regex!5636 (h!43415 rules!3307)))) b!3610772))

(assert (= (and b!3610018 ((_ is Concat!16262) (regex!5636 (h!43415 rules!3307)))) b!3610773))

(assert (= (and b!3610018 ((_ is Star!10395) (regex!5636 (h!43415 rules!3307)))) b!3610774))

(assert (= (and b!3610018 ((_ is Union!10395) (regex!5636 (h!43415 rules!3307)))) b!3610775))

(declare-fun b!3610780 () Bool)

(declare-fun e!2234606 () Bool)

(declare-fun tp!1103662 () Bool)

(assert (=> b!3610780 (= e!2234606 (and tp_is_empty!17873 tp!1103662))))

(assert (=> b!3610003 (= tp!1103566 e!2234606)))

(assert (= (and b!3610003 ((_ is Cons!37994) (originalCharacters!6350 token!511))) b!3610780))

(declare-fun b!3610783 () Bool)

(declare-fun e!2234607 () Bool)

(declare-fun tp!1103665 () Bool)

(assert (=> b!3610783 (= e!2234607 tp!1103665)))

(declare-fun b!3610781 () Bool)

(assert (=> b!3610781 (= e!2234607 tp_is_empty!17873)))

(declare-fun b!3610782 () Bool)

(declare-fun tp!1103667 () Bool)

(declare-fun tp!1103666 () Bool)

(assert (=> b!3610782 (= e!2234607 (and tp!1103667 tp!1103666))))

(declare-fun b!3610784 () Bool)

(declare-fun tp!1103663 () Bool)

(declare-fun tp!1103664 () Bool)

(assert (=> b!3610784 (= e!2234607 (and tp!1103663 tp!1103664))))

(assert (=> b!3609994 (= tp!1103573 e!2234607)))

(assert (= (and b!3609994 ((_ is ElementMatch!10395) (regex!5636 rule!403))) b!3610781))

(assert (= (and b!3609994 ((_ is Concat!16262) (regex!5636 rule!403))) b!3610782))

(assert (= (and b!3609994 ((_ is Star!10395) (regex!5636 rule!403))) b!3610783))

(assert (= (and b!3609994 ((_ is Union!10395) (regex!5636 rule!403))) b!3610784))

(declare-fun b!3610795 () Bool)

(declare-fun b_free!93725 () Bool)

(declare-fun b_next!94429 () Bool)

(assert (=> b!3610795 (= b_free!93725 (not b_next!94429))))

(declare-fun t!293400 () Bool)

(declare-fun tb!207045 () Bool)

(assert (=> (and b!3610795 (= (toValue!7920 (transformation!5636 (h!43415 (t!293290 rules!3307)))) (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293400) tb!207045))

(declare-fun result!252326 () Bool)

(assert (= result!252326 result!252304))

(assert (=> d!1063325 t!293400))

(declare-fun t!293402 () Bool)

(declare-fun tb!207047 () Bool)

(assert (=> (and b!3610795 (= (toValue!7920 (transformation!5636 (h!43415 (t!293290 rules!3307)))) (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293402) tb!207047))

(declare-fun result!252328 () Bool)

(assert (= result!252328 result!252312))

(assert (=> d!1063343 t!293402))

(declare-fun tb!207049 () Bool)

(declare-fun t!293404 () Bool)

(assert (=> (and b!3610795 (= (toValue!7920 (transformation!5636 (h!43415 (t!293290 rules!3307)))) (toValue!7920 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293404) tb!207049))

(declare-fun result!252330 () Bool)

(assert (= result!252330 result!252268))

(assert (=> d!1063235 t!293404))

(assert (=> d!1063343 t!293400))

(assert (=> d!1063341 t!293400))

(declare-fun tp!1103677 () Bool)

(declare-fun b_and!263343 () Bool)

(assert (=> b!3610795 (= tp!1103677 (and (=> t!293400 result!252326) (=> t!293404 result!252330) (=> t!293402 result!252328) b_and!263343))))

(declare-fun b_free!93727 () Bool)

(declare-fun b_next!94431 () Bool)

(assert (=> b!3610795 (= b_free!93727 (not b_next!94431))))

(declare-fun tb!207051 () Bool)

(declare-fun t!293406 () Bool)

(assert (=> (and b!3610795 (= (toChars!7779 (transformation!5636 (h!43415 (t!293290 rules!3307)))) (toChars!7779 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293406) tb!207051))

(declare-fun result!252332 () Bool)

(assert (= result!252332 result!252208))

(assert (=> d!1063099 t!293406))

(declare-fun t!293408 () Bool)

(declare-fun tb!207053 () Bool)

(assert (=> (and b!3610795 (= (toChars!7779 (transformation!5636 (h!43415 (t!293290 rules!3307)))) (toChars!7779 (transformation!5636 (rule!8386 token!511)))) t!293408) tb!207053))

(declare-fun result!252334 () Bool)

(assert (= result!252334 result!252226))

(assert (=> b!3610211 t!293408))

(assert (=> d!1063135 t!293408))

(declare-fun t!293410 () Bool)

(declare-fun tb!207055 () Bool)

(assert (=> (and b!3610795 (= (toChars!7779 (transformation!5636 (h!43415 (t!293290 rules!3307)))) (toChars!7779 (transformation!5636 (rule!8386 (_1!22078 lt!1242645))))) t!293410) tb!207055))

(declare-fun result!252336 () Bool)

(assert (= result!252336 result!252296))

(assert (=> d!1063325 t!293410))

(declare-fun tp!1103679 () Bool)

(declare-fun b_and!263345 () Bool)

(assert (=> b!3610795 (= tp!1103679 (and (=> t!293406 result!252332) (=> t!293408 result!252334) (=> t!293410 result!252336) b_and!263345))))

(declare-fun e!2234617 () Bool)

(assert (=> b!3610795 (= e!2234617 (and tp!1103677 tp!1103679))))

(declare-fun e!2234619 () Bool)

(declare-fun b!3610794 () Bool)

(declare-fun tp!1103676 () Bool)

(assert (=> b!3610794 (= e!2234619 (and tp!1103676 (inv!51364 (tag!6342 (h!43415 (t!293290 rules!3307)))) (inv!51367 (transformation!5636 (h!43415 (t!293290 rules!3307)))) e!2234617))))

(declare-fun b!3610793 () Bool)

(declare-fun e!2234616 () Bool)

(declare-fun tp!1103678 () Bool)

(assert (=> b!3610793 (= e!2234616 (and e!2234619 tp!1103678))))

(assert (=> b!3610014 (= tp!1103577 e!2234616)))

(assert (= b!3610794 b!3610795))

(assert (= b!3610793 b!3610794))

(assert (= (and b!3610014 ((_ is Cons!37995) (t!293290 rules!3307))) b!3610793))

(declare-fun m!4108577 () Bool)

(assert (=> b!3610794 m!4108577))

(declare-fun m!4108579 () Bool)

(assert (=> b!3610794 m!4108579))

(declare-fun b!3610796 () Bool)

(declare-fun e!2234620 () Bool)

(declare-fun tp!1103680 () Bool)

(assert (=> b!3610796 (= e!2234620 (and tp_is_empty!17873 tp!1103680))))

(assert (=> b!3610019 (= tp!1103575 e!2234620)))

(assert (= (and b!3610019 ((_ is Cons!37994) (t!293289 suffix!1395))) b!3610796))

(declare-fun b_lambda!106859 () Bool)

(assert (= b_lambda!106827 (or (and b!3610795 b_free!93727 (= (toChars!7779 (transformation!5636 (h!43415 (t!293290 rules!3307)))) (toChars!7779 (transformation!5636 (rule!8386 token!511))))) (and b!3610000 b_free!93719) (and b!3609998 b_free!93711 (= (toChars!7779 (transformation!5636 rule!403)) (toChars!7779 (transformation!5636 (rule!8386 token!511))))) (and b!3610015 b_free!93715 (= (toChars!7779 (transformation!5636 (h!43415 rules!3307))) (toChars!7779 (transformation!5636 (rule!8386 token!511))))) (and b!3610021 b_free!93707 (= (toChars!7779 (transformation!5636 anOtherTypeRule!33)) (toChars!7779 (transformation!5636 (rule!8386 token!511))))) b_lambda!106859)))

(declare-fun b_lambda!106861 () Bool)

(assert (= b_lambda!106825 (or (and b!3610795 b_free!93727 (= (toChars!7779 (transformation!5636 (h!43415 (t!293290 rules!3307)))) (toChars!7779 (transformation!5636 (rule!8386 token!511))))) (and b!3610000 b_free!93719) (and b!3609998 b_free!93711 (= (toChars!7779 (transformation!5636 rule!403)) (toChars!7779 (transformation!5636 (rule!8386 token!511))))) (and b!3610015 b_free!93715 (= (toChars!7779 (transformation!5636 (h!43415 rules!3307))) (toChars!7779 (transformation!5636 (rule!8386 token!511))))) (and b!3610021 b_free!93707 (= (toChars!7779 (transformation!5636 anOtherTypeRule!33)) (toChars!7779 (transformation!5636 (rule!8386 token!511))))) b_lambda!106861)))

(check-sat (not b!3610282) (not b!3610744) (not b!3610730) (not b!3610213) (not b!3610258) (not b!3610140) (not bm!260971) (not d!1063309) (not b!3610150) (not d!1063211) (not b!3610739) (not b!3610380) tp_is_empty!17873 (not b!3610332) b_and!263339 (not b!3610628) (not b!3610206) (not d!1063141) (not d!1063321) (not b!3610205) (not b!3610595) (not b!3610319) (not b!3610728) (not b!3610176) (not b!3610782) (not d!1063181) (not b_next!94415) b_and!263335 (not d!1063353) (not d!1063307) (not d!1063119) (not d!1063095) (not b!3610379) (not bm!261001) (not b!3610796) (not b!3610773) (not b_next!94409) (not b!3610780) (not d!1063241) (not d!1063343) (not d!1063129) (not b!3610736) (not b_next!94423) (not d!1063237) (not b_next!94411) (not bm!260961) (not d!1063145) (not b!3610596) (not b!3610294) (not b_next!94419) (not b!3610769) (not bm!260966) (not b!3610143) (not b!3610395) (not d!1063335) (not b!3610600) (not d!1063183) (not d!1063337) (not b!3610793) (not b!3610322) (not b!3610638) (not b!3610242) (not b!3610771) (not b!3610626) (not b!3610597) (not b_lambda!106859) (not d!1063179) (not b!3610740) (not b!3610625) (not b!3610770) (not b!3610301) (not d!1063157) (not b!3610328) (not b_lambda!106849) (not d!1063127) (not bm!260972) (not b!3610378) (not tb!206945) (not b!3610330) (not b!3610784) (not d!1063143) (not d!1063339) (not bm!260968) (not d!1063165) (not b!3610211) (not b_lambda!106853) (not bm!261003) (not b!3610269) b_and!263341 (not b_next!94431) b_and!263343 (not b_lambda!106855) (not bm!260960) (not b_next!94421) (not b!3610234) (not b!3610149) b_and!263337 (not d!1063351) (not bm!260962) (not d!1063135) (not b!3610141) (not b!3610743) b_and!263303 (not b!3610775) (not b!3610239) (not d!1063137) (not tb!207001) (not d!1063213) (not b!3610256) (not d!1063133) (not b!3610299) (not b!3610329) (not d!1063169) (not d!1063173) (not b!3610783) (not b!3610293) (not b!3610281) (not d!1063317) (not b!3610594) (not d!1063111) (not bm!260975) (not d!1063325) (not b!3610233) (not b!3610320) (not b!3610238) (not b!3610708) (not b!3610733) (not d!1063147) b_and!263305 (not b!3610396) (not b!3610618) b_and!263309 (not b!3610632) (not d!1063347) (not d!1063131) (not b!3610622) (not b!3610298) (not b!3610324) (not d!1063299) (not d!1063171) (not d!1063175) (not b_next!94417) b_and!263307 (not b!3610323) (not b!3610236) (not b_lambda!106857) (not tb!207021) (not b!3610767) (not bm!260967) (not tb!206961) (not b_lambda!106841) (not d!1063197) (not tb!207029) (not b!3610283) (not d!1063313) (not b!3610326) (not d!1063085) (not b_lambda!106851) (not b!3610174) (not d!1063315) (not b!3610629) (not tb!207037) (not b!3610240) (not b!3610413) (not b!3610633) (not b!3610731) (not b!3610271) (not bm!260969) (not b!3610316) (not b!3610598) (not b_next!94413) (not d!1063357) (not b!3610737) (not b!3610752) (not b!3610302) (not d!1063359) (not b!3610144) (not b_lambda!106821) (not b!3610766) (not b!3610424) (not b!3610716) (not d!1063103) (not b!3610325) (not b!3610168) (not b!3610593) (not bm!260951) (not bm!260973) (not b!3610621) (not b!3610212) (not b!3610333) (not b!3610774) (not b_lambda!106861) (not b!3610592) (not b!3610235) (not d!1063155) (not d!1063219) (not d!1063117) (not b!3610232) (not d!1063163) (not b_next!94429) (not b!3610297) (not b!3610765) (not d!1063099) (not b!3610334) b_and!263345 (not d!1063361) (not b!3610794))
(check-sat b_and!263339 (not b_next!94409) b_and!263303 b_and!263305 b_and!263309 (not b_next!94413) (not b_next!94415) b_and!263335 (not b_next!94419) (not b_next!94423) (not b_next!94411) b_and!263343 b_and!263341 (not b_next!94431) b_and!263337 (not b_next!94421) (not b_next!94417) b_and!263307 (not b_next!94429) b_and!263345)
