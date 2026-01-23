; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84434 () Bool)

(assert start!84434)

(declare-fun b!947156 () Bool)

(assert (=> b!947156 true))

(assert (=> b!947156 true))

(assert (=> b!947156 true))

(declare-fun lambda!32352 () Int)

(declare-fun lambda!32351 () Int)

(assert (=> b!947156 (not (= lambda!32352 lambda!32351))))

(assert (=> b!947156 true))

(assert (=> b!947156 true))

(assert (=> b!947156 true))

(declare-fun bs!239675 () Bool)

(declare-fun b!947153 () Bool)

(assert (= bs!239675 (and b!947153 b!947156)))

(declare-datatypes ((C!5780 0))(
  ( (C!5781 (val!3138 Int)) )
))
(declare-datatypes ((Regex!2605 0))(
  ( (ElementMatch!2605 (c!154188 C!5780)) (Concat!4438 (regOne!5722 Regex!2605) (regTwo!5722 Regex!2605)) (EmptyExpr!2605) (Star!2605 (reg!2934 Regex!2605)) (EmptyLang!2605) (Union!2605 (regOne!5723 Regex!2605) (regTwo!5723 Regex!2605)) )
))
(declare-fun lt!343874 () Regex!2605)

(declare-fun lt!343884 () Regex!2605)

(declare-fun r!15766 () Regex!2605)

(declare-fun lambda!32353 () Int)

(declare-fun lt!343873 () Regex!2605)

(assert (=> bs!239675 (= (and (= lt!343874 (reg!2934 r!15766)) (= lt!343884 lt!343873)) (= lambda!32353 lambda!32351))))

(assert (=> bs!239675 (not (= lambda!32353 lambda!32352))))

(assert (=> b!947153 true))

(assert (=> b!947153 true))

(assert (=> b!947153 true))

(declare-fun lambda!32354 () Int)

(assert (=> bs!239675 (not (= lambda!32354 lambda!32351))))

(assert (=> bs!239675 (= (and (= lt!343874 (reg!2934 r!15766)) (= lt!343884 lt!343873)) (= lambda!32354 lambda!32352))))

(assert (=> b!947153 (not (= lambda!32354 lambda!32353))))

(assert (=> b!947153 true))

(assert (=> b!947153 true))

(assert (=> b!947153 true))

(declare-fun b!947146 () Bool)

(declare-fun e!613647 () Bool)

(declare-fun tp!292165 () Bool)

(assert (=> b!947146 (= e!613647 tp!292165)))

(declare-fun res!430499 () Bool)

(declare-fun e!613648 () Bool)

(assert (=> start!84434 (=> (not res!430499) (not e!613648))))

(declare-fun validRegex!1074 (Regex!2605) Bool)

(assert (=> start!84434 (= res!430499 (validRegex!1074 r!15766))))

(assert (=> start!84434 e!613648))

(assert (=> start!84434 e!613647))

(declare-fun e!613644 () Bool)

(assert (=> start!84434 e!613644))

(declare-fun b!947147 () Bool)

(declare-fun res!430501 () Bool)

(declare-fun e!613651 () Bool)

(assert (=> b!947147 (=> res!430501 e!613651)))

(declare-datatypes ((List!9835 0))(
  ( (Nil!9819) (Cons!9819 (h!15220 C!5780) (t!100881 List!9835)) )
))
(declare-datatypes ((tuple2!11108 0))(
  ( (tuple2!11109 (_1!6380 List!9835) (_2!6380 List!9835)) )
))
(declare-fun lt!343885 () tuple2!11108)

(declare-fun matchR!1143 (Regex!2605 List!9835) Bool)

(assert (=> b!947147 (= res!430501 (not (matchR!1143 lt!343884 (_2!6380 lt!343885))))))

(declare-fun b!947148 () Bool)

(declare-fun e!613650 () Bool)

(assert (=> b!947148 (= e!613650 e!613651)))

(declare-fun res!430502 () Bool)

(assert (=> b!947148 (=> res!430502 e!613651)))

(assert (=> b!947148 (= res!430502 (not (matchR!1143 lt!343874 (_1!6380 lt!343885))))))

(declare-datatypes ((Option!2196 0))(
  ( (None!2195) (Some!2195 (v!19612 tuple2!11108)) )
))
(declare-fun lt!343876 () Option!2196)

(declare-fun get!3289 (Option!2196) tuple2!11108)

(assert (=> b!947148 (= lt!343885 (get!3289 lt!343876))))

(declare-fun b!947149 () Bool)

(declare-fun tp!292166 () Bool)

(declare-fun tp!292167 () Bool)

(assert (=> b!947149 (= e!613647 (and tp!292166 tp!292167))))

(declare-fun b!947150 () Bool)

(declare-fun tp_is_empty!4853 () Bool)

(assert (=> b!947150 (= e!613647 tp_is_empty!4853)))

(declare-fun b!947151 () Bool)

(declare-datatypes ((Unit!14843 0))(
  ( (Unit!14844) )
))
(declare-fun e!613645 () Unit!14843)

(declare-fun Unit!14845 () Unit!14843)

(assert (=> b!947151 (= e!613645 Unit!14845)))

(declare-fun b!947152 () Bool)

(declare-fun Unit!14846 () Unit!14843)

(assert (=> b!947152 (= e!613645 Unit!14846)))

(declare-fun lt!343871 () Unit!14843)

(declare-fun mainMatchTheorem!406 (Regex!2605 List!9835) Unit!14843)

(assert (=> b!947152 (= lt!343871 (mainMatchTheorem!406 (reg!2934 r!15766) (_1!6380 lt!343885)))))

(assert (=> b!947152 false))

(declare-fun e!613649 () Bool)

(assert (=> b!947153 (= e!613649 e!613650)))

(declare-fun res!430497 () Bool)

(assert (=> b!947153 (=> res!430497 e!613650)))

(declare-fun s!10566 () List!9835)

(declare-fun isEmpty!6082 (List!9835) Bool)

(assert (=> b!947153 (= res!430497 (isEmpty!6082 s!10566))))

(declare-fun Exists!356 (Int) Bool)

(assert (=> b!947153 (= (Exists!356 lambda!32353) (Exists!356 lambda!32354))))

(declare-fun lt!343869 () Unit!14843)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!100 (Regex!2605 List!9835) Unit!14843)

(assert (=> b!947153 (= lt!343869 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!100 lt!343874 s!10566))))

(declare-fun lt!343875 () Bool)

(assert (=> b!947153 (= lt!343875 (Exists!356 lambda!32353))))

(declare-fun isDefined!1838 (Option!2196) Bool)

(assert (=> b!947153 (= lt!343875 (isDefined!1838 lt!343876))))

(declare-fun findConcatSeparation!302 (Regex!2605 Regex!2605 List!9835 List!9835 List!9835) Option!2196)

(assert (=> b!947153 (= lt!343876 (findConcatSeparation!302 lt!343874 lt!343884 Nil!9819 s!10566 s!10566))))

(declare-fun lt!343877 () Unit!14843)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!302 (Regex!2605 Regex!2605 List!9835) Unit!14843)

(assert (=> b!947153 (= lt!343877 (lemmaFindConcatSeparationEquivalentToExists!302 lt!343874 lt!343884 s!10566))))

(declare-fun matchRSpec!406 (Regex!2605 List!9835) Bool)

(assert (=> b!947153 (matchRSpec!406 lt!343884 s!10566)))

(declare-fun lt!343878 () Unit!14843)

(assert (=> b!947153 (= lt!343878 (mainMatchTheorem!406 lt!343884 s!10566))))

(declare-fun b!947154 () Bool)

(declare-fun e!613646 () Bool)

(assert (=> b!947154 (= e!613648 (not e!613646))))

(declare-fun res!430496 () Bool)

(assert (=> b!947154 (=> res!430496 e!613646)))

(declare-fun lt!343883 () Bool)

(get-info :version)

(assert (=> b!947154 (= res!430496 (or lt!343883 (and ((_ is Concat!4438) r!15766) ((_ is EmptyExpr!2605) (regOne!5722 r!15766))) (and ((_ is Concat!4438) r!15766) ((_ is EmptyExpr!2605) (regTwo!5722 r!15766))) ((_ is Concat!4438) r!15766) ((_ is Union!2605) r!15766) (not ((_ is Star!2605) r!15766))))))

(assert (=> b!947154 (= lt!343883 (matchRSpec!406 r!15766 s!10566))))

(assert (=> b!947154 (= lt!343883 (matchR!1143 r!15766 s!10566))))

(declare-fun lt!343870 () Unit!14843)

(assert (=> b!947154 (= lt!343870 (mainMatchTheorem!406 r!15766 s!10566))))

(declare-fun b!947155 () Bool)

(assert (=> b!947155 (= e!613651 true)))

(declare-fun removeUselessConcat!274 (Regex!2605) Regex!2605)

(assert (=> b!947155 (= (matchR!1143 lt!343873 (_2!6380 lt!343885)) (matchR!1143 (removeUselessConcat!274 lt!343873) (_2!6380 lt!343885)))))

(declare-fun lt!343882 () Unit!14843)

(declare-fun lemmaRemoveUselessConcatSound!140 (Regex!2605 List!9835) Unit!14843)

(assert (=> b!947155 (= lt!343882 (lemmaRemoveUselessConcatSound!140 lt!343873 (_2!6380 lt!343885)))))

(declare-fun lt!343880 () Unit!14843)

(assert (=> b!947155 (= lt!343880 e!613645)))

(declare-fun c!154187 () Bool)

(declare-fun size!7903 (List!9835) Int)

(assert (=> b!947155 (= c!154187 (= (size!7903 (_2!6380 lt!343885)) (size!7903 s!10566)))))

(assert (=> b!947155 (matchR!1143 (reg!2934 r!15766) (_1!6380 lt!343885))))

(declare-fun lt!343881 () Unit!14843)

(assert (=> b!947155 (= lt!343881 (lemmaRemoveUselessConcatSound!140 (reg!2934 r!15766) (_1!6380 lt!343885)))))

(assert (=> b!947156 (= e!613646 e!613649)))

(declare-fun res!430500 () Bool)

(assert (=> b!947156 (=> res!430500 e!613649)))

(assert (=> b!947156 (= res!430500 (not (matchR!1143 lt!343884 s!10566)))))

(assert (=> b!947156 (= lt!343884 (Star!2605 lt!343874))))

(assert (=> b!947156 (= lt!343874 (removeUselessConcat!274 (reg!2934 r!15766)))))

(assert (=> b!947156 (= (Exists!356 lambda!32351) (Exists!356 lambda!32352))))

(declare-fun lt!343872 () Unit!14843)

(assert (=> b!947156 (= lt!343872 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!100 (reg!2934 r!15766) s!10566))))

(assert (=> b!947156 (= (isDefined!1838 (findConcatSeparation!302 (reg!2934 r!15766) lt!343873 Nil!9819 s!10566 s!10566)) (Exists!356 lambda!32351))))

(declare-fun lt!343879 () Unit!14843)

(assert (=> b!947156 (= lt!343879 (lemmaFindConcatSeparationEquivalentToExists!302 (reg!2934 r!15766) lt!343873 s!10566))))

(assert (=> b!947156 (= lt!343873 (Star!2605 (reg!2934 r!15766)))))

(declare-fun b!947157 () Bool)

(declare-fun res!430498 () Bool)

(assert (=> b!947157 (=> res!430498 e!613650)))

(assert (=> b!947157 (= res!430498 (not lt!343875))))

(declare-fun b!947158 () Bool)

(declare-fun tp!292164 () Bool)

(assert (=> b!947158 (= e!613644 (and tp_is_empty!4853 tp!292164))))

(declare-fun b!947159 () Bool)

(declare-fun tp!292168 () Bool)

(declare-fun tp!292163 () Bool)

(assert (=> b!947159 (= e!613647 (and tp!292168 tp!292163))))

(assert (= (and start!84434 res!430499) b!947154))

(assert (= (and b!947154 (not res!430496)) b!947156))

(assert (= (and b!947156 (not res!430500)) b!947153))

(assert (= (and b!947153 (not res!430497)) b!947157))

(assert (= (and b!947157 (not res!430498)) b!947148))

(assert (= (and b!947148 (not res!430502)) b!947147))

(assert (= (and b!947147 (not res!430501)) b!947155))

(assert (= (and b!947155 c!154187) b!947152))

(assert (= (and b!947155 (not c!154187)) b!947151))

(assert (= (and start!84434 ((_ is ElementMatch!2605) r!15766)) b!947150))

(assert (= (and start!84434 ((_ is Concat!4438) r!15766)) b!947159))

(assert (= (and start!84434 ((_ is Star!2605) r!15766)) b!947146))

(assert (= (and start!84434 ((_ is Union!2605) r!15766)) b!947149))

(assert (= (and start!84434 ((_ is Cons!9819) s!10566)) b!947158))

(declare-fun m!1161771 () Bool)

(assert (=> b!947152 m!1161771))

(declare-fun m!1161773 () Bool)

(assert (=> b!947153 m!1161773))

(declare-fun m!1161775 () Bool)

(assert (=> b!947153 m!1161775))

(declare-fun m!1161777 () Bool)

(assert (=> b!947153 m!1161777))

(declare-fun m!1161779 () Bool)

(assert (=> b!947153 m!1161779))

(declare-fun m!1161781 () Bool)

(assert (=> b!947153 m!1161781))

(declare-fun m!1161783 () Bool)

(assert (=> b!947153 m!1161783))

(assert (=> b!947153 m!1161783))

(declare-fun m!1161785 () Bool)

(assert (=> b!947153 m!1161785))

(declare-fun m!1161787 () Bool)

(assert (=> b!947153 m!1161787))

(declare-fun m!1161789 () Bool)

(assert (=> b!947153 m!1161789))

(declare-fun m!1161791 () Bool)

(assert (=> b!947156 m!1161791))

(declare-fun m!1161793 () Bool)

(assert (=> b!947156 m!1161793))

(declare-fun m!1161795 () Bool)

(assert (=> b!947156 m!1161795))

(declare-fun m!1161797 () Bool)

(assert (=> b!947156 m!1161797))

(assert (=> b!947156 m!1161791))

(declare-fun m!1161799 () Bool)

(assert (=> b!947156 m!1161799))

(declare-fun m!1161801 () Bool)

(assert (=> b!947156 m!1161801))

(assert (=> b!947156 m!1161799))

(declare-fun m!1161803 () Bool)

(assert (=> b!947156 m!1161803))

(declare-fun m!1161805 () Bool)

(assert (=> b!947156 m!1161805))

(declare-fun m!1161807 () Bool)

(assert (=> b!947154 m!1161807))

(declare-fun m!1161809 () Bool)

(assert (=> b!947154 m!1161809))

(declare-fun m!1161811 () Bool)

(assert (=> b!947154 m!1161811))

(declare-fun m!1161813 () Bool)

(assert (=> b!947147 m!1161813))

(declare-fun m!1161815 () Bool)

(assert (=> b!947148 m!1161815))

(declare-fun m!1161817 () Bool)

(assert (=> b!947148 m!1161817))

(declare-fun m!1161819 () Bool)

(assert (=> b!947155 m!1161819))

(declare-fun m!1161821 () Bool)

(assert (=> b!947155 m!1161821))

(declare-fun m!1161823 () Bool)

(assert (=> b!947155 m!1161823))

(declare-fun m!1161825 () Bool)

(assert (=> b!947155 m!1161825))

(declare-fun m!1161827 () Bool)

(assert (=> b!947155 m!1161827))

(declare-fun m!1161829 () Bool)

(assert (=> b!947155 m!1161829))

(assert (=> b!947155 m!1161819))

(declare-fun m!1161831 () Bool)

(assert (=> b!947155 m!1161831))

(declare-fun m!1161833 () Bool)

(assert (=> b!947155 m!1161833))

(declare-fun m!1161835 () Bool)

(assert (=> start!84434 m!1161835))

(check-sat (not b!947154) tp_is_empty!4853 (not b!947158) (not b!947149) (not b!947156) (not start!84434) (not b!947148) (not b!947159) (not b!947155) (not b!947153) (not b!947146) (not b!947147) (not b!947152))
(check-sat)
