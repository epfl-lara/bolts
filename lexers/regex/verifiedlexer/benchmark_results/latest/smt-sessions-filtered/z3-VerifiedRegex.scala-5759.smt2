; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285328 () Bool)

(assert start!285328)

(declare-fun b!2935818 () Bool)

(assert (=> b!2935818 true))

(assert (=> b!2935818 true))

(assert (=> b!2935818 true))

(declare-fun lambda!109404 () Int)

(declare-fun lambda!109403 () Int)

(assert (=> b!2935818 (not (= lambda!109404 lambda!109403))))

(assert (=> b!2935818 true))

(assert (=> b!2935818 true))

(assert (=> b!2935818 true))

(declare-fun b!2935806 () Bool)

(declare-fun e!1850700 () Bool)

(declare-fun tp_is_empty!15701 () Bool)

(assert (=> b!2935806 (= e!1850700 tp_is_empty!15701)))

(declare-fun b!2935807 () Bool)

(declare-datatypes ((Unit!48515 0))(
  ( (Unit!48516) )
))
(declare-fun e!1850705 () Unit!48515)

(declare-fun Unit!48517 () Unit!48515)

(assert (=> b!2935807 (= e!1850705 Unit!48517)))

(declare-fun b!2935808 () Bool)

(declare-fun res!1212066 () Bool)

(declare-fun e!1850702 () Bool)

(assert (=> b!2935808 (=> res!1212066 e!1850702)))

(declare-datatypes ((C!18324 0))(
  ( (C!18325 (val!11198 Int)) )
))
(declare-datatypes ((Regex!9069 0))(
  ( (ElementMatch!9069 (c!479675 C!18324)) (Concat!14390 (regOne!18650 Regex!9069) (regTwo!18650 Regex!9069)) (EmptyExpr!9069) (Star!9069 (reg!9398 Regex!9069)) (EmptyLang!9069) (Union!9069 (regOne!18651 Regex!9069) (regTwo!18651 Regex!9069)) )
))
(declare-fun lt!1029213 () Regex!9069)

(declare-datatypes ((List!34934 0))(
  ( (Nil!34810) (Cons!34810 (h!40230 C!18324) (t!233999 List!34934)) )
))
(declare-datatypes ((tuple2!33788 0))(
  ( (tuple2!33789 (_1!20026 List!34934) (_2!20026 List!34934)) )
))
(declare-fun lt!1029215 () tuple2!33788)

(declare-fun matchR!3951 (Regex!9069 List!34934) Bool)

(assert (=> b!2935808 (= res!1212066 (not (matchR!3951 lt!1029213 (_2!20026 lt!1029215))))))

(declare-fun res!1212068 () Bool)

(declare-fun e!1850703 () Bool)

(assert (=> start!285328 (=> (not res!1212068) (not e!1850703))))

(declare-fun r!17423 () Regex!9069)

(declare-fun validRegex!3802 (Regex!9069) Bool)

(assert (=> start!285328 (= res!1212068 (validRegex!3802 r!17423))))

(assert (=> start!285328 e!1850703))

(assert (=> start!285328 e!1850700))

(declare-fun e!1850701 () Bool)

(assert (=> start!285328 e!1850701))

(declare-fun b!2935809 () Bool)

(declare-fun Unit!48518 () Unit!48515)

(assert (=> b!2935809 (= e!1850705 Unit!48518)))

(declare-fun lt!1029221 () Unit!48515)

(declare-fun mainMatchTheorem!1206 (Regex!9069 List!34934) Unit!48515)

(assert (=> b!2935809 (= lt!1029221 (mainMatchTheorem!1206 (reg!9398 r!17423) (_1!20026 lt!1029215)))))

(assert (=> b!2935809 false))

(declare-fun b!2935810 () Bool)

(declare-fun tp!940081 () Bool)

(assert (=> b!2935810 (= e!1850701 (and tp_is_empty!15701 tp!940081))))

(declare-fun b!2935811 () Bool)

(declare-fun res!1212072 () Bool)

(assert (=> b!2935811 (=> res!1212072 e!1850702)))

(assert (=> b!2935811 (= res!1212072 (not (validRegex!3802 lt!1029213)))))

(declare-fun b!2935812 () Bool)

(declare-fun e!1850704 () Bool)

(assert (=> b!2935812 (= e!1850704 e!1850702)))

(declare-fun res!1212064 () Bool)

(assert (=> b!2935812 (=> res!1212064 e!1850702)))

(declare-fun lt!1029225 () Regex!9069)

(assert (=> b!2935812 (= res!1212064 (not (= lt!1029225 lt!1029213)))))

(declare-fun lt!1029218 () Regex!9069)

(assert (=> b!2935812 (= lt!1029213 (Star!9069 lt!1029218))))

(assert (=> b!2935812 (matchR!3951 lt!1029225 (_2!20026 lt!1029215))))

(declare-fun lt!1029226 () Regex!9069)

(declare-fun simplify!76 (Regex!9069) Regex!9069)

(assert (=> b!2935812 (= lt!1029225 (simplify!76 lt!1029226))))

(declare-fun lt!1029227 () Unit!48515)

(declare-fun lemmaSimplifySound!72 (Regex!9069 List!34934) Unit!48515)

(assert (=> b!2935812 (= lt!1029227 (lemmaSimplifySound!72 lt!1029226 (_2!20026 lt!1029215)))))

(declare-fun lt!1029220 () Unit!48515)

(assert (=> b!2935812 (= lt!1029220 e!1850705)))

(declare-fun c!479674 () Bool)

(declare-fun s!11993 () List!34934)

(declare-fun size!26465 (List!34934) Int)

(assert (=> b!2935812 (= c!479674 (= (size!26465 (_2!20026 lt!1029215)) (size!26465 s!11993)))))

(assert (=> b!2935812 (matchR!3951 lt!1029218 (_1!20026 lt!1029215))))

(assert (=> b!2935812 (= lt!1029218 (simplify!76 (reg!9398 r!17423)))))

(declare-fun lt!1029224 () Unit!48515)

(assert (=> b!2935812 (= lt!1029224 (lemmaSimplifySound!72 (reg!9398 r!17423) (_1!20026 lt!1029215)))))

(declare-fun b!2935813 () Bool)

(declare-fun e!1850698 () Bool)

(assert (=> b!2935813 (= e!1850703 (not e!1850698))))

(declare-fun res!1212071 () Bool)

(assert (=> b!2935813 (=> res!1212071 e!1850698)))

(declare-fun lt!1029217 () Bool)

(get-info :version)

(assert (=> b!2935813 (= res!1212071 (or (not lt!1029217) ((_ is Concat!14390) r!17423) ((_ is Union!9069) r!17423) (not ((_ is Star!9069) r!17423))))))

(declare-fun matchRSpec!1206 (Regex!9069 List!34934) Bool)

(assert (=> b!2935813 (= lt!1029217 (matchRSpec!1206 r!17423 s!11993))))

(assert (=> b!2935813 (= lt!1029217 (matchR!3951 r!17423 s!11993))))

(declare-fun lt!1029214 () Unit!48515)

(assert (=> b!2935813 (= lt!1029214 (mainMatchTheorem!1206 r!17423 s!11993))))

(declare-fun b!2935814 () Bool)

(declare-fun e!1850699 () Bool)

(assert (=> b!2935814 (= e!1850699 e!1850704)))

(declare-fun res!1212065 () Bool)

(assert (=> b!2935814 (=> res!1212065 e!1850704)))

(assert (=> b!2935814 (= res!1212065 (not (matchR!3951 (reg!9398 r!17423) (_1!20026 lt!1029215))))))

(declare-datatypes ((Option!6626 0))(
  ( (None!6625) (Some!6625 (v!34759 tuple2!33788)) )
))
(declare-fun lt!1029222 () Option!6626)

(declare-fun get!10652 (Option!6626) tuple2!33788)

(assert (=> b!2935814 (= lt!1029215 (get!10652 lt!1029222))))

(declare-fun b!2935815 () Bool)

(declare-fun tp!940083 () Bool)

(declare-fun tp!940082 () Bool)

(assert (=> b!2935815 (= e!1850700 (and tp!940083 tp!940082))))

(declare-fun b!2935816 () Bool)

(declare-fun tp!940084 () Bool)

(declare-fun tp!940080 () Bool)

(assert (=> b!2935816 (= e!1850700 (and tp!940084 tp!940080))))

(declare-fun b!2935817 () Bool)

(declare-fun res!1212069 () Bool)

(assert (=> b!2935817 (=> res!1212069 e!1850704)))

(assert (=> b!2935817 (= res!1212069 (not (matchR!3951 lt!1029226 (_2!20026 lt!1029215))))))

(assert (=> b!2935818 (= e!1850698 e!1850699)))

(declare-fun res!1212067 () Bool)

(assert (=> b!2935818 (=> res!1212067 e!1850699)))

(declare-fun lt!1029223 () Bool)

(assert (=> b!2935818 (= res!1212067 (not lt!1029223))))

(declare-fun Exists!1431 (Int) Bool)

(assert (=> b!2935818 (= (Exists!1431 lambda!109403) (Exists!1431 lambda!109404))))

(declare-fun lt!1029212 () Unit!48515)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!242 (Regex!9069 List!34934) Unit!48515)

(assert (=> b!2935818 (= lt!1029212 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!242 (reg!9398 r!17423) s!11993))))

(assert (=> b!2935818 (= lt!1029223 (Exists!1431 lambda!109403))))

(declare-fun isDefined!5177 (Option!6626) Bool)

(assert (=> b!2935818 (= lt!1029223 (isDefined!5177 lt!1029222))))

(declare-fun findConcatSeparation!1020 (Regex!9069 Regex!9069 List!34934 List!34934 List!34934) Option!6626)

(assert (=> b!2935818 (= lt!1029222 (findConcatSeparation!1020 (reg!9398 r!17423) lt!1029226 Nil!34810 s!11993 s!11993))))

(declare-fun lt!1029216 () Unit!48515)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!802 (Regex!9069 Regex!9069 List!34934) Unit!48515)

(assert (=> b!2935818 (= lt!1029216 (lemmaFindConcatSeparationEquivalentToExists!802 (reg!9398 r!17423) lt!1029226 s!11993))))

(assert (=> b!2935818 (= lt!1029226 (Star!9069 (reg!9398 r!17423)))))

(declare-fun b!2935819 () Bool)

(declare-fun res!1212070 () Bool)

(assert (=> b!2935819 (=> res!1212070 e!1850698)))

(declare-fun isEmpty!19071 (List!34934) Bool)

(assert (=> b!2935819 (= res!1212070 (isEmpty!19071 s!11993))))

(declare-fun b!2935820 () Bool)

(assert (=> b!2935820 (= e!1850702 (validRegex!3802 (simplify!76 r!17423)))))

(declare-fun ++!8313 (List!34934 List!34934) List!34934)

(assert (=> b!2935820 (matchR!3951 lt!1029213 (++!8313 (_1!20026 lt!1029215) (_2!20026 lt!1029215)))))

(declare-fun lt!1029219 () Unit!48515)

(declare-fun lemmaStarApp!16 (Regex!9069 List!34934 List!34934) Unit!48515)

(assert (=> b!2935820 (= lt!1029219 (lemmaStarApp!16 lt!1029218 (_1!20026 lt!1029215) (_2!20026 lt!1029215)))))

(declare-fun b!2935821 () Bool)

(declare-fun tp!940085 () Bool)

(assert (=> b!2935821 (= e!1850700 tp!940085)))

(assert (= (and start!285328 res!1212068) b!2935813))

(assert (= (and b!2935813 (not res!1212071)) b!2935819))

(assert (= (and b!2935819 (not res!1212070)) b!2935818))

(assert (= (and b!2935818 (not res!1212067)) b!2935814))

(assert (= (and b!2935814 (not res!1212065)) b!2935817))

(assert (= (and b!2935817 (not res!1212069)) b!2935812))

(assert (= (and b!2935812 c!479674) b!2935809))

(assert (= (and b!2935812 (not c!479674)) b!2935807))

(assert (= (and b!2935812 (not res!1212064)) b!2935808))

(assert (= (and b!2935808 (not res!1212066)) b!2935811))

(assert (= (and b!2935811 (not res!1212072)) b!2935820))

(assert (= (and start!285328 ((_ is ElementMatch!9069) r!17423)) b!2935806))

(assert (= (and start!285328 ((_ is Concat!14390) r!17423)) b!2935815))

(assert (= (and start!285328 ((_ is Star!9069) r!17423)) b!2935821))

(assert (= (and start!285328 ((_ is Union!9069) r!17423)) b!2935816))

(assert (= (and start!285328 ((_ is Cons!34810) s!11993)) b!2935810))

(declare-fun m!3323641 () Bool)

(assert (=> b!2935819 m!3323641))

(declare-fun m!3323643 () Bool)

(assert (=> b!2935809 m!3323643))

(declare-fun m!3323645 () Bool)

(assert (=> start!285328 m!3323645))

(declare-fun m!3323647 () Bool)

(assert (=> b!2935820 m!3323647))

(declare-fun m!3323649 () Bool)

(assert (=> b!2935820 m!3323649))

(assert (=> b!2935820 m!3323647))

(declare-fun m!3323651 () Bool)

(assert (=> b!2935820 m!3323651))

(declare-fun m!3323653 () Bool)

(assert (=> b!2935820 m!3323653))

(assert (=> b!2935820 m!3323651))

(declare-fun m!3323655 () Bool)

(assert (=> b!2935820 m!3323655))

(declare-fun m!3323657 () Bool)

(assert (=> b!2935818 m!3323657))

(declare-fun m!3323659 () Bool)

(assert (=> b!2935818 m!3323659))

(declare-fun m!3323661 () Bool)

(assert (=> b!2935818 m!3323661))

(declare-fun m!3323663 () Bool)

(assert (=> b!2935818 m!3323663))

(assert (=> b!2935818 m!3323663))

(declare-fun m!3323665 () Bool)

(assert (=> b!2935818 m!3323665))

(declare-fun m!3323667 () Bool)

(assert (=> b!2935818 m!3323667))

(declare-fun m!3323669 () Bool)

(assert (=> b!2935808 m!3323669))

(declare-fun m!3323671 () Bool)

(assert (=> b!2935813 m!3323671))

(declare-fun m!3323673 () Bool)

(assert (=> b!2935813 m!3323673))

(declare-fun m!3323675 () Bool)

(assert (=> b!2935813 m!3323675))

(declare-fun m!3323677 () Bool)

(assert (=> b!2935814 m!3323677))

(declare-fun m!3323679 () Bool)

(assert (=> b!2935814 m!3323679))

(declare-fun m!3323681 () Bool)

(assert (=> b!2935811 m!3323681))

(declare-fun m!3323683 () Bool)

(assert (=> b!2935817 m!3323683))

(declare-fun m!3323685 () Bool)

(assert (=> b!2935812 m!3323685))

(declare-fun m!3323687 () Bool)

(assert (=> b!2935812 m!3323687))

(declare-fun m!3323689 () Bool)

(assert (=> b!2935812 m!3323689))

(declare-fun m!3323691 () Bool)

(assert (=> b!2935812 m!3323691))

(declare-fun m!3323693 () Bool)

(assert (=> b!2935812 m!3323693))

(declare-fun m!3323695 () Bool)

(assert (=> b!2935812 m!3323695))

(declare-fun m!3323697 () Bool)

(assert (=> b!2935812 m!3323697))

(declare-fun m!3323699 () Bool)

(assert (=> b!2935812 m!3323699))

(check-sat (not b!2935815) (not b!2935817) (not b!2935816) (not b!2935814) (not b!2935818) (not b!2935809) (not b!2935811) (not start!285328) (not b!2935820) (not b!2935821) (not b!2935808) (not b!2935819) (not b!2935810) (not b!2935813) (not b!2935812) tp_is_empty!15701)
(check-sat)
