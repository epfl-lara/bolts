; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!233326 () Bool)

(assert start!233326)

(declare-fun b!2377878 () Bool)

(assert (=> b!2377878 true))

(assert (=> b!2377878 true))

(declare-fun lambda!88434 () Int)

(declare-fun lambda!88433 () Int)

(assert (=> b!2377878 (not (= lambda!88434 lambda!88433))))

(assert (=> b!2377878 true))

(assert (=> b!2377878 true))

(declare-fun b!2377877 () Bool)

(declare-fun e!1516951 () Bool)

(declare-fun tp!759443 () Bool)

(declare-fun tp!759437 () Bool)

(assert (=> b!2377877 (= e!1516951 (and tp!759443 tp!759437))))

(declare-fun e!1516954 () Bool)

(declare-fun e!1516949 () Bool)

(assert (=> b!2377878 (= e!1516954 e!1516949)))

(declare-fun res!1009713 () Bool)

(assert (=> b!2377878 (=> res!1009713 e!1516949)))

(declare-fun lt!867525 () Bool)

(declare-fun lt!867523 () Bool)

(assert (=> b!2377878 (= res!1009713 (not (= lt!867525 lt!867523)))))

(declare-fun Exists!1034 (Int) Bool)

(assert (=> b!2377878 (= (Exists!1034 lambda!88433) (Exists!1034 lambda!88434))))

(declare-datatypes ((Unit!40983 0))(
  ( (Unit!40984) )
))
(declare-fun lt!867524 () Unit!40983)

(declare-datatypes ((C!14102 0))(
  ( (C!14103 (val!8293 Int)) )
))
(declare-datatypes ((Regex!6972 0))(
  ( (ElementMatch!6972 (c!377969 C!14102)) (Concat!11608 (regOne!14456 Regex!6972) (regTwo!14456 Regex!6972)) (EmptyExpr!6972) (Star!6972 (reg!7301 Regex!6972)) (EmptyLang!6972) (Union!6972 (regOne!14457 Regex!6972) (regTwo!14457 Regex!6972)) )
))
(declare-fun r!13927 () Regex!6972)

(declare-datatypes ((List!28182 0))(
  ( (Nil!28084) (Cons!28084 (h!33485 C!14102) (t!208159 List!28182)) )
))
(declare-fun s!9460 () List!28182)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!373 (Regex!6972 Regex!6972 List!28182) Unit!40983)

(assert (=> b!2377878 (= lt!867524 (lemmaExistCutMatchRandMatchRSpecEquivalent!373 (regOne!14456 r!13927) (regTwo!14456 r!13927) s!9460))))

(assert (=> b!2377878 (= lt!867523 (Exists!1034 lambda!88433))))

(declare-datatypes ((tuple2!27808 0))(
  ( (tuple2!27809 (_1!16445 List!28182) (_2!16445 List!28182)) )
))
(declare-datatypes ((Option!5515 0))(
  ( (None!5514) (Some!5514 (v!30922 tuple2!27808)) )
))
(declare-fun isDefined!4343 (Option!5515) Bool)

(declare-fun findConcatSeparation!623 (Regex!6972 Regex!6972 List!28182 List!28182 List!28182) Option!5515)

(assert (=> b!2377878 (= lt!867523 (isDefined!4343 (findConcatSeparation!623 (regOne!14456 r!13927) (regTwo!14456 r!13927) Nil!28084 s!9460 s!9460)))))

(declare-fun lt!867527 () Unit!40983)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!623 (Regex!6972 Regex!6972 List!28182) Unit!40983)

(assert (=> b!2377878 (= lt!867527 (lemmaFindConcatSeparationEquivalentToExists!623 (regOne!14456 r!13927) (regTwo!14456 r!13927) s!9460))))

(declare-fun res!1009707 () Bool)

(declare-fun e!1516946 () Bool)

(assert (=> start!233326 (=> (not res!1009707) (not e!1516946))))

(declare-datatypes ((List!28183 0))(
  ( (Nil!28085) (Cons!28085 (h!33486 Regex!6972) (t!208160 List!28183)) )
))
(declare-fun l!9164 () List!28183)

(declare-fun lambda!88432 () Int)

(declare-fun forall!5606 (List!28183 Int) Bool)

(assert (=> start!233326 (= res!1009707 (forall!5606 l!9164 lambda!88432))))

(assert (=> start!233326 e!1516946))

(assert (=> start!233326 e!1516951))

(declare-fun e!1516948 () Bool)

(assert (=> start!233326 e!1516948))

(declare-fun e!1516950 () Bool)

(assert (=> start!233326 e!1516950))

(declare-fun b!2377879 () Bool)

(declare-fun res!1009715 () Bool)

(assert (=> b!2377879 (=> (not res!1009715) (not e!1516946))))

(declare-fun generalisedConcat!73 (List!28183) Regex!6972)

(assert (=> b!2377879 (= res!1009715 (= r!13927 (generalisedConcat!73 l!9164)))))

(declare-fun b!2377880 () Bool)

(declare-fun res!1009709 () Bool)

(declare-fun e!1516945 () Bool)

(assert (=> b!2377880 (=> res!1009709 e!1516945)))

(declare-fun lt!867519 () List!28183)

(assert (=> b!2377880 (= res!1009709 (not (= (generalisedConcat!73 lt!867519) EmptyExpr!6972)))))

(declare-fun b!2377881 () Bool)

(declare-fun tp_is_empty!11357 () Bool)

(declare-fun tp!759440 () Bool)

(assert (=> b!2377881 (= e!1516950 (and tp_is_empty!11357 tp!759440))))

(declare-fun b!2377882 () Bool)

(declare-fun e!1516952 () Bool)

(assert (=> b!2377882 (= e!1516952 (forall!5606 lt!867519 lambda!88432))))

(declare-fun lt!867518 () Bool)

(assert (=> b!2377882 (not lt!867518)))

(declare-fun lt!867520 () Unit!40983)

(declare-fun e!1516953 () Unit!40983)

(assert (=> b!2377882 (= lt!867520 e!1516953)))

(declare-fun c!377968 () Bool)

(assert (=> b!2377882 (= c!377968 lt!867518)))

(declare-fun lt!867515 () Option!5515)

(assert (=> b!2377882 (= lt!867518 (isDefined!4343 lt!867515))))

(declare-fun lt!867526 () Regex!6972)

(assert (=> b!2377882 (= lt!867515 (findConcatSeparation!623 lt!867526 EmptyExpr!6972 Nil!28084 s!9460 s!9460))))

(declare-fun b!2377883 () Bool)

(declare-fun Unit!40985 () Unit!40983)

(assert (=> b!2377883 (= e!1516953 Unit!40985)))

(declare-fun b!2377884 () Bool)

(declare-fun tp!759442 () Bool)

(declare-fun tp!759436 () Bool)

(assert (=> b!2377884 (= e!1516948 (and tp!759442 tp!759436))))

(declare-fun b!2377885 () Bool)

(assert (=> b!2377885 (= e!1516949 e!1516945)))

(declare-fun res!1009714 () Bool)

(assert (=> b!2377885 (=> res!1009714 e!1516945)))

(declare-fun isEmpty!16026 (List!28183) Bool)

(assert (=> b!2377885 (= res!1009714 (not (isEmpty!16026 lt!867519)))))

(declare-fun tail!3447 (List!28183) List!28183)

(assert (=> b!2377885 (= lt!867519 (tail!3447 l!9164))))

(declare-fun b!2377886 () Bool)

(declare-fun tp!759441 () Bool)

(assert (=> b!2377886 (= e!1516948 tp!759441)))

(declare-fun b!2377887 () Bool)

(declare-fun e!1516947 () Bool)

(assert (=> b!2377887 (= e!1516947 false)))

(declare-fun b!2377888 () Bool)

(assert (=> b!2377888 (= e!1516945 e!1516952)))

(declare-fun res!1009711 () Bool)

(assert (=> b!2377888 (=> res!1009711 e!1516952)))

(declare-fun matchR!3089 (Regex!6972 List!28182) Bool)

(assert (=> b!2377888 (= res!1009711 (matchR!3089 lt!867526 s!9460))))

(declare-fun head!5177 (List!28183) Regex!6972)

(assert (=> b!2377888 (= lt!867526 (head!5177 l!9164))))

(declare-fun b!2377889 () Bool)

(assert (=> b!2377889 (= e!1516946 (not e!1516954))))

(declare-fun res!1009708 () Bool)

(assert (=> b!2377889 (=> res!1009708 e!1516954)))

(assert (=> b!2377889 (= res!1009708 (not (is-Concat!11608 r!13927)))))

(declare-fun lt!867521 () Bool)

(assert (=> b!2377889 (= lt!867521 lt!867525)))

(declare-fun matchRSpec!821 (Regex!6972 List!28182) Bool)

(assert (=> b!2377889 (= lt!867525 (matchRSpec!821 r!13927 s!9460))))

(assert (=> b!2377889 (= lt!867521 (matchR!3089 r!13927 s!9460))))

(declare-fun lt!867516 () Unit!40983)

(declare-fun mainMatchTheorem!821 (Regex!6972 List!28182) Unit!40983)

(assert (=> b!2377889 (= lt!867516 (mainMatchTheorem!821 r!13927 s!9460))))

(declare-fun b!2377890 () Bool)

(declare-fun res!1009710 () Bool)

(assert (=> b!2377890 (=> res!1009710 e!1516949)))

(assert (=> b!2377890 (= res!1009710 (isEmpty!16026 l!9164))))

(declare-fun b!2377891 () Bool)

(declare-fun tp!759438 () Bool)

(declare-fun tp!759439 () Bool)

(assert (=> b!2377891 (= e!1516948 (and tp!759438 tp!759439))))

(declare-fun b!2377892 () Bool)

(declare-fun Unit!40986 () Unit!40983)

(assert (=> b!2377892 (= e!1516953 Unit!40986)))

(declare-fun lt!867517 () tuple2!27808)

(declare-fun get!8557 (Option!5515) tuple2!27808)

(assert (=> b!2377892 (= lt!867517 (get!8557 lt!867515))))

(declare-fun lt!867522 () Unit!40983)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!3 (Regex!6972 Regex!6972 List!28182 List!28182 List!28182) Unit!40983)

(assert (=> b!2377892 (= lt!867522 (lemmaFindSeparationIsDefinedThenConcatMatches!3 lt!867526 EmptyExpr!6972 (_1!16445 lt!867517) (_2!16445 lt!867517) s!9460))))

(declare-fun res!1009712 () Bool)

(declare-fun ++!6927 (List!28182 List!28182) List!28182)

(assert (=> b!2377892 (= res!1009712 (matchR!3089 (Concat!11608 lt!867526 EmptyExpr!6972) (++!6927 (_1!16445 lt!867517) (_2!16445 lt!867517))))))

(assert (=> b!2377892 (=> (not res!1009712) (not e!1516947))))

(assert (=> b!2377892 e!1516947))

(declare-fun b!2377893 () Bool)

(assert (=> b!2377893 (= e!1516948 tp_is_empty!11357)))

(assert (= (and start!233326 res!1009707) b!2377879))

(assert (= (and b!2377879 res!1009715) b!2377889))

(assert (= (and b!2377889 (not res!1009708)) b!2377878))

(assert (= (and b!2377878 (not res!1009713)) b!2377890))

(assert (= (and b!2377890 (not res!1009710)) b!2377885))

(assert (= (and b!2377885 (not res!1009714)) b!2377880))

(assert (= (and b!2377880 (not res!1009709)) b!2377888))

(assert (= (and b!2377888 (not res!1009711)) b!2377882))

(assert (= (and b!2377882 c!377968) b!2377892))

(assert (= (and b!2377882 (not c!377968)) b!2377883))

(assert (= (and b!2377892 res!1009712) b!2377887))

(assert (= (and start!233326 (is-Cons!28085 l!9164)) b!2377877))

(assert (= (and start!233326 (is-ElementMatch!6972 r!13927)) b!2377893))

(assert (= (and start!233326 (is-Concat!11608 r!13927)) b!2377884))

(assert (= (and start!233326 (is-Star!6972 r!13927)) b!2377886))

(assert (= (and start!233326 (is-Union!6972 r!13927)) b!2377891))

(assert (= (and start!233326 (is-Cons!28084 s!9460)) b!2377881))

(declare-fun m!2782787 () Bool)

(assert (=> b!2377888 m!2782787))

(declare-fun m!2782789 () Bool)

(assert (=> b!2377888 m!2782789))

(declare-fun m!2782791 () Bool)

(assert (=> b!2377890 m!2782791))

(declare-fun m!2782793 () Bool)

(assert (=> b!2377878 m!2782793))

(declare-fun m!2782795 () Bool)

(assert (=> b!2377878 m!2782795))

(declare-fun m!2782797 () Bool)

(assert (=> b!2377878 m!2782797))

(assert (=> b!2377878 m!2782793))

(declare-fun m!2782799 () Bool)

(assert (=> b!2377878 m!2782799))

(declare-fun m!2782801 () Bool)

(assert (=> b!2377878 m!2782801))

(declare-fun m!2782803 () Bool)

(assert (=> b!2377878 m!2782803))

(assert (=> b!2377878 m!2782799))

(declare-fun m!2782805 () Bool)

(assert (=> b!2377885 m!2782805))

(declare-fun m!2782807 () Bool)

(assert (=> b!2377885 m!2782807))

(declare-fun m!2782809 () Bool)

(assert (=> b!2377879 m!2782809))

(declare-fun m!2782811 () Bool)

(assert (=> b!2377882 m!2782811))

(declare-fun m!2782813 () Bool)

(assert (=> b!2377882 m!2782813))

(declare-fun m!2782815 () Bool)

(assert (=> b!2377882 m!2782815))

(declare-fun m!2782817 () Bool)

(assert (=> start!233326 m!2782817))

(declare-fun m!2782819 () Bool)

(assert (=> b!2377889 m!2782819))

(declare-fun m!2782821 () Bool)

(assert (=> b!2377889 m!2782821))

(declare-fun m!2782823 () Bool)

(assert (=> b!2377889 m!2782823))

(declare-fun m!2782825 () Bool)

(assert (=> b!2377880 m!2782825))

(declare-fun m!2782827 () Bool)

(assert (=> b!2377892 m!2782827))

(declare-fun m!2782829 () Bool)

(assert (=> b!2377892 m!2782829))

(declare-fun m!2782831 () Bool)

(assert (=> b!2377892 m!2782831))

(assert (=> b!2377892 m!2782831))

(declare-fun m!2782833 () Bool)

(assert (=> b!2377892 m!2782833))

(push 1)

(assert (not b!2377891))

(assert (not b!2377881))

(assert (not b!2377889))

(assert (not start!233326))

(assert (not b!2377888))

(assert (not b!2377880))

(assert (not b!2377884))

(assert tp_is_empty!11357)

(assert (not b!2377885))

(assert (not b!2377890))

(assert (not b!2377879))

(assert (not b!2377878))

(assert (not b!2377877))

(assert (not b!2377882))

(assert (not b!2377892))

(assert (not b!2377886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!696251 () Bool)

(assert (=> d!696251 (= (get!8557 lt!867515) (v!30922 lt!867515))))

(assert (=> b!2377892 d!696251))

(declare-fun d!696253 () Bool)

(assert (=> d!696253 (matchR!3089 (Concat!11608 lt!867526 EmptyExpr!6972) (++!6927 (_1!16445 lt!867517) (_2!16445 lt!867517)))))

(declare-fun lt!867569 () Unit!40983)

(declare-fun choose!13881 (Regex!6972 Regex!6972 List!28182 List!28182 List!28182) Unit!40983)

(assert (=> d!696253 (= lt!867569 (choose!13881 lt!867526 EmptyExpr!6972 (_1!16445 lt!867517) (_2!16445 lt!867517) s!9460))))

(declare-fun validRegex!2697 (Regex!6972) Bool)

(assert (=> d!696253 (validRegex!2697 lt!867526)))

(assert (=> d!696253 (= (lemmaFindSeparationIsDefinedThenConcatMatches!3 lt!867526 EmptyExpr!6972 (_1!16445 lt!867517) (_2!16445 lt!867517) s!9460) lt!867569)))

(declare-fun bs!461677 () Bool)

(assert (= bs!461677 d!696253))

(assert (=> bs!461677 m!2782831))

(assert (=> bs!461677 m!2782831))

(assert (=> bs!461677 m!2782833))

(declare-fun m!2782883 () Bool)

(assert (=> bs!461677 m!2782883))

(declare-fun m!2782885 () Bool)

(assert (=> bs!461677 m!2782885))

(assert (=> b!2377892 d!696253))

(declare-fun b!2377993 () Bool)

(declare-fun e!1517011 () Bool)

(declare-fun derivativeStep!1680 (Regex!6972 C!14102) Regex!6972)

(declare-fun head!5179 (List!28182) C!14102)

(declare-fun tail!3449 (List!28182) List!28182)

(assert (=> b!2377993 (= e!1517011 (matchR!3089 (derivativeStep!1680 (Concat!11608 lt!867526 EmptyExpr!6972) (head!5179 (++!6927 (_1!16445 lt!867517) (_2!16445 lt!867517)))) (tail!3449 (++!6927 (_1!16445 lt!867517) (_2!16445 lt!867517)))))))

(declare-fun b!2377994 () Bool)

(declare-fun e!1517006 () Bool)

(declare-fun e!1517009 () Bool)

(assert (=> b!2377994 (= e!1517006 e!1517009)))

(declare-fun res!1009775 () Bool)

(assert (=> b!2377994 (=> res!1009775 e!1517009)))

(declare-fun call!144463 () Bool)

(assert (=> b!2377994 (= res!1009775 call!144463)))

(declare-fun b!2377995 () Bool)

(declare-fun res!1009773 () Bool)

(assert (=> b!2377995 (=> res!1009773 e!1517009)))

(declare-fun isEmpty!16028 (List!28182) Bool)

(assert (=> b!2377995 (= res!1009773 (not (isEmpty!16028 (tail!3449 (++!6927 (_1!16445 lt!867517) (_2!16445 lt!867517))))))))

(declare-fun b!2377996 () Bool)

(assert (=> b!2377996 (= e!1517009 (not (= (head!5179 (++!6927 (_1!16445 lt!867517) (_2!16445 lt!867517))) (c!377969 (Concat!11608 lt!867526 EmptyExpr!6972)))))))

(declare-fun b!2377997 () Bool)

(declare-fun e!1517010 () Bool)

(declare-fun e!1517007 () Bool)

(assert (=> b!2377997 (= e!1517010 e!1517007)))

(declare-fun c!377980 () Bool)

(assert (=> b!2377997 (= c!377980 (is-EmptyLang!6972 (Concat!11608 lt!867526 EmptyExpr!6972)))))

(declare-fun b!2377998 () Bool)

(declare-fun lt!867572 () Bool)

(assert (=> b!2377998 (= e!1517007 (not lt!867572))))

(declare-fun d!696255 () Bool)

(assert (=> d!696255 e!1517010))

(declare-fun c!377981 () Bool)

(assert (=> d!696255 (= c!377981 (is-EmptyExpr!6972 (Concat!11608 lt!867526 EmptyExpr!6972)))))

(assert (=> d!696255 (= lt!867572 e!1517011)))

(declare-fun c!377982 () Bool)

(assert (=> d!696255 (= c!377982 (isEmpty!16028 (++!6927 (_1!16445 lt!867517) (_2!16445 lt!867517))))))

(assert (=> d!696255 (validRegex!2697 (Concat!11608 lt!867526 EmptyExpr!6972))))

(assert (=> d!696255 (= (matchR!3089 (Concat!11608 lt!867526 EmptyExpr!6972) (++!6927 (_1!16445 lt!867517) (_2!16445 lt!867517))) lt!867572)))

(declare-fun bm!144458 () Bool)

(assert (=> bm!144458 (= call!144463 (isEmpty!16028 (++!6927 (_1!16445 lt!867517) (_2!16445 lt!867517))))))

(declare-fun b!2377999 () Bool)

(declare-fun e!1517008 () Bool)

(assert (=> b!2377999 (= e!1517008 (= (head!5179 (++!6927 (_1!16445 lt!867517) (_2!16445 lt!867517))) (c!377969 (Concat!11608 lt!867526 EmptyExpr!6972))))))

(declare-fun b!2378000 () Bool)

(declare-fun res!1009774 () Bool)

(assert (=> b!2378000 (=> (not res!1009774) (not e!1517008))))

(assert (=> b!2378000 (= res!1009774 (not call!144463))))

(declare-fun b!2378001 () Bool)

(declare-fun nullable!2022 (Regex!6972) Bool)

(assert (=> b!2378001 (= e!1517011 (nullable!2022 (Concat!11608 lt!867526 EmptyExpr!6972)))))

(declare-fun b!2378002 () Bool)

(declare-fun res!1009778 () Bool)

(assert (=> b!2378002 (=> (not res!1009778) (not e!1517008))))

(assert (=> b!2378002 (= res!1009778 (isEmpty!16028 (tail!3449 (++!6927 (_1!16445 lt!867517) (_2!16445 lt!867517)))))))

(declare-fun b!2378003 () Bool)

(assert (=> b!2378003 (= e!1517010 (= lt!867572 call!144463))))

(declare-fun b!2378004 () Bool)

(declare-fun e!1517005 () Bool)

(assert (=> b!2378004 (= e!1517005 e!1517006)))

(declare-fun res!1009777 () Bool)

(assert (=> b!2378004 (=> (not res!1009777) (not e!1517006))))

(assert (=> b!2378004 (= res!1009777 (not lt!867572))))

(declare-fun b!2378005 () Bool)

(declare-fun res!1009771 () Bool)

(assert (=> b!2378005 (=> res!1009771 e!1517005)))

(assert (=> b!2378005 (= res!1009771 (not (is-ElementMatch!6972 (Concat!11608 lt!867526 EmptyExpr!6972))))))

(assert (=> b!2378005 (= e!1517007 e!1517005)))

(declare-fun b!2378006 () Bool)

(declare-fun res!1009772 () Bool)

(assert (=> b!2378006 (=> res!1009772 e!1517005)))

(assert (=> b!2378006 (= res!1009772 e!1517008)))

(declare-fun res!1009776 () Bool)

(assert (=> b!2378006 (=> (not res!1009776) (not e!1517008))))

(assert (=> b!2378006 (= res!1009776 lt!867572)))

(assert (= (and d!696255 c!377982) b!2378001))

(assert (= (and d!696255 (not c!377982)) b!2377993))

(assert (= (and d!696255 c!377981) b!2378003))

(assert (= (and d!696255 (not c!377981)) b!2377997))

(assert (= (and b!2377997 c!377980) b!2377998))

(assert (= (and b!2377997 (not c!377980)) b!2378005))

(assert (= (and b!2378005 (not res!1009771)) b!2378006))

(assert (= (and b!2378006 res!1009776) b!2378000))

(assert (= (and b!2378000 res!1009774) b!2378002))

(assert (= (and b!2378002 res!1009778) b!2377999))

(assert (= (and b!2378006 (not res!1009772)) b!2378004))

(assert (= (and b!2378004 res!1009777) b!2377994))

(assert (= (and b!2377994 (not res!1009775)) b!2377995))

(assert (= (and b!2377995 (not res!1009773)) b!2377996))

(assert (= (or b!2378003 b!2377994 b!2378000) bm!144458))

(assert (=> b!2378002 m!2782831))

(declare-fun m!2782887 () Bool)

(assert (=> b!2378002 m!2782887))

(assert (=> b!2378002 m!2782887))

(declare-fun m!2782889 () Bool)

(assert (=> b!2378002 m!2782889))

(assert (=> d!696255 m!2782831))

(declare-fun m!2782891 () Bool)

(assert (=> d!696255 m!2782891))

(declare-fun m!2782893 () Bool)

(assert (=> d!696255 m!2782893))

(declare-fun m!2782895 () Bool)

(assert (=> b!2378001 m!2782895))

(assert (=> b!2377993 m!2782831))

(declare-fun m!2782897 () Bool)

(assert (=> b!2377993 m!2782897))

(assert (=> b!2377993 m!2782897))

(declare-fun m!2782899 () Bool)

(assert (=> b!2377993 m!2782899))

(assert (=> b!2377993 m!2782831))

(assert (=> b!2377993 m!2782887))

(assert (=> b!2377993 m!2782899))

(assert (=> b!2377993 m!2782887))

(declare-fun m!2782901 () Bool)

(assert (=> b!2377993 m!2782901))

(assert (=> b!2377996 m!2782831))

(assert (=> b!2377996 m!2782897))

(assert (=> bm!144458 m!2782831))

(assert (=> bm!144458 m!2782891))

(assert (=> b!2377995 m!2782831))

(assert (=> b!2377995 m!2782887))

(assert (=> b!2377995 m!2782887))

(assert (=> b!2377995 m!2782889))

(assert (=> b!2377999 m!2782831))

(assert (=> b!2377999 m!2782897))

(assert (=> b!2377892 d!696255))

(declare-fun b!2378017 () Bool)

(declare-fun res!1009784 () Bool)

(declare-fun e!1517017 () Bool)

(assert (=> b!2378017 (=> (not res!1009784) (not e!1517017))))

(declare-fun lt!867575 () List!28182)

(declare-fun size!22159 (List!28182) Int)

(assert (=> b!2378017 (= res!1009784 (= (size!22159 lt!867575) (+ (size!22159 (_1!16445 lt!867517)) (size!22159 (_2!16445 lt!867517)))))))

(declare-fun b!2378016 () Bool)

(declare-fun e!1517016 () List!28182)

(assert (=> b!2378016 (= e!1517016 (Cons!28084 (h!33485 (_1!16445 lt!867517)) (++!6927 (t!208159 (_1!16445 lt!867517)) (_2!16445 lt!867517))))))

(declare-fun d!696259 () Bool)

(assert (=> d!696259 e!1517017))

(declare-fun res!1009783 () Bool)

(assert (=> d!696259 (=> (not res!1009783) (not e!1517017))))

(declare-fun content!3821 (List!28182) (Set C!14102))

(assert (=> d!696259 (= res!1009783 (= (content!3821 lt!867575) (set.union (content!3821 (_1!16445 lt!867517)) (content!3821 (_2!16445 lt!867517)))))))

(assert (=> d!696259 (= lt!867575 e!1517016)))

(declare-fun c!377985 () Bool)

(assert (=> d!696259 (= c!377985 (is-Nil!28084 (_1!16445 lt!867517)))))

(assert (=> d!696259 (= (++!6927 (_1!16445 lt!867517) (_2!16445 lt!867517)) lt!867575)))

(declare-fun b!2378015 () Bool)

(assert (=> b!2378015 (= e!1517016 (_2!16445 lt!867517))))

(declare-fun b!2378018 () Bool)

(assert (=> b!2378018 (= e!1517017 (or (not (= (_2!16445 lt!867517) Nil!28084)) (= lt!867575 (_1!16445 lt!867517))))))

(assert (= (and d!696259 c!377985) b!2378015))

(assert (= (and d!696259 (not c!377985)) b!2378016))

(assert (= (and d!696259 res!1009783) b!2378017))

(assert (= (and b!2378017 res!1009784) b!2378018))

(declare-fun m!2782903 () Bool)

(assert (=> b!2378017 m!2782903))

(declare-fun m!2782905 () Bool)

(assert (=> b!2378017 m!2782905))

(declare-fun m!2782907 () Bool)

(assert (=> b!2378017 m!2782907))

(declare-fun m!2782909 () Bool)

(assert (=> b!2378016 m!2782909))

(declare-fun m!2782911 () Bool)

(assert (=> d!696259 m!2782911))

(declare-fun m!2782913 () Bool)

(assert (=> d!696259 m!2782913))

(declare-fun m!2782915 () Bool)

(assert (=> d!696259 m!2782915))

(assert (=> b!2377892 d!696259))

(declare-fun d!696265 () Bool)

(declare-fun res!1009789 () Bool)

(declare-fun e!1517022 () Bool)

(assert (=> d!696265 (=> res!1009789 e!1517022)))

(assert (=> d!696265 (= res!1009789 (is-Nil!28085 lt!867519))))

(assert (=> d!696265 (= (forall!5606 lt!867519 lambda!88432) e!1517022)))

(declare-fun b!2378023 () Bool)

(declare-fun e!1517023 () Bool)

(assert (=> b!2378023 (= e!1517022 e!1517023)))

(declare-fun res!1009790 () Bool)

(assert (=> b!2378023 (=> (not res!1009790) (not e!1517023))))

(declare-fun dynLambda!12089 (Int Regex!6972) Bool)

(assert (=> b!2378023 (= res!1009790 (dynLambda!12089 lambda!88432 (h!33486 lt!867519)))))

(declare-fun b!2378024 () Bool)

(assert (=> b!2378024 (= e!1517023 (forall!5606 (t!208160 lt!867519) lambda!88432))))

(assert (= (and d!696265 (not res!1009789)) b!2378023))

(assert (= (and b!2378023 res!1009790) b!2378024))

(declare-fun b_lambda!74019 () Bool)

(assert (=> (not b_lambda!74019) (not b!2378023)))

(declare-fun m!2782917 () Bool)

(assert (=> b!2378023 m!2782917))

(declare-fun m!2782919 () Bool)

(assert (=> b!2378024 m!2782919))

(assert (=> b!2377882 d!696265))

(declare-fun d!696267 () Bool)

(declare-fun isEmpty!16029 (Option!5515) Bool)

(assert (=> d!696267 (= (isDefined!4343 lt!867515) (not (isEmpty!16029 lt!867515)))))

(declare-fun bs!461678 () Bool)

(assert (= bs!461678 d!696267))

(declare-fun m!2782921 () Bool)

(assert (=> bs!461678 m!2782921))

(assert (=> b!2377882 d!696267))

(declare-fun b!2378071 () Bool)

(declare-fun e!1517050 () Option!5515)

(assert (=> b!2378071 (= e!1517050 (Some!5514 (tuple2!27809 Nil!28084 s!9460)))))

(declare-fun b!2378072 () Bool)

(declare-fun lt!867584 () Unit!40983)

(declare-fun lt!867582 () Unit!40983)

(assert (=> b!2378072 (= lt!867584 lt!867582)))

(assert (=> b!2378072 (= (++!6927 (++!6927 Nil!28084 (Cons!28084 (h!33485 s!9460) Nil!28084)) (t!208159 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!569 (List!28182 C!14102 List!28182 List!28182) Unit!40983)

(assert (=> b!2378072 (= lt!867582 (lemmaMoveElementToOtherListKeepsConcatEq!569 Nil!28084 (h!33485 s!9460) (t!208159 s!9460) s!9460))))

(declare-fun e!1517052 () Option!5515)

(assert (=> b!2378072 (= e!1517052 (findConcatSeparation!623 lt!867526 EmptyExpr!6972 (++!6927 Nil!28084 (Cons!28084 (h!33485 s!9460) Nil!28084)) (t!208159 s!9460) s!9460))))

(declare-fun d!696269 () Bool)

(declare-fun e!1517054 () Bool)

(assert (=> d!696269 e!1517054))

(declare-fun res!1009814 () Bool)

(assert (=> d!696269 (=> res!1009814 e!1517054)))

(declare-fun e!1517053 () Bool)

(assert (=> d!696269 (= res!1009814 e!1517053)))

(declare-fun res!1009815 () Bool)

(assert (=> d!696269 (=> (not res!1009815) (not e!1517053))))

(declare-fun lt!867583 () Option!5515)

(assert (=> d!696269 (= res!1009815 (isDefined!4343 lt!867583))))

(assert (=> d!696269 (= lt!867583 e!1517050)))

(declare-fun c!377999 () Bool)

(declare-fun e!1517051 () Bool)

(assert (=> d!696269 (= c!377999 e!1517051)))

(declare-fun res!1009816 () Bool)

(assert (=> d!696269 (=> (not res!1009816) (not e!1517051))))

(assert (=> d!696269 (= res!1009816 (matchR!3089 lt!867526 Nil!28084))))

(assert (=> d!696269 (validRegex!2697 lt!867526)))

(assert (=> d!696269 (= (findConcatSeparation!623 lt!867526 EmptyExpr!6972 Nil!28084 s!9460 s!9460) lt!867583)))

(declare-fun b!2378073 () Bool)

(assert (=> b!2378073 (= e!1517052 None!5514)))

(declare-fun b!2378074 () Bool)

(assert (=> b!2378074 (= e!1517053 (= (++!6927 (_1!16445 (get!8557 lt!867583)) (_2!16445 (get!8557 lt!867583))) s!9460))))

(declare-fun b!2378075 () Bool)

(assert (=> b!2378075 (= e!1517050 e!1517052)))

(declare-fun c!377998 () Bool)

(assert (=> b!2378075 (= c!377998 (is-Nil!28084 s!9460))))

(declare-fun b!2378076 () Bool)

(declare-fun res!1009817 () Bool)

(assert (=> b!2378076 (=> (not res!1009817) (not e!1517053))))

(assert (=> b!2378076 (= res!1009817 (matchR!3089 lt!867526 (_1!16445 (get!8557 lt!867583))))))

(declare-fun b!2378077 () Bool)

(assert (=> b!2378077 (= e!1517051 (matchR!3089 EmptyExpr!6972 s!9460))))

(declare-fun b!2378078 () Bool)

(assert (=> b!2378078 (= e!1517054 (not (isDefined!4343 lt!867583)))))

(declare-fun b!2378079 () Bool)

(declare-fun res!1009813 () Bool)

(assert (=> b!2378079 (=> (not res!1009813) (not e!1517053))))

(assert (=> b!2378079 (= res!1009813 (matchR!3089 EmptyExpr!6972 (_2!16445 (get!8557 lt!867583))))))

(assert (= (and d!696269 res!1009816) b!2378077))

(assert (= (and d!696269 c!377999) b!2378071))

(assert (= (and d!696269 (not c!377999)) b!2378075))

(assert (= (and b!2378075 c!377998) b!2378073))

(assert (= (and b!2378075 (not c!377998)) b!2378072))

(assert (= (and d!696269 res!1009815) b!2378076))

(assert (= (and b!2378076 res!1009817) b!2378079))

(assert (= (and b!2378079 res!1009813) b!2378074))

(assert (= (and d!696269 (not res!1009814)) b!2378078))

(declare-fun m!2782923 () Bool)

(assert (=> b!2378079 m!2782923))

(declare-fun m!2782925 () Bool)

(assert (=> b!2378079 m!2782925))

(assert (=> b!2378074 m!2782923))

(declare-fun m!2782927 () Bool)

(assert (=> b!2378074 m!2782927))

(assert (=> b!2378076 m!2782923))

(declare-fun m!2782929 () Bool)

(assert (=> b!2378076 m!2782929))

(declare-fun m!2782931 () Bool)

(assert (=> b!2378078 m!2782931))

(declare-fun m!2782933 () Bool)

(assert (=> b!2378072 m!2782933))

(assert (=> b!2378072 m!2782933))

(declare-fun m!2782935 () Bool)

(assert (=> b!2378072 m!2782935))

(declare-fun m!2782937 () Bool)

(assert (=> b!2378072 m!2782937))

(assert (=> b!2378072 m!2782933))

(declare-fun m!2782939 () Bool)

(assert (=> b!2378072 m!2782939))

(assert (=> d!696269 m!2782931))

(declare-fun m!2782941 () Bool)

(assert (=> d!696269 m!2782941))

(assert (=> d!696269 m!2782885))

(declare-fun m!2782943 () Bool)

(assert (=> b!2378077 m!2782943))

(assert (=> b!2377882 d!696269))

(declare-fun b!2378084 () Bool)

(declare-fun e!1517063 () Bool)

(assert (=> b!2378084 (= e!1517063 (matchR!3089 (derivativeStep!1680 lt!867526 (head!5179 s!9460)) (tail!3449 s!9460)))))

(declare-fun b!2378085 () Bool)

(declare-fun e!1517058 () Bool)

(declare-fun e!1517061 () Bool)

(assert (=> b!2378085 (= e!1517058 e!1517061)))

(declare-fun res!1009826 () Bool)

(assert (=> b!2378085 (=> res!1009826 e!1517061)))

(declare-fun call!144464 () Bool)

(assert (=> b!2378085 (= res!1009826 call!144464)))

(declare-fun b!2378086 () Bool)

(declare-fun res!1009824 () Bool)

(assert (=> b!2378086 (=> res!1009824 e!1517061)))

(assert (=> b!2378086 (= res!1009824 (not (isEmpty!16028 (tail!3449 s!9460))))))

(declare-fun b!2378087 () Bool)

(assert (=> b!2378087 (= e!1517061 (not (= (head!5179 s!9460) (c!377969 lt!867526))))))

(declare-fun b!2378088 () Bool)

(declare-fun e!1517062 () Bool)

(declare-fun e!1517059 () Bool)

(assert (=> b!2378088 (= e!1517062 e!1517059)))

(declare-fun c!378000 () Bool)

(assert (=> b!2378088 (= c!378000 (is-EmptyLang!6972 lt!867526))))

(declare-fun b!2378089 () Bool)

(declare-fun lt!867585 () Bool)

(assert (=> b!2378089 (= e!1517059 (not lt!867585))))

(declare-fun d!696271 () Bool)

(assert (=> d!696271 e!1517062))

(declare-fun c!378001 () Bool)

(assert (=> d!696271 (= c!378001 (is-EmptyExpr!6972 lt!867526))))

(assert (=> d!696271 (= lt!867585 e!1517063)))

(declare-fun c!378002 () Bool)

(assert (=> d!696271 (= c!378002 (isEmpty!16028 s!9460))))

(assert (=> d!696271 (validRegex!2697 lt!867526)))

(assert (=> d!696271 (= (matchR!3089 lt!867526 s!9460) lt!867585)))

(declare-fun bm!144459 () Bool)

(assert (=> bm!144459 (= call!144464 (isEmpty!16028 s!9460))))

(declare-fun b!2378090 () Bool)

(declare-fun e!1517060 () Bool)

(assert (=> b!2378090 (= e!1517060 (= (head!5179 s!9460) (c!377969 lt!867526)))))

(declare-fun b!2378091 () Bool)

(declare-fun res!1009825 () Bool)

(assert (=> b!2378091 (=> (not res!1009825) (not e!1517060))))

(assert (=> b!2378091 (= res!1009825 (not call!144464))))

(declare-fun b!2378092 () Bool)

(assert (=> b!2378092 (= e!1517063 (nullable!2022 lt!867526))))

(declare-fun b!2378093 () Bool)

(declare-fun res!1009829 () Bool)

(assert (=> b!2378093 (=> (not res!1009829) (not e!1517060))))

(assert (=> b!2378093 (= res!1009829 (isEmpty!16028 (tail!3449 s!9460)))))

(declare-fun b!2378094 () Bool)

(assert (=> b!2378094 (= e!1517062 (= lt!867585 call!144464))))

(declare-fun b!2378095 () Bool)

(declare-fun e!1517057 () Bool)

(assert (=> b!2378095 (= e!1517057 e!1517058)))

(declare-fun res!1009828 () Bool)

(assert (=> b!2378095 (=> (not res!1009828) (not e!1517058))))

(assert (=> b!2378095 (= res!1009828 (not lt!867585))))

(declare-fun b!2378096 () Bool)

(declare-fun res!1009822 () Bool)

(assert (=> b!2378096 (=> res!1009822 e!1517057)))

(assert (=> b!2378096 (= res!1009822 (not (is-ElementMatch!6972 lt!867526)))))

(assert (=> b!2378096 (= e!1517059 e!1517057)))

(declare-fun b!2378097 () Bool)

(declare-fun res!1009823 () Bool)

(assert (=> b!2378097 (=> res!1009823 e!1517057)))

(assert (=> b!2378097 (= res!1009823 e!1517060)))

(declare-fun res!1009827 () Bool)

(assert (=> b!2378097 (=> (not res!1009827) (not e!1517060))))

(assert (=> b!2378097 (= res!1009827 lt!867585)))

(assert (= (and d!696271 c!378002) b!2378092))

(assert (= (and d!696271 (not c!378002)) b!2378084))

(assert (= (and d!696271 c!378001) b!2378094))

(assert (= (and d!696271 (not c!378001)) b!2378088))

(assert (= (and b!2378088 c!378000) b!2378089))

(assert (= (and b!2378088 (not c!378000)) b!2378096))

(assert (= (and b!2378096 (not res!1009822)) b!2378097))

(assert (= (and b!2378097 res!1009827) b!2378091))

(assert (= (and b!2378091 res!1009825) b!2378093))

(assert (= (and b!2378093 res!1009829) b!2378090))

(assert (= (and b!2378097 (not res!1009823)) b!2378095))

(assert (= (and b!2378095 res!1009828) b!2378085))

(assert (= (and b!2378085 (not res!1009826)) b!2378086))

(assert (= (and b!2378086 (not res!1009824)) b!2378087))

(assert (= (or b!2378094 b!2378085 b!2378091) bm!144459))

(declare-fun m!2782945 () Bool)

(assert (=> b!2378093 m!2782945))

(assert (=> b!2378093 m!2782945))

(declare-fun m!2782947 () Bool)

(assert (=> b!2378093 m!2782947))

(declare-fun m!2782949 () Bool)

(assert (=> d!696271 m!2782949))

(assert (=> d!696271 m!2782885))

(declare-fun m!2782951 () Bool)

(assert (=> b!2378092 m!2782951))

(declare-fun m!2782953 () Bool)

(assert (=> b!2378084 m!2782953))

(assert (=> b!2378084 m!2782953))

(declare-fun m!2782955 () Bool)

(assert (=> b!2378084 m!2782955))

(assert (=> b!2378084 m!2782945))

(assert (=> b!2378084 m!2782955))

(assert (=> b!2378084 m!2782945))

(declare-fun m!2782957 () Bool)

(assert (=> b!2378084 m!2782957))

(assert (=> b!2378087 m!2782953))

(assert (=> bm!144459 m!2782949))

(assert (=> b!2378086 m!2782945))

(assert (=> b!2378086 m!2782945))

(assert (=> b!2378086 m!2782947))

(assert (=> b!2378090 m!2782953))

(assert (=> b!2377888 d!696271))

(declare-fun d!696273 () Bool)

(assert (=> d!696273 (= (head!5177 l!9164) (h!33486 l!9164))))

(assert (=> b!2377888 d!696273))

(declare-fun d!696275 () Bool)

(assert (=> d!696275 (= (isDefined!4343 (findConcatSeparation!623 (regOne!14456 r!13927) (regTwo!14456 r!13927) Nil!28084 s!9460 s!9460)) (not (isEmpty!16029 (findConcatSeparation!623 (regOne!14456 r!13927) (regTwo!14456 r!13927) Nil!28084 s!9460 s!9460))))))

(declare-fun bs!461679 () Bool)

(assert (= bs!461679 d!696275))

(assert (=> bs!461679 m!2782793))

(declare-fun m!2782959 () Bool)

(assert (=> bs!461679 m!2782959))

(assert (=> b!2377878 d!696275))

(declare-fun bs!461680 () Bool)

(declare-fun d!696277 () Bool)

(assert (= bs!461680 (and d!696277 b!2377878)))

(declare-fun lambda!88454 () Int)

(assert (=> bs!461680 (= lambda!88454 lambda!88433)))

(assert (=> bs!461680 (not (= lambda!88454 lambda!88434))))

(assert (=> d!696277 true))

(assert (=> d!696277 true))

(assert (=> d!696277 true))

(assert (=> d!696277 (= (isDefined!4343 (findConcatSeparation!623 (regOne!14456 r!13927) (regTwo!14456 r!13927) Nil!28084 s!9460 s!9460)) (Exists!1034 lambda!88454))))

(declare-fun lt!867588 () Unit!40983)

(declare-fun choose!13882 (Regex!6972 Regex!6972 List!28182) Unit!40983)

(assert (=> d!696277 (= lt!867588 (choose!13882 (regOne!14456 r!13927) (regTwo!14456 r!13927) s!9460))))

(assert (=> d!696277 (validRegex!2697 (regOne!14456 r!13927))))

(assert (=> d!696277 (= (lemmaFindConcatSeparationEquivalentToExists!623 (regOne!14456 r!13927) (regTwo!14456 r!13927) s!9460) lt!867588)))

(declare-fun bs!461681 () Bool)

(assert (= bs!461681 d!696277))

(assert (=> bs!461681 m!2782793))

(assert (=> bs!461681 m!2782795))

(declare-fun m!2782961 () Bool)

(assert (=> bs!461681 m!2782961))

(declare-fun m!2782963 () Bool)

(assert (=> bs!461681 m!2782963))

(declare-fun m!2782965 () Bool)

(assert (=> bs!461681 m!2782965))

(assert (=> bs!461681 m!2782793))

(assert (=> b!2377878 d!696277))

(declare-fun bs!461685 () Bool)

(declare-fun d!696279 () Bool)

(assert (= bs!461685 (and d!696279 b!2377878)))

(declare-fun lambda!88461 () Int)

(assert (=> bs!461685 (= lambda!88461 lambda!88433)))

(assert (=> bs!461685 (not (= lambda!88461 lambda!88434))))

(declare-fun bs!461686 () Bool)

(assert (= bs!461686 (and d!696279 d!696277)))

(assert (=> bs!461686 (= lambda!88461 lambda!88454)))

(assert (=> d!696279 true))

(assert (=> d!696279 true))

(assert (=> d!696279 true))

(declare-fun lambda!88462 () Int)

(assert (=> bs!461685 (not (= lambda!88462 lambda!88433))))

(assert (=> bs!461685 (= lambda!88462 lambda!88434)))

(assert (=> bs!461686 (not (= lambda!88462 lambda!88454))))

(declare-fun bs!461687 () Bool)

(assert (= bs!461687 d!696279))

(assert (=> bs!461687 (not (= lambda!88462 lambda!88461))))

(assert (=> d!696279 true))

(assert (=> d!696279 true))

(assert (=> d!696279 true))

(assert (=> d!696279 (= (Exists!1034 lambda!88461) (Exists!1034 lambda!88462))))

(declare-fun lt!867591 () Unit!40983)

(declare-fun choose!13883 (Regex!6972 Regex!6972 List!28182) Unit!40983)

(assert (=> d!696279 (= lt!867591 (choose!13883 (regOne!14456 r!13927) (regTwo!14456 r!13927) s!9460))))

(assert (=> d!696279 (validRegex!2697 (regOne!14456 r!13927))))

(assert (=> d!696279 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!373 (regOne!14456 r!13927) (regTwo!14456 r!13927) s!9460) lt!867591)))

(declare-fun m!2782975 () Bool)

(assert (=> bs!461687 m!2782975))

(declare-fun m!2782977 () Bool)

(assert (=> bs!461687 m!2782977))

(declare-fun m!2782979 () Bool)

(assert (=> bs!461687 m!2782979))

(assert (=> bs!461687 m!2782961))

(assert (=> b!2377878 d!696279))

(declare-fun d!696283 () Bool)

(declare-fun choose!13884 (Int) Bool)

(assert (=> d!696283 (= (Exists!1034 lambda!88434) (choose!13884 lambda!88434))))

(declare-fun bs!461688 () Bool)

(assert (= bs!461688 d!696283))

(declare-fun m!2782981 () Bool)

(assert (=> bs!461688 m!2782981))

(assert (=> b!2377878 d!696283))

(declare-fun d!696285 () Bool)

(assert (=> d!696285 (= (Exists!1034 lambda!88433) (choose!13884 lambda!88433))))

(declare-fun bs!461689 () Bool)

(assert (= bs!461689 d!696285))

(declare-fun m!2782983 () Bool)

(assert (=> bs!461689 m!2782983))

(assert (=> b!2377878 d!696285))

(declare-fun b!2378121 () Bool)

(declare-fun e!1517077 () Option!5515)

(assert (=> b!2378121 (= e!1517077 (Some!5514 (tuple2!27809 Nil!28084 s!9460)))))

(declare-fun b!2378122 () Bool)

(declare-fun lt!867594 () Unit!40983)

(declare-fun lt!867592 () Unit!40983)

(assert (=> b!2378122 (= lt!867594 lt!867592)))

(assert (=> b!2378122 (= (++!6927 (++!6927 Nil!28084 (Cons!28084 (h!33485 s!9460) Nil!28084)) (t!208159 s!9460)) s!9460)))

(assert (=> b!2378122 (= lt!867592 (lemmaMoveElementToOtherListKeepsConcatEq!569 Nil!28084 (h!33485 s!9460) (t!208159 s!9460) s!9460))))

(declare-fun e!1517079 () Option!5515)

(assert (=> b!2378122 (= e!1517079 (findConcatSeparation!623 (regOne!14456 r!13927) (regTwo!14456 r!13927) (++!6927 Nil!28084 (Cons!28084 (h!33485 s!9460) Nil!28084)) (t!208159 s!9460) s!9460))))

(declare-fun d!696287 () Bool)

(declare-fun e!1517081 () Bool)

(assert (=> d!696287 e!1517081))

(declare-fun res!1009846 () Bool)

(assert (=> d!696287 (=> res!1009846 e!1517081)))

(declare-fun e!1517080 () Bool)

(assert (=> d!696287 (= res!1009846 e!1517080)))

(declare-fun res!1009847 () Bool)

(assert (=> d!696287 (=> (not res!1009847) (not e!1517080))))

(declare-fun lt!867593 () Option!5515)

(assert (=> d!696287 (= res!1009847 (isDefined!4343 lt!867593))))

(assert (=> d!696287 (= lt!867593 e!1517077)))

(declare-fun c!378008 () Bool)

(declare-fun e!1517078 () Bool)

(assert (=> d!696287 (= c!378008 e!1517078)))

(declare-fun res!1009848 () Bool)

(assert (=> d!696287 (=> (not res!1009848) (not e!1517078))))

(assert (=> d!696287 (= res!1009848 (matchR!3089 (regOne!14456 r!13927) Nil!28084))))

(assert (=> d!696287 (validRegex!2697 (regOne!14456 r!13927))))

(assert (=> d!696287 (= (findConcatSeparation!623 (regOne!14456 r!13927) (regTwo!14456 r!13927) Nil!28084 s!9460 s!9460) lt!867593)))

(declare-fun b!2378123 () Bool)

(assert (=> b!2378123 (= e!1517079 None!5514)))

(declare-fun b!2378124 () Bool)

(assert (=> b!2378124 (= e!1517080 (= (++!6927 (_1!16445 (get!8557 lt!867593)) (_2!16445 (get!8557 lt!867593))) s!9460))))

(declare-fun b!2378125 () Bool)

(assert (=> b!2378125 (= e!1517077 e!1517079)))

(declare-fun c!378007 () Bool)

(assert (=> b!2378125 (= c!378007 (is-Nil!28084 s!9460))))

(declare-fun b!2378126 () Bool)

(declare-fun res!1009849 () Bool)

(assert (=> b!2378126 (=> (not res!1009849) (not e!1517080))))

(assert (=> b!2378126 (= res!1009849 (matchR!3089 (regOne!14456 r!13927) (_1!16445 (get!8557 lt!867593))))))

(declare-fun b!2378127 () Bool)

(assert (=> b!2378127 (= e!1517078 (matchR!3089 (regTwo!14456 r!13927) s!9460))))

(declare-fun b!2378128 () Bool)

(assert (=> b!2378128 (= e!1517081 (not (isDefined!4343 lt!867593)))))

(declare-fun b!2378129 () Bool)

(declare-fun res!1009845 () Bool)

(assert (=> b!2378129 (=> (not res!1009845) (not e!1517080))))

(assert (=> b!2378129 (= res!1009845 (matchR!3089 (regTwo!14456 r!13927) (_2!16445 (get!8557 lt!867593))))))

(assert (= (and d!696287 res!1009848) b!2378127))

(assert (= (and d!696287 c!378008) b!2378121))

(assert (= (and d!696287 (not c!378008)) b!2378125))

(assert (= (and b!2378125 c!378007) b!2378123))

(assert (= (and b!2378125 (not c!378007)) b!2378122))

(assert (= (and d!696287 res!1009847) b!2378126))

(assert (= (and b!2378126 res!1009849) b!2378129))

(assert (= (and b!2378129 res!1009845) b!2378124))

(assert (= (and d!696287 (not res!1009846)) b!2378128))

(declare-fun m!2782985 () Bool)

(assert (=> b!2378129 m!2782985))

(declare-fun m!2782987 () Bool)

(assert (=> b!2378129 m!2782987))

(assert (=> b!2378124 m!2782985))

(declare-fun m!2782989 () Bool)

(assert (=> b!2378124 m!2782989))

(assert (=> b!2378126 m!2782985))

(declare-fun m!2782991 () Bool)

(assert (=> b!2378126 m!2782991))

(declare-fun m!2782993 () Bool)

(assert (=> b!2378128 m!2782993))

(assert (=> b!2378122 m!2782933))

(assert (=> b!2378122 m!2782933))

(assert (=> b!2378122 m!2782935))

(assert (=> b!2378122 m!2782937))

(assert (=> b!2378122 m!2782933))

(declare-fun m!2782995 () Bool)

(assert (=> b!2378122 m!2782995))

(assert (=> d!696287 m!2782993))

(declare-fun m!2782997 () Bool)

(assert (=> d!696287 m!2782997))

(assert (=> d!696287 m!2782961))

(declare-fun m!2782999 () Bool)

(assert (=> b!2378127 m!2782999))

(assert (=> b!2377878 d!696287))

(declare-fun bs!461690 () Bool)

(declare-fun b!2378195 () Bool)

(assert (= bs!461690 (and b!2378195 b!2377878)))

(declare-fun lambda!88467 () Int)

(assert (=> bs!461690 (not (= lambda!88467 lambda!88434))))

(declare-fun bs!461691 () Bool)

(assert (= bs!461691 (and b!2378195 d!696279)))

(assert (=> bs!461691 (not (= lambda!88467 lambda!88462))))

(assert (=> bs!461690 (not (= lambda!88467 lambda!88433))))

(assert (=> bs!461691 (not (= lambda!88467 lambda!88461))))

(declare-fun bs!461692 () Bool)

(assert (= bs!461692 (and b!2378195 d!696277)))

(assert (=> bs!461692 (not (= lambda!88467 lambda!88454))))

(assert (=> b!2378195 true))

(assert (=> b!2378195 true))

(declare-fun bs!461693 () Bool)

(declare-fun b!2378200 () Bool)

(assert (= bs!461693 (and b!2378200 b!2377878)))

(declare-fun lambda!88468 () Int)

(assert (=> bs!461693 (= lambda!88468 lambda!88434)))

(declare-fun bs!461694 () Bool)

(assert (= bs!461694 (and b!2378200 d!696279)))

(assert (=> bs!461694 (= lambda!88468 lambda!88462)))

(assert (=> bs!461693 (not (= lambda!88468 lambda!88433))))

(declare-fun bs!461695 () Bool)

(assert (= bs!461695 (and b!2378200 b!2378195)))

(assert (=> bs!461695 (not (= lambda!88468 lambda!88467))))

(assert (=> bs!461694 (not (= lambda!88468 lambda!88461))))

(declare-fun bs!461696 () Bool)

(assert (= bs!461696 (and b!2378200 d!696277)))

(assert (=> bs!461696 (not (= lambda!88468 lambda!88454))))

(assert (=> b!2378200 true))

(assert (=> b!2378200 true))

(declare-fun bm!144472 () Bool)

(declare-fun call!144478 () Bool)

(assert (=> bm!144472 (= call!144478 (isEmpty!16028 s!9460))))

(declare-fun b!2378190 () Bool)

(declare-fun res!1009883 () Bool)

(declare-fun e!1517114 () Bool)

(assert (=> b!2378190 (=> res!1009883 e!1517114)))

(assert (=> b!2378190 (= res!1009883 call!144478)))

(declare-fun e!1517120 () Bool)

(assert (=> b!2378190 (= e!1517120 e!1517114)))

(declare-fun b!2378191 () Bool)

(declare-fun e!1517115 () Bool)

(assert (=> b!2378191 (= e!1517115 e!1517120)))

(declare-fun c!378024 () Bool)

(assert (=> b!2378191 (= c!378024 (is-Star!6972 r!13927))))

(declare-fun b!2378192 () Bool)

(declare-fun e!1517119 () Bool)

(assert (=> b!2378192 (= e!1517115 e!1517119)))

(declare-fun res!1009882 () Bool)

(assert (=> b!2378192 (= res!1009882 (matchRSpec!821 (regOne!14457 r!13927) s!9460))))

(assert (=> b!2378192 (=> res!1009882 e!1517119)))

(declare-fun b!2378193 () Bool)

(declare-fun c!378026 () Bool)

(assert (=> b!2378193 (= c!378026 (is-Union!6972 r!13927))))

(declare-fun e!1517116 () Bool)

(assert (=> b!2378193 (= e!1517116 e!1517115)))

(declare-fun d!696289 () Bool)

(declare-fun c!378023 () Bool)

(assert (=> d!696289 (= c!378023 (is-EmptyExpr!6972 r!13927))))

(declare-fun e!1517118 () Bool)

(assert (=> d!696289 (= (matchRSpec!821 r!13927 s!9460) e!1517118)))

(declare-fun b!2378194 () Bool)

(assert (=> b!2378194 (= e!1517118 call!144478)))

(declare-fun bm!144473 () Bool)

(declare-fun call!144477 () Bool)

(assert (=> bm!144473 (= call!144477 (Exists!1034 (ite c!378024 lambda!88467 lambda!88468)))))

(assert (=> b!2378195 (= e!1517114 call!144477)))

(declare-fun b!2378196 () Bool)

(assert (=> b!2378196 (= e!1517116 (= s!9460 (Cons!28084 (c!377969 r!13927) Nil!28084)))))

(declare-fun b!2378197 () Bool)

(declare-fun c!378025 () Bool)

(assert (=> b!2378197 (= c!378025 (is-ElementMatch!6972 r!13927))))

(declare-fun e!1517117 () Bool)

(assert (=> b!2378197 (= e!1517117 e!1517116)))

(declare-fun b!2378198 () Bool)

(assert (=> b!2378198 (= e!1517119 (matchRSpec!821 (regTwo!14457 r!13927) s!9460))))

(declare-fun b!2378199 () Bool)

(assert (=> b!2378199 (= e!1517118 e!1517117)))

(declare-fun res!1009884 () Bool)

(assert (=> b!2378199 (= res!1009884 (not (is-EmptyLang!6972 r!13927)))))

(assert (=> b!2378199 (=> (not res!1009884) (not e!1517117))))

(assert (=> b!2378200 (= e!1517120 call!144477)))

(assert (= (and d!696289 c!378023) b!2378194))

(assert (= (and d!696289 (not c!378023)) b!2378199))

(assert (= (and b!2378199 res!1009884) b!2378197))

(assert (= (and b!2378197 c!378025) b!2378196))

(assert (= (and b!2378197 (not c!378025)) b!2378193))

(assert (= (and b!2378193 c!378026) b!2378192))

(assert (= (and b!2378193 (not c!378026)) b!2378191))

(assert (= (and b!2378192 (not res!1009882)) b!2378198))

(assert (= (and b!2378191 c!378024) b!2378190))

(assert (= (and b!2378191 (not c!378024)) b!2378200))

(assert (= (and b!2378190 (not res!1009883)) b!2378195))

(assert (= (or b!2378195 b!2378200) bm!144473))

(assert (= (or b!2378194 b!2378190) bm!144472))

(assert (=> bm!144472 m!2782949))

(declare-fun m!2783001 () Bool)

(assert (=> b!2378192 m!2783001))

(declare-fun m!2783003 () Bool)

(assert (=> bm!144473 m!2783003))

(declare-fun m!2783005 () Bool)

(assert (=> b!2378198 m!2783005))

(assert (=> b!2377889 d!696289))

(declare-fun b!2378201 () Bool)

(declare-fun e!1517127 () Bool)

(assert (=> b!2378201 (= e!1517127 (matchR!3089 (derivativeStep!1680 r!13927 (head!5179 s!9460)) (tail!3449 s!9460)))))

(declare-fun b!2378202 () Bool)

(declare-fun e!1517122 () Bool)

(declare-fun e!1517125 () Bool)

(assert (=> b!2378202 (= e!1517122 e!1517125)))

(declare-fun res!1009889 () Bool)

(assert (=> b!2378202 (=> res!1009889 e!1517125)))

(declare-fun call!144479 () Bool)

(assert (=> b!2378202 (= res!1009889 call!144479)))

(declare-fun b!2378203 () Bool)

(declare-fun res!1009887 () Bool)

(assert (=> b!2378203 (=> res!1009887 e!1517125)))

(assert (=> b!2378203 (= res!1009887 (not (isEmpty!16028 (tail!3449 s!9460))))))

(declare-fun b!2378204 () Bool)

(assert (=> b!2378204 (= e!1517125 (not (= (head!5179 s!9460) (c!377969 r!13927))))))

(declare-fun b!2378205 () Bool)

(declare-fun e!1517126 () Bool)

(declare-fun e!1517123 () Bool)

(assert (=> b!2378205 (= e!1517126 e!1517123)))

(declare-fun c!378027 () Bool)

(assert (=> b!2378205 (= c!378027 (is-EmptyLang!6972 r!13927))))

(declare-fun b!2378206 () Bool)

(declare-fun lt!867597 () Bool)

(assert (=> b!2378206 (= e!1517123 (not lt!867597))))

(declare-fun d!696291 () Bool)

(assert (=> d!696291 e!1517126))

(declare-fun c!378028 () Bool)

(assert (=> d!696291 (= c!378028 (is-EmptyExpr!6972 r!13927))))

(assert (=> d!696291 (= lt!867597 e!1517127)))

(declare-fun c!378029 () Bool)

(assert (=> d!696291 (= c!378029 (isEmpty!16028 s!9460))))

(assert (=> d!696291 (validRegex!2697 r!13927)))

(assert (=> d!696291 (= (matchR!3089 r!13927 s!9460) lt!867597)))

(declare-fun bm!144474 () Bool)

(assert (=> bm!144474 (= call!144479 (isEmpty!16028 s!9460))))

(declare-fun b!2378207 () Bool)

(declare-fun e!1517124 () Bool)

(assert (=> b!2378207 (= e!1517124 (= (head!5179 s!9460) (c!377969 r!13927)))))

(declare-fun b!2378208 () Bool)

(declare-fun res!1009888 () Bool)

(assert (=> b!2378208 (=> (not res!1009888) (not e!1517124))))

(assert (=> b!2378208 (= res!1009888 (not call!144479))))

(declare-fun b!2378209 () Bool)

(assert (=> b!2378209 (= e!1517127 (nullable!2022 r!13927))))

(declare-fun b!2378210 () Bool)

(declare-fun res!1009892 () Bool)

(assert (=> b!2378210 (=> (not res!1009892) (not e!1517124))))

(assert (=> b!2378210 (= res!1009892 (isEmpty!16028 (tail!3449 s!9460)))))

(declare-fun b!2378211 () Bool)

(assert (=> b!2378211 (= e!1517126 (= lt!867597 call!144479))))

(declare-fun b!2378212 () Bool)

(declare-fun e!1517121 () Bool)

(assert (=> b!2378212 (= e!1517121 e!1517122)))

(declare-fun res!1009891 () Bool)

(assert (=> b!2378212 (=> (not res!1009891) (not e!1517122))))

(assert (=> b!2378212 (= res!1009891 (not lt!867597))))

(declare-fun b!2378213 () Bool)

(declare-fun res!1009885 () Bool)

(assert (=> b!2378213 (=> res!1009885 e!1517121)))

(assert (=> b!2378213 (= res!1009885 (not (is-ElementMatch!6972 r!13927)))))

(assert (=> b!2378213 (= e!1517123 e!1517121)))

(declare-fun b!2378214 () Bool)

(declare-fun res!1009886 () Bool)

(assert (=> b!2378214 (=> res!1009886 e!1517121)))

(assert (=> b!2378214 (= res!1009886 e!1517124)))

(declare-fun res!1009890 () Bool)

(assert (=> b!2378214 (=> (not res!1009890) (not e!1517124))))

(assert (=> b!2378214 (= res!1009890 lt!867597)))

(assert (= (and d!696291 c!378029) b!2378209))

(assert (= (and d!696291 (not c!378029)) b!2378201))

(assert (= (and d!696291 c!378028) b!2378211))

(assert (= (and d!696291 (not c!378028)) b!2378205))

(assert (= (and b!2378205 c!378027) b!2378206))

(assert (= (and b!2378205 (not c!378027)) b!2378213))

(assert (= (and b!2378213 (not res!1009885)) b!2378214))

(assert (= (and b!2378214 res!1009890) b!2378208))

(assert (= (and b!2378208 res!1009888) b!2378210))

(assert (= (and b!2378210 res!1009892) b!2378207))

(assert (= (and b!2378214 (not res!1009886)) b!2378212))

(assert (= (and b!2378212 res!1009891) b!2378202))

(assert (= (and b!2378202 (not res!1009889)) b!2378203))

(assert (= (and b!2378203 (not res!1009887)) b!2378204))

(assert (= (or b!2378211 b!2378202 b!2378208) bm!144474))

(assert (=> b!2378210 m!2782945))

(assert (=> b!2378210 m!2782945))

(assert (=> b!2378210 m!2782947))

(assert (=> d!696291 m!2782949))

(declare-fun m!2783007 () Bool)

(assert (=> d!696291 m!2783007))

(declare-fun m!2783009 () Bool)

(assert (=> b!2378209 m!2783009))

(assert (=> b!2378201 m!2782953))

(assert (=> b!2378201 m!2782953))

(declare-fun m!2783011 () Bool)

(assert (=> b!2378201 m!2783011))

(assert (=> b!2378201 m!2782945))

(assert (=> b!2378201 m!2783011))

(assert (=> b!2378201 m!2782945))

(declare-fun m!2783013 () Bool)

(assert (=> b!2378201 m!2783013))

(assert (=> b!2378204 m!2782953))

(assert (=> bm!144474 m!2782949))

(assert (=> b!2378203 m!2782945))

(assert (=> b!2378203 m!2782945))

(assert (=> b!2378203 m!2782947))

(assert (=> b!2378207 m!2782953))

(assert (=> b!2377889 d!696291))

(declare-fun d!696293 () Bool)

(assert (=> d!696293 (= (matchR!3089 r!13927 s!9460) (matchRSpec!821 r!13927 s!9460))))

(declare-fun lt!867601 () Unit!40983)

(declare-fun choose!13885 (Regex!6972 List!28182) Unit!40983)

(assert (=> d!696293 (= lt!867601 (choose!13885 r!13927 s!9460))))

(assert (=> d!696293 (validRegex!2697 r!13927)))

(assert (=> d!696293 (= (mainMatchTheorem!821 r!13927 s!9460) lt!867601)))

(declare-fun bs!461697 () Bool)

(assert (= bs!461697 d!696293))

(assert (=> bs!461697 m!2782821))

(assert (=> bs!461697 m!2782819))

(declare-fun m!2783029 () Bool)

(assert (=> bs!461697 m!2783029))

(assert (=> bs!461697 m!2783007))

(assert (=> b!2377889 d!696293))

(declare-fun d!696297 () Bool)

(declare-fun res!1009901 () Bool)

(declare-fun e!1517135 () Bool)

(assert (=> d!696297 (=> res!1009901 e!1517135)))

(assert (=> d!696297 (= res!1009901 (is-Nil!28085 l!9164))))

(assert (=> d!696297 (= (forall!5606 l!9164 lambda!88432) e!1517135)))

(declare-fun b!2378229 () Bool)

(declare-fun e!1517136 () Bool)

(assert (=> b!2378229 (= e!1517135 e!1517136)))

(declare-fun res!1009902 () Bool)

(assert (=> b!2378229 (=> (not res!1009902) (not e!1517136))))

(assert (=> b!2378229 (= res!1009902 (dynLambda!12089 lambda!88432 (h!33486 l!9164)))))

(declare-fun b!2378230 () Bool)

(assert (=> b!2378230 (= e!1517136 (forall!5606 (t!208160 l!9164) lambda!88432))))

(assert (= (and d!696297 (not res!1009901)) b!2378229))

(assert (= (and b!2378229 res!1009902) b!2378230))

(declare-fun b_lambda!74021 () Bool)

(assert (=> (not b_lambda!74021) (not b!2378229)))

(declare-fun m!2783031 () Bool)

(assert (=> b!2378229 m!2783031))

(declare-fun m!2783033 () Bool)

(assert (=> b!2378230 m!2783033))

(assert (=> start!233326 d!696297))

(declare-fun d!696299 () Bool)

(assert (=> d!696299 (= (isEmpty!16026 l!9164) (is-Nil!28085 l!9164))))

(assert (=> b!2377890 d!696299))

(declare-fun bs!461699 () Bool)

(declare-fun d!696301 () Bool)

(assert (= bs!461699 (and d!696301 start!233326)))

(declare-fun lambda!88471 () Int)

(assert (=> bs!461699 (= lambda!88471 lambda!88432)))

(declare-fun b!2378265 () Bool)

(declare-fun e!1517157 () Regex!6972)

(assert (=> b!2378265 (= e!1517157 EmptyExpr!6972)))

(declare-fun b!2378266 () Bool)

(declare-fun e!1517161 () Bool)

(declare-fun e!1517160 () Bool)

(assert (=> b!2378266 (= e!1517161 e!1517160)))

(declare-fun c!378047 () Bool)

(assert (=> b!2378266 (= c!378047 (isEmpty!16026 (tail!3447 l!9164)))))

(declare-fun b!2378268 () Bool)

(declare-fun e!1517158 () Bool)

(assert (=> b!2378268 (= e!1517158 e!1517161)))

(declare-fun c!378046 () Bool)

(assert (=> b!2378268 (= c!378046 (isEmpty!16026 l!9164))))

(declare-fun b!2378269 () Bool)

(declare-fun lt!867608 () Regex!6972)

(declare-fun isEmptyExpr!42 (Regex!6972) Bool)

(assert (=> b!2378269 (= e!1517161 (isEmptyExpr!42 lt!867608))))

(declare-fun b!2378270 () Bool)

(declare-fun isConcat!42 (Regex!6972) Bool)

(assert (=> b!2378270 (= e!1517160 (isConcat!42 lt!867608))))

(declare-fun b!2378271 () Bool)

(declare-fun e!1517156 () Regex!6972)

(assert (=> b!2378271 (= e!1517156 (h!33486 l!9164))))

(declare-fun b!2378272 () Bool)

(assert (=> b!2378272 (= e!1517157 (Concat!11608 (h!33486 l!9164) (generalisedConcat!73 (t!208160 l!9164))))))

(declare-fun b!2378267 () Bool)

(assert (=> b!2378267 (= e!1517160 (= lt!867608 (head!5177 l!9164)))))

(assert (=> d!696301 e!1517158))

(declare-fun res!1009916 () Bool)

(assert (=> d!696301 (=> (not res!1009916) (not e!1517158))))

(assert (=> d!696301 (= res!1009916 (validRegex!2697 lt!867608))))

(assert (=> d!696301 (= lt!867608 e!1517156)))

(declare-fun c!378044 () Bool)

(declare-fun e!1517159 () Bool)

(assert (=> d!696301 (= c!378044 e!1517159)))

(declare-fun res!1009915 () Bool)

(assert (=> d!696301 (=> (not res!1009915) (not e!1517159))))

(assert (=> d!696301 (= res!1009915 (is-Cons!28085 l!9164))))

(assert (=> d!696301 (forall!5606 l!9164 lambda!88471)))

(assert (=> d!696301 (= (generalisedConcat!73 l!9164) lt!867608)))

(declare-fun b!2378273 () Bool)

(assert (=> b!2378273 (= e!1517159 (isEmpty!16026 (t!208160 l!9164)))))

(declare-fun b!2378274 () Bool)

(assert (=> b!2378274 (= e!1517156 e!1517157)))

(declare-fun c!378045 () Bool)

(assert (=> b!2378274 (= c!378045 (is-Cons!28085 l!9164))))

(assert (= (and d!696301 res!1009915) b!2378273))

(assert (= (and d!696301 c!378044) b!2378271))

(assert (= (and d!696301 (not c!378044)) b!2378274))

(assert (= (and b!2378274 c!378045) b!2378272))

(assert (= (and b!2378274 (not c!378045)) b!2378265))

(assert (= (and d!696301 res!1009916) b!2378268))

(assert (= (and b!2378268 c!378046) b!2378269))

(assert (= (and b!2378268 (not c!378046)) b!2378266))

(assert (= (and b!2378266 c!378047) b!2378267))

(assert (= (and b!2378266 (not c!378047)) b!2378270))

(assert (=> b!2378266 m!2782807))

(assert (=> b!2378266 m!2782807))

(declare-fun m!2783045 () Bool)

(assert (=> b!2378266 m!2783045))

(assert (=> b!2378267 m!2782789))

(declare-fun m!2783047 () Bool)

(assert (=> b!2378270 m!2783047))

(declare-fun m!2783049 () Bool)

(assert (=> b!2378269 m!2783049))

(declare-fun m!2783051 () Bool)

(assert (=> b!2378273 m!2783051))

(declare-fun m!2783053 () Bool)

(assert (=> b!2378272 m!2783053))

(assert (=> b!2378268 m!2782791))

(declare-fun m!2783055 () Bool)

(assert (=> d!696301 m!2783055))

(declare-fun m!2783057 () Bool)

(assert (=> d!696301 m!2783057))

(assert (=> b!2377879 d!696301))

(declare-fun bs!461700 () Bool)

(declare-fun d!696309 () Bool)

(assert (= bs!461700 (and d!696309 start!233326)))

(declare-fun lambda!88472 () Int)

(assert (=> bs!461700 (= lambda!88472 lambda!88432)))

(declare-fun bs!461701 () Bool)

(assert (= bs!461701 (and d!696309 d!696301)))

(assert (=> bs!461701 (= lambda!88472 lambda!88471)))

(declare-fun b!2378279 () Bool)

(declare-fun e!1517167 () Regex!6972)

(assert (=> b!2378279 (= e!1517167 EmptyExpr!6972)))

(declare-fun b!2378280 () Bool)

(declare-fun e!1517171 () Bool)

(declare-fun e!1517170 () Bool)

(assert (=> b!2378280 (= e!1517171 e!1517170)))

(declare-fun c!378051 () Bool)

(assert (=> b!2378280 (= c!378051 (isEmpty!16026 (tail!3447 lt!867519)))))

(declare-fun b!2378282 () Bool)

(declare-fun e!1517168 () Bool)

(assert (=> b!2378282 (= e!1517168 e!1517171)))

(declare-fun c!378050 () Bool)

(assert (=> b!2378282 (= c!378050 (isEmpty!16026 lt!867519))))

(declare-fun b!2378283 () Bool)

(declare-fun lt!867609 () Regex!6972)

(assert (=> b!2378283 (= e!1517171 (isEmptyExpr!42 lt!867609))))

(declare-fun b!2378284 () Bool)

(assert (=> b!2378284 (= e!1517170 (isConcat!42 lt!867609))))

(declare-fun b!2378285 () Bool)

(declare-fun e!1517166 () Regex!6972)

(assert (=> b!2378285 (= e!1517166 (h!33486 lt!867519))))

(declare-fun b!2378286 () Bool)

(assert (=> b!2378286 (= e!1517167 (Concat!11608 (h!33486 lt!867519) (generalisedConcat!73 (t!208160 lt!867519))))))

(declare-fun b!2378281 () Bool)

(assert (=> b!2378281 (= e!1517170 (= lt!867609 (head!5177 lt!867519)))))

(assert (=> d!696309 e!1517168))

(declare-fun res!1009922 () Bool)

(assert (=> d!696309 (=> (not res!1009922) (not e!1517168))))

(assert (=> d!696309 (= res!1009922 (validRegex!2697 lt!867609))))

(assert (=> d!696309 (= lt!867609 e!1517166)))

(declare-fun c!378048 () Bool)

(declare-fun e!1517169 () Bool)

(assert (=> d!696309 (= c!378048 e!1517169)))

(declare-fun res!1009921 () Bool)

(assert (=> d!696309 (=> (not res!1009921) (not e!1517169))))

(assert (=> d!696309 (= res!1009921 (is-Cons!28085 lt!867519))))

(assert (=> d!696309 (forall!5606 lt!867519 lambda!88472)))

(assert (=> d!696309 (= (generalisedConcat!73 lt!867519) lt!867609)))

(declare-fun b!2378287 () Bool)

(assert (=> b!2378287 (= e!1517169 (isEmpty!16026 (t!208160 lt!867519)))))

(declare-fun b!2378288 () Bool)

(assert (=> b!2378288 (= e!1517166 e!1517167)))

(declare-fun c!378049 () Bool)

(assert (=> b!2378288 (= c!378049 (is-Cons!28085 lt!867519))))

(assert (= (and d!696309 res!1009921) b!2378287))

(assert (= (and d!696309 c!378048) b!2378285))

(assert (= (and d!696309 (not c!378048)) b!2378288))

(assert (= (and b!2378288 c!378049) b!2378286))

(assert (= (and b!2378288 (not c!378049)) b!2378279))

(assert (= (and d!696309 res!1009922) b!2378282))

(assert (= (and b!2378282 c!378050) b!2378283))

(assert (= (and b!2378282 (not c!378050)) b!2378280))

(assert (= (and b!2378280 c!378051) b!2378281))

(assert (= (and b!2378280 (not c!378051)) b!2378284))

(declare-fun m!2783059 () Bool)

(assert (=> b!2378280 m!2783059))

(assert (=> b!2378280 m!2783059))

(declare-fun m!2783061 () Bool)

(assert (=> b!2378280 m!2783061))

(declare-fun m!2783063 () Bool)

(assert (=> b!2378281 m!2783063))

(declare-fun m!2783065 () Bool)

(assert (=> b!2378284 m!2783065))

(declare-fun m!2783067 () Bool)

(assert (=> b!2378283 m!2783067))

(declare-fun m!2783069 () Bool)

(assert (=> b!2378287 m!2783069))

(declare-fun m!2783071 () Bool)

(assert (=> b!2378286 m!2783071))

(assert (=> b!2378282 m!2782805))

(declare-fun m!2783073 () Bool)

(assert (=> d!696309 m!2783073))

(declare-fun m!2783075 () Bool)

(assert (=> d!696309 m!2783075))

(assert (=> b!2377880 d!696309))

(declare-fun d!696311 () Bool)

(assert (=> d!696311 (= (isEmpty!16026 lt!867519) (is-Nil!28085 lt!867519))))

(assert (=> b!2377885 d!696311))

(declare-fun d!696313 () Bool)

(assert (=> d!696313 (= (tail!3447 l!9164) (t!208160 l!9164))))

(assert (=> b!2377885 d!696313))

(declare-fun b!2378303 () Bool)

(declare-fun e!1517176 () Bool)

(declare-fun tp!759481 () Bool)

(assert (=> b!2378303 (= e!1517176 tp!759481)))

(declare-fun b!2378304 () Bool)

(declare-fun tp!759480 () Bool)

(declare-fun tp!759478 () Bool)

(assert (=> b!2378304 (= e!1517176 (and tp!759480 tp!759478))))

(assert (=> b!2377886 (= tp!759441 e!1517176)))

(declare-fun b!2378301 () Bool)

(assert (=> b!2378301 (= e!1517176 tp_is_empty!11357)))

(declare-fun b!2378302 () Bool)

(declare-fun tp!759479 () Bool)

(declare-fun tp!759482 () Bool)

(assert (=> b!2378302 (= e!1517176 (and tp!759479 tp!759482))))

(assert (= (and b!2377886 (is-ElementMatch!6972 (reg!7301 r!13927))) b!2378301))

(assert (= (and b!2377886 (is-Concat!11608 (reg!7301 r!13927))) b!2378302))

(assert (= (and b!2377886 (is-Star!6972 (reg!7301 r!13927))) b!2378303))

(assert (= (and b!2377886 (is-Union!6972 (reg!7301 r!13927))) b!2378304))

(declare-fun b!2378307 () Bool)

(declare-fun e!1517177 () Bool)

(declare-fun tp!759486 () Bool)

(assert (=> b!2378307 (= e!1517177 tp!759486)))

(declare-fun b!2378308 () Bool)

(declare-fun tp!759485 () Bool)

(declare-fun tp!759483 () Bool)

(assert (=> b!2378308 (= e!1517177 (and tp!759485 tp!759483))))

(assert (=> b!2377891 (= tp!759438 e!1517177)))

(declare-fun b!2378305 () Bool)

(assert (=> b!2378305 (= e!1517177 tp_is_empty!11357)))

(declare-fun b!2378306 () Bool)

(declare-fun tp!759484 () Bool)

(declare-fun tp!759487 () Bool)

(assert (=> b!2378306 (= e!1517177 (and tp!759484 tp!759487))))

(assert (= (and b!2377891 (is-ElementMatch!6972 (regOne!14457 r!13927))) b!2378305))

(assert (= (and b!2377891 (is-Concat!11608 (regOne!14457 r!13927))) b!2378306))

(assert (= (and b!2377891 (is-Star!6972 (regOne!14457 r!13927))) b!2378307))

(assert (= (and b!2377891 (is-Union!6972 (regOne!14457 r!13927))) b!2378308))

(declare-fun b!2378311 () Bool)

(declare-fun e!1517178 () Bool)

(declare-fun tp!759491 () Bool)

(assert (=> b!2378311 (= e!1517178 tp!759491)))

(declare-fun b!2378312 () Bool)

(declare-fun tp!759490 () Bool)

(declare-fun tp!759488 () Bool)

(assert (=> b!2378312 (= e!1517178 (and tp!759490 tp!759488))))

(assert (=> b!2377891 (= tp!759439 e!1517178)))

(declare-fun b!2378309 () Bool)

(assert (=> b!2378309 (= e!1517178 tp_is_empty!11357)))

(declare-fun b!2378310 () Bool)

(declare-fun tp!759489 () Bool)

(declare-fun tp!759492 () Bool)

(assert (=> b!2378310 (= e!1517178 (and tp!759489 tp!759492))))

(assert (= (and b!2377891 (is-ElementMatch!6972 (regTwo!14457 r!13927))) b!2378309))

(assert (= (and b!2377891 (is-Concat!11608 (regTwo!14457 r!13927))) b!2378310))

(assert (= (and b!2377891 (is-Star!6972 (regTwo!14457 r!13927))) b!2378311))

(assert (= (and b!2377891 (is-Union!6972 (regTwo!14457 r!13927))) b!2378312))

(declare-fun b!2378317 () Bool)

(declare-fun e!1517181 () Bool)

(declare-fun tp!759495 () Bool)

(assert (=> b!2378317 (= e!1517181 (and tp_is_empty!11357 tp!759495))))

(assert (=> b!2377881 (= tp!759440 e!1517181)))

(assert (= (and b!2377881 (is-Cons!28084 (t!208159 s!9460))) b!2378317))

(declare-fun b!2378320 () Bool)

(declare-fun e!1517182 () Bool)

(declare-fun tp!759499 () Bool)

(assert (=> b!2378320 (= e!1517182 tp!759499)))

(declare-fun b!2378321 () Bool)

(declare-fun tp!759498 () Bool)

(declare-fun tp!759496 () Bool)

(assert (=> b!2378321 (= e!1517182 (and tp!759498 tp!759496))))

(assert (=> b!2377877 (= tp!759443 e!1517182)))

(declare-fun b!2378318 () Bool)

(assert (=> b!2378318 (= e!1517182 tp_is_empty!11357)))

(declare-fun b!2378319 () Bool)

(declare-fun tp!759497 () Bool)

(declare-fun tp!759500 () Bool)

(assert (=> b!2378319 (= e!1517182 (and tp!759497 tp!759500))))

(assert (= (and b!2377877 (is-ElementMatch!6972 (h!33486 l!9164))) b!2378318))

(assert (= (and b!2377877 (is-Concat!11608 (h!33486 l!9164))) b!2378319))

(assert (= (and b!2377877 (is-Star!6972 (h!33486 l!9164))) b!2378320))

(assert (= (and b!2377877 (is-Union!6972 (h!33486 l!9164))) b!2378321))

(declare-fun b!2378326 () Bool)

(declare-fun e!1517185 () Bool)

(declare-fun tp!759505 () Bool)

(declare-fun tp!759506 () Bool)

(assert (=> b!2378326 (= e!1517185 (and tp!759505 tp!759506))))

(assert (=> b!2377877 (= tp!759437 e!1517185)))

(assert (= (and b!2377877 (is-Cons!28085 (t!208160 l!9164))) b!2378326))

(declare-fun b!2378329 () Bool)

(declare-fun e!1517186 () Bool)

(declare-fun tp!759510 () Bool)

(assert (=> b!2378329 (= e!1517186 tp!759510)))

(declare-fun b!2378330 () Bool)

(declare-fun tp!759509 () Bool)

(declare-fun tp!759507 () Bool)

(assert (=> b!2378330 (= e!1517186 (and tp!759509 tp!759507))))

(assert (=> b!2377884 (= tp!759442 e!1517186)))

(declare-fun b!2378327 () Bool)

(assert (=> b!2378327 (= e!1517186 tp_is_empty!11357)))

(declare-fun b!2378328 () Bool)

(declare-fun tp!759508 () Bool)

(declare-fun tp!759511 () Bool)

(assert (=> b!2378328 (= e!1517186 (and tp!759508 tp!759511))))

(assert (= (and b!2377884 (is-ElementMatch!6972 (regOne!14456 r!13927))) b!2378327))

(assert (= (and b!2377884 (is-Concat!11608 (regOne!14456 r!13927))) b!2378328))

(assert (= (and b!2377884 (is-Star!6972 (regOne!14456 r!13927))) b!2378329))

(assert (= (and b!2377884 (is-Union!6972 (regOne!14456 r!13927))) b!2378330))

(declare-fun b!2378333 () Bool)

(declare-fun e!1517187 () Bool)

(declare-fun tp!759515 () Bool)

(assert (=> b!2378333 (= e!1517187 tp!759515)))

(declare-fun b!2378334 () Bool)

(declare-fun tp!759514 () Bool)

(declare-fun tp!759512 () Bool)

(assert (=> b!2378334 (= e!1517187 (and tp!759514 tp!759512))))

(assert (=> b!2377884 (= tp!759436 e!1517187)))

(declare-fun b!2378331 () Bool)

(assert (=> b!2378331 (= e!1517187 tp_is_empty!11357)))

(declare-fun b!2378332 () Bool)

(declare-fun tp!759513 () Bool)

(declare-fun tp!759516 () Bool)

(assert (=> b!2378332 (= e!1517187 (and tp!759513 tp!759516))))

(assert (= (and b!2377884 (is-ElementMatch!6972 (regTwo!14456 r!13927))) b!2378331))

(assert (= (and b!2377884 (is-Concat!11608 (regTwo!14456 r!13927))) b!2378332))

(assert (= (and b!2377884 (is-Star!6972 (regTwo!14456 r!13927))) b!2378333))

(assert (= (and b!2377884 (is-Union!6972 (regTwo!14456 r!13927))) b!2378334))

(declare-fun b_lambda!74025 () Bool)

(assert (= b_lambda!74019 (or start!233326 b_lambda!74025)))

(declare-fun bs!461702 () Bool)

(declare-fun d!696319 () Bool)

(assert (= bs!461702 (and d!696319 start!233326)))

(assert (=> bs!461702 (= (dynLambda!12089 lambda!88432 (h!33486 lt!867519)) (validRegex!2697 (h!33486 lt!867519)))))

(declare-fun m!2783081 () Bool)

(assert (=> bs!461702 m!2783081))

(assert (=> b!2378023 d!696319))

(declare-fun b_lambda!74027 () Bool)

(assert (= b_lambda!74021 (or start!233326 b_lambda!74027)))

(declare-fun bs!461703 () Bool)

(declare-fun d!696321 () Bool)

(assert (= bs!461703 (and d!696321 start!233326)))

(assert (=> bs!461703 (= (dynLambda!12089 lambda!88432 (h!33486 l!9164)) (validRegex!2697 (h!33486 l!9164)))))

(declare-fun m!2783083 () Bool)

(assert (=> bs!461703 m!2783083))

(assert (=> b!2378229 d!696321))

(push 1)

(assert (not b!2378269))

(assert (not b!2378087))

(assert (not b!2378122))

(assert (not b!2377993))

(assert (not b!2378284))

(assert (not d!696271))

(assert (not b!2378210))

(assert (not b!2378077))

(assert (not b!2378001))

(assert (not b!2378207))

(assert (not d!696267))

(assert (not d!696287))

(assert (not b!2378129))

(assert (not b!2378204))

(assert (not b!2378304))

(assert (not b_lambda!74025))

(assert (not b!2378002))

(assert (not b!2378192))

(assert (not b!2378084))

(assert (not d!696269))

(assert (not b!2378286))

(assert (not b!2378203))

(assert (not b!2377996))

(assert (not b!2378326))

(assert (not b!2378281))

(assert (not d!696277))

(assert (not b!2378320))

(assert (not b!2378332))

(assert (not b!2378302))

(assert (not d!696309))

(assert (not b!2378321))

(assert (not b!2378086))

(assert (not b!2378124))

(assert (not bm!144459))

(assert (not b!2378074))

(assert (not b!2378308))

(assert (not b!2378079))

(assert (not b!2378230))

(assert (not b!2378072))

(assert (not b!2378017))

(assert (not b!2378272))

(assert (not b!2378307))

(assert (not b!2378319))

(assert (not b!2378329))

(assert (not b!2378268))

(assert (not b!2378303))

(assert (not b!2377995))

(assert (not d!696259))

(assert (not b!2378312))

(assert (not b!2378287))

(assert (not b!2378334))

(assert (not d!696279))

(assert (not b!2378267))

(assert (not b!2378266))

(assert (not b!2378093))

(assert (not b!2378280))

(assert (not bm!144473))

(assert (not d!696293))

(assert (not b!2378283))

(assert (not b!2378306))

(assert (not b!2378310))

(assert (not d!696275))

(assert (not b!2377999))

(assert (not d!696255))

(assert (not b!2378128))

(assert (not b!2378198))

(assert (not b!2378273))

(assert (not b!2378209))

(assert (not b!2378126))

(assert (not b!2378092))

(assert tp_is_empty!11357)

(assert (not bs!461702))

(assert (not b!2378076))

(assert (not d!696301))

(assert (not b_lambda!74027))

(assert (not b!2378201))

(assert (not b!2378282))

(assert (not b!2378024))

(assert (not d!696285))

(assert (not bm!144474))

(assert (not d!696253))

(assert (not b!2378090))

(assert (not b!2378016))

(assert (not b!2378330))

(assert (not d!696291))

(assert (not b!2378328))

(assert (not b!2378127))

(assert (not d!696283))

(assert (not b!2378270))

(assert (not bm!144458))

(assert (not b!2378317))

(assert (not bs!461703))

(assert (not b!2378333))

(assert (not b!2378078))

(assert (not b!2378311))

(assert (not bm!144472))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

