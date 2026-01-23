; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359912 () Bool)

(assert start!359912)

(declare-fun b!3843857 () Bool)

(declare-fun b_free!102713 () Bool)

(declare-fun b_next!103417 () Bool)

(assert (=> b!3843857 (= b_free!102713 (not b_next!103417))))

(declare-fun tp!1164760 () Bool)

(declare-fun b_and!286551 () Bool)

(assert (=> b!3843857 (= tp!1164760 b_and!286551)))

(declare-fun b_free!102715 () Bool)

(declare-fun b_next!103419 () Bool)

(assert (=> b!3843857 (= b_free!102715 (not b_next!103419))))

(declare-fun tp!1164752 () Bool)

(declare-fun b_and!286553 () Bool)

(assert (=> b!3843857 (= tp!1164752 b_and!286553)))

(declare-fun b!3843860 () Bool)

(declare-fun b_free!102717 () Bool)

(declare-fun b_next!103421 () Bool)

(assert (=> b!3843860 (= b_free!102717 (not b_next!103421))))

(declare-fun tp!1164749 () Bool)

(declare-fun b_and!286555 () Bool)

(assert (=> b!3843860 (= tp!1164749 b_and!286555)))

(declare-fun b_free!102719 () Bool)

(declare-fun b_next!103423 () Bool)

(assert (=> b!3843860 (= b_free!102719 (not b_next!103423))))

(declare-fun tp!1164753 () Bool)

(declare-fun b_and!286557 () Bool)

(assert (=> b!3843860 (= tp!1164753 b_and!286557)))

(declare-fun b!3843846 () Bool)

(declare-fun b_free!102721 () Bool)

(declare-fun b_next!103425 () Bool)

(assert (=> b!3843846 (= b_free!102721 (not b_next!103425))))

(declare-fun tp!1164746 () Bool)

(declare-fun b_and!286559 () Bool)

(assert (=> b!3843846 (= tp!1164746 b_and!286559)))

(declare-fun b_free!102723 () Bool)

(declare-fun b_next!103427 () Bool)

(assert (=> b!3843846 (= b_free!102723 (not b_next!103427))))

(declare-fun tp!1164750 () Bool)

(declare-fun b_and!286561 () Bool)

(assert (=> b!3843846 (= tp!1164750 b_and!286561)))

(declare-fun b!3843853 () Bool)

(declare-fun b_free!102725 () Bool)

(declare-fun b_next!103429 () Bool)

(assert (=> b!3843853 (= b_free!102725 (not b_next!103429))))

(declare-fun tp!1164741 () Bool)

(declare-fun b_and!286563 () Bool)

(assert (=> b!3843853 (= tp!1164741 b_and!286563)))

(declare-fun b_free!102727 () Bool)

(declare-fun b_next!103431 () Bool)

(assert (=> b!3843853 (= b_free!102727 (not b_next!103431))))

(declare-fun tp!1164748 () Bool)

(declare-fun b_and!286565 () Bool)

(assert (=> b!3843853 (= tp!1164748 b_and!286565)))

(declare-fun b!3843839 () Bool)

(declare-fun e!2375223 () Bool)

(declare-fun e!2375226 () Bool)

(assert (=> b!3843839 (= e!2375223 e!2375226)))

(declare-fun res!1555829 () Bool)

(assert (=> b!3843839 (=> (not res!1555829) (not e!2375226))))

(declare-datatypes ((List!40816 0))(
  ( (Nil!40692) (Cons!40692 (h!46112 (_ BitVec 16)) (t!310765 List!40816)) )
))
(declare-datatypes ((TokenValue!6512 0))(
  ( (FloatLiteralValue!13024 (text!46029 List!40816)) (TokenValueExt!6511 (__x!25241 Int)) (Broken!32560 (value!199645 List!40816)) (Object!6635) (End!6512) (Def!6512) (Underscore!6512) (Match!6512) (Else!6512) (Error!6512) (Case!6512) (If!6512) (Extends!6512) (Abstract!6512) (Class!6512) (Val!6512) (DelimiterValue!13024 (del!6572 List!40816)) (KeywordValue!6518 (value!199646 List!40816)) (CommentValue!13024 (value!199647 List!40816)) (WhitespaceValue!13024 (value!199648 List!40816)) (IndentationValue!6512 (value!199649 List!40816)) (String!46277) (Int32!6512) (Broken!32561 (value!199650 List!40816)) (Boolean!6513) (Unit!58385) (OperatorValue!6515 (op!6572 List!40816)) (IdentifierValue!13024 (value!199651 List!40816)) (IdentifierValue!13025 (value!199652 List!40816)) (WhitespaceValue!13025 (value!199653 List!40816)) (True!13024) (False!13024) (Broken!32562 (value!199654 List!40816)) (Broken!32563 (value!199655 List!40816)) (True!13025) (RightBrace!6512) (RightBracket!6512) (Colon!6512) (Null!6512) (Comma!6512) (LeftBracket!6512) (False!13025) (LeftBrace!6512) (ImaginaryLiteralValue!6512 (text!46030 List!40816)) (StringLiteralValue!19536 (value!199656 List!40816)) (EOFValue!6512 (value!199657 List!40816)) (IdentValue!6512 (value!199658 List!40816)) (DelimiterValue!13025 (value!199659 List!40816)) (DedentValue!6512 (value!199660 List!40816)) (NewLineValue!6512 (value!199661 List!40816)) (IntegerValue!19536 (value!199662 (_ BitVec 32)) (text!46031 List!40816)) (IntegerValue!19537 (value!199663 Int) (text!46032 List!40816)) (Times!6512) (Or!6512) (Equal!6512) (Minus!6512) (Broken!32564 (value!199664 List!40816)) (And!6512) (Div!6512) (LessEqual!6512) (Mod!6512) (Concat!17699) (Not!6512) (Plus!6512) (SpaceValue!6512 (value!199665 List!40816)) (IntegerValue!19538 (value!199666 Int) (text!46033 List!40816)) (StringLiteralValue!19537 (text!46034 List!40816)) (FloatLiteralValue!13025 (text!46035 List!40816)) (BytesLiteralValue!6512 (value!199667 List!40816)) (CommentValue!13025 (value!199668 List!40816)) (StringLiteralValue!19538 (value!199669 List!40816)) (ErrorTokenValue!6512 (msg!6573 List!40816)) )
))
(declare-datatypes ((C!22560 0))(
  ( (C!22561 (val!13374 Int)) )
))
(declare-datatypes ((Regex!11187 0))(
  ( (ElementMatch!11187 (c!669738 C!22560)) (Concat!17700 (regOne!22886 Regex!11187) (regTwo!22886 Regex!11187)) (EmptyExpr!11187) (Star!11187 (reg!11516 Regex!11187)) (EmptyLang!11187) (Union!11187 (regOne!22887 Regex!11187) (regTwo!22887 Regex!11187)) )
))
(declare-datatypes ((String!46278 0))(
  ( (String!46279 (value!199670 String)) )
))
(declare-datatypes ((List!40817 0))(
  ( (Nil!40693) (Cons!40693 (h!46113 C!22560) (t!310766 List!40817)) )
))
(declare-datatypes ((IArray!24991 0))(
  ( (IArray!24992 (innerList!12553 List!40817)) )
))
(declare-datatypes ((Conc!12493 0))(
  ( (Node!12493 (left!31416 Conc!12493) (right!31746 Conc!12493) (csize!25216 Int) (cheight!12704 Int)) (Leaf!19341 (xs!15799 IArray!24991) (csize!25217 Int)) (Empty!12493) )
))
(declare-datatypes ((BalanceConc!24580 0))(
  ( (BalanceConc!24581 (c!669739 Conc!12493)) )
))
(declare-datatypes ((TokenValueInjection!12452 0))(
  ( (TokenValueInjection!12453 (toValue!8698 Int) (toChars!8557 Int)) )
))
(declare-datatypes ((Rule!12364 0))(
  ( (Rule!12365 (regex!6282 Regex!11187) (tag!7142 String!46278) (isSeparator!6282 Bool) (transformation!6282 TokenValueInjection!12452)) )
))
(declare-datatypes ((Token!11702 0))(
  ( (Token!11703 (value!199671 TokenValue!6512) (rule!9124 Rule!12364) (size!30619 Int) (originalCharacters!6882 List!40817)) )
))
(declare-datatypes ((List!40818 0))(
  ( (Nil!40694) (Cons!40694 (h!46114 Token!11702) (t!310767 List!40818)) )
))
(declare-datatypes ((tuple2!39870 0))(
  ( (tuple2!39871 (_1!23069 List!40818) (_2!23069 List!40817)) )
))
(declare-fun lt!1334421 () tuple2!39870)

(declare-fun lt!1334417 () List!40818)

(declare-fun suffixResult!91 () List!40817)

(assert (=> b!3843839 (= res!1555829 (= lt!1334421 (tuple2!39871 lt!1334417 suffixResult!91)))))

(declare-datatypes ((LexerInterface!5871 0))(
  ( (LexerInterfaceExt!5868 (__x!25242 Int)) (Lexer!5869) )
))
(declare-fun thiss!20629 () LexerInterface!5871)

(declare-fun lt!1334420 () List!40817)

(declare-datatypes ((List!40819 0))(
  ( (Nil!40695) (Cons!40695 (h!46115 Rule!12364) (t!310768 List!40819)) )
))
(declare-fun rules!2768 () List!40819)

(declare-fun lexList!1639 (LexerInterface!5871 List!40819 List!40817) tuple2!39870)

(assert (=> b!3843839 (= lt!1334421 (lexList!1639 thiss!20629 rules!2768 lt!1334420))))

(declare-fun prefixTokens!80 () List!40818)

(declare-fun suffixTokens!72 () List!40818)

(declare-fun ++!10321 (List!40818 List!40818) List!40818)

(assert (=> b!3843839 (= lt!1334417 (++!10321 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!40817)

(declare-fun suffix!1176 () List!40817)

(declare-fun ++!10322 (List!40817 List!40817) List!40817)

(assert (=> b!3843839 (= lt!1334420 (++!10322 prefix!426 suffix!1176))))

(declare-fun b!3843840 () Bool)

(declare-fun e!2375199 () Bool)

(declare-fun e!2375221 () Bool)

(assert (=> b!3843840 (= e!2375199 e!2375221)))

(declare-fun res!1555831 () Bool)

(assert (=> b!3843840 (=> res!1555831 e!2375221)))

(declare-fun lt!1334423 () List!40818)

(declare-fun lt!1334426 () List!40817)

(declare-fun lt!1334422 () List!40818)

(assert (=> b!3843840 (= res!1555831 (or (not (= lt!1334417 (_1!23069 lt!1334421))) (not (= lt!1334417 lt!1334422)) (not (= prefixTokens!80 lt!1334423)) (not (= prefix!426 lt!1334426))))))

(assert (=> b!3843840 (= lt!1334426 prefix!426)))

(declare-datatypes ((tuple2!39872 0))(
  ( (tuple2!39873 (_1!23070 Token!11702) (_2!23070 List!40817)) )
))
(declare-datatypes ((Option!8700 0))(
  ( (None!8699) (Some!8699 (v!38991 tuple2!39872)) )
))
(declare-fun lt!1334437 () Option!8700)

(declare-datatypes ((Unit!58386 0))(
  ( (Unit!58387) )
))
(declare-fun lt!1334425 () Unit!58386)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!410 (List!40817 List!40817 List!40817 List!40817) Unit!58386)

(assert (=> b!3843840 (= lt!1334425 (lemmaConcatSameAndSameSizesThenSameLists!410 lt!1334426 (_2!23070 (v!38991 lt!1334437)) prefix!426 suffix!1176))))

(declare-fun b!3843841 () Bool)

(declare-fun e!2375228 () Bool)

(declare-fun e!2375194 () Bool)

(assert (=> b!3843841 (= e!2375228 e!2375194)))

(declare-fun res!1555839 () Bool)

(assert (=> b!3843841 (=> res!1555839 e!2375194)))

(declare-fun lt!1334418 () tuple2!39870)

(assert (=> b!3843841 (= res!1555839 (or (not (= lt!1334421 (tuple2!39871 lt!1334422 (_2!23069 lt!1334418)))) (not (= lt!1334418 (tuple2!39871 (_1!23069 lt!1334418) (_2!23069 lt!1334418)))) (not (= (_2!23070 (v!38991 lt!1334437)) suffix!1176))))))

(assert (=> b!3843841 (= lt!1334422 (++!10321 lt!1334423 (_1!23069 lt!1334418)))))

(assert (=> b!3843841 (= lt!1334423 (Cons!40694 (_1!23070 (v!38991 lt!1334437)) Nil!40694))))

(declare-fun b!3843842 () Bool)

(assert (=> b!3843842 (= e!2375194 e!2375199)))

(declare-fun res!1555832 () Bool)

(assert (=> b!3843842 (=> res!1555832 e!2375199)))

(assert (=> b!3843842 (= res!1555832 (not (= lt!1334437 (Some!8699 (tuple2!39873 (_1!23070 (v!38991 lt!1334437)) (_2!23070 (v!38991 lt!1334437)))))))))

(declare-fun e!2375222 () Bool)

(assert (=> b!3843842 e!2375222))

(declare-fun res!1555838 () Bool)

(assert (=> b!3843842 (=> (not res!1555838) (not e!2375222))))

(declare-fun isPrefix!3381 (List!40817 List!40817) Bool)

(assert (=> b!3843842 (= res!1555838 (isPrefix!3381 lt!1334420 lt!1334420))))

(declare-fun lt!1334428 () Unit!58386)

(declare-fun lemmaIsPrefixRefl!2154 (List!40817 List!40817) Unit!58386)

(assert (=> b!3843842 (= lt!1334428 (lemmaIsPrefixRefl!2154 lt!1334420 lt!1334420))))

(assert (=> b!3843842 (= lt!1334421 (tuple2!39871 (Cons!40694 (_1!23070 (v!38991 lt!1334437)) (_1!23069 lt!1334418)) (_2!23069 lt!1334418)))))

(declare-fun b!3843843 () Bool)

(declare-fun e!2375209 () Bool)

(declare-fun tp!1164739 () Bool)

(declare-fun e!2375220 () Bool)

(declare-fun inv!54835 (String!46278) Bool)

(declare-fun inv!54838 (TokenValueInjection!12452) Bool)

(assert (=> b!3843843 (= e!2375220 (and tp!1164739 (inv!54835 (tag!7142 (rule!9124 (h!46114 suffixTokens!72)))) (inv!54838 (transformation!6282 (rule!9124 (h!46114 suffixTokens!72)))) e!2375209))))

(declare-fun b!3843844 () Bool)

(declare-fun e!2375205 () Bool)

(assert (=> b!3843844 (= e!2375221 e!2375205)))

(declare-fun res!1555834 () Bool)

(assert (=> b!3843844 (=> res!1555834 e!2375205)))

(declare-fun isDefined!6831 (Option!8700) Bool)

(declare-fun maxPrefix!3175 (LexerInterface!5871 List!40819 List!40817) Option!8700)

(assert (=> b!3843844 (= res!1555834 (not (isDefined!6831 (maxPrefix!3175 thiss!20629 rules!2768 prefix!426))))))

(assert (=> b!3843844 (= (maxPrefix!3175 thiss!20629 rules!2768 (++!10322 prefix!426 Nil!40693)) (Some!8699 (tuple2!39873 (_1!23070 (v!38991 lt!1334437)) Nil!40693)))))

(declare-fun lt!1334431 () Unit!58386)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!12 (LexerInterface!5871 List!40819 List!40817 List!40817 List!40817 Token!11702 List!40817 List!40817) Unit!58386)

(assert (=> b!3843844 (= lt!1334431 (lemmaMaxPrefixThenWithShorterSuffix!12 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40693 (_1!23070 (v!38991 lt!1334437)) suffix!1176 Nil!40693))))

(declare-fun b!3843845 () Bool)

(declare-fun e!2375224 () Bool)

(declare-fun tp!1164757 () Bool)

(declare-fun inv!21 (TokenValue!6512) Bool)

(assert (=> b!3843845 (= e!2375224 (and (inv!21 (value!199671 (h!46114 suffixTokens!72))) e!2375220 tp!1164757))))

(declare-fun e!2375202 () Bool)

(assert (=> b!3843846 (= e!2375202 (and tp!1164746 tp!1164750))))

(declare-fun e!2375208 () Bool)

(declare-fun err!4281 () Option!8700)

(declare-fun b!3843847 () Bool)

(declare-fun tp!1164743 () Bool)

(declare-fun e!2375204 () Bool)

(assert (=> b!3843847 (= e!2375208 (and (inv!21 (value!199671 (_1!23070 (v!38991 err!4281)))) e!2375204 tp!1164743))))

(declare-fun call!282018 () Option!8700)

(declare-fun bm!282013 () Bool)

(declare-fun maxPrefixOneRule!2259 (LexerInterface!5871 Rule!12364 List!40817) Option!8700)

(assert (=> bm!282013 (= call!282018 (maxPrefixOneRule!2259 thiss!20629 (h!46115 rules!2768) lt!1334420))))

(declare-fun b!3843848 () Bool)

(declare-fun e!2375211 () Bool)

(declare-fun e!2375229 () Bool)

(declare-fun tp!1164759 () Bool)

(assert (=> b!3843848 (= e!2375211 (and tp!1164759 (inv!54835 (tag!7142 (rule!9124 (h!46114 prefixTokens!80)))) (inv!54838 (transformation!6282 (rule!9124 (h!46114 prefixTokens!80)))) e!2375229))))

(declare-fun b!3843849 () Bool)

(declare-fun e!2375217 () Bool)

(assert (=> b!3843849 (= e!2375226 e!2375217)))

(declare-fun res!1555833 () Bool)

(assert (=> b!3843849 (=> (not res!1555833) (not e!2375217))))

(get-info :version)

(assert (=> b!3843849 (= res!1555833 ((_ is Some!8699) lt!1334437))))

(assert (=> b!3843849 (= lt!1334437 (maxPrefix!3175 thiss!20629 rules!2768 lt!1334420))))

(declare-fun b!3843850 () Bool)

(assert (=> b!3843850 true))

(declare-fun e!2375212 () Bool)

(assert (=> b!3843850 e!2375212))

(declare-fun e!2375198 () Option!8700)

(assert (=> b!3843850 (= e!2375198 err!4281)))

(declare-fun b!3843851 () Bool)

(declare-fun res!1555840 () Bool)

(assert (=> b!3843851 (=> (not res!1555840) (not e!2375223))))

(declare-fun isEmpty!24062 (List!40819) Bool)

(assert (=> b!3843851 (= res!1555840 (not (isEmpty!24062 rules!2768)))))

(declare-fun b!3843852 () Bool)

(assert (=> b!3843852 (= e!2375205 true)))

(declare-fun lt!1334429 () Bool)

(declare-fun rulesValidInductive!2222 (LexerInterface!5871 List!40819) Bool)

(assert (=> b!3843852 (= lt!1334429 (rulesValidInductive!2222 thiss!20629 rules!2768))))

(declare-fun e!2375215 () Bool)

(assert (=> b!3843853 (= e!2375215 (and tp!1164741 tp!1164748))))

(declare-fun b!3843854 () Bool)

(declare-fun e!2375225 () Option!8700)

(assert (=> b!3843854 (= e!2375225 call!282018)))

(declare-fun res!1555842 () Bool)

(assert (=> start!359912 (=> (not res!1555842) (not e!2375223))))

(assert (=> start!359912 (= res!1555842 ((_ is Lexer!5869) thiss!20629))))

(assert (=> start!359912 e!2375223))

(declare-fun e!2375207 () Bool)

(assert (=> start!359912 e!2375207))

(assert (=> start!359912 true))

(declare-fun e!2375195 () Bool)

(assert (=> start!359912 e!2375195))

(declare-fun e!2375218 () Bool)

(assert (=> start!359912 e!2375218))

(declare-fun e!2375196 () Bool)

(assert (=> start!359912 e!2375196))

(declare-fun e!2375219 () Bool)

(assert (=> start!359912 e!2375219))

(declare-fun e!2375210 () Bool)

(assert (=> start!359912 e!2375210))

(declare-fun tp!1164758 () Bool)

(declare-fun b!3843855 () Bool)

(declare-fun inv!54839 (Token!11702) Bool)

(assert (=> b!3843855 (= e!2375219 (and (inv!54839 (h!46114 suffixTokens!72)) e!2375224 tp!1164758))))

(declare-fun b!3843856 () Bool)

(declare-fun e!2375214 () Bool)

(declare-fun size!30620 (List!40817) Int)

(assert (=> b!3843856 (= e!2375214 (= (size!30619 (_1!23070 (v!38991 lt!1334437))) (size!30620 (originalCharacters!6882 (_1!23070 (v!38991 lt!1334437))))))))

(assert (=> b!3843857 (= e!2375229 (and tp!1164760 tp!1164752))))

(declare-fun b!3843858 () Bool)

(assert (=> b!3843858 (= e!2375222 (= lt!1334437 e!2375225))))

(declare-fun c!669737 () Bool)

(assert (=> b!3843858 (= c!669737 (and ((_ is Cons!40695) rules!2768) ((_ is Nil!40695) (t!310768 rules!2768))))))

(declare-fun b!3843859 () Bool)

(declare-fun res!1555836 () Bool)

(assert (=> b!3843859 (=> (not res!1555836) (not e!2375223))))

(declare-fun isEmpty!24063 (List!40817) Bool)

(assert (=> b!3843859 (= res!1555836 (not (isEmpty!24063 prefix!426)))))

(assert (=> b!3843860 (= e!2375209 (and tp!1164749 tp!1164753))))

(declare-fun b!3843861 () Bool)

(declare-fun tp!1164742 () Bool)

(declare-fun e!2375230 () Bool)

(assert (=> b!3843861 (= e!2375230 (and tp!1164742 (inv!54835 (tag!7142 (h!46115 rules!2768))) (inv!54838 (transformation!6282 (h!46115 rules!2768))) e!2375202))))

(declare-fun b!3843862 () Bool)

(assert (=> b!3843862 (= e!2375217 (not e!2375228))))

(declare-fun res!1555828 () Bool)

(assert (=> b!3843862 (=> res!1555828 e!2375228)))

(declare-fun lt!1334433 () List!40817)

(assert (=> b!3843862 (= res!1555828 (not (= lt!1334433 lt!1334420)))))

(assert (=> b!3843862 (= lt!1334418 (lexList!1639 thiss!20629 rules!2768 (_2!23070 (v!38991 lt!1334437))))))

(declare-fun lt!1334436 () Int)

(declare-fun lt!1334430 () TokenValue!6512)

(declare-fun lt!1334435 () List!40817)

(assert (=> b!3843862 (and (= (size!30619 (_1!23070 (v!38991 lt!1334437))) lt!1334436) (= (originalCharacters!6882 (_1!23070 (v!38991 lt!1334437))) lt!1334426) (= (tuple2!39873 (_1!23070 (v!38991 lt!1334437)) (_2!23070 (v!38991 lt!1334437))) (tuple2!39873 (Token!11703 lt!1334430 (rule!9124 (_1!23070 (v!38991 lt!1334437))) lt!1334436 lt!1334426) lt!1334435)))))

(assert (=> b!3843862 (= lt!1334436 (size!30620 lt!1334426))))

(assert (=> b!3843862 e!2375214))

(declare-fun res!1555841 () Bool)

(assert (=> b!3843862 (=> (not res!1555841) (not e!2375214))))

(assert (=> b!3843862 (= res!1555841 (= (value!199671 (_1!23070 (v!38991 lt!1334437))) lt!1334430))))

(declare-fun apply!9525 (TokenValueInjection!12452 BalanceConc!24580) TokenValue!6512)

(declare-fun seqFromList!4553 (List!40817) BalanceConc!24580)

(assert (=> b!3843862 (= lt!1334430 (apply!9525 (transformation!6282 (rule!9124 (_1!23070 (v!38991 lt!1334437)))) (seqFromList!4553 lt!1334426)))))

(assert (=> b!3843862 (= (_2!23070 (v!38991 lt!1334437)) lt!1334435)))

(declare-fun lt!1334424 () Unit!58386)

(declare-fun lemmaSamePrefixThenSameSuffix!1602 (List!40817 List!40817 List!40817 List!40817 List!40817) Unit!58386)

(assert (=> b!3843862 (= lt!1334424 (lemmaSamePrefixThenSameSuffix!1602 lt!1334426 (_2!23070 (v!38991 lt!1334437)) lt!1334426 lt!1334435 lt!1334420))))

(declare-fun getSuffix!1836 (List!40817 List!40817) List!40817)

(assert (=> b!3843862 (= lt!1334435 (getSuffix!1836 lt!1334420 lt!1334426))))

(assert (=> b!3843862 (isPrefix!3381 lt!1334426 lt!1334433)))

(assert (=> b!3843862 (= lt!1334433 (++!10322 lt!1334426 (_2!23070 (v!38991 lt!1334437))))))

(declare-fun lt!1334416 () Unit!58386)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2244 (List!40817 List!40817) Unit!58386)

(assert (=> b!3843862 (= lt!1334416 (lemmaConcatTwoListThenFirstIsPrefix!2244 lt!1334426 (_2!23070 (v!38991 lt!1334437))))))

(declare-fun list!15150 (BalanceConc!24580) List!40817)

(declare-fun charsOf!4110 (Token!11702) BalanceConc!24580)

(assert (=> b!3843862 (= lt!1334426 (list!15150 (charsOf!4110 (_1!23070 (v!38991 lt!1334437)))))))

(declare-fun ruleValid!2234 (LexerInterface!5871 Rule!12364) Bool)

(assert (=> b!3843862 (ruleValid!2234 thiss!20629 (rule!9124 (_1!23070 (v!38991 lt!1334437))))))

(declare-fun lt!1334427 () Unit!58386)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1314 (LexerInterface!5871 Rule!12364 List!40819) Unit!58386)

(assert (=> b!3843862 (= lt!1334427 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1314 thiss!20629 (rule!9124 (_1!23070 (v!38991 lt!1334437))) rules!2768))))

(declare-fun lt!1334419 () Unit!58386)

(declare-fun lemmaCharactersSize!943 (Token!11702) Unit!58386)

(assert (=> b!3843862 (= lt!1334419 (lemmaCharactersSize!943 (_1!23070 (v!38991 lt!1334437))))))

(declare-fun b!3843863 () Bool)

(declare-fun tp!1164754 () Bool)

(assert (=> b!3843863 (= e!2375204 (and tp!1164754 (inv!54835 (tag!7142 (rule!9124 (_1!23070 (v!38991 err!4281))))) (inv!54838 (transformation!6282 (rule!9124 (_1!23070 (v!38991 err!4281))))) e!2375215))))

(declare-fun b!3843864 () Bool)

(declare-fun res!1555827 () Bool)

(assert (=> b!3843864 (=> res!1555827 e!2375221)))

(assert (=> b!3843864 (= res!1555827 (not (isPrefix!3381 Nil!40693 suffix!1176)))))

(declare-fun b!3843865 () Bool)

(declare-fun tp_is_empty!19345 () Bool)

(declare-fun tp!1164745 () Bool)

(assert (=> b!3843865 (= e!2375207 (and tp_is_empty!19345 tp!1164745))))

(declare-fun tp!1164740 () Bool)

(declare-fun e!2375213 () Bool)

(declare-fun b!3843866 () Bool)

(assert (=> b!3843866 (= e!2375213 (and (inv!21 (value!199671 (h!46114 prefixTokens!80))) e!2375211 tp!1164740))))

(declare-fun lt!1334434 () Option!8700)

(declare-fun b!3843867 () Bool)

(assert (=> b!3843867 (= lt!1334434 (maxPrefix!3175 thiss!20629 (t!310768 rules!2768) lt!1334420))))

(declare-fun lt!1334432 () Option!8700)

(assert (=> b!3843867 (= lt!1334432 call!282018)))

(assert (=> b!3843867 (= e!2375198 (ite (and ((_ is None!8699) lt!1334432) ((_ is None!8699) lt!1334434)) None!8699 (ite ((_ is None!8699) lt!1334434) lt!1334432 (ite ((_ is None!8699) lt!1334432) lt!1334434 (ite (>= (size!30619 (_1!23070 (v!38991 lt!1334432))) (size!30619 (_1!23070 (v!38991 lt!1334434)))) (Some!8699 (v!38991 lt!1334432)) lt!1334434)))))))

(declare-fun b!3843868 () Bool)

(declare-fun tp!1164755 () Bool)

(assert (=> b!3843868 (= e!2375218 (and e!2375230 tp!1164755))))

(declare-fun b!3843869 () Bool)

(declare-fun res!1555830 () Bool)

(assert (=> b!3843869 (=> (not res!1555830) (not e!2375226))))

(assert (=> b!3843869 (= res!1555830 (= (lexList!1639 thiss!20629 rules!2768 suffix!1176) (tuple2!39871 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3843870 () Bool)

(declare-fun tp!1164756 () Bool)

(assert (=> b!3843870 (= e!2375195 (and tp_is_empty!19345 tp!1164756))))

(declare-fun tp!1164747 () Bool)

(declare-fun b!3843871 () Bool)

(assert (=> b!3843871 (= e!2375212 (and (inv!54839 (_1!23070 (v!38991 err!4281))) e!2375208 tp!1164747))))

(declare-fun b!3843872 () Bool)

(declare-fun tp!1164751 () Bool)

(assert (=> b!3843872 (= e!2375196 (and (inv!54839 (h!46114 prefixTokens!80)) e!2375213 tp!1164751))))

(declare-fun b!3843873 () Bool)

(declare-fun res!1555837 () Bool)

(assert (=> b!3843873 (=> (not res!1555837) (not e!2375223))))

(declare-fun isEmpty!24064 (List!40818) Bool)

(assert (=> b!3843873 (= res!1555837 (not (isEmpty!24064 prefixTokens!80)))))

(declare-fun b!3843874 () Bool)

(declare-fun res!1555835 () Bool)

(assert (=> b!3843874 (=> (not res!1555835) (not e!2375223))))

(declare-fun rulesInvariant!5214 (LexerInterface!5871 List!40819) Bool)

(assert (=> b!3843874 (= res!1555835 (rulesInvariant!5214 thiss!20629 rules!2768))))

(declare-fun b!3843875 () Bool)

(declare-fun tp!1164744 () Bool)

(assert (=> b!3843875 (= e!2375210 (and tp_is_empty!19345 tp!1164744))))

(declare-fun b!3843876 () Bool)

(assert (=> b!3843876 (= e!2375225 e!2375198)))

(declare-fun c!669736 () Bool)

(assert (=> b!3843876 (= c!669736 ((_ is Cons!40695) rules!2768))))

(assert (= (and start!359912 res!1555842) b!3843851))

(assert (= (and b!3843851 res!1555840) b!3843874))

(assert (= (and b!3843874 res!1555835) b!3843873))

(assert (= (and b!3843873 res!1555837) b!3843859))

(assert (= (and b!3843859 res!1555836) b!3843839))

(assert (= (and b!3843839 res!1555829) b!3843869))

(assert (= (and b!3843869 res!1555830) b!3843849))

(assert (= (and b!3843849 res!1555833) b!3843862))

(assert (= (and b!3843862 res!1555841) b!3843856))

(assert (= (and b!3843862 (not res!1555828)) b!3843841))

(assert (= (and b!3843841 (not res!1555839)) b!3843842))

(assert (= (and b!3843842 res!1555838) b!3843858))

(assert (= (and b!3843858 c!669737) b!3843854))

(assert (= (and b!3843858 (not c!669737)) b!3843876))

(assert (= (and b!3843876 c!669736) b!3843867))

(assert (= (and b!3843876 (not c!669736)) b!3843850))

(assert (= b!3843863 b!3843853))

(assert (= b!3843847 b!3843863))

(assert (= b!3843871 b!3843847))

(assert (= (and b!3843850 ((_ is Some!8699) err!4281)) b!3843871))

(assert (= (or b!3843854 b!3843867) bm!282013))

(assert (= (and b!3843842 (not res!1555832)) b!3843840))

(assert (= (and b!3843840 (not res!1555831)) b!3843864))

(assert (= (and b!3843864 (not res!1555827)) b!3843844))

(assert (= (and b!3843844 (not res!1555834)) b!3843852))

(assert (= (and start!359912 ((_ is Cons!40693) suffixResult!91)) b!3843865))

(assert (= (and start!359912 ((_ is Cons!40693) suffix!1176)) b!3843870))

(assert (= b!3843861 b!3843846))

(assert (= b!3843868 b!3843861))

(assert (= (and start!359912 ((_ is Cons!40695) rules!2768)) b!3843868))

(assert (= b!3843848 b!3843857))

(assert (= b!3843866 b!3843848))

(assert (= b!3843872 b!3843866))

(assert (= (and start!359912 ((_ is Cons!40694) prefixTokens!80)) b!3843872))

(assert (= b!3843843 b!3843860))

(assert (= b!3843845 b!3843843))

(assert (= b!3843855 b!3843845))

(assert (= (and start!359912 ((_ is Cons!40694) suffixTokens!72)) b!3843855))

(assert (= (and start!359912 ((_ is Cons!40693) prefix!426)) b!3843875))

(declare-fun m!4398271 () Bool)

(assert (=> b!3843845 m!4398271))

(declare-fun m!4398273 () Bool)

(assert (=> b!3843856 m!4398273))

(declare-fun m!4398275 () Bool)

(assert (=> bm!282013 m!4398275))

(declare-fun m!4398277 () Bool)

(assert (=> b!3843864 m!4398277))

(declare-fun m!4398279 () Bool)

(assert (=> b!3843869 m!4398279))

(declare-fun m!4398281 () Bool)

(assert (=> b!3843847 m!4398281))

(declare-fun m!4398283 () Bool)

(assert (=> b!3843844 m!4398283))

(declare-fun m!4398285 () Bool)

(assert (=> b!3843844 m!4398285))

(declare-fun m!4398287 () Bool)

(assert (=> b!3843844 m!4398287))

(assert (=> b!3843844 m!4398287))

(declare-fun m!4398289 () Bool)

(assert (=> b!3843844 m!4398289))

(assert (=> b!3843844 m!4398285))

(declare-fun m!4398291 () Bool)

(assert (=> b!3843844 m!4398291))

(declare-fun m!4398293 () Bool)

(assert (=> b!3843874 m!4398293))

(declare-fun m!4398295 () Bool)

(assert (=> b!3843866 m!4398295))

(declare-fun m!4398297 () Bool)

(assert (=> b!3843848 m!4398297))

(declare-fun m!4398299 () Bool)

(assert (=> b!3843848 m!4398299))

(declare-fun m!4398301 () Bool)

(assert (=> b!3843849 m!4398301))

(declare-fun m!4398303 () Bool)

(assert (=> b!3843842 m!4398303))

(declare-fun m!4398305 () Bool)

(assert (=> b!3843842 m!4398305))

(declare-fun m!4398307 () Bool)

(assert (=> b!3843859 m!4398307))

(declare-fun m!4398309 () Bool)

(assert (=> b!3843872 m!4398309))

(declare-fun m!4398311 () Bool)

(assert (=> b!3843852 m!4398311))

(declare-fun m!4398313 () Bool)

(assert (=> b!3843873 m!4398313))

(declare-fun m!4398315 () Bool)

(assert (=> b!3843840 m!4398315))

(declare-fun m!4398317 () Bool)

(assert (=> b!3843867 m!4398317))

(declare-fun m!4398319 () Bool)

(assert (=> b!3843851 m!4398319))

(declare-fun m!4398321 () Bool)

(assert (=> b!3843863 m!4398321))

(declare-fun m!4398323 () Bool)

(assert (=> b!3843863 m!4398323))

(declare-fun m!4398325 () Bool)

(assert (=> b!3843862 m!4398325))

(declare-fun m!4398327 () Bool)

(assert (=> b!3843862 m!4398327))

(declare-fun m!4398329 () Bool)

(assert (=> b!3843862 m!4398329))

(declare-fun m!4398331 () Bool)

(assert (=> b!3843862 m!4398331))

(declare-fun m!4398333 () Bool)

(assert (=> b!3843862 m!4398333))

(declare-fun m!4398335 () Bool)

(assert (=> b!3843862 m!4398335))

(declare-fun m!4398337 () Bool)

(assert (=> b!3843862 m!4398337))

(declare-fun m!4398339 () Bool)

(assert (=> b!3843862 m!4398339))

(declare-fun m!4398341 () Bool)

(assert (=> b!3843862 m!4398341))

(declare-fun m!4398343 () Bool)

(assert (=> b!3843862 m!4398343))

(declare-fun m!4398345 () Bool)

(assert (=> b!3843862 m!4398345))

(declare-fun m!4398347 () Bool)

(assert (=> b!3843862 m!4398347))

(assert (=> b!3843862 m!4398341))

(declare-fun m!4398349 () Bool)

(assert (=> b!3843862 m!4398349))

(assert (=> b!3843862 m!4398337))

(declare-fun m!4398351 () Bool)

(assert (=> b!3843862 m!4398351))

(declare-fun m!4398353 () Bool)

(assert (=> b!3843843 m!4398353))

(declare-fun m!4398355 () Bool)

(assert (=> b!3843843 m!4398355))

(declare-fun m!4398357 () Bool)

(assert (=> b!3843871 m!4398357))

(declare-fun m!4398359 () Bool)

(assert (=> b!3843861 m!4398359))

(declare-fun m!4398361 () Bool)

(assert (=> b!3843861 m!4398361))

(declare-fun m!4398363 () Bool)

(assert (=> b!3843841 m!4398363))

(declare-fun m!4398365 () Bool)

(assert (=> b!3843839 m!4398365))

(declare-fun m!4398367 () Bool)

(assert (=> b!3843839 m!4398367))

(declare-fun m!4398369 () Bool)

(assert (=> b!3843839 m!4398369))

(declare-fun m!4398371 () Bool)

(assert (=> b!3843855 m!4398371))

(check-sat (not b_next!103429) (not bm!282013) (not b!3843862) (not b_next!103419) (not b!3843841) (not b!3843856) (not b!3843851) (not b!3843873) (not b!3843866) (not b_next!103421) (not b!3843874) (not b!3843848) tp_is_empty!19345 b_and!286561 (not b_next!103427) b_and!286563 (not b!3843872) (not b!3843864) (not b_next!103423) (not b_next!103431) (not b!3843868) (not b!3843865) b_and!286553 (not b!3843861) (not b!3843875) b_and!286559 (not b!3843867) (not b_next!103417) b_and!286551 (not b!3843852) (not b!3843844) (not b!3843845) (not b!3843869) (not b!3843843) (not b!3843842) (not b_next!103425) (not b!3843859) b_and!286555 (not b!3843840) (not b!3843855) (not b!3843847) b_and!286557 (not b!3843849) (not b!3843863) (not b!3843839) (not b!3843870) (not b!3843871) b_and!286565)
(check-sat (not b_next!103421) b_and!286561 (not b_next!103423) (not b_next!103429) b_and!286559 (not b_next!103425) b_and!286555 (not b_next!103419) b_and!286557 b_and!286565 (not b_next!103427) b_and!286563 (not b_next!103431) b_and!286553 (not b_next!103417) b_and!286551)
