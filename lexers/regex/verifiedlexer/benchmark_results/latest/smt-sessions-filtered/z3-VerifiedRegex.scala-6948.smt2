; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!367780 () Bool)

(assert start!367780)

(declare-fun b!3922194 () Bool)

(declare-fun b_free!106733 () Bool)

(declare-fun b_next!107437 () Bool)

(assert (=> b!3922194 (= b_free!106733 (not b_next!107437))))

(declare-fun tp!1193965 () Bool)

(declare-fun b_and!298991 () Bool)

(assert (=> b!3922194 (= tp!1193965 b_and!298991)))

(declare-fun b_free!106735 () Bool)

(declare-fun b_next!107439 () Bool)

(assert (=> b!3922194 (= b_free!106735 (not b_next!107439))))

(declare-fun tp!1193966 () Bool)

(declare-fun b_and!298993 () Bool)

(assert (=> b!3922194 (= tp!1193966 b_and!298993)))

(declare-fun b!3922193 () Bool)

(declare-fun b_free!106737 () Bool)

(declare-fun b_next!107441 () Bool)

(assert (=> b!3922193 (= b_free!106737 (not b_next!107441))))

(declare-fun tp!1193961 () Bool)

(declare-fun b_and!298995 () Bool)

(assert (=> b!3922193 (= tp!1193961 b_and!298995)))

(declare-fun b_free!106739 () Bool)

(declare-fun b_next!107443 () Bool)

(assert (=> b!3922193 (= b_free!106739 (not b_next!107443))))

(declare-fun tp!1193963 () Bool)

(declare-fun b_and!298997 () Bool)

(assert (=> b!3922193 (= tp!1193963 b_and!298997)))

(declare-fun b!3922178 () Bool)

(declare-fun b_free!106741 () Bool)

(declare-fun b_next!107445 () Bool)

(assert (=> b!3922178 (= b_free!106741 (not b_next!107445))))

(declare-fun tp!1193955 () Bool)

(declare-fun b_and!298999 () Bool)

(assert (=> b!3922178 (= tp!1193955 b_and!298999)))

(declare-fun b_free!106743 () Bool)

(declare-fun b_next!107447 () Bool)

(assert (=> b!3922178 (= b_free!106743 (not b_next!107447))))

(declare-fun tp!1193957 () Bool)

(declare-fun b_and!299001 () Bool)

(assert (=> b!3922178 (= tp!1193957 b_and!299001)))

(declare-fun b!3922169 () Bool)

(declare-fun e!2425505 () Bool)

(declare-fun tp_is_empty!19749 () Bool)

(declare-fun tp!1193958 () Bool)

(assert (=> b!3922169 (= e!2425505 (and tp_is_empty!19749 tp!1193958))))

(declare-fun b!3922170 () Bool)

(declare-fun res!1586607 () Bool)

(declare-fun e!2425525 () Bool)

(assert (=> b!3922170 (=> (not res!1586607) (not e!2425525))))

(declare-datatypes ((C!22964 0))(
  ( (C!22965 (val!13576 Int)) )
))
(declare-datatypes ((List!41721 0))(
  ( (Nil!41597) (Cons!41597 (h!47017 C!22964) (t!324664 List!41721)) )
))
(declare-datatypes ((IArray!25395 0))(
  ( (IArray!25396 (innerList!12755 List!41721)) )
))
(declare-datatypes ((Conc!12695 0))(
  ( (Node!12695 (left!31787 Conc!12695) (right!32117 Conc!12695) (csize!25620 Int) (cheight!12906 Int)) (Leaf!19644 (xs!16001 IArray!25395) (csize!25621 Int)) (Empty!12695) )
))
(declare-datatypes ((BalanceConc!24984 0))(
  ( (BalanceConc!24985 (c!681590 Conc!12695)) )
))
(declare-datatypes ((List!41722 0))(
  ( (Nil!41598) (Cons!41598 (h!47018 (_ BitVec 16)) (t!324665 List!41722)) )
))
(declare-datatypes ((TokenValue!6714 0))(
  ( (FloatLiteralValue!13428 (text!47443 List!41722)) (TokenValueExt!6713 (__x!25645 Int)) (Broken!33570 (value!205402 List!41722)) (Object!6837) (End!6714) (Def!6714) (Underscore!6714) (Match!6714) (Else!6714) (Error!6714) (Case!6714) (If!6714) (Extends!6714) (Abstract!6714) (Class!6714) (Val!6714) (DelimiterValue!13428 (del!6774 List!41722)) (KeywordValue!6720 (value!205403 List!41722)) (CommentValue!13428 (value!205404 List!41722)) (WhitespaceValue!13428 (value!205405 List!41722)) (IndentationValue!6714 (value!205406 List!41722)) (String!47287) (Int32!6714) (Broken!33571 (value!205407 List!41722)) (Boolean!6715) (Unit!59795) (OperatorValue!6717 (op!6774 List!41722)) (IdentifierValue!13428 (value!205408 List!41722)) (IdentifierValue!13429 (value!205409 List!41722)) (WhitespaceValue!13429 (value!205410 List!41722)) (True!13428) (False!13428) (Broken!33572 (value!205411 List!41722)) (Broken!33573 (value!205412 List!41722)) (True!13429) (RightBrace!6714) (RightBracket!6714) (Colon!6714) (Null!6714) (Comma!6714) (LeftBracket!6714) (False!13429) (LeftBrace!6714) (ImaginaryLiteralValue!6714 (text!47444 List!41722)) (StringLiteralValue!20142 (value!205413 List!41722)) (EOFValue!6714 (value!205414 List!41722)) (IdentValue!6714 (value!205415 List!41722)) (DelimiterValue!13429 (value!205416 List!41722)) (DedentValue!6714 (value!205417 List!41722)) (NewLineValue!6714 (value!205418 List!41722)) (IntegerValue!20142 (value!205419 (_ BitVec 32)) (text!47445 List!41722)) (IntegerValue!20143 (value!205420 Int) (text!47446 List!41722)) (Times!6714) (Or!6714) (Equal!6714) (Minus!6714) (Broken!33574 (value!205421 List!41722)) (And!6714) (Div!6714) (LessEqual!6714) (Mod!6714) (Concat!18103) (Not!6714) (Plus!6714) (SpaceValue!6714 (value!205422 List!41722)) (IntegerValue!20144 (value!205423 Int) (text!47447 List!41722)) (StringLiteralValue!20143 (text!47448 List!41722)) (FloatLiteralValue!13429 (text!47449 List!41722)) (BytesLiteralValue!6714 (value!205424 List!41722)) (CommentValue!13429 (value!205425 List!41722)) (StringLiteralValue!20144 (value!205426 List!41722)) (ErrorTokenValue!6714 (msg!6775 List!41722)) )
))
(declare-datatypes ((Regex!11389 0))(
  ( (ElementMatch!11389 (c!681591 C!22964)) (Concat!18104 (regOne!23290 Regex!11389) (regTwo!23290 Regex!11389)) (EmptyExpr!11389) (Star!11389 (reg!11718 Regex!11389)) (EmptyLang!11389) (Union!11389 (regOne!23291 Regex!11389) (regTwo!23291 Regex!11389)) )
))
(declare-datatypes ((String!47288 0))(
  ( (String!47289 (value!205427 String)) )
))
(declare-datatypes ((TokenValueInjection!12856 0))(
  ( (TokenValueInjection!12857 (toValue!8936 Int) (toChars!8795 Int)) )
))
(declare-datatypes ((Rule!12768 0))(
  ( (Rule!12769 (regex!6484 Regex!11389) (tag!7344 String!47288) (isSeparator!6484 Bool) (transformation!6484 TokenValueInjection!12856)) )
))
(declare-datatypes ((Token!12106 0))(
  ( (Token!12107 (value!205428 TokenValue!6714) (rule!9418 Rule!12768) (size!31225 Int) (originalCharacters!7084 List!41721)) )
))
(declare-datatypes ((List!41723 0))(
  ( (Nil!41599) (Cons!41599 (h!47019 Token!12106) (t!324666 List!41723)) )
))
(declare-fun prefixTokens!80 () List!41723)

(declare-fun isEmpty!24772 (List!41723) Bool)

(assert (=> b!3922170 (= res!1586607 (not (isEmpty!24772 prefixTokens!80)))))

(declare-fun b!3922171 () Bool)

(declare-fun res!1586613 () Bool)

(declare-fun e!2425524 () Bool)

(assert (=> b!3922171 (=> res!1586613 e!2425524)))

(declare-fun suffix!1176 () List!41721)

(declare-datatypes ((tuple2!40862 0))(
  ( (tuple2!40863 (_1!23565 List!41723) (_2!23565 List!41721)) )
))
(declare-fun lt!1367373 () tuple2!40862)

(declare-datatypes ((tuple2!40864 0))(
  ( (tuple2!40865 (_1!23566 Token!12106) (_2!23566 List!41721)) )
))
(declare-datatypes ((Option!8904 0))(
  ( (None!8903) (Some!8903 (v!39229 tuple2!40864)) )
))
(declare-fun lt!1367389 () Option!8904)

(assert (=> b!3922171 (= res!1586613 (or (not (= lt!1367373 (tuple2!40863 (_1!23565 lt!1367373) (_2!23565 lt!1367373)))) (= (_2!23566 (v!39229 lt!1367389)) suffix!1176)))))

(declare-fun e!2425530 () Bool)

(declare-fun tp!1193968 () Bool)

(declare-fun e!2425521 () Bool)

(declare-fun b!3922172 () Bool)

(declare-fun inv!21 (TokenValue!6714) Bool)

(assert (=> b!3922172 (= e!2425521 (and (inv!21 (value!205428 (h!47019 prefixTokens!80))) e!2425530 tp!1193968))))

(declare-fun b!3922173 () Bool)

(declare-datatypes ((Unit!59796 0))(
  ( (Unit!59797) )
))
(declare-fun e!2425506 () Unit!59796)

(declare-fun Unit!59798 () Unit!59796)

(assert (=> b!3922173 (= e!2425506 Unit!59798)))

(declare-fun suffixResult!91 () List!41721)

(declare-datatypes ((LexerInterface!6073 0))(
  ( (LexerInterfaceExt!6070 (__x!25646 Int)) (Lexer!6071) )
))
(declare-fun thiss!20629 () LexerInterface!6073)

(declare-fun lt!1367383 () tuple2!40864)

(declare-fun suffixTokens!72 () List!41723)

(declare-fun lt!1367391 () Unit!59796)

(declare-datatypes ((List!41724 0))(
  ( (Nil!41600) (Cons!41600 (h!47020 Rule!12768) (t!324667 List!41724)) )
))
(declare-fun rules!2768 () List!41724)

(declare-fun lt!1367377 () List!41723)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!84 (LexerInterface!6073 List!41724 List!41721 List!41721 List!41723 List!41721 List!41723) Unit!59796)

(assert (=> b!3922173 (= lt!1367391 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!84 thiss!20629 rules!2768 suffix!1176 (_2!23566 lt!1367383) suffixTokens!72 suffixResult!91 lt!1367377))))

(declare-fun call!284644 () tuple2!40862)

(declare-fun res!1586619 () Bool)

(declare-fun ++!10725 (List!41723 List!41723) List!41723)

(assert (=> b!3922173 (= res!1586619 (not (= call!284644 (tuple2!40863 (++!10725 lt!1367377 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2425523 () Bool)

(assert (=> b!3922173 (=> (not res!1586619) (not e!2425523))))

(assert (=> b!3922173 e!2425523))

(declare-fun b!3922174 () Bool)

(declare-fun e!2425510 () Bool)

(declare-fun size!31226 (List!41721) Int)

(assert (=> b!3922174 (= e!2425510 (= (size!31225 (_1!23566 (v!39229 lt!1367389))) (size!31226 (originalCharacters!7084 (_1!23566 (v!39229 lt!1367389))))))))

(declare-fun b!3922175 () Bool)

(declare-fun res!1586616 () Bool)

(assert (=> b!3922175 (=> res!1586616 e!2425524)))

(declare-fun lt!1367387 () tuple2!40862)

(assert (=> b!3922175 (= res!1586616 (not (= lt!1367387 (tuple2!40863 (++!10725 (Cons!41599 (_1!23566 (v!39229 lt!1367389)) Nil!41599) (_1!23565 lt!1367373)) (_2!23565 lt!1367373)))))))

(declare-fun e!2425512 () Bool)

(declare-fun tp!1193960 () Bool)

(declare-fun b!3922176 () Bool)

(declare-fun inv!55794 (Token!12106) Bool)

(assert (=> b!3922176 (= e!2425512 (and (inv!55794 (h!47019 prefixTokens!80)) e!2425521 tp!1193960))))

(declare-fun b!3922177 () Bool)

(declare-fun e!2425501 () Bool)

(declare-fun tp!1193959 () Bool)

(assert (=> b!3922177 (= e!2425501 (and tp_is_empty!19749 tp!1193959))))

(declare-fun e!2425502 () Bool)

(assert (=> b!3922178 (= e!2425502 (and tp!1193955 tp!1193957))))

(declare-fun b!3922179 () Bool)

(declare-fun tp!1193969 () Bool)

(declare-fun e!2425519 () Bool)

(declare-fun e!2425520 () Bool)

(declare-fun inv!55791 (String!47288) Bool)

(declare-fun inv!55795 (TokenValueInjection!12856) Bool)

(assert (=> b!3922179 (= e!2425520 (and tp!1193969 (inv!55791 (tag!7344 (rule!9418 (h!47019 suffixTokens!72)))) (inv!55795 (transformation!6484 (rule!9418 (h!47019 suffixTokens!72)))) e!2425519))))

(declare-fun b!3922180 () Bool)

(declare-fun e!2425507 () Unit!59796)

(declare-fun Unit!59799 () Unit!59796)

(assert (=> b!3922180 (= e!2425507 Unit!59799)))

(declare-fun b!3922181 () Bool)

(declare-fun e!2425527 () Bool)

(assert (=> b!3922181 (= e!2425527 false)))

(declare-fun b!3922182 () Bool)

(declare-fun res!1586615 () Bool)

(assert (=> b!3922182 (=> (not res!1586615) (not e!2425525))))

(declare-fun rulesInvariant!5416 (LexerInterface!6073 List!41724) Bool)

(assert (=> b!3922182 (= res!1586615 (rulesInvariant!5416 thiss!20629 rules!2768))))

(declare-fun b!3922183 () Bool)

(declare-fun res!1586610 () Bool)

(assert (=> b!3922183 (=> (not res!1586610) (not e!2425525))))

(declare-fun isEmpty!24773 (List!41724) Bool)

(assert (=> b!3922183 (= res!1586610 (not (isEmpty!24773 rules!2768)))))

(declare-fun b!3922184 () Bool)

(declare-fun e!2425516 () Bool)

(declare-fun e!2425500 () Bool)

(declare-fun tp!1193964 () Bool)

(assert (=> b!3922184 (= e!2425516 (and e!2425500 tp!1193964))))

(declare-fun b!3922185 () Bool)

(declare-fun e!2425518 () Bool)

(declare-fun tp!1193962 () Bool)

(assert (=> b!3922185 (= e!2425518 (and tp_is_empty!19749 tp!1193962))))

(declare-fun b!3922186 () Bool)

(declare-fun e!2425528 () Bool)

(declare-fun tp!1193956 () Bool)

(assert (=> b!3922186 (= e!2425500 (and tp!1193956 (inv!55791 (tag!7344 (h!47020 rules!2768))) (inv!55795 (transformation!6484 (h!47020 rules!2768))) e!2425528))))

(declare-fun b!3922187 () Bool)

(declare-fun c!681587 () Bool)

(assert (=> b!3922187 (= c!681587 (isEmpty!24772 lt!1367377))))

(declare-fun tail!6025 (List!41723) List!41723)

(assert (=> b!3922187 (= lt!1367377 (tail!6025 prefixTokens!80))))

(declare-fun e!2425503 () Unit!59796)

(assert (=> b!3922187 (= e!2425503 e!2425506)))

(declare-fun b!3922188 () Bool)

(declare-fun Unit!59800 () Unit!59796)

(assert (=> b!3922188 (= e!2425507 Unit!59800)))

(declare-fun lt!1367374 () Unit!59796)

(declare-fun prefix!426 () List!41721)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2442 (List!41721 List!41721) Unit!59796)

(assert (=> b!3922188 (= lt!1367374 (lemmaConcatTwoListThenFirstIsPrefix!2442 prefix!426 suffix!1176))))

(declare-fun lt!1367375 () List!41721)

(declare-fun isPrefix!3579 (List!41721 List!41721) Bool)

(assert (=> b!3922188 (isPrefix!3579 prefix!426 lt!1367375)))

(declare-fun lt!1367385 () Unit!59796)

(declare-fun lt!1367366 () List!41721)

(declare-fun lemmaIsPrefixSameLengthThenSameList!775 (List!41721 List!41721 List!41721) Unit!59796)

(assert (=> b!3922188 (= lt!1367385 (lemmaIsPrefixSameLengthThenSameList!775 lt!1367366 prefix!426 lt!1367375))))

(assert (=> b!3922188 (= lt!1367366 prefix!426)))

(declare-fun lt!1367376 () Unit!59796)

(declare-fun lemmaSamePrefixThenSameSuffix!1800 (List!41721 List!41721 List!41721 List!41721 List!41721) Unit!59796)

(assert (=> b!3922188 (= lt!1367376 (lemmaSamePrefixThenSameSuffix!1800 lt!1367366 (_2!23566 (v!39229 lt!1367389)) prefix!426 suffix!1176 lt!1367375))))

(assert (=> b!3922188 false))

(declare-fun b!3922189 () Bool)

(declare-fun e!2425508 () Bool)

(assert (=> b!3922189 (= e!2425508 (not e!2425524))))

(declare-fun res!1586618 () Bool)

(assert (=> b!3922189 (=> res!1586618 e!2425524)))

(declare-fun lt!1367380 () List!41721)

(assert (=> b!3922189 (= res!1586618 (not (= lt!1367380 lt!1367375)))))

(declare-fun lexList!1841 (LexerInterface!6073 List!41724 List!41721) tuple2!40862)

(assert (=> b!3922189 (= lt!1367373 (lexList!1841 thiss!20629 rules!2768 (_2!23566 (v!39229 lt!1367389))))))

(declare-fun lt!1367367 () List!41721)

(declare-fun lt!1367363 () Int)

(declare-fun lt!1367369 () TokenValue!6714)

(assert (=> b!3922189 (and (= (size!31225 (_1!23566 (v!39229 lt!1367389))) lt!1367363) (= (originalCharacters!7084 (_1!23566 (v!39229 lt!1367389))) lt!1367366) (= (v!39229 lt!1367389) (tuple2!40865 (Token!12107 lt!1367369 (rule!9418 (_1!23566 (v!39229 lt!1367389))) lt!1367363 lt!1367366) lt!1367367)))))

(assert (=> b!3922189 (= lt!1367363 (size!31226 lt!1367366))))

(assert (=> b!3922189 e!2425510))

(declare-fun res!1586612 () Bool)

(assert (=> b!3922189 (=> (not res!1586612) (not e!2425510))))

(assert (=> b!3922189 (= res!1586612 (= (value!205428 (_1!23566 (v!39229 lt!1367389))) lt!1367369))))

(declare-fun apply!9723 (TokenValueInjection!12856 BalanceConc!24984) TokenValue!6714)

(declare-fun seqFromList!4751 (List!41721) BalanceConc!24984)

(assert (=> b!3922189 (= lt!1367369 (apply!9723 (transformation!6484 (rule!9418 (_1!23566 (v!39229 lt!1367389)))) (seqFromList!4751 lt!1367366)))))

(assert (=> b!3922189 (= (_2!23566 (v!39229 lt!1367389)) lt!1367367)))

(declare-fun lt!1367370 () Unit!59796)

(assert (=> b!3922189 (= lt!1367370 (lemmaSamePrefixThenSameSuffix!1800 lt!1367366 (_2!23566 (v!39229 lt!1367389)) lt!1367366 lt!1367367 lt!1367375))))

(declare-fun getSuffix!2034 (List!41721 List!41721) List!41721)

(assert (=> b!3922189 (= lt!1367367 (getSuffix!2034 lt!1367375 lt!1367366))))

(assert (=> b!3922189 (isPrefix!3579 lt!1367366 lt!1367380)))

(declare-fun ++!10726 (List!41721 List!41721) List!41721)

(assert (=> b!3922189 (= lt!1367380 (++!10726 lt!1367366 (_2!23566 (v!39229 lt!1367389))))))

(declare-fun lt!1367365 () Unit!59796)

(assert (=> b!3922189 (= lt!1367365 (lemmaConcatTwoListThenFirstIsPrefix!2442 lt!1367366 (_2!23566 (v!39229 lt!1367389))))))

(declare-fun list!15463 (BalanceConc!24984) List!41721)

(declare-fun charsOf!4308 (Token!12106) BalanceConc!24984)

(assert (=> b!3922189 (= lt!1367366 (list!15463 (charsOf!4308 (_1!23566 (v!39229 lt!1367389)))))))

(declare-fun ruleValid!2432 (LexerInterface!6073 Rule!12768) Bool)

(assert (=> b!3922189 (ruleValid!2432 thiss!20629 (rule!9418 (_1!23566 (v!39229 lt!1367389))))))

(declare-fun lt!1367378 () Unit!59796)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1512 (LexerInterface!6073 Rule!12768 List!41724) Unit!59796)

(assert (=> b!3922189 (= lt!1367378 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1512 thiss!20629 (rule!9418 (_1!23566 (v!39229 lt!1367389))) rules!2768))))

(declare-fun lt!1367390 () Unit!59796)

(declare-fun lemmaCharactersSize!1141 (Token!12106) Unit!59796)

(assert (=> b!3922189 (= lt!1367390 (lemmaCharactersSize!1141 (_1!23566 (v!39229 lt!1367389))))))

(declare-fun b!3922190 () Bool)

(declare-fun Unit!59801 () Unit!59796)

(assert (=> b!3922190 (= e!2425506 Unit!59801)))

(declare-fun lt!1367384 () Unit!59796)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!532 (List!41721 List!41721 List!41721 List!41721) Unit!59796)

(assert (=> b!3922190 (= lt!1367384 (lemmaConcatSameAndSameSizesThenSameLists!532 lt!1367366 (_2!23566 (v!39229 lt!1367389)) lt!1367366 (_2!23566 lt!1367383)))))

(assert (=> b!3922190 (= (_2!23566 (v!39229 lt!1367389)) (_2!23566 lt!1367383))))

(declare-fun lt!1367379 () Unit!59796)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!84 (LexerInterface!6073 List!41724 List!41721 List!41721 List!41723 List!41721) Unit!59796)

(assert (=> b!3922190 (= lt!1367379 (lemmaLexWithSmallerInputCannotProduceSameResults!84 thiss!20629 rules!2768 suffix!1176 (_2!23566 lt!1367383) suffixTokens!72 suffixResult!91))))

(declare-fun res!1586614 () Bool)

(declare-fun lt!1367372 () tuple2!40862)

(assert (=> b!3922190 (= res!1586614 (not (= call!284644 lt!1367372)))))

(assert (=> b!3922190 (=> (not res!1586614) (not e!2425527))))

(assert (=> b!3922190 e!2425527))

(declare-fun b!3922191 () Bool)

(declare-fun e!2425517 () Bool)

(assert (=> b!3922191 (= e!2425517 e!2425508)))

(declare-fun res!1586608 () Bool)

(assert (=> b!3922191 (=> (not res!1586608) (not e!2425508))))

(get-info :version)

(assert (=> b!3922191 (= res!1586608 ((_ is Some!8903) lt!1367389))))

(declare-fun maxPrefix!3377 (LexerInterface!6073 List!41724 List!41721) Option!8904)

(assert (=> b!3922191 (= lt!1367389 (maxPrefix!3377 thiss!20629 rules!2768 lt!1367375))))

(declare-fun res!1586611 () Bool)

(assert (=> start!367780 (=> (not res!1586611) (not e!2425525))))

(assert (=> start!367780 (= res!1586611 ((_ is Lexer!6071) thiss!20629))))

(assert (=> start!367780 e!2425525))

(assert (=> start!367780 e!2425501))

(assert (=> start!367780 true))

(assert (=> start!367780 e!2425518))

(assert (=> start!367780 e!2425516))

(assert (=> start!367780 e!2425512))

(declare-fun e!2425509 () Bool)

(assert (=> start!367780 e!2425509))

(assert (=> start!367780 e!2425505))

(declare-fun e!2425513 () Bool)

(declare-fun b!3922192 () Bool)

(declare-fun tp!1193967 () Bool)

(assert (=> b!3922192 (= e!2425509 (and (inv!55794 (h!47019 suffixTokens!72)) e!2425513 tp!1193967))))

(assert (=> b!3922193 (= e!2425519 (and tp!1193961 tp!1193963))))

(assert (=> b!3922194 (= e!2425528 (and tp!1193965 tp!1193966))))

(declare-fun b!3922195 () Bool)

(declare-fun e!2425522 () Unit!59796)

(declare-fun Unit!59802 () Unit!59796)

(assert (=> b!3922195 (= e!2425522 Unit!59802)))

(declare-fun b!3922196 () Bool)

(declare-fun Unit!59803 () Unit!59796)

(assert (=> b!3922196 (= e!2425503 Unit!59803)))

(declare-fun b!3922197 () Bool)

(declare-fun Unit!59804 () Unit!59796)

(assert (=> b!3922197 (= e!2425522 Unit!59804)))

(declare-fun lt!1367362 () Int)

(assert (=> b!3922197 (= lt!1367362 (size!31226 lt!1367375))))

(declare-fun lt!1367364 () Unit!59796)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1315 (LexerInterface!6073 List!41724 List!41721 List!41721 List!41721 Rule!12768) Unit!59796)

(assert (=> b!3922197 (= lt!1367364 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1315 thiss!20629 rules!2768 lt!1367366 lt!1367375 (_2!23566 (v!39229 lt!1367389)) (rule!9418 (_1!23566 (v!39229 lt!1367389)))))))

(declare-fun maxPrefixOneRule!2447 (LexerInterface!6073 Rule!12768 List!41721) Option!8904)

(assert (=> b!3922197 (= (maxPrefixOneRule!2447 thiss!20629 (rule!9418 (_1!23566 (v!39229 lt!1367389))) lt!1367375) (Some!8903 (tuple2!40865 (Token!12107 lt!1367369 (rule!9418 (_1!23566 (v!39229 lt!1367389))) lt!1367363 lt!1367366) (_2!23566 (v!39229 lt!1367389)))))))

(declare-fun get!13746 (Option!8904) tuple2!40864)

(assert (=> b!3922197 (= lt!1367383 (get!13746 lt!1367389))))

(declare-fun c!681586 () Bool)

(declare-fun lt!1367386 () Int)

(assert (=> b!3922197 (= c!681586 (< (size!31226 (_2!23566 lt!1367383)) lt!1367386))))

(declare-fun lt!1367371 () Unit!59796)

(assert (=> b!3922197 (= lt!1367371 e!2425503)))

(assert (=> b!3922197 false))

(declare-fun b!3922198 () Bool)

(declare-fun e!2425514 () Bool)

(assert (=> b!3922198 (= e!2425525 e!2425514)))

(declare-fun res!1586617 () Bool)

(assert (=> b!3922198 (=> (not res!1586617) (not e!2425514))))

(declare-fun lt!1367381 () List!41723)

(assert (=> b!3922198 (= res!1586617 (= lt!1367387 (tuple2!40863 lt!1367381 suffixResult!91)))))

(assert (=> b!3922198 (= lt!1367387 (lexList!1841 thiss!20629 rules!2768 lt!1367375))))

(assert (=> b!3922198 (= lt!1367381 (++!10725 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3922198 (= lt!1367375 (++!10726 prefix!426 suffix!1176))))

(declare-fun b!3922199 () Bool)

(declare-fun res!1586609 () Bool)

(assert (=> b!3922199 (=> (not res!1586609) (not e!2425525))))

(declare-fun isEmpty!24774 (List!41721) Bool)

(assert (=> b!3922199 (= res!1586609 (not (isEmpty!24774 prefix!426)))))

(declare-fun bm!284639 () Bool)

(assert (=> bm!284639 (= call!284644 (lexList!1841 thiss!20629 rules!2768 (_2!23566 lt!1367383)))))

(declare-fun b!3922200 () Bool)

(assert (=> b!3922200 (= e!2425523 false)))

(declare-fun b!3922201 () Bool)

(assert (=> b!3922201 (= e!2425514 e!2425517)))

(declare-fun res!1586606 () Bool)

(assert (=> b!3922201 (=> (not res!1586606) (not e!2425517))))

(assert (=> b!3922201 (= res!1586606 (= (lexList!1841 thiss!20629 rules!2768 suffix!1176) lt!1367372))))

(assert (=> b!3922201 (= lt!1367372 (tuple2!40863 suffixTokens!72 suffixResult!91))))

(declare-fun b!3922202 () Bool)

(assert (=> b!3922202 (= e!2425524 true)))

(declare-fun lt!1367382 () Unit!59796)

(assert (=> b!3922202 (= lt!1367382 e!2425507)))

(declare-fun c!681589 () Bool)

(declare-fun lt!1367388 () Int)

(assert (=> b!3922202 (= c!681589 (= lt!1367388 lt!1367386))))

(declare-fun lt!1367368 () Unit!59796)

(assert (=> b!3922202 (= lt!1367368 e!2425522)))

(declare-fun c!681588 () Bool)

(assert (=> b!3922202 (= c!681588 (< lt!1367388 lt!1367386))))

(assert (=> b!3922202 (= lt!1367386 (size!31226 suffix!1176))))

(assert (=> b!3922202 (= lt!1367388 (size!31226 (_2!23566 (v!39229 lt!1367389))))))

(declare-fun tp!1193954 () Bool)

(declare-fun b!3922203 () Bool)

(assert (=> b!3922203 (= e!2425513 (and (inv!21 (value!205428 (h!47019 suffixTokens!72))) e!2425520 tp!1193954))))

(declare-fun tp!1193970 () Bool)

(declare-fun b!3922204 () Bool)

(assert (=> b!3922204 (= e!2425530 (and tp!1193970 (inv!55791 (tag!7344 (rule!9418 (h!47019 prefixTokens!80)))) (inv!55795 (transformation!6484 (rule!9418 (h!47019 prefixTokens!80)))) e!2425502))))

(assert (= (and start!367780 res!1586611) b!3922183))

(assert (= (and b!3922183 res!1586610) b!3922182))

(assert (= (and b!3922182 res!1586615) b!3922170))

(assert (= (and b!3922170 res!1586607) b!3922199))

(assert (= (and b!3922199 res!1586609) b!3922198))

(assert (= (and b!3922198 res!1586617) b!3922201))

(assert (= (and b!3922201 res!1586606) b!3922191))

(assert (= (and b!3922191 res!1586608) b!3922189))

(assert (= (and b!3922189 res!1586612) b!3922174))

(assert (= (and b!3922189 (not res!1586618)) b!3922175))

(assert (= (and b!3922175 (not res!1586616)) b!3922171))

(assert (= (and b!3922171 (not res!1586613)) b!3922202))

(assert (= (and b!3922202 c!681588) b!3922197))

(assert (= (and b!3922202 (not c!681588)) b!3922195))

(assert (= (and b!3922197 c!681586) b!3922187))

(assert (= (and b!3922197 (not c!681586)) b!3922196))

(assert (= (and b!3922187 c!681587) b!3922190))

(assert (= (and b!3922187 (not c!681587)) b!3922173))

(assert (= (and b!3922190 res!1586614) b!3922181))

(assert (= (and b!3922173 res!1586619) b!3922200))

(assert (= (or b!3922190 b!3922173) bm!284639))

(assert (= (and b!3922202 c!681589) b!3922188))

(assert (= (and b!3922202 (not c!681589)) b!3922180))

(assert (= (and start!367780 ((_ is Cons!41597) suffixResult!91)) b!3922177))

(assert (= (and start!367780 ((_ is Cons!41597) suffix!1176)) b!3922185))

(assert (= b!3922186 b!3922194))

(assert (= b!3922184 b!3922186))

(assert (= (and start!367780 ((_ is Cons!41600) rules!2768)) b!3922184))

(assert (= b!3922204 b!3922178))

(assert (= b!3922172 b!3922204))

(assert (= b!3922176 b!3922172))

(assert (= (and start!367780 ((_ is Cons!41599) prefixTokens!80)) b!3922176))

(assert (= b!3922179 b!3922193))

(assert (= b!3922203 b!3922179))

(assert (= b!3922192 b!3922203))

(assert (= (and start!367780 ((_ is Cons!41599) suffixTokens!72)) b!3922192))

(assert (= (and start!367780 ((_ is Cons!41597) prefix!426)) b!3922169))

(declare-fun m!4485999 () Bool)

(assert (=> b!3922173 m!4485999))

(declare-fun m!4486001 () Bool)

(assert (=> b!3922173 m!4486001))

(declare-fun m!4486003 () Bool)

(assert (=> b!3922174 m!4486003))

(declare-fun m!4486005 () Bool)

(assert (=> b!3922191 m!4486005))

(declare-fun m!4486007 () Bool)

(assert (=> b!3922176 m!4486007))

(declare-fun m!4486009 () Bool)

(assert (=> b!3922204 m!4486009))

(declare-fun m!4486011 () Bool)

(assert (=> b!3922204 m!4486011))

(declare-fun m!4486013 () Bool)

(assert (=> b!3922189 m!4486013))

(declare-fun m!4486015 () Bool)

(assert (=> b!3922189 m!4486015))

(declare-fun m!4486017 () Bool)

(assert (=> b!3922189 m!4486017))

(declare-fun m!4486019 () Bool)

(assert (=> b!3922189 m!4486019))

(declare-fun m!4486021 () Bool)

(assert (=> b!3922189 m!4486021))

(declare-fun m!4486023 () Bool)

(assert (=> b!3922189 m!4486023))

(declare-fun m!4486025 () Bool)

(assert (=> b!3922189 m!4486025))

(declare-fun m!4486027 () Bool)

(assert (=> b!3922189 m!4486027))

(declare-fun m!4486029 () Bool)

(assert (=> b!3922189 m!4486029))

(declare-fun m!4486031 () Bool)

(assert (=> b!3922189 m!4486031))

(declare-fun m!4486033 () Bool)

(assert (=> b!3922189 m!4486033))

(assert (=> b!3922189 m!4486019))

(assert (=> b!3922189 m!4486033))

(declare-fun m!4486035 () Bool)

(assert (=> b!3922189 m!4486035))

(declare-fun m!4486037 () Bool)

(assert (=> b!3922189 m!4486037))

(declare-fun m!4486039 () Bool)

(assert (=> b!3922189 m!4486039))

(declare-fun m!4486041 () Bool)

(assert (=> b!3922170 m!4486041))

(declare-fun m!4486043 () Bool)

(assert (=> b!3922202 m!4486043))

(declare-fun m!4486045 () Bool)

(assert (=> b!3922202 m!4486045))

(declare-fun m!4486047 () Bool)

(assert (=> b!3922198 m!4486047))

(declare-fun m!4486049 () Bool)

(assert (=> b!3922198 m!4486049))

(declare-fun m!4486051 () Bool)

(assert (=> b!3922198 m!4486051))

(declare-fun m!4486053 () Bool)

(assert (=> b!3922199 m!4486053))

(declare-fun m!4486055 () Bool)

(assert (=> b!3922188 m!4486055))

(declare-fun m!4486057 () Bool)

(assert (=> b!3922188 m!4486057))

(declare-fun m!4486059 () Bool)

(assert (=> b!3922188 m!4486059))

(declare-fun m!4486061 () Bool)

(assert (=> b!3922188 m!4486061))

(declare-fun m!4486063 () Bool)

(assert (=> b!3922197 m!4486063))

(declare-fun m!4486065 () Bool)

(assert (=> b!3922197 m!4486065))

(declare-fun m!4486067 () Bool)

(assert (=> b!3922197 m!4486067))

(declare-fun m!4486069 () Bool)

(assert (=> b!3922197 m!4486069))

(declare-fun m!4486071 () Bool)

(assert (=> b!3922197 m!4486071))

(declare-fun m!4486073 () Bool)

(assert (=> b!3922187 m!4486073))

(declare-fun m!4486075 () Bool)

(assert (=> b!3922187 m!4486075))

(declare-fun m!4486077 () Bool)

(assert (=> b!3922182 m!4486077))

(declare-fun m!4486079 () Bool)

(assert (=> b!3922201 m!4486079))

(declare-fun m!4486081 () Bool)

(assert (=> b!3922203 m!4486081))

(declare-fun m!4486083 () Bool)

(assert (=> b!3922179 m!4486083))

(declare-fun m!4486085 () Bool)

(assert (=> b!3922179 m!4486085))

(declare-fun m!4486087 () Bool)

(assert (=> b!3922183 m!4486087))

(declare-fun m!4486089 () Bool)

(assert (=> bm!284639 m!4486089))

(declare-fun m!4486091 () Bool)

(assert (=> b!3922186 m!4486091))

(declare-fun m!4486093 () Bool)

(assert (=> b!3922186 m!4486093))

(declare-fun m!4486095 () Bool)

(assert (=> b!3922175 m!4486095))

(declare-fun m!4486097 () Bool)

(assert (=> b!3922190 m!4486097))

(declare-fun m!4486099 () Bool)

(assert (=> b!3922190 m!4486099))

(declare-fun m!4486101 () Bool)

(assert (=> b!3922172 m!4486101))

(declare-fun m!4486103 () Bool)

(assert (=> b!3922192 m!4486103))

(check-sat (not b!3922204) (not b_next!107441) (not bm!284639) (not b!3922187) (not b_next!107439) (not b!3922199) b_and!298999 (not b!3922197) b_and!299001 (not b!3922191) (not b!3922179) (not b!3922169) (not b!3922203) (not b!3922182) (not b_next!107443) b_and!298997 (not b_next!107445) b_and!298995 (not b!3922189) (not b!3922190) (not b!3922174) (not b_next!107447) b_and!298991 (not b!3922192) (not b!3922186) (not b!3922183) (not b!3922170) (not b!3922198) (not b!3922173) (not b!3922176) (not b_next!107437) b_and!298993 (not b!3922202) (not b!3922177) (not b!3922201) (not b!3922184) (not b!3922185) (not b!3922188) (not b!3922175) tp_is_empty!19749 (not b!3922172))
(check-sat (not b_next!107441) b_and!298995 (not b_next!107439) b_and!298999 b_and!299001 (not b_next!107443) b_and!298997 (not b_next!107445) (not b_next!107447) b_and!298991 (not b_next!107437) b_and!298993)
