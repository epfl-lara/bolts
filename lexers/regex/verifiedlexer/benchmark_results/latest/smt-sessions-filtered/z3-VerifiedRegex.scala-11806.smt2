; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664670 () Bool)

(assert start!664670)

(declare-fun b!6900164 () Bool)

(assert (=> b!6900164 true))

(assert (=> b!6900164 true))

(assert (=> b!6900164 true))

(declare-fun lambda!391595 () Int)

(declare-fun lambda!391594 () Int)

(assert (=> b!6900164 (not (= lambda!391595 lambda!391594))))

(assert (=> b!6900164 true))

(assert (=> b!6900164 true))

(assert (=> b!6900164 true))

(declare-fun bs!1841754 () Bool)

(declare-fun b!6900150 () Bool)

(assert (= bs!1841754 (and b!6900150 b!6900164)))

(declare-fun lambda!391596 () Int)

(declare-datatypes ((C!33988 0))(
  ( (C!33989 (val!26696 Int)) )
))
(declare-datatypes ((Regex!16859 0))(
  ( (ElementMatch!16859 (c!1282117 C!33988)) (Concat!25704 (regOne!34230 Regex!16859) (regTwo!34230 Regex!16859)) (EmptyExpr!16859) (Star!16859 (reg!17188 Regex!16859)) (EmptyLang!16859) (Union!16859 (regOne!34231 Regex!16859) (regTwo!34231 Regex!16859)) )
))
(declare-fun r1!6342 () Regex!16859)

(declare-fun r2!6280 () Regex!16859)

(declare-fun lt!2465867 () Regex!16859)

(declare-fun r3!135 () Regex!16859)

(declare-datatypes ((List!66616 0))(
  ( (Nil!66492) (Cons!66492 (h!72940 C!33988) (t!380359 List!66616)) )
))
(declare-datatypes ((tuple2!67452 0))(
  ( (tuple2!67453 (_1!37029 List!66616) (_2!37029 List!66616)) )
))
(declare-fun lt!2465849 () tuple2!67452)

(declare-fun s!14361 () List!66616)

(assert (=> bs!1841754 (= (and (= (_2!37029 lt!2465849) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2465867)) (= lambda!391596 lambda!391594))))

(assert (=> bs!1841754 (not (= lambda!391596 lambda!391595))))

(assert (=> b!6900150 true))

(assert (=> b!6900150 true))

(assert (=> b!6900150 true))

(declare-fun lambda!391597 () Int)

(assert (=> bs!1841754 (not (= lambda!391597 lambda!391594))))

(assert (=> bs!1841754 (= (and (= (_2!37029 lt!2465849) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2465867)) (= lambda!391597 lambda!391595))))

(assert (=> b!6900150 (not (= lambda!391597 lambda!391596))))

(assert (=> b!6900150 true))

(assert (=> b!6900150 true))

(assert (=> b!6900150 true))

(declare-fun bs!1841755 () Bool)

(declare-fun b!6900158 () Bool)

(assert (= bs!1841755 (and b!6900158 b!6900164)))

(declare-fun lt!2465866 () List!66616)

(declare-fun lambda!391598 () Int)

(assert (=> bs!1841755 (= (and (= lt!2465866 s!14361) (= r2!6280 lt!2465867)) (= lambda!391598 lambda!391594))))

(assert (=> bs!1841755 (not (= lambda!391598 lambda!391595))))

(declare-fun bs!1841756 () Bool)

(assert (= bs!1841756 (and b!6900158 b!6900150)))

(assert (=> bs!1841756 (= (and (= lt!2465866 (_2!37029 lt!2465849)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391598 lambda!391596))))

(assert (=> bs!1841756 (not (= lambda!391598 lambda!391597))))

(assert (=> b!6900158 true))

(assert (=> b!6900158 true))

(assert (=> b!6900158 true))

(declare-fun lambda!391599 () Int)

(assert (=> bs!1841756 (= (and (= lt!2465866 (_2!37029 lt!2465849)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391599 lambda!391597))))

(assert (=> bs!1841756 (not (= lambda!391599 lambda!391596))))

(assert (=> b!6900158 (not (= lambda!391599 lambda!391598))))

(assert (=> bs!1841755 (= (and (= lt!2465866 s!14361) (= r2!6280 lt!2465867)) (= lambda!391599 lambda!391595))))

(assert (=> bs!1841755 (not (= lambda!391599 lambda!391594))))

(assert (=> b!6900158 true))

(assert (=> b!6900158 true))

(assert (=> b!6900158 true))

(declare-fun bs!1841757 () Bool)

(declare-fun b!6900167 () Bool)

(assert (= bs!1841757 (and b!6900167 b!6900158)))

(declare-fun lambda!391600 () Int)

(assert (=> bs!1841757 (not (= lambda!391600 lambda!391599))))

(declare-fun bs!1841758 () Bool)

(assert (= bs!1841758 (and b!6900167 b!6900150)))

(assert (=> bs!1841758 (not (= lambda!391600 lambda!391597))))

(declare-fun lt!2465860 () Regex!16859)

(assert (=> bs!1841758 (= (and (= s!14361 (_2!37029 lt!2465849)) (= lt!2465860 r2!6280)) (= lambda!391600 lambda!391596))))

(assert (=> bs!1841757 (= (and (= s!14361 lt!2465866) (= lt!2465860 r1!6342) (= r3!135 r2!6280)) (= lambda!391600 lambda!391598))))

(declare-fun bs!1841759 () Bool)

(assert (= bs!1841759 (and b!6900167 b!6900164)))

(assert (=> bs!1841759 (not (= lambda!391600 lambda!391595))))

(assert (=> bs!1841759 (= (and (= lt!2465860 r1!6342) (= r3!135 lt!2465867)) (= lambda!391600 lambda!391594))))

(assert (=> b!6900167 true))

(assert (=> b!6900167 true))

(assert (=> b!6900167 true))

(declare-fun e!4155567 () Bool)

(declare-fun e!4155568 () Bool)

(assert (=> b!6900150 (= e!4155567 e!4155568)))

(declare-fun res!2813660 () Bool)

(assert (=> b!6900150 (=> res!2813660 e!4155568)))

(declare-fun lt!2465854 () tuple2!67452)

(declare-fun matchR!9004 (Regex!16859 List!66616) Bool)

(assert (=> b!6900150 (= res!2813660 (not (matchR!9004 r2!6280 (_1!37029 lt!2465854))))))

(declare-datatypes ((Option!16638 0))(
  ( (None!16637) (Some!16637 (v!52909 tuple2!67452)) )
))
(declare-fun lt!2465859 () Option!16638)

(declare-fun get!23239 (Option!16638) tuple2!67452)

(assert (=> b!6900150 (= lt!2465854 (get!23239 lt!2465859))))

(declare-fun Exists!3867 (Int) Bool)

(assert (=> b!6900150 (= (Exists!3867 lambda!391596) (Exists!3867 lambda!391597))))

(declare-datatypes ((Unit!160438 0))(
  ( (Unit!160439) )
))
(declare-fun lt!2465846 () Unit!160438)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2340 (Regex!16859 Regex!16859 List!66616) Unit!160438)

(assert (=> b!6900150 (= lt!2465846 (lemmaExistCutMatchRandMatchRSpecEquivalent!2340 r2!6280 r3!135 (_2!37029 lt!2465849)))))

(declare-fun isDefined!13341 (Option!16638) Bool)

(assert (=> b!6900150 (= (isDefined!13341 lt!2465859) (Exists!3867 lambda!391596))))

(declare-fun findConcatSeparation!3052 (Regex!16859 Regex!16859 List!66616 List!66616 List!66616) Option!16638)

(assert (=> b!6900150 (= lt!2465859 (findConcatSeparation!3052 r2!6280 r3!135 Nil!66492 (_2!37029 lt!2465849) (_2!37029 lt!2465849)))))

(declare-fun lt!2465856 () Unit!160438)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2814 (Regex!16859 Regex!16859 List!66616) Unit!160438)

(assert (=> b!6900150 (= lt!2465856 (lemmaFindConcatSeparationEquivalentToExists!2814 r2!6280 r3!135 (_2!37029 lt!2465849)))))

(declare-fun matchRSpec!3922 (Regex!16859 List!66616) Bool)

(assert (=> b!6900150 (matchRSpec!3922 lt!2465867 (_2!37029 lt!2465849))))

(declare-fun lt!2465858 () Unit!160438)

(declare-fun mainMatchTheorem!3922 (Regex!16859 List!66616) Unit!160438)

(assert (=> b!6900150 (= lt!2465858 (mainMatchTheorem!3922 lt!2465867 (_2!37029 lt!2465849)))))

(declare-fun b!6900151 () Bool)

(declare-fun e!4155572 () Bool)

(declare-fun tp!1899737 () Bool)

(declare-fun tp!1899747 () Bool)

(assert (=> b!6900151 (= e!4155572 (and tp!1899737 tp!1899747))))

(declare-fun b!6900152 () Bool)

(declare-fun e!4155569 () Bool)

(declare-fun tp_is_empty!42943 () Bool)

(assert (=> b!6900152 (= e!4155569 tp_is_empty!42943)))

(declare-fun b!6900153 () Bool)

(declare-fun res!2813658 () Bool)

(assert (=> b!6900153 (=> res!2813658 e!4155568)))

(assert (=> b!6900153 (= res!2813658 (not (matchR!9004 r3!135 (_2!37029 lt!2465854))))))

(declare-fun b!6900154 () Bool)

(declare-fun res!2813652 () Bool)

(declare-fun e!4155566 () Bool)

(assert (=> b!6900154 (=> (not res!2813652) (not e!4155566))))

(declare-fun validRegex!8567 (Regex!16859) Bool)

(assert (=> b!6900154 (= res!2813652 (validRegex!8567 r3!135))))

(declare-fun b!6900155 () Bool)

(declare-fun res!2813651 () Bool)

(assert (=> b!6900155 (=> res!2813651 e!4155567)))

(assert (=> b!6900155 (= res!2813651 (not (matchR!9004 lt!2465867 (_2!37029 lt!2465849))))))

(declare-fun b!6900156 () Bool)

(declare-fun tp!1899738 () Bool)

(declare-fun tp!1899745 () Bool)

(assert (=> b!6900156 (= e!4155569 (and tp!1899738 tp!1899745))))

(declare-fun b!6900157 () Bool)

(declare-fun e!4155576 () Bool)

(assert (=> b!6900157 (= e!4155576 tp_is_empty!42943)))

(declare-fun e!4155570 () Bool)

(declare-fun e!4155573 () Bool)

(assert (=> b!6900158 (= e!4155570 e!4155573)))

(declare-fun res!2813659 () Bool)

(assert (=> b!6900158 (=> res!2813659 e!4155573)))

(declare-fun lt!2465845 () List!66616)

(declare-fun lt!2465853 () Bool)

(assert (=> b!6900158 (= res!2813659 (or (not lt!2465853) (not (= lt!2465845 s!14361))))))

(declare-fun lt!2465839 () Bool)

(assert (=> b!6900158 lt!2465839))

(declare-fun lt!2465852 () Unit!160438)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!60 (Regex!16859 Regex!16859 List!66616 List!66616 List!66616 List!66616 List!66616) Unit!160438)

(assert (=> b!6900158 (= lt!2465852 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!60 r1!6342 r2!6280 (_1!37029 lt!2465849) (_1!37029 lt!2465854) lt!2465866 Nil!66492 lt!2465866))))

(assert (=> b!6900158 (= (Exists!3867 lambda!391598) (Exists!3867 lambda!391599))))

(declare-fun lt!2465841 () Unit!160438)

(assert (=> b!6900158 (= lt!2465841 (lemmaExistCutMatchRandMatchRSpecEquivalent!2340 r1!6342 r2!6280 lt!2465866))))

(assert (=> b!6900158 (= lt!2465839 (Exists!3867 lambda!391598))))

(assert (=> b!6900158 (= lt!2465839 (isDefined!13341 (findConcatSeparation!3052 r1!6342 r2!6280 Nil!66492 lt!2465866 lt!2465866)))))

(declare-fun lt!2465843 () Unit!160438)

(assert (=> b!6900158 (= lt!2465843 (lemmaFindConcatSeparationEquivalentToExists!2814 r1!6342 r2!6280 lt!2465866))))

(assert (=> b!6900158 (= lt!2465853 (matchRSpec!3922 lt!2465860 lt!2465866))))

(assert (=> b!6900158 (= lt!2465853 (matchR!9004 lt!2465860 lt!2465866))))

(declare-fun lt!2465836 () Unit!160438)

(assert (=> b!6900158 (= lt!2465836 (mainMatchTheorem!3922 lt!2465860 lt!2465866))))

(declare-fun lt!2465864 () List!66616)

(assert (=> b!6900158 (= lt!2465845 lt!2465864)))

(declare-fun ++!14912 (List!66616 List!66616) List!66616)

(assert (=> b!6900158 (= lt!2465845 (++!14912 lt!2465866 (_2!37029 lt!2465854)))))

(assert (=> b!6900158 (= lt!2465866 (++!14912 (_1!37029 lt!2465849) (_1!37029 lt!2465854)))))

(declare-fun lt!2465855 () Unit!160438)

(declare-fun lemmaConcatAssociativity!2992 (List!66616 List!66616 List!66616) Unit!160438)

(assert (=> b!6900158 (= lt!2465855 (lemmaConcatAssociativity!2992 (_1!37029 lt!2465849) (_1!37029 lt!2465854) (_2!37029 lt!2465854)))))

(declare-fun b!6900159 () Bool)

(declare-fun e!4155571 () Bool)

(declare-fun tp!1899741 () Bool)

(assert (=> b!6900159 (= e!4155571 (and tp_is_empty!42943 tp!1899741))))

(declare-fun b!6900160 () Bool)

(declare-fun tp!1899746 () Bool)

(declare-fun tp!1899740 () Bool)

(assert (=> b!6900160 (= e!4155569 (and tp!1899746 tp!1899740))))

(declare-fun b!6900162 () Bool)

(declare-fun tp!1899750 () Bool)

(declare-fun tp!1899749 () Bool)

(assert (=> b!6900162 (= e!4155572 (and tp!1899750 tp!1899749))))

(declare-fun b!6900163 () Bool)

(declare-fun tp!1899748 () Bool)

(assert (=> b!6900163 (= e!4155576 tp!1899748)))

(declare-fun e!4155574 () Bool)

(assert (=> b!6900164 (= e!4155574 e!4155567)))

(declare-fun res!2813650 () Bool)

(assert (=> b!6900164 (=> res!2813650 e!4155567)))

(declare-fun lt!2465844 () Bool)

(assert (=> b!6900164 (= res!2813650 (not lt!2465844))))

(assert (=> b!6900164 (= lt!2465844 (matchRSpec!3922 r1!6342 (_1!37029 lt!2465849)))))

(assert (=> b!6900164 (= lt!2465844 (matchR!9004 r1!6342 (_1!37029 lt!2465849)))))

(declare-fun lt!2465861 () Unit!160438)

(assert (=> b!6900164 (= lt!2465861 (mainMatchTheorem!3922 r1!6342 (_1!37029 lt!2465849)))))

(declare-fun lt!2465857 () Option!16638)

(assert (=> b!6900164 (= lt!2465849 (get!23239 lt!2465857))))

(assert (=> b!6900164 (= (Exists!3867 lambda!391594) (Exists!3867 lambda!391595))))

(declare-fun lt!2465851 () Unit!160438)

(assert (=> b!6900164 (= lt!2465851 (lemmaExistCutMatchRandMatchRSpecEquivalent!2340 r1!6342 lt!2465867 s!14361))))

(assert (=> b!6900164 (Exists!3867 lambda!391594)))

(declare-fun lt!2465862 () Unit!160438)

(assert (=> b!6900164 (= lt!2465862 (lemmaFindConcatSeparationEquivalentToExists!2814 r1!6342 lt!2465867 s!14361))))

(declare-fun b!6900165 () Bool)

(declare-fun tp!1899744 () Bool)

(declare-fun tp!1899751 () Bool)

(assert (=> b!6900165 (= e!4155576 (and tp!1899744 tp!1899751))))

(declare-fun b!6900166 () Bool)

(declare-fun res!2813657 () Bool)

(assert (=> b!6900166 (=> (not res!2813657) (not e!4155566))))

(assert (=> b!6900166 (= res!2813657 (validRegex!8567 r2!6280))))

(assert (=> b!6900167 (= e!4155573 true)))

(assert (=> b!6900167 (Exists!3867 lambda!391600)))

(declare-fun lt!2465848 () Unit!160438)

(assert (=> b!6900167 (= lt!2465848 (lemmaFindConcatSeparationEquivalentToExists!2814 lt!2465860 r3!135 s!14361))))

(assert (=> b!6900167 (isDefined!13341 (findConcatSeparation!3052 lt!2465860 r3!135 Nil!66492 s!14361 s!14361))))

(declare-fun lt!2465850 () Unit!160438)

(assert (=> b!6900167 (= lt!2465850 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!60 lt!2465860 r3!135 lt!2465866 (_2!37029 lt!2465854) s!14361 Nil!66492 s!14361))))

(declare-fun b!6900168 () Bool)

(assert (=> b!6900168 (= e!4155568 e!4155570)))

(declare-fun res!2813653 () Bool)

(assert (=> b!6900168 (=> res!2813653 e!4155570)))

(assert (=> b!6900168 (= res!2813653 (not (= lt!2465864 s!14361)))))

(assert (=> b!6900168 (= lt!2465864 (++!14912 (_1!37029 lt!2465849) (++!14912 (_1!37029 lt!2465854) (_2!37029 lt!2465854))))))

(assert (=> b!6900168 (matchRSpec!3922 r3!135 (_2!37029 lt!2465854))))

(declare-fun lt!2465865 () Unit!160438)

(assert (=> b!6900168 (= lt!2465865 (mainMatchTheorem!3922 r3!135 (_2!37029 lt!2465854)))))

(assert (=> b!6900168 (matchRSpec!3922 r2!6280 (_1!37029 lt!2465854))))

(declare-fun lt!2465838 () Unit!160438)

(assert (=> b!6900168 (= lt!2465838 (mainMatchTheorem!3922 r2!6280 (_1!37029 lt!2465854)))))

(declare-fun b!6900169 () Bool)

(declare-fun tp!1899742 () Bool)

(declare-fun tp!1899736 () Bool)

(assert (=> b!6900169 (= e!4155576 (and tp!1899742 tp!1899736))))

(declare-fun b!6900170 () Bool)

(declare-fun tp!1899743 () Bool)

(assert (=> b!6900170 (= e!4155572 tp!1899743)))

(declare-fun b!6900171 () Bool)

(declare-fun e!4155575 () Bool)

(assert (=> b!6900171 (= e!4155566 (not e!4155575))))

(declare-fun res!2813656 () Bool)

(assert (=> b!6900171 (=> res!2813656 e!4155575)))

(declare-fun lt!2465847 () Bool)

(assert (=> b!6900171 (= res!2813656 lt!2465847)))

(declare-fun lt!2465842 () Regex!16859)

(assert (=> b!6900171 (= (matchR!9004 lt!2465842 s!14361) (matchRSpec!3922 lt!2465842 s!14361))))

(declare-fun lt!2465837 () Unit!160438)

(assert (=> b!6900171 (= lt!2465837 (mainMatchTheorem!3922 lt!2465842 s!14361))))

(declare-fun lt!2465840 () Regex!16859)

(assert (=> b!6900171 (= lt!2465847 (matchRSpec!3922 lt!2465840 s!14361))))

(assert (=> b!6900171 (= lt!2465847 (matchR!9004 lt!2465840 s!14361))))

(declare-fun lt!2465863 () Unit!160438)

(assert (=> b!6900171 (= lt!2465863 (mainMatchTheorem!3922 lt!2465840 s!14361))))

(assert (=> b!6900171 (= lt!2465842 (Concat!25704 r1!6342 lt!2465867))))

(assert (=> b!6900171 (= lt!2465867 (Concat!25704 r2!6280 r3!135))))

(assert (=> b!6900171 (= lt!2465840 (Concat!25704 lt!2465860 r3!135))))

(assert (=> b!6900171 (= lt!2465860 (Concat!25704 r1!6342 r2!6280))))

(declare-fun res!2813654 () Bool)

(assert (=> start!664670 (=> (not res!2813654) (not e!4155566))))

(assert (=> start!664670 (= res!2813654 (validRegex!8567 r1!6342))))

(assert (=> start!664670 e!4155566))

(assert (=> start!664670 e!4155569))

(assert (=> start!664670 e!4155572))

(assert (=> start!664670 e!4155576))

(assert (=> start!664670 e!4155571))

(declare-fun b!6900161 () Bool)

(declare-fun tp!1899739 () Bool)

(assert (=> b!6900161 (= e!4155569 tp!1899739)))

(declare-fun b!6900172 () Bool)

(assert (=> b!6900172 (= e!4155575 e!4155574)))

(declare-fun res!2813655 () Bool)

(assert (=> b!6900172 (=> res!2813655 e!4155574)))

(assert (=> b!6900172 (= res!2813655 (not (isDefined!13341 lt!2465857)))))

(assert (=> b!6900172 (= lt!2465857 (findConcatSeparation!3052 r1!6342 lt!2465867 Nil!66492 s!14361 s!14361))))

(declare-fun b!6900173 () Bool)

(assert (=> b!6900173 (= e!4155572 tp_is_empty!42943)))

(assert (= (and start!664670 res!2813654) b!6900166))

(assert (= (and b!6900166 res!2813657) b!6900154))

(assert (= (and b!6900154 res!2813652) b!6900171))

(assert (= (and b!6900171 (not res!2813656)) b!6900172))

(assert (= (and b!6900172 (not res!2813655)) b!6900164))

(assert (= (and b!6900164 (not res!2813650)) b!6900155))

(assert (= (and b!6900155 (not res!2813651)) b!6900150))

(assert (= (and b!6900150 (not res!2813660)) b!6900153))

(assert (= (and b!6900153 (not res!2813658)) b!6900168))

(assert (= (and b!6900168 (not res!2813653)) b!6900158))

(assert (= (and b!6900158 (not res!2813659)) b!6900167))

(get-info :version)

(assert (= (and start!664670 ((_ is ElementMatch!16859) r1!6342)) b!6900152))

(assert (= (and start!664670 ((_ is Concat!25704) r1!6342)) b!6900160))

(assert (= (and start!664670 ((_ is Star!16859) r1!6342)) b!6900161))

(assert (= (and start!664670 ((_ is Union!16859) r1!6342)) b!6900156))

(assert (= (and start!664670 ((_ is ElementMatch!16859) r2!6280)) b!6900173))

(assert (= (and start!664670 ((_ is Concat!25704) r2!6280)) b!6900151))

(assert (= (and start!664670 ((_ is Star!16859) r2!6280)) b!6900170))

(assert (= (and start!664670 ((_ is Union!16859) r2!6280)) b!6900162))

(assert (= (and start!664670 ((_ is ElementMatch!16859) r3!135)) b!6900157))

(assert (= (and start!664670 ((_ is Concat!25704) r3!135)) b!6900165))

(assert (= (and start!664670 ((_ is Star!16859) r3!135)) b!6900163))

(assert (= (and start!664670 ((_ is Union!16859) r3!135)) b!6900169))

(assert (= (and start!664670 ((_ is Cons!66492) s!14361)) b!6900159))

(declare-fun m!7618274 () Bool)

(assert (=> b!6900168 m!7618274))

(declare-fun m!7618276 () Bool)

(assert (=> b!6900168 m!7618276))

(declare-fun m!7618278 () Bool)

(assert (=> b!6900168 m!7618278))

(declare-fun m!7618280 () Bool)

(assert (=> b!6900168 m!7618280))

(declare-fun m!7618282 () Bool)

(assert (=> b!6900168 m!7618282))

(declare-fun m!7618284 () Bool)

(assert (=> b!6900168 m!7618284))

(assert (=> b!6900168 m!7618278))

(declare-fun m!7618286 () Bool)

(assert (=> b!6900153 m!7618286))

(declare-fun m!7618288 () Bool)

(assert (=> b!6900171 m!7618288))

(declare-fun m!7618290 () Bool)

(assert (=> b!6900171 m!7618290))

(declare-fun m!7618292 () Bool)

(assert (=> b!6900171 m!7618292))

(declare-fun m!7618294 () Bool)

(assert (=> b!6900171 m!7618294))

(declare-fun m!7618296 () Bool)

(assert (=> b!6900171 m!7618296))

(declare-fun m!7618298 () Bool)

(assert (=> b!6900171 m!7618298))

(declare-fun m!7618300 () Bool)

(assert (=> b!6900172 m!7618300))

(declare-fun m!7618302 () Bool)

(assert (=> b!6900172 m!7618302))

(declare-fun m!7618304 () Bool)

(assert (=> b!6900158 m!7618304))

(declare-fun m!7618306 () Bool)

(assert (=> b!6900158 m!7618306))

(declare-fun m!7618308 () Bool)

(assert (=> b!6900158 m!7618308))

(declare-fun m!7618310 () Bool)

(assert (=> b!6900158 m!7618310))

(declare-fun m!7618312 () Bool)

(assert (=> b!6900158 m!7618312))

(declare-fun m!7618314 () Bool)

(assert (=> b!6900158 m!7618314))

(assert (=> b!6900158 m!7618306))

(declare-fun m!7618316 () Bool)

(assert (=> b!6900158 m!7618316))

(declare-fun m!7618318 () Bool)

(assert (=> b!6900158 m!7618318))

(declare-fun m!7618320 () Bool)

(assert (=> b!6900158 m!7618320))

(assert (=> b!6900158 m!7618316))

(declare-fun m!7618322 () Bool)

(assert (=> b!6900158 m!7618322))

(declare-fun m!7618324 () Bool)

(assert (=> b!6900158 m!7618324))

(declare-fun m!7618326 () Bool)

(assert (=> b!6900158 m!7618326))

(declare-fun m!7618328 () Bool)

(assert (=> b!6900158 m!7618328))

(declare-fun m!7618330 () Bool)

(assert (=> start!664670 m!7618330))

(declare-fun m!7618332 () Bool)

(assert (=> b!6900166 m!7618332))

(declare-fun m!7618334 () Bool)

(assert (=> b!6900164 m!7618334))

(declare-fun m!7618336 () Bool)

(assert (=> b!6900164 m!7618336))

(declare-fun m!7618338 () Bool)

(assert (=> b!6900164 m!7618338))

(declare-fun m!7618340 () Bool)

(assert (=> b!6900164 m!7618340))

(declare-fun m!7618342 () Bool)

(assert (=> b!6900164 m!7618342))

(assert (=> b!6900164 m!7618334))

(declare-fun m!7618344 () Bool)

(assert (=> b!6900164 m!7618344))

(declare-fun m!7618346 () Bool)

(assert (=> b!6900164 m!7618346))

(declare-fun m!7618348 () Bool)

(assert (=> b!6900164 m!7618348))

(declare-fun m!7618350 () Bool)

(assert (=> b!6900154 m!7618350))

(declare-fun m!7618352 () Bool)

(assert (=> b!6900155 m!7618352))

(declare-fun m!7618354 () Bool)

(assert (=> b!6900150 m!7618354))

(declare-fun m!7618356 () Bool)

(assert (=> b!6900150 m!7618356))

(assert (=> b!6900150 m!7618356))

(declare-fun m!7618358 () Bool)

(assert (=> b!6900150 m!7618358))

(declare-fun m!7618360 () Bool)

(assert (=> b!6900150 m!7618360))

(declare-fun m!7618362 () Bool)

(assert (=> b!6900150 m!7618362))

(declare-fun m!7618364 () Bool)

(assert (=> b!6900150 m!7618364))

(declare-fun m!7618366 () Bool)

(assert (=> b!6900150 m!7618366))

(declare-fun m!7618368 () Bool)

(assert (=> b!6900150 m!7618368))

(declare-fun m!7618370 () Bool)

(assert (=> b!6900150 m!7618370))

(declare-fun m!7618372 () Bool)

(assert (=> b!6900150 m!7618372))

(declare-fun m!7618374 () Bool)

(assert (=> b!6900167 m!7618374))

(declare-fun m!7618376 () Bool)

(assert (=> b!6900167 m!7618376))

(declare-fun m!7618378 () Bool)

(assert (=> b!6900167 m!7618378))

(declare-fun m!7618380 () Bool)

(assert (=> b!6900167 m!7618380))

(assert (=> b!6900167 m!7618380))

(declare-fun m!7618382 () Bool)

(assert (=> b!6900167 m!7618382))

(check-sat (not b!6900159) (not b!6900158) (not start!664670) (not b!6900154) (not b!6900171) (not b!6900155) (not b!6900164) (not b!6900150) (not b!6900168) (not b!6900162) (not b!6900156) (not b!6900170) (not b!6900166) (not b!6900151) tp_is_empty!42943 (not b!6900161) (not b!6900163) (not b!6900160) (not b!6900169) (not b!6900167) (not b!6900153) (not b!6900172) (not b!6900165))
(check-sat)
