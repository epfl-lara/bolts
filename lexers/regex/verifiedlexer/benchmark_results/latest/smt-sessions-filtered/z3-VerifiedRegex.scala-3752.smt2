; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209606 () Bool)

(assert start!209606)

(declare-fun b!2160228 () Bool)

(declare-fun res!930788 () Bool)

(declare-fun e!1382181 () Bool)

(assert (=> b!2160228 (=> (not res!930788) (not e!1382181))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12088 0))(
  ( (C!12089 (val!7030 Int)) )
))
(declare-datatypes ((Regex!5971 0))(
  ( (ElementMatch!5971 (c!341896 C!12088)) (Concat!10273 (regOne!12454 Regex!5971) (regTwo!12454 Regex!5971)) (EmptyExpr!5971) (Star!5971 (reg!6300 Regex!5971)) (EmptyLang!5971) (Union!5971 (regOne!12455 Regex!5971) (regTwo!12455 Regex!5971)) )
))
(declare-datatypes ((List!25126 0))(
  ( (Nil!25042) (Cons!25042 (h!30443 Regex!5971) (t!197674 List!25126)) )
))
(declare-datatypes ((Context!3082 0))(
  ( (Context!3083 (exprs!2041 List!25126)) )
))
(declare-fun z!4055 () (InoxSet Context!3082))

(declare-fun r!12534 () Regex!5971)

(declare-datatypes ((List!25127 0))(
  ( (Nil!25043) (Cons!25043 (h!30444 Context!3082) (t!197675 List!25127)) )
))
(declare-fun unfocusZipper!78 (List!25127) Regex!5971)

(declare-fun toList!1154 ((InoxSet Context!3082)) List!25127)

(assert (=> b!2160228 (= res!930788 (= (unfocusZipper!78 (toList!1154 z!4055)) r!12534))))

(declare-fun b!2160229 () Bool)

(declare-fun e!1382187 () Bool)

(declare-fun tp!673838 () Bool)

(declare-fun tp!673830 () Bool)

(assert (=> b!2160229 (= e!1382187 (and tp!673838 tp!673830))))

(declare-fun b!2160230 () Bool)

(declare-fun e!1382189 () Bool)

(declare-fun e!1382191 () Bool)

(assert (=> b!2160230 (= e!1382189 e!1382191)))

(declare-fun res!930787 () Bool)

(assert (=> b!2160230 (=> (not res!930787) (not e!1382191))))

(declare-datatypes ((List!25128 0))(
  ( (Nil!25044) (Cons!25044 (h!30445 C!12088) (t!197676 List!25128)) )
))
(declare-fun lt!803195 () List!25128)

(declare-fun lt!803196 () List!25128)

(assert (=> b!2160230 (= res!930787 (= lt!803195 lt!803196))))

(declare-datatypes ((tuple2!24750 0))(
  ( (tuple2!24751 (_1!14745 List!25128) (_2!14745 List!25128)) )
))
(declare-fun lt!803202 () tuple2!24750)

(declare-fun ++!6328 (List!25128 List!25128) List!25128)

(assert (=> b!2160230 (= lt!803195 (++!6328 (_1!14745 lt!803202) (_2!14745 lt!803202)))))

(declare-fun b!2160231 () Bool)

(declare-fun e!1382190 () Bool)

(declare-datatypes ((IArray!16219 0))(
  ( (IArray!16220 (innerList!8167 List!25128)) )
))
(declare-datatypes ((Conc!8107 0))(
  ( (Node!8107 (left!19271 Conc!8107) (right!19601 Conc!8107) (csize!16444 Int) (cheight!8318 Int)) (Leaf!11860 (xs!11049 IArray!16219) (csize!16445 Int)) (Empty!8107) )
))
(declare-datatypes ((BalanceConc!15976 0))(
  ( (BalanceConc!15977 (c!341897 Conc!8107)) )
))
(declare-fun input!5540 () BalanceConc!15976)

(declare-fun tp!673836 () Bool)

(declare-fun inv!33172 (Conc!8107) Bool)

(assert (=> b!2160231 (= e!1382190 (and (inv!33172 (c!341897 input!5540)) tp!673836))))

(declare-fun setRes!18022 () Bool)

(declare-fun e!1382192 () Bool)

(declare-fun tp!673831 () Bool)

(declare-fun setElem!18022 () Context!3082)

(declare-fun setNonEmpty!18022 () Bool)

(declare-fun inv!33173 (Context!3082) Bool)

(assert (=> setNonEmpty!18022 (= setRes!18022 (and tp!673831 (inv!33173 setElem!18022) e!1382192))))

(declare-fun setRest!18022 () (InoxSet Context!3082))

(assert (=> setNonEmpty!18022 (= z!4055 ((_ map or) (store ((as const (Array Context!3082 Bool)) false) setElem!18022 true) setRest!18022))))

(declare-fun b!2160232 () Bool)

(declare-fun e!1382184 () Bool)

(assert (=> b!2160232 (= e!1382184 true)))

(declare-fun lt!803192 () Bool)

(declare-fun matchR!2732 (Regex!5971 List!25128) Bool)

(assert (=> b!2160232 (= lt!803192 (matchR!2732 r!12534 (_1!14745 lt!803202)))))

(declare-fun res!930792 () Bool)

(assert (=> start!209606 (=> (not res!930792) (not e!1382181))))

(declare-fun validRegex!2247 (Regex!5971) Bool)

(assert (=> start!209606 (= res!930792 (validRegex!2247 r!12534))))

(assert (=> start!209606 e!1382181))

(assert (=> start!209606 e!1382187))

(declare-fun condSetEmpty!18022 () Bool)

(assert (=> start!209606 (= condSetEmpty!18022 (= z!4055 ((as const (Array Context!3082 Bool)) false)))))

(assert (=> start!209606 setRes!18022))

(declare-fun totalInput!977 () BalanceConc!15976)

(declare-fun e!1382188 () Bool)

(declare-fun inv!33174 (BalanceConc!15976) Bool)

(assert (=> start!209606 (and (inv!33174 totalInput!977) e!1382188)))

(assert (=> start!209606 (and (inv!33174 input!5540) e!1382190)))

(declare-fun b!2160233 () Bool)

(declare-fun e!1382186 () Bool)

(assert (=> b!2160233 (= e!1382181 e!1382186)))

(declare-fun res!930789 () Bool)

(assert (=> b!2160233 (=> (not res!930789) (not e!1382186))))

(declare-fun lt!803199 () List!25128)

(declare-fun isSuffix!638 (List!25128 List!25128) Bool)

(assert (=> b!2160233 (= res!930789 (isSuffix!638 lt!803196 lt!803199))))

(declare-fun list!9590 (BalanceConc!15976) List!25128)

(assert (=> b!2160233 (= lt!803199 (list!9590 totalInput!977))))

(assert (=> b!2160233 (= lt!803196 (list!9590 input!5540))))

(declare-fun b!2160234 () Bool)

(declare-fun tp_is_empty!9549 () Bool)

(assert (=> b!2160234 (= e!1382187 tp_is_empty!9549)))

(declare-fun b!2160235 () Bool)

(declare-fun tp!673834 () Bool)

(declare-fun tp!673837 () Bool)

(assert (=> b!2160235 (= e!1382187 (and tp!673834 tp!673837))))

(declare-fun b!2160236 () Bool)

(declare-fun e!1382182 () Int)

(assert (=> b!2160236 (= e!1382182 (- 1))))

(declare-fun b!2160237 () Bool)

(declare-fun e!1382185 () Bool)

(declare-fun lt!803193 () tuple2!24750)

(assert (=> b!2160237 (= e!1382185 (matchR!2732 r!12534 (_1!14745 lt!803193)))))

(declare-fun b!2160238 () Bool)

(declare-fun tp!673835 () Bool)

(assert (=> b!2160238 (= e!1382192 tp!673835)))

(declare-fun b!2160239 () Bool)

(declare-fun e!1382193 () Bool)

(declare-datatypes ((tuple2!24752 0))(
  ( (tuple2!24753 (_1!14746 BalanceConc!15976) (_2!14746 BalanceConc!15976)) )
))
(declare-fun lt!803188 () tuple2!24752)

(declare-fun isEmpty!14357 (BalanceConc!15976) Bool)

(assert (=> b!2160239 (= e!1382193 (not (isEmpty!14357 (_1!14746 lt!803188))))))

(declare-fun b!2160240 () Bool)

(assert (=> b!2160240 (= e!1382186 e!1382189)))

(declare-fun res!930790 () Bool)

(assert (=> b!2160240 (=> (not res!930790) (not e!1382189))))

(declare-fun lt!803189 () List!25128)

(assert (=> b!2160240 (= res!930790 (= lt!803189 lt!803196))))

(declare-fun lt!803186 () List!25128)

(declare-fun lt!803200 () List!25128)

(assert (=> b!2160240 (= lt!803189 (++!6328 lt!803186 lt!803200))))

(assert (=> b!2160240 (= lt!803200 (list!9590 (_2!14746 lt!803188)))))

(assert (=> b!2160240 (= lt!803186 (list!9590 (_1!14746 lt!803188)))))

(declare-fun findLongestMatch!525 (Regex!5971 List!25128) tuple2!24750)

(assert (=> b!2160240 (= lt!803202 (findLongestMatch!525 r!12534 lt!803196))))

(declare-fun lt!803194 () Int)

(declare-fun lt!803203 () Int)

(declare-fun size!19569 (BalanceConc!15976) Int)

(assert (=> b!2160240 (= lt!803194 (- lt!803203 (size!19569 input!5540)))))

(assert (=> b!2160240 (= lt!803203 (size!19569 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!20 ((InoxSet Context!3082) BalanceConc!15976 BalanceConc!15976) tuple2!24752)

(assert (=> b!2160240 (= lt!803188 (findLongestMatchZipperSequenceV3!20 z!4055 input!5540 totalInput!977))))

(declare-fun b!2160241 () Bool)

(declare-fun lt!803197 () Int)

(declare-fun e!1382183 () Bool)

(declare-fun matchZipper!99 ((InoxSet Context!3082) List!25128) Bool)

(declare-fun take!185 (List!25128 Int) List!25128)

(declare-fun drop!1194 (List!25128 Int) List!25128)

(assert (=> b!2160241 (= e!1382183 (matchZipper!99 z!4055 (take!185 (drop!1194 lt!803199 lt!803194) lt!803197)))))

(declare-fun b!2160242 () Bool)

(assert (=> b!2160242 (= e!1382191 (not e!1382184))))

(declare-fun res!930791 () Bool)

(assert (=> b!2160242 (=> res!930791 e!1382184)))

(assert (=> b!2160242 (= res!930791 e!1382193)))

(declare-fun res!930785 () Bool)

(assert (=> b!2160242 (=> (not res!930785) (not e!1382193))))

(assert (=> b!2160242 (= res!930785 (not (matchZipper!99 z!4055 lt!803186)))))

(assert (=> b!2160242 e!1382185))

(declare-fun res!930786 () Bool)

(assert (=> b!2160242 (=> res!930786 e!1382185)))

(declare-fun isEmpty!14358 (List!25128) Bool)

(assert (=> b!2160242 (= res!930786 (isEmpty!14358 (_1!14745 lt!803193)))))

(declare-fun findLongestMatchInner!600 (Regex!5971 List!25128 Int List!25128 List!25128 Int) tuple2!24750)

(declare-fun size!19570 (List!25128) Int)

(assert (=> b!2160242 (= lt!803193 (findLongestMatchInner!600 r!12534 Nil!25044 (size!19570 Nil!25044) lt!803196 lt!803196 (size!19570 lt!803196)))))

(declare-datatypes ((Unit!38093 0))(
  ( (Unit!38094) )
))
(declare-fun lt!803204 () Unit!38093)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!581 (Regex!5971 List!25128) Unit!38093)

(assert (=> b!2160242 (= lt!803204 (longestMatchIsAcceptedByMatchOrIsEmpty!581 r!12534 lt!803196))))

(assert (=> b!2160242 e!1382183))

(declare-fun res!930793 () Bool)

(assert (=> b!2160242 (=> res!930793 e!1382183)))

(assert (=> b!2160242 (= res!930793 (<= lt!803197 0))))

(declare-fun lt!803201 () Int)

(declare-fun furthestNullablePosition!158 ((InoxSet Context!3082) Int BalanceConc!15976 Int Int) Int)

(assert (=> b!2160242 (= lt!803197 (+ 1 (- (furthestNullablePosition!158 z!4055 lt!803194 totalInput!977 lt!803203 lt!803201) lt!803194)))))

(declare-fun lt!803190 () Unit!38093)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!6 ((InoxSet Context!3082) Int BalanceConc!15976 Int) Unit!38093)

(assert (=> b!2160242 (= lt!803190 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!6 z!4055 lt!803194 totalInput!977 lt!803201))))

(assert (=> b!2160242 (= lt!803201 e!1382182)))

(declare-fun c!341895 () Bool)

(declare-fun nullableZipper!252 ((InoxSet Context!3082)) Bool)

(assert (=> b!2160242 (= c!341895 (nullableZipper!252 z!4055))))

(declare-fun isPrefix!2091 (List!25128 List!25128) Bool)

(assert (=> b!2160242 (isPrefix!2091 (take!185 lt!803199 lt!803194) lt!803199)))

(declare-fun lt!803198 () Unit!38093)

(declare-fun lemmaTakeIsPrefix!8 (List!25128 Int) Unit!38093)

(assert (=> b!2160242 (= lt!803198 (lemmaTakeIsPrefix!8 lt!803199 lt!803194))))

(assert (=> b!2160242 (isPrefix!2091 (_1!14745 lt!803202) lt!803195)))

(declare-fun lt!803191 () Unit!38093)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1374 (List!25128 List!25128) Unit!38093)

(assert (=> b!2160242 (= lt!803191 (lemmaConcatTwoListThenFirstIsPrefix!1374 (_1!14745 lt!803202) (_2!14745 lt!803202)))))

(assert (=> b!2160242 (isPrefix!2091 lt!803186 lt!803189)))

(declare-fun lt!803187 () Unit!38093)

(assert (=> b!2160242 (= lt!803187 (lemmaConcatTwoListThenFirstIsPrefix!1374 lt!803186 lt!803200))))

(declare-fun setIsEmpty!18022 () Bool)

(assert (=> setIsEmpty!18022 setRes!18022))

(declare-fun b!2160243 () Bool)

(assert (=> b!2160243 (= e!1382182 (- lt!803194 1))))

(declare-fun b!2160244 () Bool)

(declare-fun tp!673833 () Bool)

(assert (=> b!2160244 (= e!1382188 (and (inv!33172 (c!341897 totalInput!977)) tp!673833))))

(declare-fun b!2160245 () Bool)

(declare-fun tp!673832 () Bool)

(assert (=> b!2160245 (= e!1382187 tp!673832)))

(assert (= (and start!209606 res!930792) b!2160228))

(assert (= (and b!2160228 res!930788) b!2160233))

(assert (= (and b!2160233 res!930789) b!2160240))

(assert (= (and b!2160240 res!930790) b!2160230))

(assert (= (and b!2160230 res!930787) b!2160242))

(assert (= (and b!2160242 c!341895) b!2160243))

(assert (= (and b!2160242 (not c!341895)) b!2160236))

(assert (= (and b!2160242 (not res!930793)) b!2160241))

(assert (= (and b!2160242 (not res!930786)) b!2160237))

(assert (= (and b!2160242 res!930785) b!2160239))

(assert (= (and b!2160242 (not res!930791)) b!2160232))

(get-info :version)

(assert (= (and start!209606 ((_ is ElementMatch!5971) r!12534)) b!2160234))

(assert (= (and start!209606 ((_ is Concat!10273) r!12534)) b!2160229))

(assert (= (and start!209606 ((_ is Star!5971) r!12534)) b!2160245))

(assert (= (and start!209606 ((_ is Union!5971) r!12534)) b!2160235))

(assert (= (and start!209606 condSetEmpty!18022) setIsEmpty!18022))

(assert (= (and start!209606 (not condSetEmpty!18022)) setNonEmpty!18022))

(assert (= setNonEmpty!18022 b!2160238))

(assert (= start!209606 b!2160244))

(assert (= start!209606 b!2160231))

(declare-fun m!2600117 () Bool)

(assert (=> b!2160244 m!2600117))

(declare-fun m!2600119 () Bool)

(assert (=> b!2160230 m!2600119))

(declare-fun m!2600121 () Bool)

(assert (=> start!209606 m!2600121))

(declare-fun m!2600123 () Bool)

(assert (=> start!209606 m!2600123))

(declare-fun m!2600125 () Bool)

(assert (=> start!209606 m!2600125))

(declare-fun m!2600127 () Bool)

(assert (=> b!2160241 m!2600127))

(assert (=> b!2160241 m!2600127))

(declare-fun m!2600129 () Bool)

(assert (=> b!2160241 m!2600129))

(assert (=> b!2160241 m!2600129))

(declare-fun m!2600131 () Bool)

(assert (=> b!2160241 m!2600131))

(declare-fun m!2600133 () Bool)

(assert (=> b!2160240 m!2600133))

(declare-fun m!2600135 () Bool)

(assert (=> b!2160240 m!2600135))

(declare-fun m!2600137 () Bool)

(assert (=> b!2160240 m!2600137))

(declare-fun m!2600139 () Bool)

(assert (=> b!2160240 m!2600139))

(declare-fun m!2600141 () Bool)

(assert (=> b!2160240 m!2600141))

(declare-fun m!2600143 () Bool)

(assert (=> b!2160240 m!2600143))

(declare-fun m!2600145 () Bool)

(assert (=> b!2160240 m!2600145))

(declare-fun m!2600147 () Bool)

(assert (=> b!2160237 m!2600147))

(declare-fun m!2600149 () Bool)

(assert (=> b!2160239 m!2600149))

(declare-fun m!2600151 () Bool)

(assert (=> setNonEmpty!18022 m!2600151))

(declare-fun m!2600153 () Bool)

(assert (=> b!2160231 m!2600153))

(declare-fun m!2600155 () Bool)

(assert (=> b!2160232 m!2600155))

(declare-fun m!2600157 () Bool)

(assert (=> b!2160233 m!2600157))

(declare-fun m!2600159 () Bool)

(assert (=> b!2160233 m!2600159))

(declare-fun m!2600161 () Bool)

(assert (=> b!2160233 m!2600161))

(declare-fun m!2600163 () Bool)

(assert (=> b!2160242 m!2600163))

(declare-fun m!2600165 () Bool)

(assert (=> b!2160242 m!2600165))

(declare-fun m!2600167 () Bool)

(assert (=> b!2160242 m!2600167))

(declare-fun m!2600169 () Bool)

(assert (=> b!2160242 m!2600169))

(declare-fun m!2600171 () Bool)

(assert (=> b!2160242 m!2600171))

(declare-fun m!2600173 () Bool)

(assert (=> b!2160242 m!2600173))

(declare-fun m!2600175 () Bool)

(assert (=> b!2160242 m!2600175))

(assert (=> b!2160242 m!2600167))

(declare-fun m!2600177 () Bool)

(assert (=> b!2160242 m!2600177))

(declare-fun m!2600179 () Bool)

(assert (=> b!2160242 m!2600179))

(declare-fun m!2600181 () Bool)

(assert (=> b!2160242 m!2600181))

(assert (=> b!2160242 m!2600173))

(declare-fun m!2600183 () Bool)

(assert (=> b!2160242 m!2600183))

(declare-fun m!2600185 () Bool)

(assert (=> b!2160242 m!2600185))

(declare-fun m!2600187 () Bool)

(assert (=> b!2160242 m!2600187))

(declare-fun m!2600189 () Bool)

(assert (=> b!2160242 m!2600189))

(declare-fun m!2600191 () Bool)

(assert (=> b!2160242 m!2600191))

(assert (=> b!2160242 m!2600181))

(declare-fun m!2600193 () Bool)

(assert (=> b!2160242 m!2600193))

(declare-fun m!2600195 () Bool)

(assert (=> b!2160228 m!2600195))

(assert (=> b!2160228 m!2600195))

(declare-fun m!2600197 () Bool)

(assert (=> b!2160228 m!2600197))

(check-sat (not b!2160233) (not b!2160230) (not b!2160244) (not b!2160239) (not b!2160241) (not b!2160238) (not b!2160237) (not start!209606) (not b!2160240) (not b!2160245) (not setNonEmpty!18022) (not b!2160235) (not b!2160231) (not b!2160242) (not b!2160232) (not b!2160229) (not b!2160228) tp_is_empty!9549)
(check-sat)
