; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359520 () Bool)

(assert start!359520)

(declare-fun b!3839437 () Bool)

(declare-fun b_free!102261 () Bool)

(declare-fun b_next!102965 () Bool)

(assert (=> b!3839437 (= b_free!102261 (not b_next!102965))))

(declare-fun tp!1162702 () Bool)

(declare-fun b_and!285859 () Bool)

(assert (=> b!3839437 (= tp!1162702 b_and!285859)))

(declare-fun b_free!102263 () Bool)

(declare-fun b_next!102967 () Bool)

(assert (=> b!3839437 (= b_free!102263 (not b_next!102967))))

(declare-fun tp!1162714 () Bool)

(declare-fun b_and!285861 () Bool)

(assert (=> b!3839437 (= tp!1162714 b_and!285861)))

(declare-fun b!3839430 () Bool)

(declare-fun b_free!102265 () Bool)

(declare-fun b_next!102969 () Bool)

(assert (=> b!3839430 (= b_free!102265 (not b_next!102969))))

(declare-fun tp!1162713 () Bool)

(declare-fun b_and!285863 () Bool)

(assert (=> b!3839430 (= tp!1162713 b_and!285863)))

(declare-fun b_free!102267 () Bool)

(declare-fun b_next!102971 () Bool)

(assert (=> b!3839430 (= b_free!102267 (not b_next!102971))))

(declare-fun tp!1162700 () Bool)

(declare-fun b_and!285865 () Bool)

(assert (=> b!3839430 (= tp!1162700 b_and!285865)))

(declare-fun b!3839432 () Bool)

(declare-fun b_free!102269 () Bool)

(declare-fun b_next!102973 () Bool)

(assert (=> b!3839432 (= b_free!102269 (not b_next!102973))))

(declare-fun tp!1162701 () Bool)

(declare-fun b_and!285867 () Bool)

(assert (=> b!3839432 (= tp!1162701 b_and!285867)))

(declare-fun b_free!102271 () Bool)

(declare-fun b_next!102975 () Bool)

(assert (=> b!3839432 (= b_free!102271 (not b_next!102975))))

(declare-fun tp!1162711 () Bool)

(declare-fun b_and!285869 () Bool)

(assert (=> b!3839432 (= tp!1162711 b_and!285869)))

(declare-fun b!3839421 () Bool)

(declare-fun e!2371630 () Bool)

(assert (=> b!3839421 (= e!2371630 true)))

(declare-fun lt!1332406 () Bool)

(declare-datatypes ((LexerInterface!5847 0))(
  ( (LexerInterfaceExt!5844 (__x!25193 Int)) (Lexer!5845) )
))
(declare-fun thiss!20629 () LexerInterface!5847)

(declare-datatypes ((C!22512 0))(
  ( (C!22513 (val!13350 Int)) )
))
(declare-datatypes ((List!40714 0))(
  ( (Nil!40590) (Cons!40590 (h!46010 C!22512) (t!310243 List!40714)) )
))
(declare-datatypes ((IArray!24943 0))(
  ( (IArray!24944 (innerList!12529 List!40714)) )
))
(declare-datatypes ((Conc!12469 0))(
  ( (Node!12469 (left!31368 Conc!12469) (right!31698 Conc!12469) (csize!25168 Int) (cheight!12680 Int)) (Leaf!19305 (xs!15775 IArray!24943) (csize!25169 Int)) (Empty!12469) )
))
(declare-datatypes ((BalanceConc!24532 0))(
  ( (BalanceConc!24533 (c!669260 Conc!12469)) )
))
(declare-datatypes ((String!46157 0))(
  ( (String!46158 (value!198961 String)) )
))
(declare-datatypes ((List!40715 0))(
  ( (Nil!40591) (Cons!40591 (h!46011 (_ BitVec 16)) (t!310244 List!40715)) )
))
(declare-datatypes ((TokenValue!6488 0))(
  ( (FloatLiteralValue!12976 (text!45861 List!40715)) (TokenValueExt!6487 (__x!25194 Int)) (Broken!32440 (value!198962 List!40715)) (Object!6611) (End!6488) (Def!6488) (Underscore!6488) (Match!6488) (Else!6488) (Error!6488) (Case!6488) (If!6488) (Extends!6488) (Abstract!6488) (Class!6488) (Val!6488) (DelimiterValue!12976 (del!6548 List!40715)) (KeywordValue!6494 (value!198963 List!40715)) (CommentValue!12976 (value!198964 List!40715)) (WhitespaceValue!12976 (value!198965 List!40715)) (IndentationValue!6488 (value!198966 List!40715)) (String!46159) (Int32!6488) (Broken!32441 (value!198967 List!40715)) (Boolean!6489) (Unit!58307) (OperatorValue!6491 (op!6548 List!40715)) (IdentifierValue!12976 (value!198968 List!40715)) (IdentifierValue!12977 (value!198969 List!40715)) (WhitespaceValue!12977 (value!198970 List!40715)) (True!12976) (False!12976) (Broken!32442 (value!198971 List!40715)) (Broken!32443 (value!198972 List!40715)) (True!12977) (RightBrace!6488) (RightBracket!6488) (Colon!6488) (Null!6488) (Comma!6488) (LeftBracket!6488) (False!12977) (LeftBrace!6488) (ImaginaryLiteralValue!6488 (text!45862 List!40715)) (StringLiteralValue!19464 (value!198973 List!40715)) (EOFValue!6488 (value!198974 List!40715)) (IdentValue!6488 (value!198975 List!40715)) (DelimiterValue!12977 (value!198976 List!40715)) (DedentValue!6488 (value!198977 List!40715)) (NewLineValue!6488 (value!198978 List!40715)) (IntegerValue!19464 (value!198979 (_ BitVec 32)) (text!45863 List!40715)) (IntegerValue!19465 (value!198980 Int) (text!45864 List!40715)) (Times!6488) (Or!6488) (Equal!6488) (Minus!6488) (Broken!32444 (value!198981 List!40715)) (And!6488) (Div!6488) (LessEqual!6488) (Mod!6488) (Concat!17651) (Not!6488) (Plus!6488) (SpaceValue!6488 (value!198982 List!40715)) (IntegerValue!19466 (value!198983 Int) (text!45865 List!40715)) (StringLiteralValue!19465 (text!45866 List!40715)) (FloatLiteralValue!12977 (text!45867 List!40715)) (BytesLiteralValue!6488 (value!198984 List!40715)) (CommentValue!12977 (value!198985 List!40715)) (StringLiteralValue!19466 (value!198986 List!40715)) (ErrorTokenValue!6488 (msg!6549 List!40715)) )
))
(declare-datatypes ((Regex!11163 0))(
  ( (ElementMatch!11163 (c!669261 C!22512)) (Concat!17652 (regOne!22838 Regex!11163) (regTwo!22838 Regex!11163)) (EmptyExpr!11163) (Star!11163 (reg!11492 Regex!11163)) (EmptyLang!11163) (Union!11163 (regOne!22839 Regex!11163) (regTwo!22839 Regex!11163)) )
))
(declare-datatypes ((TokenValueInjection!12404 0))(
  ( (TokenValueInjection!12405 (toValue!8674 Int) (toChars!8533 Int)) )
))
(declare-datatypes ((Rule!12316 0))(
  ( (Rule!12317 (regex!6258 Regex!11163) (tag!7118 String!46157) (isSeparator!6258 Bool) (transformation!6258 TokenValueInjection!12404)) )
))
(declare-datatypes ((List!40716 0))(
  ( (Nil!40592) (Cons!40592 (h!46012 Rule!12316) (t!310245 List!40716)) )
))
(declare-fun rules!2768 () List!40716)

(declare-fun rulesValidInductive!2210 (LexerInterface!5847 List!40716) Bool)

(assert (=> b!3839421 (= lt!1332406 (rulesValidInductive!2210 thiss!20629 rules!2768))))

(declare-datatypes ((Token!11654 0))(
  ( (Token!11655 (value!198987 TokenValue!6488) (rule!9094 Rule!12316) (size!30559 Int) (originalCharacters!6858 List!40714)) )
))
(declare-datatypes ((List!40717 0))(
  ( (Nil!40593) (Cons!40593 (h!46013 Token!11654) (t!310246 List!40717)) )
))
(declare-datatypes ((tuple2!39762 0))(
  ( (tuple2!39763 (_1!23015 List!40717) (_2!23015 List!40714)) )
))
(declare-fun lt!1332418 () tuple2!39762)

(declare-datatypes ((tuple2!39764 0))(
  ( (tuple2!39765 (_1!23016 Token!11654) (_2!23016 List!40714)) )
))
(declare-datatypes ((Option!8676 0))(
  ( (None!8675) (Some!8675 (v!38967 tuple2!39764)) )
))
(declare-fun lt!1332411 () Option!8676)

(declare-fun lt!1332419 () tuple2!39762)

(assert (=> b!3839421 (= lt!1332418 (tuple2!39763 (Cons!40593 (_1!23016 (v!38967 lt!1332411)) (_1!23015 lt!1332419)) (_2!23015 lt!1332419)))))

(declare-fun b!3839422 () Bool)

(declare-fun e!2371631 () Bool)

(declare-fun e!2371624 () Bool)

(assert (=> b!3839422 (= e!2371631 e!2371624)))

(declare-fun res!1553959 () Bool)

(assert (=> b!3839422 (=> (not res!1553959) (not e!2371624))))

(declare-fun suffixResult!91 () List!40714)

(declare-fun lt!1332408 () List!40717)

(assert (=> b!3839422 (= res!1553959 (= lt!1332418 (tuple2!39763 lt!1332408 suffixResult!91)))))

(declare-fun lt!1332417 () List!40714)

(declare-fun lexList!1615 (LexerInterface!5847 List!40716 List!40714) tuple2!39762)

(assert (=> b!3839422 (= lt!1332418 (lexList!1615 thiss!20629 rules!2768 lt!1332417))))

(declare-fun prefixTokens!80 () List!40717)

(declare-fun suffixTokens!72 () List!40717)

(declare-fun ++!10273 (List!40717 List!40717) List!40717)

(assert (=> b!3839422 (= lt!1332408 (++!10273 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!40714)

(declare-fun suffix!1176 () List!40714)

(declare-fun ++!10274 (List!40714 List!40714) List!40714)

(assert (=> b!3839422 (= lt!1332417 (++!10274 prefix!426 suffix!1176))))

(declare-fun b!3839424 () Bool)

(declare-fun e!2371627 () Bool)

(declare-fun tp_is_empty!19297 () Bool)

(declare-fun tp!1162705 () Bool)

(assert (=> b!3839424 (= e!2371627 (and tp_is_empty!19297 tp!1162705))))

(declare-fun b!3839425 () Bool)

(declare-fun res!1553962 () Bool)

(assert (=> b!3839425 (=> (not res!1553962) (not e!2371631))))

(declare-fun isEmpty!23984 (List!40716) Bool)

(assert (=> b!3839425 (= res!1553962 (not (isEmpty!23984 rules!2768)))))

(declare-fun b!3839426 () Bool)

(declare-fun res!1553951 () Bool)

(assert (=> b!3839426 (=> (not res!1553951) (not e!2371631))))

(declare-fun isEmpty!23985 (List!40717) Bool)

(assert (=> b!3839426 (= res!1553951 (not (isEmpty!23985 prefixTokens!80)))))

(declare-fun b!3839427 () Bool)

(declare-fun res!1553955 () Bool)

(assert (=> b!3839427 (=> res!1553955 e!2371630)))

(assert (=> b!3839427 (= res!1553955 (or (not (= lt!1332419 (tuple2!39763 (_1!23015 lt!1332419) (_2!23015 lt!1332419)))) (not (= (_2!23016 (v!38967 lt!1332411)) suffix!1176))))))

(declare-fun b!3839428 () Bool)

(declare-fun tp!1162704 () Bool)

(declare-fun e!2371612 () Bool)

(declare-fun e!2371621 () Bool)

(declare-fun inv!54739 (String!46157) Bool)

(declare-fun inv!54742 (TokenValueInjection!12404) Bool)

(assert (=> b!3839428 (= e!2371621 (and tp!1162704 (inv!54739 (tag!7118 (rule!9094 (h!46013 prefixTokens!80)))) (inv!54742 (transformation!6258 (rule!9094 (h!46013 prefixTokens!80)))) e!2371612))))

(declare-fun e!2371632 () Bool)

(declare-fun b!3839429 () Bool)

(declare-fun e!2371613 () Bool)

(declare-fun tp!1162698 () Bool)

(declare-fun inv!21 (TokenValue!6488) Bool)

(assert (=> b!3839429 (= e!2371613 (and (inv!21 (value!198987 (h!46013 suffixTokens!72))) e!2371632 tp!1162698))))

(declare-fun e!2371625 () Bool)

(assert (=> b!3839430 (= e!2371625 (and tp!1162713 tp!1162700))))

(declare-fun b!3839431 () Bool)

(declare-fun e!2371623 () Bool)

(declare-fun e!2371634 () Bool)

(declare-fun tp!1162703 () Bool)

(assert (=> b!3839431 (= e!2371623 (and e!2371634 tp!1162703))))

(assert (=> b!3839432 (= e!2371612 (and tp!1162701 tp!1162711))))

(declare-fun b!3839433 () Bool)

(declare-fun e!2371616 () Bool)

(assert (=> b!3839433 (= e!2371616 (not e!2371630))))

(declare-fun res!1553954 () Bool)

(assert (=> b!3839433 (=> res!1553954 e!2371630)))

(declare-fun lt!1332407 () List!40714)

(assert (=> b!3839433 (= res!1553954 (not (= lt!1332407 lt!1332417)))))

(assert (=> b!3839433 (= lt!1332419 (lexList!1615 thiss!20629 rules!2768 (_2!23016 (v!38967 lt!1332411))))))

(declare-fun lt!1332405 () List!40714)

(declare-fun lt!1332414 () TokenValue!6488)

(declare-fun lt!1332416 () Int)

(declare-fun lt!1332409 () List!40714)

(assert (=> b!3839433 (and (= (size!30559 (_1!23016 (v!38967 lt!1332411))) lt!1332416) (= (originalCharacters!6858 (_1!23016 (v!38967 lt!1332411))) lt!1332409) (= (v!38967 lt!1332411) (tuple2!39765 (Token!11655 lt!1332414 (rule!9094 (_1!23016 (v!38967 lt!1332411))) lt!1332416 lt!1332409) lt!1332405)))))

(declare-fun size!30560 (List!40714) Int)

(assert (=> b!3839433 (= lt!1332416 (size!30560 lt!1332409))))

(declare-fun e!2371633 () Bool)

(assert (=> b!3839433 e!2371633))

(declare-fun res!1553953 () Bool)

(assert (=> b!3839433 (=> (not res!1553953) (not e!2371633))))

(assert (=> b!3839433 (= res!1553953 (= (value!198987 (_1!23016 (v!38967 lt!1332411))) lt!1332414))))

(declare-fun apply!9501 (TokenValueInjection!12404 BalanceConc!24532) TokenValue!6488)

(declare-fun seqFromList!4529 (List!40714) BalanceConc!24532)

(assert (=> b!3839433 (= lt!1332414 (apply!9501 (transformation!6258 (rule!9094 (_1!23016 (v!38967 lt!1332411)))) (seqFromList!4529 lt!1332409)))))

(assert (=> b!3839433 (= (_2!23016 (v!38967 lt!1332411)) lt!1332405)))

(declare-datatypes ((Unit!58308 0))(
  ( (Unit!58309) )
))
(declare-fun lt!1332410 () Unit!58308)

(declare-fun lemmaSamePrefixThenSameSuffix!1578 (List!40714 List!40714 List!40714 List!40714 List!40714) Unit!58308)

(assert (=> b!3839433 (= lt!1332410 (lemmaSamePrefixThenSameSuffix!1578 lt!1332409 (_2!23016 (v!38967 lt!1332411)) lt!1332409 lt!1332405 lt!1332417))))

(declare-fun getSuffix!1812 (List!40714 List!40714) List!40714)

(assert (=> b!3839433 (= lt!1332405 (getSuffix!1812 lt!1332417 lt!1332409))))

(declare-fun isPrefix!3357 (List!40714 List!40714) Bool)

(assert (=> b!3839433 (isPrefix!3357 lt!1332409 lt!1332407)))

(assert (=> b!3839433 (= lt!1332407 (++!10274 lt!1332409 (_2!23016 (v!38967 lt!1332411))))))

(declare-fun lt!1332412 () Unit!58308)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2220 (List!40714 List!40714) Unit!58308)

(assert (=> b!3839433 (= lt!1332412 (lemmaConcatTwoListThenFirstIsPrefix!2220 lt!1332409 (_2!23016 (v!38967 lt!1332411))))))

(declare-fun list!15120 (BalanceConc!24532) List!40714)

(declare-fun charsOf!4086 (Token!11654) BalanceConc!24532)

(assert (=> b!3839433 (= lt!1332409 (list!15120 (charsOf!4086 (_1!23016 (v!38967 lt!1332411)))))))

(declare-fun ruleValid!2210 (LexerInterface!5847 Rule!12316) Bool)

(assert (=> b!3839433 (ruleValid!2210 thiss!20629 (rule!9094 (_1!23016 (v!38967 lt!1332411))))))

(declare-fun lt!1332413 () Unit!58308)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1290 (LexerInterface!5847 Rule!12316 List!40716) Unit!58308)

(assert (=> b!3839433 (= lt!1332413 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1290 thiss!20629 (rule!9094 (_1!23016 (v!38967 lt!1332411))) rules!2768))))

(declare-fun lt!1332415 () Unit!58308)

(declare-fun lemmaCharactersSize!919 (Token!11654) Unit!58308)

(assert (=> b!3839433 (= lt!1332415 (lemmaCharactersSize!919 (_1!23016 (v!38967 lt!1332411))))))

(declare-fun res!1553957 () Bool)

(assert (=> start!359520 (=> (not res!1553957) (not e!2371631))))

(get-info :version)

(assert (=> start!359520 (= res!1553957 ((_ is Lexer!5845) thiss!20629))))

(assert (=> start!359520 e!2371631))

(assert (=> start!359520 e!2371627))

(assert (=> start!359520 true))

(declare-fun e!2371619 () Bool)

(assert (=> start!359520 e!2371619))

(assert (=> start!359520 e!2371623))

(declare-fun e!2371628 () Bool)

(assert (=> start!359520 e!2371628))

(declare-fun e!2371617 () Bool)

(assert (=> start!359520 e!2371617))

(declare-fun e!2371622 () Bool)

(assert (=> start!359520 e!2371622))

(declare-fun b!3839423 () Bool)

(declare-fun tp!1162699 () Bool)

(assert (=> b!3839423 (= e!2371619 (and tp_is_empty!19297 tp!1162699))))

(declare-fun b!3839434 () Bool)

(declare-fun tp!1162706 () Bool)

(assert (=> b!3839434 (= e!2371622 (and tp_is_empty!19297 tp!1162706))))

(declare-fun b!3839435 () Bool)

(declare-fun res!1553956 () Bool)

(assert (=> b!3839435 (=> res!1553956 e!2371630)))

(assert (=> b!3839435 (= res!1553956 (not (= lt!1332418 (tuple2!39763 (++!10273 (Cons!40593 (_1!23016 (v!38967 lt!1332411)) Nil!40593) (_1!23015 lt!1332419)) (_2!23015 lt!1332419)))))))

(declare-fun b!3839436 () Bool)

(declare-fun res!1553960 () Bool)

(assert (=> b!3839436 (=> (not res!1553960) (not e!2371631))))

(declare-fun rulesInvariant!5190 (LexerInterface!5847 List!40716) Bool)

(assert (=> b!3839436 (= res!1553960 (rulesInvariant!5190 thiss!20629 rules!2768))))

(declare-fun e!2371620 () Bool)

(assert (=> b!3839437 (= e!2371620 (and tp!1162702 tp!1162714))))

(declare-fun tp!1162708 () Bool)

(declare-fun b!3839438 () Bool)

(declare-fun inv!54743 (Token!11654) Bool)

(assert (=> b!3839438 (= e!2371617 (and (inv!54743 (h!46013 suffixTokens!72)) e!2371613 tp!1162708))))

(declare-fun b!3839439 () Bool)

(assert (=> b!3839439 (= e!2371624 e!2371616)))

(declare-fun res!1553952 () Bool)

(assert (=> b!3839439 (=> (not res!1553952) (not e!2371616))))

(assert (=> b!3839439 (= res!1553952 ((_ is Some!8675) lt!1332411))))

(declare-fun maxPrefix!3151 (LexerInterface!5847 List!40716 List!40714) Option!8676)

(assert (=> b!3839439 (= lt!1332411 (maxPrefix!3151 thiss!20629 rules!2768 lt!1332417))))

(declare-fun b!3839440 () Bool)

(assert (=> b!3839440 (= e!2371633 (= (size!30559 (_1!23016 (v!38967 lt!1332411))) (size!30560 (originalCharacters!6858 (_1!23016 (v!38967 lt!1332411))))))))

(declare-fun b!3839441 () Bool)

(declare-fun res!1553958 () Bool)

(assert (=> b!3839441 (=> (not res!1553958) (not e!2371624))))

(assert (=> b!3839441 (= res!1553958 (= (lexList!1615 thiss!20629 rules!2768 suffix!1176) (tuple2!39763 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3839442 () Bool)

(declare-fun tp!1162712 () Bool)

(declare-fun e!2371614 () Bool)

(assert (=> b!3839442 (= e!2371628 (and (inv!54743 (h!46013 prefixTokens!80)) e!2371614 tp!1162712))))

(declare-fun b!3839443 () Bool)

(declare-fun res!1553961 () Bool)

(assert (=> b!3839443 (=> (not res!1553961) (not e!2371631))))

(declare-fun isEmpty!23986 (List!40714) Bool)

(assert (=> b!3839443 (= res!1553961 (not (isEmpty!23986 prefix!426)))))

(declare-fun tp!1162709 () Bool)

(declare-fun b!3839444 () Bool)

(assert (=> b!3839444 (= e!2371632 (and tp!1162709 (inv!54739 (tag!7118 (rule!9094 (h!46013 suffixTokens!72)))) (inv!54742 (transformation!6258 (rule!9094 (h!46013 suffixTokens!72)))) e!2371625))))

(declare-fun tp!1162710 () Bool)

(declare-fun b!3839445 () Bool)

(assert (=> b!3839445 (= e!2371634 (and tp!1162710 (inv!54739 (tag!7118 (h!46012 rules!2768))) (inv!54742 (transformation!6258 (h!46012 rules!2768))) e!2371620))))

(declare-fun tp!1162707 () Bool)

(declare-fun b!3839446 () Bool)

(assert (=> b!3839446 (= e!2371614 (and (inv!21 (value!198987 (h!46013 prefixTokens!80))) e!2371621 tp!1162707))))

(assert (= (and start!359520 res!1553957) b!3839425))

(assert (= (and b!3839425 res!1553962) b!3839436))

(assert (= (and b!3839436 res!1553960) b!3839426))

(assert (= (and b!3839426 res!1553951) b!3839443))

(assert (= (and b!3839443 res!1553961) b!3839422))

(assert (= (and b!3839422 res!1553959) b!3839441))

(assert (= (and b!3839441 res!1553958) b!3839439))

(assert (= (and b!3839439 res!1553952) b!3839433))

(assert (= (and b!3839433 res!1553953) b!3839440))

(assert (= (and b!3839433 (not res!1553954)) b!3839435))

(assert (= (and b!3839435 (not res!1553956)) b!3839427))

(assert (= (and b!3839427 (not res!1553955)) b!3839421))

(assert (= (and start!359520 ((_ is Cons!40590) suffixResult!91)) b!3839424))

(assert (= (and start!359520 ((_ is Cons!40590) suffix!1176)) b!3839423))

(assert (= b!3839445 b!3839437))

(assert (= b!3839431 b!3839445))

(assert (= (and start!359520 ((_ is Cons!40592) rules!2768)) b!3839431))

(assert (= b!3839428 b!3839432))

(assert (= b!3839446 b!3839428))

(assert (= b!3839442 b!3839446))

(assert (= (and start!359520 ((_ is Cons!40593) prefixTokens!80)) b!3839442))

(assert (= b!3839444 b!3839430))

(assert (= b!3839429 b!3839444))

(assert (= b!3839438 b!3839429))

(assert (= (and start!359520 ((_ is Cons!40593) suffixTokens!72)) b!3839438))

(assert (= (and start!359520 ((_ is Cons!40590) prefix!426)) b!3839434))

(declare-fun m!4393753 () Bool)

(assert (=> b!3839435 m!4393753))

(declare-fun m!4393755 () Bool)

(assert (=> b!3839422 m!4393755))

(declare-fun m!4393757 () Bool)

(assert (=> b!3839422 m!4393757))

(declare-fun m!4393759 () Bool)

(assert (=> b!3839422 m!4393759))

(declare-fun m!4393761 () Bool)

(assert (=> b!3839428 m!4393761))

(declare-fun m!4393763 () Bool)

(assert (=> b!3839428 m!4393763))

(declare-fun m!4393765 () Bool)

(assert (=> b!3839425 m!4393765))

(declare-fun m!4393767 () Bool)

(assert (=> b!3839444 m!4393767))

(declare-fun m!4393769 () Bool)

(assert (=> b!3839444 m!4393769))

(declare-fun m!4393771 () Bool)

(assert (=> b!3839438 m!4393771))

(declare-fun m!4393773 () Bool)

(assert (=> b!3839421 m!4393773))

(declare-fun m!4393775 () Bool)

(assert (=> b!3839429 m!4393775))

(declare-fun m!4393777 () Bool)

(assert (=> b!3839441 m!4393777))

(declare-fun m!4393779 () Bool)

(assert (=> b!3839440 m!4393779))

(declare-fun m!4393781 () Bool)

(assert (=> b!3839439 m!4393781))

(declare-fun m!4393783 () Bool)

(assert (=> b!3839433 m!4393783))

(declare-fun m!4393785 () Bool)

(assert (=> b!3839433 m!4393785))

(declare-fun m!4393787 () Bool)

(assert (=> b!3839433 m!4393787))

(declare-fun m!4393789 () Bool)

(assert (=> b!3839433 m!4393789))

(assert (=> b!3839433 m!4393787))

(declare-fun m!4393791 () Bool)

(assert (=> b!3839433 m!4393791))

(declare-fun m!4393793 () Bool)

(assert (=> b!3839433 m!4393793))

(declare-fun m!4393795 () Bool)

(assert (=> b!3839433 m!4393795))

(declare-fun m!4393797 () Bool)

(assert (=> b!3839433 m!4393797))

(declare-fun m!4393799 () Bool)

(assert (=> b!3839433 m!4393799))

(declare-fun m!4393801 () Bool)

(assert (=> b!3839433 m!4393801))

(declare-fun m!4393803 () Bool)

(assert (=> b!3839433 m!4393803))

(declare-fun m!4393805 () Bool)

(assert (=> b!3839433 m!4393805))

(declare-fun m!4393807 () Bool)

(assert (=> b!3839433 m!4393807))

(assert (=> b!3839433 m!4393801))

(declare-fun m!4393809 () Bool)

(assert (=> b!3839433 m!4393809))

(declare-fun m!4393811 () Bool)

(assert (=> b!3839442 m!4393811))

(declare-fun m!4393813 () Bool)

(assert (=> b!3839443 m!4393813))

(declare-fun m!4393815 () Bool)

(assert (=> b!3839445 m!4393815))

(declare-fun m!4393817 () Bool)

(assert (=> b!3839445 m!4393817))

(declare-fun m!4393819 () Bool)

(assert (=> b!3839426 m!4393819))

(declare-fun m!4393821 () Bool)

(assert (=> b!3839446 m!4393821))

(declare-fun m!4393823 () Bool)

(assert (=> b!3839436 m!4393823))

(check-sat (not b!3839421) tp_is_empty!19297 (not b!3839422) (not b_next!102975) b_and!285865 (not b_next!102973) (not b!3839428) (not b!3839444) (not b_next!102969) b_and!285863 (not b_next!102965) (not b!3839443) b_and!285859 (not b!3839434) (not b_next!102967) (not b!3839423) (not b!3839426) (not b!3839429) (not b_next!102971) (not b!3839442) (not b!3839441) b_and!285867 (not b!3839446) (not b!3839435) b_and!285869 (not b!3839433) (not b!3839425) (not b!3839439) b_and!285861 (not b!3839440) (not b!3839445) (not b!3839424) (not b!3839436) (not b!3839431) (not b!3839438))
(check-sat b_and!285859 (not b_next!102967) (not b_next!102971) (not b_next!102975) b_and!285865 b_and!285867 (not b_next!102973) b_and!285869 (not b_next!102969) b_and!285863 b_and!285861 (not b_next!102965))
