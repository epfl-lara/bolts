; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728344 () Bool)

(assert start!728344)

(declare-fun b!7526155 () Bool)

(declare-fun res!3016341 () Bool)

(declare-fun e!4485996 () Bool)

(assert (=> b!7526155 (=> (not res!3016341) (not e!4485996))))

(declare-datatypes ((C!39960 0))(
  ( (C!39961 (val!30420 Int)) )
))
(declare-datatypes ((Regex!19817 0))(
  ( (ElementMatch!19817 (c!1390266 C!39960)) (Concat!28662 (regOne!40146 Regex!19817) (regTwo!40146 Regex!19817)) (EmptyExpr!19817) (Star!19817 (reg!20146 Regex!19817)) (EmptyLang!19817) (Union!19817 (regOne!40147 Regex!19817) (regTwo!40147 Regex!19817)) )
))
(declare-fun baseR!93 () Regex!19817)

(declare-datatypes ((List!72700 0))(
  ( (Nil!72576) (Cons!72576 (h!79024 C!39960) (t!387407 List!72700)) )
))
(declare-fun returnP!57 () List!72700)

(declare-fun input!6727 () List!72700)

(declare-datatypes ((tuple2!68776 0))(
  ( (tuple2!68777 (_1!37691 List!72700) (_2!37691 List!72700)) )
))
(declare-fun findLongestMatchInner!2096 (Regex!19817 List!72700 Int List!72700 List!72700 Int) tuple2!68776)

(declare-fun size!42313 (List!72700) Int)

(assert (=> b!7526155 (= res!3016341 (= (_1!37691 (findLongestMatchInner!2096 baseR!93 Nil!72576 (size!42313 Nil!72576) input!6727 input!6727 (size!42313 input!6727))) returnP!57))))

(declare-fun b!7526156 () Bool)

(declare-fun e!4485995 () Bool)

(declare-fun tp_is_empty!49989 () Bool)

(declare-fun tp!2187300 () Bool)

(assert (=> b!7526156 (= e!4485995 (and tp_is_empty!49989 tp!2187300))))

(declare-fun b!7526157 () Bool)

(declare-fun e!4485997 () Bool)

(declare-fun tp!2187301 () Bool)

(assert (=> b!7526157 (= e!4485997 (and tp_is_empty!49989 tp!2187301))))

(declare-fun b!7526158 () Bool)

(declare-fun res!3016344 () Bool)

(assert (=> b!7526158 (=> (not res!3016344) (not e!4485996))))

(declare-fun lt!2638738 () Int)

(declare-fun lt!2638739 () Int)

(assert (=> b!7526158 (= res!3016344 (= lt!2638738 lt!2638739))))

(declare-fun b!7526159 () Bool)

(assert (=> b!7526159 (= e!4485996 (not true))))

(declare-fun bigger!57 () List!72700)

(assert (=> b!7526159 (= bigger!57 returnP!57)))

(declare-datatypes ((Unit!166529 0))(
  ( (Unit!166530) )
))
(declare-fun lt!2638740 () Unit!166529)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1504 (List!72700 List!72700 List!72700) Unit!166529)

(assert (=> b!7526159 (= lt!2638740 (lemmaIsPrefixSameLengthThenSameList!1504 bigger!57 returnP!57 input!6727))))

(declare-fun b!7526160 () Bool)

(declare-fun e!4485998 () Bool)

(declare-fun tp!2187303 () Bool)

(assert (=> b!7526160 (= e!4485998 tp!2187303)))

(declare-fun b!7526161 () Bool)

(declare-fun res!3016345 () Bool)

(declare-fun e!4485999 () Bool)

(assert (=> b!7526161 (=> (not res!3016345) (not e!4485999))))

(declare-fun isPrefix!6023 (List!72700 List!72700) Bool)

(assert (=> b!7526161 (= res!3016345 (isPrefix!6023 bigger!57 input!6727))))

(declare-fun res!3016346 () Bool)

(assert (=> start!728344 (=> (not res!3016346) (not e!4485999))))

(declare-fun validRegex!10245 (Regex!19817) Bool)

(assert (=> start!728344 (= res!3016346 (validRegex!10245 baseR!93))))

(assert (=> start!728344 e!4485999))

(assert (=> start!728344 e!4485998))

(assert (=> start!728344 e!4485997))

(assert (=> start!728344 e!4485995))

(declare-fun e!4485994 () Bool)

(assert (=> start!728344 e!4485994))

(declare-fun b!7526162 () Bool)

(assert (=> b!7526162 (= e!4485998 tp_is_empty!49989)))

(declare-fun b!7526163 () Bool)

(assert (=> b!7526163 (= e!4485999 e!4485996)))

(declare-fun res!3016342 () Bool)

(assert (=> b!7526163 (=> (not res!3016342) (not e!4485996))))

(assert (=> b!7526163 (= res!3016342 (>= lt!2638738 lt!2638739))))

(assert (=> b!7526163 (= lt!2638739 (size!42313 returnP!57))))

(assert (=> b!7526163 (= lt!2638738 (size!42313 bigger!57))))

(declare-fun b!7526164 () Bool)

(declare-fun tp!2187305 () Bool)

(assert (=> b!7526164 (= e!4485994 (and tp_is_empty!49989 tp!2187305))))

(declare-fun b!7526165 () Bool)

(declare-fun tp!2187302 () Bool)

(declare-fun tp!2187299 () Bool)

(assert (=> b!7526165 (= e!4485998 (and tp!2187302 tp!2187299))))

(declare-fun b!7526166 () Bool)

(declare-fun tp!2187298 () Bool)

(declare-fun tp!2187304 () Bool)

(assert (=> b!7526166 (= e!4485998 (and tp!2187298 tp!2187304))))

(declare-fun b!7526167 () Bool)

(declare-fun res!3016343 () Bool)

(assert (=> b!7526167 (=> (not res!3016343) (not e!4485999))))

(assert (=> b!7526167 (= res!3016343 (isPrefix!6023 returnP!57 input!6727))))

(assert (= (and start!728344 res!3016346) b!7526167))

(assert (= (and b!7526167 res!3016343) b!7526161))

(assert (= (and b!7526161 res!3016345) b!7526163))

(assert (= (and b!7526163 res!3016342) b!7526155))

(assert (= (and b!7526155 res!3016341) b!7526158))

(assert (= (and b!7526158 res!3016344) b!7526159))

(get-info :version)

(assert (= (and start!728344 ((_ is ElementMatch!19817) baseR!93)) b!7526162))

(assert (= (and start!728344 ((_ is Concat!28662) baseR!93)) b!7526166))

(assert (= (and start!728344 ((_ is Star!19817) baseR!93)) b!7526160))

(assert (= (and start!728344 ((_ is Union!19817) baseR!93)) b!7526165))

(assert (= (and start!728344 ((_ is Cons!72576) returnP!57)) b!7526157))

(assert (= (and start!728344 ((_ is Cons!72576) input!6727)) b!7526156))

(assert (= (and start!728344 ((_ is Cons!72576) bigger!57)) b!7526164))

(declare-fun m!8101588 () Bool)

(assert (=> b!7526159 m!8101588))

(declare-fun m!8101590 () Bool)

(assert (=> b!7526167 m!8101590))

(declare-fun m!8101592 () Bool)

(assert (=> b!7526161 m!8101592))

(declare-fun m!8101594 () Bool)

(assert (=> b!7526155 m!8101594))

(declare-fun m!8101596 () Bool)

(assert (=> b!7526155 m!8101596))

(assert (=> b!7526155 m!8101594))

(assert (=> b!7526155 m!8101596))

(declare-fun m!8101598 () Bool)

(assert (=> b!7526155 m!8101598))

(declare-fun m!8101600 () Bool)

(assert (=> b!7526163 m!8101600))

(declare-fun m!8101602 () Bool)

(assert (=> b!7526163 m!8101602))

(declare-fun m!8101604 () Bool)

(assert (=> start!728344 m!8101604))

(check-sat tp_is_empty!49989 (not b!7526161) (not b!7526164) (not b!7526156) (not b!7526157) (not b!7526159) (not b!7526160) (not b!7526155) (not b!7526165) (not b!7526163) (not start!728344) (not b!7526167) (not b!7526166))
(check-sat)
