; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!372184 () Bool)

(assert start!372184)

(declare-fun b!3957517 () Bool)

(declare-fun b_free!109077 () Bool)

(declare-fun b_next!109781 () Bool)

(assert (=> b!3957517 (= b_free!109077 (not b_next!109781))))

(declare-fun tp!1206060 () Bool)

(declare-fun b_and!303703 () Bool)

(assert (=> b!3957517 (= tp!1206060 b_and!303703)))

(declare-fun b_free!109079 () Bool)

(declare-fun b_next!109783 () Bool)

(assert (=> b!3957517 (= b_free!109079 (not b_next!109783))))

(declare-fun tp!1206063 () Bool)

(declare-fun b_and!303705 () Bool)

(assert (=> b!3957517 (= tp!1206063 b_and!303705)))

(declare-fun b!3957533 () Bool)

(declare-fun b_free!109081 () Bool)

(declare-fun b_next!109785 () Bool)

(assert (=> b!3957533 (= b_free!109081 (not b_next!109785))))

(declare-fun tp!1206069 () Bool)

(declare-fun b_and!303707 () Bool)

(assert (=> b!3957533 (= tp!1206069 b_and!303707)))

(declare-fun b_free!109083 () Bool)

(declare-fun b_next!109787 () Bool)

(assert (=> b!3957533 (= b_free!109083 (not b_next!109787))))

(declare-fun tp!1206062 () Bool)

(declare-fun b_and!303709 () Bool)

(assert (=> b!3957533 (= tp!1206062 b_and!303709)))

(declare-fun b!3957525 () Bool)

(declare-fun b_free!109085 () Bool)

(declare-fun b_next!109789 () Bool)

(assert (=> b!3957525 (= b_free!109085 (not b_next!109789))))

(declare-fun tp!1206070 () Bool)

(declare-fun b_and!303711 () Bool)

(assert (=> b!3957525 (= tp!1206070 b_and!303711)))

(declare-fun b_free!109087 () Bool)

(declare-fun b_next!109791 () Bool)

(assert (=> b!3957525 (= b_free!109087 (not b_next!109791))))

(declare-fun tp!1206059 () Bool)

(declare-fun b_and!303713 () Bool)

(assert (=> b!3957525 (= tp!1206059 b_and!303713)))

(declare-fun b!3957512 () Bool)

(declare-fun e!2450182 () Bool)

(declare-fun e!2450205 () Bool)

(assert (=> b!3957512 (= e!2450182 e!2450205)))

(declare-fun res!1601490 () Bool)

(assert (=> b!3957512 (=> res!1601490 e!2450205)))

(declare-fun lt!1383801 () Int)

(declare-fun lt!1383797 () Int)

(declare-fun lt!1383809 () Int)

(assert (=> b!3957512 (= res!1601490 (not (= (+ lt!1383801 lt!1383797) lt!1383809)))))

(declare-datatypes ((C!23200 0))(
  ( (C!23201 (val!13694 Int)) )
))
(declare-datatypes ((List!42251 0))(
  ( (Nil!42127) (Cons!42127 (h!47547 C!23200) (t!329506 List!42251)) )
))
(declare-fun lt!1383811 () List!42251)

(declare-fun size!31554 (List!42251) Int)

(assert (=> b!3957512 (= lt!1383809 (size!31554 lt!1383811))))

(declare-fun tp!1206072 () Bool)

(declare-fun b!3957513 () Bool)

(declare-datatypes ((List!42252 0))(
  ( (Nil!42128) (Cons!42128 (h!47548 (_ BitVec 16)) (t!329507 List!42252)) )
))
(declare-datatypes ((TokenValue!6832 0))(
  ( (FloatLiteralValue!13664 (text!48269 List!42252)) (TokenValueExt!6831 (__x!25881 Int)) (Broken!34160 (value!208765 List!42252)) (Object!6955) (End!6832) (Def!6832) (Underscore!6832) (Match!6832) (Else!6832) (Error!6832) (Case!6832) (If!6832) (Extends!6832) (Abstract!6832) (Class!6832) (Val!6832) (DelimiterValue!13664 (del!6892 List!42252)) (KeywordValue!6838 (value!208766 List!42252)) (CommentValue!13664 (value!208767 List!42252)) (WhitespaceValue!13664 (value!208768 List!42252)) (IndentationValue!6832 (value!208769 List!42252)) (String!47877) (Int32!6832) (Broken!34161 (value!208770 List!42252)) (Boolean!6833) (Unit!60615) (OperatorValue!6835 (op!6892 List!42252)) (IdentifierValue!13664 (value!208771 List!42252)) (IdentifierValue!13665 (value!208772 List!42252)) (WhitespaceValue!13665 (value!208773 List!42252)) (True!13664) (False!13664) (Broken!34162 (value!208774 List!42252)) (Broken!34163 (value!208775 List!42252)) (True!13665) (RightBrace!6832) (RightBracket!6832) (Colon!6832) (Null!6832) (Comma!6832) (LeftBracket!6832) (False!13665) (LeftBrace!6832) (ImaginaryLiteralValue!6832 (text!48270 List!42252)) (StringLiteralValue!20496 (value!208776 List!42252)) (EOFValue!6832 (value!208777 List!42252)) (IdentValue!6832 (value!208778 List!42252)) (DelimiterValue!13665 (value!208779 List!42252)) (DedentValue!6832 (value!208780 List!42252)) (NewLineValue!6832 (value!208781 List!42252)) (IntegerValue!20496 (value!208782 (_ BitVec 32)) (text!48271 List!42252)) (IntegerValue!20497 (value!208783 Int) (text!48272 List!42252)) (Times!6832) (Or!6832) (Equal!6832) (Minus!6832) (Broken!34164 (value!208784 List!42252)) (And!6832) (Div!6832) (LessEqual!6832) (Mod!6832) (Concat!18339) (Not!6832) (Plus!6832) (SpaceValue!6832 (value!208785 List!42252)) (IntegerValue!20498 (value!208786 Int) (text!48273 List!42252)) (StringLiteralValue!20497 (text!48274 List!42252)) (FloatLiteralValue!13665 (text!48275 List!42252)) (BytesLiteralValue!6832 (value!208787 List!42252)) (CommentValue!13665 (value!208788 List!42252)) (StringLiteralValue!20498 (value!208789 List!42252)) (ErrorTokenValue!6832 (msg!6893 List!42252)) )
))
(declare-datatypes ((Regex!11507 0))(
  ( (ElementMatch!11507 (c!686862 C!23200)) (Concat!18340 (regOne!23526 Regex!11507) (regTwo!23526 Regex!11507)) (EmptyExpr!11507) (Star!11507 (reg!11836 Regex!11507)) (EmptyLang!11507) (Union!11507 (regOne!23527 Regex!11507) (regTwo!23527 Regex!11507)) )
))
(declare-datatypes ((String!47878 0))(
  ( (String!47879 (value!208790 String)) )
))
(declare-datatypes ((IArray!25631 0))(
  ( (IArray!25632 (innerList!12873 List!42251)) )
))
(declare-datatypes ((Conc!12813 0))(
  ( (Node!12813 (left!31996 Conc!12813) (right!32326 Conc!12813) (csize!25856 Int) (cheight!13024 Int)) (Leaf!19821 (xs!16119 IArray!25631) (csize!25857 Int)) (Empty!12813) )
))
(declare-datatypes ((BalanceConc!25220 0))(
  ( (BalanceConc!25221 (c!686863 Conc!12813)) )
))
(declare-datatypes ((TokenValueInjection!13092 0))(
  ( (TokenValueInjection!13093 (toValue!9082 Int) (toChars!8941 Int)) )
))
(declare-datatypes ((Rule!13004 0))(
  ( (Rule!13005 (regex!6602 Regex!11507) (tag!7462 String!47878) (isSeparator!6602 Bool) (transformation!6602 TokenValueInjection!13092)) )
))
(declare-datatypes ((Token!12342 0))(
  ( (Token!12343 (value!208791 TokenValue!6832) (rule!9576 Rule!13004) (size!31555 Int) (originalCharacters!7202 List!42251)) )
))
(declare-datatypes ((List!42253 0))(
  ( (Nil!42129) (Cons!42129 (h!47549 Token!12342) (t!329508 List!42253)) )
))
(declare-fun prefixTokens!80 () List!42253)

(declare-fun e!2450195 () Bool)

(declare-fun e!2450179 () Bool)

(declare-fun inv!56356 (String!47878) Bool)

(declare-fun inv!56359 (TokenValueInjection!13092) Bool)

(assert (=> b!3957513 (= e!2450195 (and tp!1206072 (inv!56356 (tag!7462 (rule!9576 (h!47549 prefixTokens!80)))) (inv!56359 (transformation!6602 (rule!9576 (h!47549 prefixTokens!80)))) e!2450179))))

(declare-fun tp!1206064 () Bool)

(declare-fun e!2450207 () Bool)

(declare-fun b!3957514 () Bool)

(declare-fun inv!21 (TokenValue!6832) Bool)

(assert (=> b!3957514 (= e!2450207 (and (inv!21 (value!208791 (h!47549 prefixTokens!80))) e!2450195 tp!1206064))))

(declare-fun b!3957515 () Bool)

(declare-fun res!1601497 () Bool)

(declare-fun e!2450194 () Bool)

(assert (=> b!3957515 (=> (not res!1601497) (not e!2450194))))

(declare-datatypes ((LexerInterface!6191 0))(
  ( (LexerInterfaceExt!6188 (__x!25882 Int)) (Lexer!6189) )
))
(declare-fun thiss!20629 () LexerInterface!6191)

(declare-datatypes ((List!42254 0))(
  ( (Nil!42130) (Cons!42130 (h!47550 Rule!13004) (t!329509 List!42254)) )
))
(declare-fun rules!2768 () List!42254)

(declare-fun rulesInvariant!5534 (LexerInterface!6191 List!42254) Bool)

(assert (=> b!3957515 (= res!1601497 (rulesInvariant!5534 thiss!20629 rules!2768))))

(declare-fun tp!1206074 () Bool)

(declare-fun e!2450200 () Bool)

(declare-fun e!2450188 () Bool)

(declare-fun suffixTokens!72 () List!42253)

(declare-fun b!3957516 () Bool)

(assert (=> b!3957516 (= e!2450188 (and tp!1206074 (inv!56356 (tag!7462 (rule!9576 (h!47549 suffixTokens!72)))) (inv!56359 (transformation!6602 (rule!9576 (h!47549 suffixTokens!72)))) e!2450200))))

(assert (=> b!3957517 (= e!2450179 (and tp!1206060 tp!1206063))))

(declare-fun b!3957518 () Bool)

(declare-fun e!2450181 () Bool)

(declare-fun tp_is_empty!19985 () Bool)

(declare-fun tp!1206073 () Bool)

(assert (=> b!3957518 (= e!2450181 (and tp_is_empty!19985 tp!1206073))))

(declare-fun b!3957519 () Bool)

(declare-fun e!2450187 () Bool)

(declare-fun e!2450192 () Bool)

(assert (=> b!3957519 (= e!2450187 e!2450192)))

(declare-fun res!1601479 () Bool)

(assert (=> b!3957519 (=> res!1601479 e!2450192)))

(declare-fun lt!1383791 () Int)

(assert (=> b!3957519 (= res!1601479 (not (= lt!1383797 lt!1383791)))))

(declare-datatypes ((tuple2!41414 0))(
  ( (tuple2!41415 (_1!23841 Token!12342) (_2!23841 List!42251)) )
))
(declare-datatypes ((Option!9022 0))(
  ( (None!9021) (Some!9021 (v!39367 tuple2!41414)) )
))
(declare-fun lt!1383789 () Option!9022)

(declare-fun lt!1383793 () tuple2!41414)

(assert (=> b!3957519 (= (_2!23841 (v!39367 lt!1383789)) (_2!23841 lt!1383793))))

(declare-fun lt!1383810 () List!42251)

(declare-datatypes ((Unit!60616 0))(
  ( (Unit!60617) )
))
(declare-fun lt!1383802 () Unit!60616)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!602 (List!42251 List!42251 List!42251 List!42251) Unit!60616)

(assert (=> b!3957519 (= lt!1383802 (lemmaConcatSameAndSameSizesThenSameLists!602 lt!1383810 (_2!23841 (v!39367 lt!1383789)) lt!1383810 (_2!23841 lt!1383793)))))

(declare-fun res!1601486 () Bool)

(assert (=> start!372184 (=> (not res!1601486) (not e!2450194))))

(get-info :version)

(assert (=> start!372184 (= res!1601486 ((_ is Lexer!6189) thiss!20629))))

(assert (=> start!372184 e!2450194))

(declare-fun e!2450202 () Bool)

(assert (=> start!372184 e!2450202))

(assert (=> start!372184 true))

(declare-fun e!2450198 () Bool)

(assert (=> start!372184 e!2450198))

(declare-fun e!2450208 () Bool)

(assert (=> start!372184 e!2450208))

(declare-fun e!2450196 () Bool)

(assert (=> start!372184 e!2450196))

(declare-fun e!2450186 () Bool)

(assert (=> start!372184 e!2450186))

(assert (=> start!372184 e!2450181))

(declare-fun b!3957520 () Bool)

(declare-fun res!1601487 () Bool)

(assert (=> b!3957520 (=> res!1601487 e!2450187)))

(declare-fun isEmpty!25182 (List!42253) Bool)

(declare-fun tail!6135 (List!42253) List!42253)

(assert (=> b!3957520 (= res!1601487 (not (isEmpty!25182 (tail!6135 prefixTokens!80))))))

(declare-fun b!3957521 () Bool)

(declare-fun res!1601488 () Bool)

(assert (=> b!3957521 (=> (not res!1601488) (not e!2450194))))

(declare-fun isEmpty!25183 (List!42254) Bool)

(assert (=> b!3957521 (= res!1601488 (not (isEmpty!25183 rules!2768)))))

(declare-fun b!3957522 () Bool)

(declare-fun e!2450191 () Bool)

(assert (=> b!3957522 (= e!2450191 (= (size!31555 (_1!23841 (v!39367 lt!1383789))) (size!31554 (originalCharacters!7202 (_1!23841 (v!39367 lt!1383789))))))))

(declare-fun b!3957523 () Bool)

(declare-fun e!2450180 () Bool)

(declare-fun tp!1206061 () Bool)

(assert (=> b!3957523 (= e!2450208 (and e!2450180 tp!1206061))))

(declare-fun b!3957524 () Bool)

(declare-fun tp!1206067 () Bool)

(assert (=> b!3957524 (= e!2450202 (and tp_is_empty!19985 tp!1206067))))

(declare-fun e!2450193 () Bool)

(assert (=> b!3957525 (= e!2450193 (and tp!1206070 tp!1206059))))

(declare-fun b!3957526 () Bool)

(declare-fun res!1601477 () Bool)

(declare-fun e!2450178 () Bool)

(assert (=> b!3957526 (=> res!1601477 e!2450178)))

(declare-datatypes ((tuple2!41416 0))(
  ( (tuple2!41417 (_1!23842 List!42253) (_2!23842 List!42251)) )
))
(declare-fun lt!1383812 () tuple2!41416)

(declare-fun lt!1383794 () tuple2!41416)

(declare-fun ++!10961 (List!42253 List!42253) List!42253)

(assert (=> b!3957526 (= res!1601477 (not (= lt!1383794 (tuple2!41417 (++!10961 (Cons!42129 (_1!23841 (v!39367 lt!1383789)) Nil!42129) (_1!23842 lt!1383812)) (_2!23842 lt!1383812)))))))

(declare-fun b!3957527 () Bool)

(declare-fun res!1601491 () Bool)

(assert (=> b!3957527 (=> res!1601491 e!2450178)))

(declare-fun suffix!1176 () List!42251)

(assert (=> b!3957527 (= res!1601491 (or (not (= lt!1383812 (tuple2!41417 (_1!23842 lt!1383812) (_2!23842 lt!1383812)))) (= (_2!23841 (v!39367 lt!1383789)) suffix!1176)))))

(declare-fun tp!1206068 () Bool)

(declare-fun b!3957528 () Bool)

(declare-fun inv!56360 (Token!12342) Bool)

(assert (=> b!3957528 (= e!2450196 (and (inv!56360 (h!47549 prefixTokens!80)) e!2450207 tp!1206068))))

(declare-fun e!2450204 () Bool)

(declare-fun tp!1206065 () Bool)

(declare-fun b!3957529 () Bool)

(assert (=> b!3957529 (= e!2450186 (and (inv!56360 (h!47549 suffixTokens!72)) e!2450204 tp!1206065))))

(declare-fun b!3957530 () Bool)

(declare-fun res!1601494 () Bool)

(assert (=> b!3957530 (=> res!1601494 e!2450187)))

(declare-fun lt!1383807 () List!42251)

(declare-fun ++!10962 (List!42251 List!42251) List!42251)

(assert (=> b!3957530 (= res!1601494 (not (= lt!1383807 (++!10962 lt!1383810 (_2!23841 lt!1383793)))))))

(declare-fun tp!1206071 () Bool)

(declare-fun b!3957531 () Bool)

(assert (=> b!3957531 (= e!2450180 (and tp!1206071 (inv!56356 (tag!7462 (h!47550 rules!2768))) (inv!56359 (transformation!6602 (h!47550 rules!2768))) e!2450193))))

(declare-fun b!3957532 () Bool)

(declare-fun res!1601495 () Bool)

(assert (=> b!3957532 (=> res!1601495 e!2450192)))

(declare-fun lt!1383800 () tuple2!41416)

(declare-fun lexList!1959 (LexerInterface!6191 List!42254 List!42251) tuple2!41416)

(assert (=> b!3957532 (= res!1601495 (not (= (lexList!1959 thiss!20629 rules!2768 (_2!23841 lt!1383793)) lt!1383800)))))

(assert (=> b!3957533 (= e!2450200 (and tp!1206069 tp!1206062))))

(declare-fun b!3957534 () Bool)

(declare-fun e!2450189 () Bool)

(assert (=> b!3957534 (= e!2450189 e!2450187)))

(declare-fun res!1601484 () Bool)

(assert (=> b!3957534 (=> res!1601484 e!2450187)))

(declare-fun lt!1383805 () Int)

(assert (=> b!3957534 (= res!1601484 (>= lt!1383791 lt!1383805))))

(assert (=> b!3957534 (= lt!1383791 (size!31554 (_2!23841 lt!1383793)))))

(declare-fun b!3957535 () Bool)

(declare-fun tp!1206058 () Bool)

(assert (=> b!3957535 (= e!2450204 (and (inv!21 (value!208791 (h!47549 suffixTokens!72))) e!2450188 tp!1206058))))

(declare-fun b!3957536 () Bool)

(assert (=> b!3957536 (= e!2450192 true)))

(assert (=> b!3957536 false))

(declare-fun lt!1383806 () Unit!60616)

(declare-fun suffixResult!91 () List!42251)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!136 (LexerInterface!6191 List!42254 List!42251 List!42251 List!42253 List!42251) Unit!60616)

(assert (=> b!3957536 (= lt!1383806 (lemmaLexWithSmallerInputCannotProduceSameResults!136 thiss!20629 rules!2768 suffix!1176 (_2!23841 lt!1383793) suffixTokens!72 suffixResult!91))))

(declare-fun b!3957537 () Bool)

(declare-fun e!2450206 () Bool)

(assert (=> b!3957537 (= e!2450194 e!2450206)))

(declare-fun res!1601489 () Bool)

(assert (=> b!3957537 (=> (not res!1601489) (not e!2450206))))

(declare-fun lt!1383813 () List!42253)

(assert (=> b!3957537 (= res!1601489 (= lt!1383794 (tuple2!41417 lt!1383813 suffixResult!91)))))

(assert (=> b!3957537 (= lt!1383794 (lexList!1959 thiss!20629 rules!2768 lt!1383811))))

(assert (=> b!3957537 (= lt!1383813 (++!10961 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!42251)

(assert (=> b!3957537 (= lt!1383811 (++!10962 prefix!426 suffix!1176))))

(declare-fun b!3957538 () Bool)

(declare-fun e!2450183 () Bool)

(assert (=> b!3957538 (= e!2450183 (not e!2450178))))

(declare-fun res!1601496 () Bool)

(assert (=> b!3957538 (=> res!1601496 e!2450178)))

(assert (=> b!3957538 (= res!1601496 (not (= lt!1383807 lt!1383811)))))

(assert (=> b!3957538 (= lt!1383812 (lexList!1959 thiss!20629 rules!2768 (_2!23841 (v!39367 lt!1383789))))))

(declare-fun lt!1383796 () List!42251)

(declare-fun lt!1383808 () TokenValue!6832)

(assert (=> b!3957538 (and (= (size!31555 (_1!23841 (v!39367 lt!1383789))) lt!1383801) (= (originalCharacters!7202 (_1!23841 (v!39367 lt!1383789))) lt!1383810) (= (v!39367 lt!1383789) (tuple2!41415 (Token!12343 lt!1383808 (rule!9576 (_1!23841 (v!39367 lt!1383789))) lt!1383801 lt!1383810) lt!1383796)))))

(assert (=> b!3957538 (= lt!1383801 (size!31554 lt!1383810))))

(assert (=> b!3957538 e!2450191))

(declare-fun res!1601483 () Bool)

(assert (=> b!3957538 (=> (not res!1601483) (not e!2450191))))

(assert (=> b!3957538 (= res!1601483 (= (value!208791 (_1!23841 (v!39367 lt!1383789))) lt!1383808))))

(declare-fun apply!9833 (TokenValueInjection!13092 BalanceConc!25220) TokenValue!6832)

(declare-fun seqFromList!4861 (List!42251) BalanceConc!25220)

(assert (=> b!3957538 (= lt!1383808 (apply!9833 (transformation!6602 (rule!9576 (_1!23841 (v!39367 lt!1383789)))) (seqFromList!4861 lt!1383810)))))

(assert (=> b!3957538 (= (_2!23841 (v!39367 lt!1383789)) lt!1383796)))

(declare-fun lt!1383790 () Unit!60616)

(declare-fun lemmaSamePrefixThenSameSuffix!1900 (List!42251 List!42251 List!42251 List!42251 List!42251) Unit!60616)

(assert (=> b!3957538 (= lt!1383790 (lemmaSamePrefixThenSameSuffix!1900 lt!1383810 (_2!23841 (v!39367 lt!1383789)) lt!1383810 lt!1383796 lt!1383811))))

(declare-fun getSuffix!2142 (List!42251 List!42251) List!42251)

(assert (=> b!3957538 (= lt!1383796 (getSuffix!2142 lt!1383811 lt!1383810))))

(declare-fun isPrefix!3691 (List!42251 List!42251) Bool)

(assert (=> b!3957538 (isPrefix!3691 lt!1383810 lt!1383807)))

(assert (=> b!3957538 (= lt!1383807 (++!10962 lt!1383810 (_2!23841 (v!39367 lt!1383789))))))

(declare-fun lt!1383798 () Unit!60616)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2550 (List!42251 List!42251) Unit!60616)

(assert (=> b!3957538 (= lt!1383798 (lemmaConcatTwoListThenFirstIsPrefix!2550 lt!1383810 (_2!23841 (v!39367 lt!1383789))))))

(declare-fun list!15642 (BalanceConc!25220) List!42251)

(declare-fun charsOf!4420 (Token!12342) BalanceConc!25220)

(assert (=> b!3957538 (= lt!1383810 (list!15642 (charsOf!4420 (_1!23841 (v!39367 lt!1383789)))))))

(declare-fun ruleValid!2544 (LexerInterface!6191 Rule!13004) Bool)

(assert (=> b!3957538 (ruleValid!2544 thiss!20629 (rule!9576 (_1!23841 (v!39367 lt!1383789))))))

(declare-fun lt!1383803 () Unit!60616)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1620 (LexerInterface!6191 Rule!13004 List!42254) Unit!60616)

(assert (=> b!3957538 (= lt!1383803 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1620 thiss!20629 (rule!9576 (_1!23841 (v!39367 lt!1383789))) rules!2768))))

(declare-fun lt!1383799 () Unit!60616)

(declare-fun lemmaCharactersSize!1255 (Token!12342) Unit!60616)

(assert (=> b!3957538 (= lt!1383799 (lemmaCharactersSize!1255 (_1!23841 (v!39367 lt!1383789))))))

(declare-fun b!3957539 () Bool)

(declare-fun res!1601498 () Bool)

(assert (=> b!3957539 (=> res!1601498 e!2450187)))

(declare-fun lt!1383792 () Token!12342)

(assert (=> b!3957539 (= res!1601498 (or (not (= prefixTokens!80 (Cons!42129 lt!1383792 Nil!42129))) (not (= (_1!23841 (v!39367 lt!1383789)) lt!1383792))))))

(declare-fun b!3957540 () Bool)

(declare-fun e!2450177 () Bool)

(assert (=> b!3957540 (= e!2450177 e!2450189)))

(declare-fun res!1601476 () Bool)

(assert (=> b!3957540 (=> res!1601476 e!2450189)))

(assert (=> b!3957540 (= res!1601476 (not (= (_1!23841 lt!1383793) lt!1383792)))))

(declare-fun head!8409 (List!42253) Token!12342)

(assert (=> b!3957540 (= lt!1383792 (head!8409 prefixTokens!80))))

(declare-fun get!13893 (Option!9022) tuple2!41414)

(assert (=> b!3957540 (= lt!1383793 (get!13893 lt!1383789))))

(declare-fun b!3957541 () Bool)

(declare-fun e!2450184 () Bool)

(assert (=> b!3957541 (= e!2450205 e!2450184)))

(declare-fun res!1601493 () Bool)

(assert (=> b!3957541 (=> res!1601493 e!2450184)))

(declare-fun lt!1383804 () Int)

(assert (=> b!3957541 (= res!1601493 (or (not (= (+ lt!1383804 lt!1383805) lt!1383809)) (<= lt!1383801 lt!1383804)))))

(assert (=> b!3957541 (= lt!1383804 (size!31554 prefix!426))))

(declare-fun b!3957542 () Bool)

(declare-fun res!1601480 () Bool)

(assert (=> b!3957542 (=> (not res!1601480) (not e!2450194))))

(declare-fun isEmpty!25184 (List!42251) Bool)

(assert (=> b!3957542 (= res!1601480 (not (isEmpty!25184 prefix!426)))))

(declare-fun b!3957543 () Bool)

(declare-fun e!2450190 () Bool)

(assert (=> b!3957543 (= e!2450206 e!2450190)))

(declare-fun res!1601485 () Bool)

(assert (=> b!3957543 (=> (not res!1601485) (not e!2450190))))

(assert (=> b!3957543 (= res!1601485 (= (lexList!1959 thiss!20629 rules!2768 suffix!1176) lt!1383800))))

(assert (=> b!3957543 (= lt!1383800 (tuple2!41417 suffixTokens!72 suffixResult!91))))

(declare-fun b!3957544 () Bool)

(assert (=> b!3957544 (= e!2450190 e!2450183)))

(declare-fun res!1601482 () Bool)

(assert (=> b!3957544 (=> (not res!1601482) (not e!2450183))))

(assert (=> b!3957544 (= res!1601482 ((_ is Some!9021) lt!1383789))))

(declare-fun maxPrefix!3495 (LexerInterface!6191 List!42254 List!42251) Option!9022)

(assert (=> b!3957544 (= lt!1383789 (maxPrefix!3495 thiss!20629 rules!2768 lt!1383811))))

(declare-fun b!3957545 () Bool)

(declare-fun res!1601492 () Bool)

(assert (=> b!3957545 (=> (not res!1601492) (not e!2450194))))

(assert (=> b!3957545 (= res!1601492 (not (isEmpty!25182 prefixTokens!80)))))

(declare-fun b!3957546 () Bool)

(declare-fun tp!1206066 () Bool)

(assert (=> b!3957546 (= e!2450198 (and tp_is_empty!19985 tp!1206066))))

(declare-fun b!3957547 () Bool)

(assert (=> b!3957547 (= e!2450178 e!2450182)))

(declare-fun res!1601481 () Bool)

(assert (=> b!3957547 (=> res!1601481 e!2450182)))

(assert (=> b!3957547 (= res!1601481 (>= lt!1383797 lt!1383805))))

(assert (=> b!3957547 (= lt!1383805 (size!31554 suffix!1176))))

(assert (=> b!3957547 (= lt!1383797 (size!31554 (_2!23841 (v!39367 lt!1383789))))))

(declare-fun b!3957548 () Bool)

(assert (=> b!3957548 (= e!2450184 e!2450177)))

(declare-fun res!1601478 () Bool)

(assert (=> b!3957548 (=> res!1601478 e!2450177)))

(declare-fun matchR!5528 (Regex!11507 List!42251) Bool)

(assert (=> b!3957548 (= res!1601478 (not (matchR!5528 (regex!6602 (rule!9576 (_1!23841 (v!39367 lt!1383789)))) lt!1383810)))))

(declare-fun maxPrefixOneRule!2545 (LexerInterface!6191 Rule!13004 List!42251) Option!9022)

(assert (=> b!3957548 (= (maxPrefixOneRule!2545 thiss!20629 (rule!9576 (_1!23841 (v!39367 lt!1383789))) lt!1383811) (Some!9021 (tuple2!41415 (Token!12343 lt!1383808 (rule!9576 (_1!23841 (v!39367 lt!1383789))) lt!1383801 lt!1383810) (_2!23841 (v!39367 lt!1383789)))))))

(declare-fun lt!1383795 () Unit!60616)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1371 (LexerInterface!6191 List!42254 List!42251 List!42251 List!42251 Rule!13004) Unit!60616)

(assert (=> b!3957548 (= lt!1383795 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1371 thiss!20629 rules!2768 lt!1383810 lt!1383811 (_2!23841 (v!39367 lt!1383789)) (rule!9576 (_1!23841 (v!39367 lt!1383789)))))))

(assert (= (and start!372184 res!1601486) b!3957521))

(assert (= (and b!3957521 res!1601488) b!3957515))

(assert (= (and b!3957515 res!1601497) b!3957545))

(assert (= (and b!3957545 res!1601492) b!3957542))

(assert (= (and b!3957542 res!1601480) b!3957537))

(assert (= (and b!3957537 res!1601489) b!3957543))

(assert (= (and b!3957543 res!1601485) b!3957544))

(assert (= (and b!3957544 res!1601482) b!3957538))

(assert (= (and b!3957538 res!1601483) b!3957522))

(assert (= (and b!3957538 (not res!1601496)) b!3957526))

(assert (= (and b!3957526 (not res!1601477)) b!3957527))

(assert (= (and b!3957527 (not res!1601491)) b!3957547))

(assert (= (and b!3957547 (not res!1601481)) b!3957512))

(assert (= (and b!3957512 (not res!1601490)) b!3957541))

(assert (= (and b!3957541 (not res!1601493)) b!3957548))

(assert (= (and b!3957548 (not res!1601478)) b!3957540))

(assert (= (and b!3957540 (not res!1601476)) b!3957534))

(assert (= (and b!3957534 (not res!1601484)) b!3957520))

(assert (= (and b!3957520 (not res!1601487)) b!3957539))

(assert (= (and b!3957539 (not res!1601498)) b!3957530))

(assert (= (and b!3957530 (not res!1601494)) b!3957519))

(assert (= (and b!3957519 (not res!1601479)) b!3957532))

(assert (= (and b!3957532 (not res!1601495)) b!3957536))

(assert (= (and start!372184 ((_ is Cons!42127) suffixResult!91)) b!3957524))

(assert (= (and start!372184 ((_ is Cons!42127) suffix!1176)) b!3957546))

(assert (= b!3957531 b!3957525))

(assert (= b!3957523 b!3957531))

(assert (= (and start!372184 ((_ is Cons!42130) rules!2768)) b!3957523))

(assert (= b!3957513 b!3957517))

(assert (= b!3957514 b!3957513))

(assert (= b!3957528 b!3957514))

(assert (= (and start!372184 ((_ is Cons!42129) prefixTokens!80)) b!3957528))

(assert (= b!3957516 b!3957533))

(assert (= b!3957535 b!3957516))

(assert (= b!3957529 b!3957535))

(assert (= (and start!372184 ((_ is Cons!42129) suffixTokens!72)) b!3957529))

(assert (= (and start!372184 ((_ is Cons!42127) prefix!426)) b!3957518))

(declare-fun m!4526371 () Bool)

(assert (=> b!3957532 m!4526371))

(declare-fun m!4526373 () Bool)

(assert (=> b!3957543 m!4526373))

(declare-fun m!4526375 () Bool)

(assert (=> b!3957531 m!4526375))

(declare-fun m!4526377 () Bool)

(assert (=> b!3957531 m!4526377))

(declare-fun m!4526379 () Bool)

(assert (=> b!3957541 m!4526379))

(declare-fun m!4526381 () Bool)

(assert (=> b!3957512 m!4526381))

(declare-fun m!4526383 () Bool)

(assert (=> b!3957542 m!4526383))

(declare-fun m!4526385 () Bool)

(assert (=> b!3957547 m!4526385))

(declare-fun m!4526387 () Bool)

(assert (=> b!3957547 m!4526387))

(declare-fun m!4526389 () Bool)

(assert (=> b!3957528 m!4526389))

(declare-fun m!4526391 () Bool)

(assert (=> b!3957513 m!4526391))

(declare-fun m!4526393 () Bool)

(assert (=> b!3957513 m!4526393))

(declare-fun m!4526395 () Bool)

(assert (=> b!3957529 m!4526395))

(declare-fun m!4526397 () Bool)

(assert (=> b!3957535 m!4526397))

(declare-fun m!4526399 () Bool)

(assert (=> b!3957540 m!4526399))

(declare-fun m!4526401 () Bool)

(assert (=> b!3957540 m!4526401))

(declare-fun m!4526403 () Bool)

(assert (=> b!3957534 m!4526403))

(declare-fun m!4526405 () Bool)

(assert (=> b!3957544 m!4526405))

(declare-fun m!4526407 () Bool)

(assert (=> b!3957516 m!4526407))

(declare-fun m!4526409 () Bool)

(assert (=> b!3957516 m!4526409))

(declare-fun m!4526411 () Bool)

(assert (=> b!3957515 m!4526411))

(declare-fun m!4526413 () Bool)

(assert (=> b!3957530 m!4526413))

(declare-fun m!4526415 () Bool)

(assert (=> b!3957536 m!4526415))

(declare-fun m!4526417 () Bool)

(assert (=> b!3957538 m!4526417))

(declare-fun m!4526419 () Bool)

(assert (=> b!3957538 m!4526419))

(declare-fun m!4526421 () Bool)

(assert (=> b!3957538 m!4526421))

(declare-fun m!4526423 () Bool)

(assert (=> b!3957538 m!4526423))

(declare-fun m!4526425 () Bool)

(assert (=> b!3957538 m!4526425))

(assert (=> b!3957538 m!4526417))

(declare-fun m!4526427 () Bool)

(assert (=> b!3957538 m!4526427))

(declare-fun m!4526429 () Bool)

(assert (=> b!3957538 m!4526429))

(declare-fun m!4526431 () Bool)

(assert (=> b!3957538 m!4526431))

(declare-fun m!4526433 () Bool)

(assert (=> b!3957538 m!4526433))

(declare-fun m!4526435 () Bool)

(assert (=> b!3957538 m!4526435))

(declare-fun m!4526437 () Bool)

(assert (=> b!3957538 m!4526437))

(declare-fun m!4526439 () Bool)

(assert (=> b!3957538 m!4526439))

(declare-fun m!4526441 () Bool)

(assert (=> b!3957538 m!4526441))

(declare-fun m!4526443 () Bool)

(assert (=> b!3957538 m!4526443))

(assert (=> b!3957538 m!4526423))

(declare-fun m!4526445 () Bool)

(assert (=> b!3957520 m!4526445))

(assert (=> b!3957520 m!4526445))

(declare-fun m!4526447 () Bool)

(assert (=> b!3957520 m!4526447))

(declare-fun m!4526449 () Bool)

(assert (=> b!3957545 m!4526449))

(declare-fun m!4526451 () Bool)

(assert (=> b!3957519 m!4526451))

(declare-fun m!4526453 () Bool)

(assert (=> b!3957522 m!4526453))

(declare-fun m!4526455 () Bool)

(assert (=> b!3957521 m!4526455))

(declare-fun m!4526457 () Bool)

(assert (=> b!3957514 m!4526457))

(declare-fun m!4526459 () Bool)

(assert (=> b!3957537 m!4526459))

(declare-fun m!4526461 () Bool)

(assert (=> b!3957537 m!4526461))

(declare-fun m!4526463 () Bool)

(assert (=> b!3957537 m!4526463))

(declare-fun m!4526465 () Bool)

(assert (=> b!3957526 m!4526465))

(declare-fun m!4526467 () Bool)

(assert (=> b!3957548 m!4526467))

(declare-fun m!4526469 () Bool)

(assert (=> b!3957548 m!4526469))

(declare-fun m!4526471 () Bool)

(assert (=> b!3957548 m!4526471))

(check-sat (not b!3957537) (not b_next!109781) (not b_next!109789) b_and!303707 (not b!3957534) (not b!3957538) (not b!3957530) (not b!3957543) (not b!3957532) b_and!303705 (not b!3957512) (not b!3957522) (not b!3957535) (not b!3957545) (not b!3957528) (not b!3957519) b_and!303713 (not b!3957544) (not b!3957516) (not b!3957529) (not b!3957548) (not b!3957523) (not b!3957513) (not b_next!109787) (not b!3957540) (not b!3957536) (not b!3957515) (not b!3957546) b_and!303703 (not b!3957542) (not b!3957547) b_and!303711 (not b!3957531) (not b!3957524) (not b_next!109783) (not b!3957541) (not b_next!109785) (not b!3957520) tp_is_empty!19985 (not b!3957514) (not b!3957526) (not b_next!109791) (not b!3957518) (not b!3957521) b_and!303709)
(check-sat (not b_next!109781) (not b_next!109789) b_and!303707 b_and!303713 (not b_next!109787) b_and!303703 b_and!303711 b_and!303705 (not b_next!109791) b_and!303709 (not b_next!109783) (not b_next!109785))
