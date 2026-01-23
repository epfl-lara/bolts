; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294420 () Bool)

(assert start!294420)

(declare-fun b!3104605 () Bool)

(declare-fun e!1939855 () Bool)

(declare-fun e!1939854 () Bool)

(assert (=> b!3104605 (= e!1939855 (not e!1939854))))

(declare-fun res!1271475 () Bool)

(assert (=> b!3104605 (=> res!1271475 e!1939854)))

(declare-fun lt!1056396 () Bool)

(declare-datatypes ((C!19332 0))(
  ( (C!19333 (val!11702 Int)) )
))
(declare-datatypes ((Regex!9573 0))(
  ( (ElementMatch!9573 (c!519063 C!19332)) (Concat!14894 (regOne!19658 Regex!9573) (regTwo!19658 Regex!9573)) (EmptyExpr!9573) (Star!9573 (reg!9902 Regex!9573)) (EmptyLang!9573) (Union!9573 (regOne!19659 Regex!9573) (regTwo!19659 Regex!9573)) )
))
(declare-fun r!17423 () Regex!9573)

(get-info :version)

(assert (=> b!3104605 (= res!1271475 (or lt!1056396 ((_ is Concat!14894) r!17423) (not ((_ is Union!9573) r!17423))))))

(declare-datatypes ((List!35438 0))(
  ( (Nil!35314) (Cons!35314 (h!40734 C!19332) (t!234503 List!35438)) )
))
(declare-fun s!11993 () List!35438)

(declare-fun matchRSpec!1710 (Regex!9573 List!35438) Bool)

(assert (=> b!3104605 (= lt!1056396 (matchRSpec!1710 r!17423 s!11993))))

(declare-fun matchR!4455 (Regex!9573 List!35438) Bool)

(assert (=> b!3104605 (= lt!1056396 (matchR!4455 r!17423 s!11993))))

(declare-datatypes ((Unit!49585 0))(
  ( (Unit!49586) )
))
(declare-fun lt!1056395 () Unit!49585)

(declare-fun mainMatchTheorem!1710 (Regex!9573 List!35438) Unit!49585)

(assert (=> b!3104605 (= lt!1056395 (mainMatchTheorem!1710 r!17423 s!11993))))

(declare-fun b!3104606 () Bool)

(declare-fun e!1939851 () Bool)

(assert (=> b!3104606 (= e!1939854 e!1939851)))

(declare-fun res!1271474 () Bool)

(assert (=> b!3104606 (=> res!1271474 e!1939851)))

(declare-fun lt!1056397 () Regex!9573)

(declare-fun isEmptyLang!624 (Regex!9573) Bool)

(assert (=> b!3104606 (= res!1271474 (isEmptyLang!624 lt!1056397))))

(declare-fun lt!1056398 () Regex!9573)

(declare-fun simplify!528 (Regex!9573) Regex!9573)

(assert (=> b!3104606 (= lt!1056398 (simplify!528 (regTwo!19659 r!17423)))))

(assert (=> b!3104606 (= lt!1056397 (simplify!528 (regOne!19659 r!17423)))))

(declare-fun res!1271473 () Bool)

(assert (=> start!294420 (=> (not res!1271473) (not e!1939855))))

(declare-fun validRegex!4306 (Regex!9573) Bool)

(assert (=> start!294420 (= res!1271473 (validRegex!4306 r!17423))))

(assert (=> start!294420 e!1939855))

(declare-fun e!1939852 () Bool)

(assert (=> start!294420 e!1939852))

(declare-fun e!1939853 () Bool)

(assert (=> start!294420 e!1939853))

(declare-fun b!3104607 () Bool)

(declare-fun tp_is_empty!16709 () Bool)

(declare-fun tp!975327 () Bool)

(assert (=> b!3104607 (= e!1939853 (and tp_is_empty!16709 tp!975327))))

(declare-fun b!3104608 () Bool)

(assert (=> b!3104608 (= e!1939852 tp_is_empty!16709)))

(declare-fun b!3104609 () Bool)

(declare-fun tp!975329 () Bool)

(assert (=> b!3104609 (= e!1939852 tp!975329)))

(declare-fun b!3104610 () Bool)

(assert (=> b!3104610 (= e!1939851 (validRegex!4306 (regOne!19659 r!17423)))))

(declare-fun b!3104611 () Bool)

(declare-fun res!1271476 () Bool)

(assert (=> b!3104611 (=> res!1271476 e!1939851)))

(assert (=> b!3104611 (= res!1271476 (not (isEmptyLang!624 lt!1056398)))))

(declare-fun b!3104612 () Bool)

(declare-fun tp!975326 () Bool)

(declare-fun tp!975325 () Bool)

(assert (=> b!3104612 (= e!1939852 (and tp!975326 tp!975325))))

(declare-fun b!3104613 () Bool)

(declare-fun tp!975324 () Bool)

(declare-fun tp!975328 () Bool)

(assert (=> b!3104613 (= e!1939852 (and tp!975324 tp!975328))))

(assert (= (and start!294420 res!1271473) b!3104605))

(assert (= (and b!3104605 (not res!1271475)) b!3104606))

(assert (= (and b!3104606 (not res!1271474)) b!3104611))

(assert (= (and b!3104611 (not res!1271476)) b!3104610))

(assert (= (and start!294420 ((_ is ElementMatch!9573) r!17423)) b!3104608))

(assert (= (and start!294420 ((_ is Concat!14894) r!17423)) b!3104613))

(assert (= (and start!294420 ((_ is Star!9573) r!17423)) b!3104609))

(assert (= (and start!294420 ((_ is Union!9573) r!17423)) b!3104612))

(assert (= (and start!294420 ((_ is Cons!35314) s!11993)) b!3104607))

(declare-fun m!3402383 () Bool)

(assert (=> b!3104611 m!3402383))

(declare-fun m!3402385 () Bool)

(assert (=> b!3104610 m!3402385))

(declare-fun m!3402387 () Bool)

(assert (=> start!294420 m!3402387))

(declare-fun m!3402389 () Bool)

(assert (=> b!3104605 m!3402389))

(declare-fun m!3402391 () Bool)

(assert (=> b!3104605 m!3402391))

(declare-fun m!3402393 () Bool)

(assert (=> b!3104605 m!3402393))

(declare-fun m!3402395 () Bool)

(assert (=> b!3104606 m!3402395))

(declare-fun m!3402397 () Bool)

(assert (=> b!3104606 m!3402397))

(declare-fun m!3402399 () Bool)

(assert (=> b!3104606 m!3402399))

(check-sat (not b!3104613) (not b!3104606) (not b!3104605) (not b!3104611) (not b!3104607) (not start!294420) tp_is_empty!16709 (not b!3104612) (not b!3104610) (not b!3104609))
(check-sat)
(get-model)

(declare-fun bm!219182 () Bool)

(declare-fun call!219187 () Bool)

(declare-fun call!219189 () Bool)

(assert (=> bm!219182 (= call!219187 call!219189)))

(declare-fun b!3104632 () Bool)

(declare-fun e!1939874 () Bool)

(declare-fun call!219188 () Bool)

(assert (=> b!3104632 (= e!1939874 call!219188)))

(declare-fun bm!219183 () Bool)

(declare-fun c!519069 () Bool)

(assert (=> bm!219183 (= call!219188 (validRegex!4306 (ite c!519069 (regTwo!19659 (regOne!19659 r!17423)) (regOne!19658 (regOne!19659 r!17423)))))))

(declare-fun d!861290 () Bool)

(declare-fun res!1271490 () Bool)

(declare-fun e!1939873 () Bool)

(assert (=> d!861290 (=> res!1271490 e!1939873)))

(assert (=> d!861290 (= res!1271490 ((_ is ElementMatch!9573) (regOne!19659 r!17423)))))

(assert (=> d!861290 (= (validRegex!4306 (regOne!19659 r!17423)) e!1939873)))

(declare-fun b!3104633 () Bool)

(declare-fun e!1939872 () Bool)

(declare-fun e!1939871 () Bool)

(assert (=> b!3104633 (= e!1939872 e!1939871)))

(declare-fun res!1271489 () Bool)

(assert (=> b!3104633 (=> (not res!1271489) (not e!1939871))))

(assert (=> b!3104633 (= res!1271489 call!219188)))

(declare-fun b!3104634 () Bool)

(declare-fun e!1939870 () Bool)

(assert (=> b!3104634 (= e!1939870 call!219189)))

(declare-fun bm!219184 () Bool)

(declare-fun c!519068 () Bool)

(assert (=> bm!219184 (= call!219189 (validRegex!4306 (ite c!519068 (reg!9902 (regOne!19659 r!17423)) (ite c!519069 (regOne!19659 (regOne!19659 r!17423)) (regTwo!19658 (regOne!19659 r!17423))))))))

(declare-fun b!3104635 () Bool)

(declare-fun res!1271491 () Bool)

(assert (=> b!3104635 (=> res!1271491 e!1939872)))

(assert (=> b!3104635 (= res!1271491 (not ((_ is Concat!14894) (regOne!19659 r!17423))))))

(declare-fun e!1939876 () Bool)

(assert (=> b!3104635 (= e!1939876 e!1939872)))

(declare-fun b!3104636 () Bool)

(assert (=> b!3104636 (= e!1939871 call!219187)))

(declare-fun b!3104637 () Bool)

(declare-fun e!1939875 () Bool)

(assert (=> b!3104637 (= e!1939875 e!1939870)))

(declare-fun res!1271488 () Bool)

(declare-fun nullable!3217 (Regex!9573) Bool)

(assert (=> b!3104637 (= res!1271488 (not (nullable!3217 (reg!9902 (regOne!19659 r!17423)))))))

(assert (=> b!3104637 (=> (not res!1271488) (not e!1939870))))

(declare-fun b!3104638 () Bool)

(assert (=> b!3104638 (= e!1939873 e!1939875)))

(assert (=> b!3104638 (= c!519068 ((_ is Star!9573) (regOne!19659 r!17423)))))

(declare-fun b!3104639 () Bool)

(assert (=> b!3104639 (= e!1939875 e!1939876)))

(assert (=> b!3104639 (= c!519069 ((_ is Union!9573) (regOne!19659 r!17423)))))

(declare-fun b!3104640 () Bool)

(declare-fun res!1271487 () Bool)

(assert (=> b!3104640 (=> (not res!1271487) (not e!1939874))))

(assert (=> b!3104640 (= res!1271487 call!219187)))

(assert (=> b!3104640 (= e!1939876 e!1939874)))

(assert (= (and d!861290 (not res!1271490)) b!3104638))

(assert (= (and b!3104638 c!519068) b!3104637))

(assert (= (and b!3104638 (not c!519068)) b!3104639))

(assert (= (and b!3104637 res!1271488) b!3104634))

(assert (= (and b!3104639 c!519069) b!3104640))

(assert (= (and b!3104639 (not c!519069)) b!3104635))

(assert (= (and b!3104640 res!1271487) b!3104632))

(assert (= (and b!3104635 (not res!1271491)) b!3104633))

(assert (= (and b!3104633 res!1271489) b!3104636))

(assert (= (or b!3104640 b!3104636) bm!219182))

(assert (= (or b!3104632 b!3104633) bm!219183))

(assert (= (or b!3104634 bm!219182) bm!219184))

(declare-fun m!3402401 () Bool)

(assert (=> bm!219183 m!3402401))

(declare-fun m!3402403 () Bool)

(assert (=> bm!219184 m!3402403))

(declare-fun m!3402405 () Bool)

(assert (=> b!3104637 m!3402405))

(assert (=> b!3104610 d!861290))

(declare-fun b!3104864 () Bool)

(assert (=> b!3104864 true))

(assert (=> b!3104864 true))

(declare-fun bs!535729 () Bool)

(declare-fun b!3104865 () Bool)

(assert (= bs!535729 (and b!3104865 b!3104864)))

(declare-fun lambda!114952 () Int)

(declare-fun lambda!114951 () Int)

(assert (=> bs!535729 (not (= lambda!114952 lambda!114951))))

(assert (=> b!3104865 true))

(assert (=> b!3104865 true))

(declare-fun b!3104862 () Bool)

(declare-fun c!519144 () Bool)

(assert (=> b!3104862 (= c!519144 ((_ is ElementMatch!9573) r!17423))))

(declare-fun e!1940000 () Bool)

(declare-fun e!1939997 () Bool)

(assert (=> b!3104862 (= e!1940000 e!1939997)))

(declare-fun b!3104863 () Bool)

(declare-fun e!1940001 () Bool)

(declare-fun e!1940002 () Bool)

(assert (=> b!3104863 (= e!1940001 e!1940002)))

(declare-fun c!519143 () Bool)

(assert (=> b!3104863 (= c!519143 ((_ is Star!9573) r!17423))))

(declare-fun e!1940003 () Bool)

(declare-fun call!219231 () Bool)

(assert (=> b!3104864 (= e!1940003 call!219231)))

(declare-fun bm!219226 () Bool)

(declare-fun call!219232 () Bool)

(declare-fun isEmpty!19662 (List!35438) Bool)

(assert (=> bm!219226 (= call!219232 (isEmpty!19662 s!11993))))

(assert (=> b!3104865 (= e!1940002 call!219231)))

(declare-fun b!3104866 () Bool)

(assert (=> b!3104866 (= e!1939997 (= s!11993 (Cons!35314 (c!519063 r!17423) Nil!35314)))))

(declare-fun d!861292 () Bool)

(declare-fun c!519145 () Bool)

(assert (=> d!861292 (= c!519145 ((_ is EmptyExpr!9573) r!17423))))

(declare-fun e!1939999 () Bool)

(assert (=> d!861292 (= (matchRSpec!1710 r!17423 s!11993) e!1939999)))

(declare-fun b!3104867 () Bool)

(declare-fun res!1271564 () Bool)

(assert (=> b!3104867 (=> res!1271564 e!1940003)))

(assert (=> b!3104867 (= res!1271564 call!219232)))

(assert (=> b!3104867 (= e!1940002 e!1940003)))

(declare-fun bm!219227 () Bool)

(declare-fun Exists!1833 (Int) Bool)

(assert (=> bm!219227 (= call!219231 (Exists!1833 (ite c!519143 lambda!114951 lambda!114952)))))

(declare-fun b!3104868 () Bool)

(declare-fun e!1939998 () Bool)

(assert (=> b!3104868 (= e!1939998 (matchRSpec!1710 (regTwo!19659 r!17423) s!11993))))

(declare-fun b!3104869 () Bool)

(assert (=> b!3104869 (= e!1939999 call!219232)))

(declare-fun b!3104870 () Bool)

(assert (=> b!3104870 (= e!1940001 e!1939998)))

(declare-fun res!1271563 () Bool)

(assert (=> b!3104870 (= res!1271563 (matchRSpec!1710 (regOne!19659 r!17423) s!11993))))

(assert (=> b!3104870 (=> res!1271563 e!1939998)))

(declare-fun b!3104871 () Bool)

(assert (=> b!3104871 (= e!1939999 e!1940000)))

(declare-fun res!1271565 () Bool)

(assert (=> b!3104871 (= res!1271565 (not ((_ is EmptyLang!9573) r!17423)))))

(assert (=> b!3104871 (=> (not res!1271565) (not e!1940000))))

(declare-fun b!3104872 () Bool)

(declare-fun c!519146 () Bool)

(assert (=> b!3104872 (= c!519146 ((_ is Union!9573) r!17423))))

(assert (=> b!3104872 (= e!1939997 e!1940001)))

(assert (= (and d!861292 c!519145) b!3104869))

(assert (= (and d!861292 (not c!519145)) b!3104871))

(assert (= (and b!3104871 res!1271565) b!3104862))

(assert (= (and b!3104862 c!519144) b!3104866))

(assert (= (and b!3104862 (not c!519144)) b!3104872))

(assert (= (and b!3104872 c!519146) b!3104870))

(assert (= (and b!3104872 (not c!519146)) b!3104863))

(assert (= (and b!3104870 (not res!1271563)) b!3104868))

(assert (= (and b!3104863 c!519143) b!3104867))

(assert (= (and b!3104863 (not c!519143)) b!3104865))

(assert (= (and b!3104867 (not res!1271564)) b!3104864))

(assert (= (or b!3104864 b!3104865) bm!219227))

(assert (= (or b!3104869 b!3104867) bm!219226))

(declare-fun m!3402465 () Bool)

(assert (=> bm!219226 m!3402465))

(declare-fun m!3402467 () Bool)

(assert (=> bm!219227 m!3402467))

(declare-fun m!3402469 () Bool)

(assert (=> b!3104868 m!3402469))

(declare-fun m!3402471 () Bool)

(assert (=> b!3104870 m!3402471))

(assert (=> b!3104605 d!861292))

(declare-fun b!3104976 () Bool)

(declare-fun e!1940058 () Bool)

(declare-fun head!6870 (List!35438) C!19332)

(assert (=> b!3104976 (= e!1940058 (= (head!6870 s!11993) (c!519063 r!17423)))))

(declare-fun bm!219242 () Bool)

(declare-fun call!219247 () Bool)

(assert (=> bm!219242 (= call!219247 (isEmpty!19662 s!11993))))

(declare-fun b!3104977 () Bool)

(declare-fun e!1940057 () Bool)

(declare-fun derivativeStep!2811 (Regex!9573 C!19332) Regex!9573)

(declare-fun tail!5096 (List!35438) List!35438)

(assert (=> b!3104977 (= e!1940057 (matchR!4455 (derivativeStep!2811 r!17423 (head!6870 s!11993)) (tail!5096 s!11993)))))

(declare-fun b!3104978 () Bool)

(declare-fun e!1940062 () Bool)

(declare-fun lt!1056431 () Bool)

(assert (=> b!3104978 (= e!1940062 (not lt!1056431))))

(declare-fun d!861304 () Bool)

(declare-fun e!1940056 () Bool)

(assert (=> d!861304 e!1940056))

(declare-fun c!519161 () Bool)

(assert (=> d!861304 (= c!519161 ((_ is EmptyExpr!9573) r!17423))))

(assert (=> d!861304 (= lt!1056431 e!1940057)))

(declare-fun c!519163 () Bool)

(assert (=> d!861304 (= c!519163 (isEmpty!19662 s!11993))))

(assert (=> d!861304 (validRegex!4306 r!17423)))

(assert (=> d!861304 (= (matchR!4455 r!17423 s!11993) lt!1056431)))

(declare-fun b!3104979 () Bool)

(declare-fun res!1271602 () Bool)

(assert (=> b!3104979 (=> (not res!1271602) (not e!1940058))))

(assert (=> b!3104979 (= res!1271602 (isEmpty!19662 (tail!5096 s!11993)))))

(declare-fun b!3104980 () Bool)

(assert (=> b!3104980 (= e!1940056 (= lt!1056431 call!219247))))

(declare-fun b!3104981 () Bool)

(assert (=> b!3104981 (= e!1940057 (nullable!3217 r!17423))))

(declare-fun b!3104982 () Bool)

(declare-fun res!1271605 () Bool)

(assert (=> b!3104982 (=> (not res!1271605) (not e!1940058))))

(assert (=> b!3104982 (= res!1271605 (not call!219247))))

(declare-fun b!3104983 () Bool)

(assert (=> b!3104983 (= e!1940056 e!1940062)))

(declare-fun c!519162 () Bool)

(assert (=> b!3104983 (= c!519162 ((_ is EmptyLang!9573) r!17423))))

(declare-fun b!3104984 () Bool)

(declare-fun res!1271604 () Bool)

(declare-fun e!1940061 () Bool)

(assert (=> b!3104984 (=> res!1271604 e!1940061)))

(assert (=> b!3104984 (= res!1271604 (not (isEmpty!19662 (tail!5096 s!11993))))))

(declare-fun b!3104985 () Bool)

(assert (=> b!3104985 (= e!1940061 (not (= (head!6870 s!11993) (c!519063 r!17423))))))

(declare-fun b!3104986 () Bool)

(declare-fun res!1271609 () Bool)

(declare-fun e!1940059 () Bool)

(assert (=> b!3104986 (=> res!1271609 e!1940059)))

(assert (=> b!3104986 (= res!1271609 (not ((_ is ElementMatch!9573) r!17423)))))

(assert (=> b!3104986 (= e!1940062 e!1940059)))

(declare-fun b!3104987 () Bool)

(declare-fun e!1940060 () Bool)

(assert (=> b!3104987 (= e!1940059 e!1940060)))

(declare-fun res!1271603 () Bool)

(assert (=> b!3104987 (=> (not res!1271603) (not e!1940060))))

(assert (=> b!3104987 (= res!1271603 (not lt!1056431))))

(declare-fun b!3104988 () Bool)

(assert (=> b!3104988 (= e!1940060 e!1940061)))

(declare-fun res!1271607 () Bool)

(assert (=> b!3104988 (=> res!1271607 e!1940061)))

(assert (=> b!3104988 (= res!1271607 call!219247)))

(declare-fun b!3104989 () Bool)

(declare-fun res!1271608 () Bool)

(assert (=> b!3104989 (=> res!1271608 e!1940059)))

(assert (=> b!3104989 (= res!1271608 e!1940058)))

(declare-fun res!1271606 () Bool)

(assert (=> b!3104989 (=> (not res!1271606) (not e!1940058))))

(assert (=> b!3104989 (= res!1271606 lt!1056431)))

(assert (= (and d!861304 c!519163) b!3104981))

(assert (= (and d!861304 (not c!519163)) b!3104977))

(assert (= (and d!861304 c!519161) b!3104980))

(assert (= (and d!861304 (not c!519161)) b!3104983))

(assert (= (and b!3104983 c!519162) b!3104978))

(assert (= (and b!3104983 (not c!519162)) b!3104986))

(assert (= (and b!3104986 (not res!1271609)) b!3104989))

(assert (= (and b!3104989 res!1271606) b!3104982))

(assert (= (and b!3104982 res!1271605) b!3104979))

(assert (= (and b!3104979 res!1271602) b!3104976))

(assert (= (and b!3104989 (not res!1271608)) b!3104987))

(assert (= (and b!3104987 res!1271603) b!3104988))

(assert (= (and b!3104988 (not res!1271607)) b!3104984))

(assert (= (and b!3104984 (not res!1271604)) b!3104985))

(assert (= (or b!3104980 b!3104982 b!3104988) bm!219242))

(declare-fun m!3402487 () Bool)

(assert (=> b!3104985 m!3402487))

(assert (=> d!861304 m!3402465))

(assert (=> d!861304 m!3402387))

(assert (=> b!3104976 m!3402487))

(assert (=> b!3104977 m!3402487))

(assert (=> b!3104977 m!3402487))

(declare-fun m!3402489 () Bool)

(assert (=> b!3104977 m!3402489))

(declare-fun m!3402491 () Bool)

(assert (=> b!3104977 m!3402491))

(assert (=> b!3104977 m!3402489))

(assert (=> b!3104977 m!3402491))

(declare-fun m!3402493 () Bool)

(assert (=> b!3104977 m!3402493))

(declare-fun m!3402495 () Bool)

(assert (=> b!3104981 m!3402495))

(assert (=> b!3104979 m!3402491))

(assert (=> b!3104979 m!3402491))

(declare-fun m!3402497 () Bool)

(assert (=> b!3104979 m!3402497))

(assert (=> b!3104984 m!3402491))

(assert (=> b!3104984 m!3402491))

(assert (=> b!3104984 m!3402497))

(assert (=> bm!219242 m!3402465))

(assert (=> b!3104605 d!861304))

(declare-fun d!861310 () Bool)

(assert (=> d!861310 (= (matchR!4455 r!17423 s!11993) (matchRSpec!1710 r!17423 s!11993))))

(declare-fun lt!1056434 () Unit!49585)

(declare-fun choose!18368 (Regex!9573 List!35438) Unit!49585)

(assert (=> d!861310 (= lt!1056434 (choose!18368 r!17423 s!11993))))

(assert (=> d!861310 (validRegex!4306 r!17423)))

(assert (=> d!861310 (= (mainMatchTheorem!1710 r!17423 s!11993) lt!1056434)))

(declare-fun bs!535731 () Bool)

(assert (= bs!535731 d!861310))

(assert (=> bs!535731 m!3402391))

(assert (=> bs!535731 m!3402389))

(declare-fun m!3402499 () Bool)

(assert (=> bs!535731 m!3402499))

(assert (=> bs!535731 m!3402387))

(assert (=> b!3104605 d!861310))

(declare-fun d!861312 () Bool)

(assert (=> d!861312 (= (isEmptyLang!624 lt!1056398) ((_ is EmptyLang!9573) lt!1056398))))

(assert (=> b!3104611 d!861312))

(declare-fun d!861314 () Bool)

(assert (=> d!861314 (= (isEmptyLang!624 lt!1056397) ((_ is EmptyLang!9573) lt!1056397))))

(assert (=> b!3104606 d!861314))

(declare-fun d!861316 () Bool)

(declare-fun e!1940091 () Bool)

(assert (=> d!861316 e!1940091))

(declare-fun res!1271617 () Bool)

(assert (=> d!861316 (=> (not res!1271617) (not e!1940091))))

(declare-fun lt!1056451 () Regex!9573)

(assert (=> d!861316 (= res!1271617 (validRegex!4306 lt!1056451))))

(declare-fun e!1940104 () Regex!9573)

(assert (=> d!861316 (= lt!1056451 e!1940104)))

(declare-fun c!519186 () Bool)

(assert (=> d!861316 (= c!519186 ((_ is EmptyLang!9573) (regTwo!19659 r!17423)))))

(assert (=> d!861316 (validRegex!4306 (regTwo!19659 r!17423))))

(assert (=> d!861316 (= (simplify!528 (regTwo!19659 r!17423)) lt!1056451)))

(declare-fun b!3105040 () Bool)

(declare-fun c!519192 () Bool)

(declare-fun e!1940094 () Bool)

(assert (=> b!3105040 (= c!519192 e!1940094)))

(declare-fun res!1271618 () Bool)

(assert (=> b!3105040 (=> res!1271618 e!1940094)))

(declare-fun call!219263 () Bool)

(assert (=> b!3105040 (= res!1271618 call!219263)))

(declare-fun lt!1056452 () Regex!9573)

(declare-fun call!219262 () Regex!9573)

(assert (=> b!3105040 (= lt!1056452 call!219262)))

(declare-fun e!1940095 () Regex!9573)

(declare-fun e!1940093 () Regex!9573)

(assert (=> b!3105040 (= e!1940095 e!1940093)))

(declare-fun b!3105041 () Bool)

(declare-fun c!519188 () Bool)

(assert (=> b!3105041 (= c!519188 ((_ is Union!9573) (regTwo!19659 r!17423)))))

(declare-fun e!1940099 () Regex!9573)

(assert (=> b!3105041 (= e!1940095 e!1940099)))

(declare-fun b!3105042 () Bool)

(declare-fun e!1940102 () Regex!9573)

(declare-fun lt!1056449 () Regex!9573)

(declare-fun lt!1056448 () Regex!9573)

(assert (=> b!3105042 (= e!1940102 (Union!9573 lt!1056449 lt!1056448))))

(declare-fun b!3105043 () Bool)

(declare-fun e!1940101 () Regex!9573)

(assert (=> b!3105043 (= e!1940101 lt!1056448)))

(declare-fun bm!219257 () Bool)

(declare-fun lt!1056447 () Regex!9573)

(declare-fun c!519191 () Bool)

(assert (=> bm!219257 (= call!219263 (isEmptyLang!624 (ite c!519191 lt!1056452 (ite c!519188 lt!1056449 lt!1056447))))))

(declare-fun b!3105044 () Bool)

(assert (=> b!3105044 (= e!1940093 EmptyExpr!9573)))

(declare-fun bm!219258 () Bool)

(declare-fun call!219268 () Regex!9573)

(assert (=> bm!219258 (= call!219268 call!219262)))

(declare-fun b!3105045 () Bool)

(declare-fun e!1940100 () Regex!9573)

(assert (=> b!3105045 (= e!1940104 e!1940100)))

(declare-fun c!519193 () Bool)

(assert (=> b!3105045 (= c!519193 ((_ is ElementMatch!9573) (regTwo!19659 r!17423)))))

(declare-fun b!3105046 () Bool)

(declare-fun e!1940098 () Regex!9573)

(assert (=> b!3105046 (= e!1940098 lt!1056447)))

(declare-fun b!3105047 () Bool)

(declare-fun call!219267 () Bool)

(assert (=> b!3105047 (= e!1940094 call!219267)))

(declare-fun b!3105048 () Bool)

(assert (=> b!3105048 (= e!1940104 EmptyLang!9573)))

(declare-fun b!3105049 () Bool)

(declare-fun lt!1056450 () Regex!9573)

(assert (=> b!3105049 (= e!1940098 (Concat!14894 lt!1056447 lt!1056450))))

(declare-fun b!3105050 () Bool)

(declare-fun e!1940096 () Regex!9573)

(assert (=> b!3105050 (= e!1940096 e!1940095)))

(assert (=> b!3105050 (= c!519191 ((_ is Star!9573) (regTwo!19659 r!17423)))))

(declare-fun b!3105051 () Bool)

(declare-fun e!1940092 () Regex!9573)

(assert (=> b!3105051 (= e!1940099 e!1940092)))

(assert (=> b!3105051 (= lt!1056447 call!219268)))

(declare-fun call!219264 () Regex!9573)

(assert (=> b!3105051 (= lt!1056450 call!219264)))

(declare-fun res!1271616 () Bool)

(declare-fun call!219265 () Bool)

(assert (=> b!3105051 (= res!1271616 call!219265)))

(declare-fun e!1940103 () Bool)

(assert (=> b!3105051 (=> res!1271616 e!1940103)))

(declare-fun c!519196 () Bool)

(assert (=> b!3105051 (= c!519196 e!1940103)))

(declare-fun b!3105052 () Bool)

(assert (=> b!3105052 (= e!1940092 EmptyLang!9573)))

(declare-fun b!3105053 () Bool)

(declare-fun c!519190 () Bool)

(declare-fun call!219266 () Bool)

(assert (=> b!3105053 (= c!519190 call!219266)))

(assert (=> b!3105053 (= e!1940101 e!1940102)))

(declare-fun bm!219259 () Bool)

(assert (=> bm!219259 (= call!219264 (simplify!528 (ite c!519188 (regOne!19659 (regTwo!19659 r!17423)) (regTwo!19658 (regTwo!19659 r!17423)))))))

(declare-fun b!3105054 () Bool)

(assert (=> b!3105054 (= e!1940103 call!219266)))

(declare-fun b!3105055 () Bool)

(assert (=> b!3105055 (= e!1940099 e!1940101)))

(assert (=> b!3105055 (= lt!1056449 call!219264)))

(assert (=> b!3105055 (= lt!1056448 call!219268)))

(declare-fun c!519187 () Bool)

(assert (=> b!3105055 (= c!519187 call!219265)))

(declare-fun b!3105056 () Bool)

(declare-fun c!519194 () Bool)

(declare-fun isEmptyExpr!628 (Regex!9573) Bool)

(assert (=> b!3105056 (= c!519194 (isEmptyExpr!628 lt!1056447))))

(declare-fun e!1940097 () Regex!9573)

(assert (=> b!3105056 (= e!1940092 e!1940097)))

(declare-fun b!3105057 () Bool)

(assert (=> b!3105057 (= e!1940093 (Star!9573 lt!1056452))))

(declare-fun b!3105058 () Bool)

(assert (=> b!3105058 (= e!1940096 EmptyExpr!9573)))

(declare-fun b!3105059 () Bool)

(declare-fun c!519195 () Bool)

(assert (=> b!3105059 (= c!519195 ((_ is EmptyExpr!9573) (regTwo!19659 r!17423)))))

(assert (=> b!3105059 (= e!1940100 e!1940096)))

(declare-fun bm!219260 () Bool)

(assert (=> bm!219260 (= call!219266 (isEmptyLang!624 (ite c!519188 lt!1056448 lt!1056450)))))

(declare-fun bm!219261 () Bool)

(assert (=> bm!219261 (= call!219262 (simplify!528 (ite c!519191 (reg!9902 (regTwo!19659 r!17423)) (ite c!519188 (regTwo!19659 (regTwo!19659 r!17423)) (regOne!19658 (regTwo!19659 r!17423))))))))

(declare-fun b!3105060 () Bool)

(assert (=> b!3105060 (= e!1940102 lt!1056449)))

(declare-fun b!3105061 () Bool)

(assert (=> b!3105061 (= e!1940097 e!1940098)))

(declare-fun c!519189 () Bool)

(assert (=> b!3105061 (= c!519189 call!219267)))

(declare-fun bm!219262 () Bool)

(assert (=> bm!219262 (= call!219265 call!219263)))

(declare-fun bm!219263 () Bool)

(assert (=> bm!219263 (= call!219267 (isEmptyExpr!628 (ite c!519191 lt!1056452 lt!1056450)))))

(declare-fun b!3105062 () Bool)

(assert (=> b!3105062 (= e!1940091 (= (nullable!3217 lt!1056451) (nullable!3217 (regTwo!19659 r!17423))))))

(declare-fun b!3105063 () Bool)

(assert (=> b!3105063 (= e!1940097 lt!1056450)))

(declare-fun b!3105064 () Bool)

(assert (=> b!3105064 (= e!1940100 (regTwo!19659 r!17423))))

(assert (= (and d!861316 c!519186) b!3105048))

(assert (= (and d!861316 (not c!519186)) b!3105045))

(assert (= (and b!3105045 c!519193) b!3105064))

(assert (= (and b!3105045 (not c!519193)) b!3105059))

(assert (= (and b!3105059 c!519195) b!3105058))

(assert (= (and b!3105059 (not c!519195)) b!3105050))

(assert (= (and b!3105050 c!519191) b!3105040))

(assert (= (and b!3105050 (not c!519191)) b!3105041))

(assert (= (and b!3105040 (not res!1271618)) b!3105047))

(assert (= (and b!3105040 c!519192) b!3105044))

(assert (= (and b!3105040 (not c!519192)) b!3105057))

(assert (= (and b!3105041 c!519188) b!3105055))

(assert (= (and b!3105041 (not c!519188)) b!3105051))

(assert (= (and b!3105055 c!519187) b!3105043))

(assert (= (and b!3105055 (not c!519187)) b!3105053))

(assert (= (and b!3105053 c!519190) b!3105060))

(assert (= (and b!3105053 (not c!519190)) b!3105042))

(assert (= (and b!3105051 (not res!1271616)) b!3105054))

(assert (= (and b!3105051 c!519196) b!3105052))

(assert (= (and b!3105051 (not c!519196)) b!3105056))

(assert (= (and b!3105056 c!519194) b!3105063))

(assert (= (and b!3105056 (not c!519194)) b!3105061))

(assert (= (and b!3105061 c!519189) b!3105046))

(assert (= (and b!3105061 (not c!519189)) b!3105049))

(assert (= (or b!3105055 b!3105051) bm!219259))

(assert (= (or b!3105055 b!3105051) bm!219258))

(assert (= (or b!3105053 b!3105054) bm!219260))

(assert (= (or b!3105055 b!3105051) bm!219262))

(assert (= (or b!3105047 b!3105061) bm!219263))

(assert (= (or b!3105040 bm!219258) bm!219261))

(assert (= (or b!3105040 bm!219262) bm!219257))

(assert (= (and d!861316 res!1271617) b!3105062))

(declare-fun m!3402501 () Bool)

(assert (=> bm!219259 m!3402501))

(declare-fun m!3402503 () Bool)

(assert (=> bm!219261 m!3402503))

(declare-fun m!3402505 () Bool)

(assert (=> d!861316 m!3402505))

(declare-fun m!3402507 () Bool)

(assert (=> d!861316 m!3402507))

(declare-fun m!3402509 () Bool)

(assert (=> b!3105056 m!3402509))

(declare-fun m!3402511 () Bool)

(assert (=> bm!219260 m!3402511))

(declare-fun m!3402513 () Bool)

(assert (=> bm!219257 m!3402513))

(declare-fun m!3402515 () Bool)

(assert (=> b!3105062 m!3402515))

(declare-fun m!3402517 () Bool)

(assert (=> b!3105062 m!3402517))

(declare-fun m!3402519 () Bool)

(assert (=> bm!219263 m!3402519))

(assert (=> b!3104606 d!861316))

(declare-fun d!861318 () Bool)

(declare-fun e!1940105 () Bool)

(assert (=> d!861318 e!1940105))

(declare-fun res!1271620 () Bool)

(assert (=> d!861318 (=> (not res!1271620) (not e!1940105))))

(declare-fun lt!1056457 () Regex!9573)

(assert (=> d!861318 (= res!1271620 (validRegex!4306 lt!1056457))))

(declare-fun e!1940118 () Regex!9573)

(assert (=> d!861318 (= lt!1056457 e!1940118)))

(declare-fun c!519197 () Bool)

(assert (=> d!861318 (= c!519197 ((_ is EmptyLang!9573) (regOne!19659 r!17423)))))

(assert (=> d!861318 (validRegex!4306 (regOne!19659 r!17423))))

(assert (=> d!861318 (= (simplify!528 (regOne!19659 r!17423)) lt!1056457)))

(declare-fun b!3105065 () Bool)

(declare-fun c!519203 () Bool)

(declare-fun e!1940108 () Bool)

(assert (=> b!3105065 (= c!519203 e!1940108)))

(declare-fun res!1271621 () Bool)

(assert (=> b!3105065 (=> res!1271621 e!1940108)))

(declare-fun call!219270 () Bool)

(assert (=> b!3105065 (= res!1271621 call!219270)))

(declare-fun lt!1056458 () Regex!9573)

(declare-fun call!219269 () Regex!9573)

(assert (=> b!3105065 (= lt!1056458 call!219269)))

(declare-fun e!1940109 () Regex!9573)

(declare-fun e!1940107 () Regex!9573)

(assert (=> b!3105065 (= e!1940109 e!1940107)))

(declare-fun b!3105066 () Bool)

(declare-fun c!519199 () Bool)

(assert (=> b!3105066 (= c!519199 ((_ is Union!9573) (regOne!19659 r!17423)))))

(declare-fun e!1940113 () Regex!9573)

(assert (=> b!3105066 (= e!1940109 e!1940113)))

(declare-fun b!3105067 () Bool)

(declare-fun e!1940116 () Regex!9573)

(declare-fun lt!1056455 () Regex!9573)

(declare-fun lt!1056454 () Regex!9573)

(assert (=> b!3105067 (= e!1940116 (Union!9573 lt!1056455 lt!1056454))))

(declare-fun b!3105068 () Bool)

(declare-fun e!1940115 () Regex!9573)

(assert (=> b!3105068 (= e!1940115 lt!1056454)))

(declare-fun lt!1056453 () Regex!9573)

(declare-fun c!519202 () Bool)

(declare-fun bm!219264 () Bool)

(assert (=> bm!219264 (= call!219270 (isEmptyLang!624 (ite c!519202 lt!1056458 (ite c!519199 lt!1056455 lt!1056453))))))

(declare-fun b!3105069 () Bool)

(assert (=> b!3105069 (= e!1940107 EmptyExpr!9573)))

(declare-fun bm!219265 () Bool)

(declare-fun call!219275 () Regex!9573)

(assert (=> bm!219265 (= call!219275 call!219269)))

(declare-fun b!3105070 () Bool)

(declare-fun e!1940114 () Regex!9573)

(assert (=> b!3105070 (= e!1940118 e!1940114)))

(declare-fun c!519204 () Bool)

(assert (=> b!3105070 (= c!519204 ((_ is ElementMatch!9573) (regOne!19659 r!17423)))))

(declare-fun b!3105071 () Bool)

(declare-fun e!1940112 () Regex!9573)

(assert (=> b!3105071 (= e!1940112 lt!1056453)))

(declare-fun b!3105072 () Bool)

(declare-fun call!219274 () Bool)

(assert (=> b!3105072 (= e!1940108 call!219274)))

(declare-fun b!3105073 () Bool)

(assert (=> b!3105073 (= e!1940118 EmptyLang!9573)))

(declare-fun b!3105074 () Bool)

(declare-fun lt!1056456 () Regex!9573)

(assert (=> b!3105074 (= e!1940112 (Concat!14894 lt!1056453 lt!1056456))))

(declare-fun b!3105075 () Bool)

(declare-fun e!1940110 () Regex!9573)

(assert (=> b!3105075 (= e!1940110 e!1940109)))

(assert (=> b!3105075 (= c!519202 ((_ is Star!9573) (regOne!19659 r!17423)))))

(declare-fun b!3105076 () Bool)

(declare-fun e!1940106 () Regex!9573)

(assert (=> b!3105076 (= e!1940113 e!1940106)))

(assert (=> b!3105076 (= lt!1056453 call!219275)))

(declare-fun call!219271 () Regex!9573)

(assert (=> b!3105076 (= lt!1056456 call!219271)))

(declare-fun res!1271619 () Bool)

(declare-fun call!219272 () Bool)

(assert (=> b!3105076 (= res!1271619 call!219272)))

(declare-fun e!1940117 () Bool)

(assert (=> b!3105076 (=> res!1271619 e!1940117)))

(declare-fun c!519207 () Bool)

(assert (=> b!3105076 (= c!519207 e!1940117)))

(declare-fun b!3105077 () Bool)

(assert (=> b!3105077 (= e!1940106 EmptyLang!9573)))

(declare-fun b!3105078 () Bool)

(declare-fun c!519201 () Bool)

(declare-fun call!219273 () Bool)

(assert (=> b!3105078 (= c!519201 call!219273)))

(assert (=> b!3105078 (= e!1940115 e!1940116)))

(declare-fun bm!219266 () Bool)

(assert (=> bm!219266 (= call!219271 (simplify!528 (ite c!519199 (regOne!19659 (regOne!19659 r!17423)) (regTwo!19658 (regOne!19659 r!17423)))))))

(declare-fun b!3105079 () Bool)

(assert (=> b!3105079 (= e!1940117 call!219273)))

(declare-fun b!3105080 () Bool)

(assert (=> b!3105080 (= e!1940113 e!1940115)))

(assert (=> b!3105080 (= lt!1056455 call!219271)))

(assert (=> b!3105080 (= lt!1056454 call!219275)))

(declare-fun c!519198 () Bool)

(assert (=> b!3105080 (= c!519198 call!219272)))

(declare-fun b!3105081 () Bool)

(declare-fun c!519205 () Bool)

(assert (=> b!3105081 (= c!519205 (isEmptyExpr!628 lt!1056453))))

(declare-fun e!1940111 () Regex!9573)

(assert (=> b!3105081 (= e!1940106 e!1940111)))

(declare-fun b!3105082 () Bool)

(assert (=> b!3105082 (= e!1940107 (Star!9573 lt!1056458))))

(declare-fun b!3105083 () Bool)

(assert (=> b!3105083 (= e!1940110 EmptyExpr!9573)))

(declare-fun b!3105084 () Bool)

(declare-fun c!519206 () Bool)

(assert (=> b!3105084 (= c!519206 ((_ is EmptyExpr!9573) (regOne!19659 r!17423)))))

(assert (=> b!3105084 (= e!1940114 e!1940110)))

(declare-fun bm!219267 () Bool)

(assert (=> bm!219267 (= call!219273 (isEmptyLang!624 (ite c!519199 lt!1056454 lt!1056456)))))

(declare-fun bm!219268 () Bool)

(assert (=> bm!219268 (= call!219269 (simplify!528 (ite c!519202 (reg!9902 (regOne!19659 r!17423)) (ite c!519199 (regTwo!19659 (regOne!19659 r!17423)) (regOne!19658 (regOne!19659 r!17423))))))))

(declare-fun b!3105085 () Bool)

(assert (=> b!3105085 (= e!1940116 lt!1056455)))

(declare-fun b!3105086 () Bool)

(assert (=> b!3105086 (= e!1940111 e!1940112)))

(declare-fun c!519200 () Bool)

(assert (=> b!3105086 (= c!519200 call!219274)))

(declare-fun bm!219269 () Bool)

(assert (=> bm!219269 (= call!219272 call!219270)))

(declare-fun bm!219270 () Bool)

(assert (=> bm!219270 (= call!219274 (isEmptyExpr!628 (ite c!519202 lt!1056458 lt!1056456)))))

(declare-fun b!3105087 () Bool)

(assert (=> b!3105087 (= e!1940105 (= (nullable!3217 lt!1056457) (nullable!3217 (regOne!19659 r!17423))))))

(declare-fun b!3105088 () Bool)

(assert (=> b!3105088 (= e!1940111 lt!1056456)))

(declare-fun b!3105089 () Bool)

(assert (=> b!3105089 (= e!1940114 (regOne!19659 r!17423))))

(assert (= (and d!861318 c!519197) b!3105073))

(assert (= (and d!861318 (not c!519197)) b!3105070))

(assert (= (and b!3105070 c!519204) b!3105089))

(assert (= (and b!3105070 (not c!519204)) b!3105084))

(assert (= (and b!3105084 c!519206) b!3105083))

(assert (= (and b!3105084 (not c!519206)) b!3105075))

(assert (= (and b!3105075 c!519202) b!3105065))

(assert (= (and b!3105075 (not c!519202)) b!3105066))

(assert (= (and b!3105065 (not res!1271621)) b!3105072))

(assert (= (and b!3105065 c!519203) b!3105069))

(assert (= (and b!3105065 (not c!519203)) b!3105082))

(assert (= (and b!3105066 c!519199) b!3105080))

(assert (= (and b!3105066 (not c!519199)) b!3105076))

(assert (= (and b!3105080 c!519198) b!3105068))

(assert (= (and b!3105080 (not c!519198)) b!3105078))

(assert (= (and b!3105078 c!519201) b!3105085))

(assert (= (and b!3105078 (not c!519201)) b!3105067))

(assert (= (and b!3105076 (not res!1271619)) b!3105079))

(assert (= (and b!3105076 c!519207) b!3105077))

(assert (= (and b!3105076 (not c!519207)) b!3105081))

(assert (= (and b!3105081 c!519205) b!3105088))

(assert (= (and b!3105081 (not c!519205)) b!3105086))

(assert (= (and b!3105086 c!519200) b!3105071))

(assert (= (and b!3105086 (not c!519200)) b!3105074))

(assert (= (or b!3105080 b!3105076) bm!219266))

(assert (= (or b!3105080 b!3105076) bm!219265))

(assert (= (or b!3105078 b!3105079) bm!219267))

(assert (= (or b!3105080 b!3105076) bm!219269))

(assert (= (or b!3105072 b!3105086) bm!219270))

(assert (= (or b!3105065 bm!219265) bm!219268))

(assert (= (or b!3105065 bm!219269) bm!219264))

(assert (= (and d!861318 res!1271620) b!3105087))

(declare-fun m!3402521 () Bool)

(assert (=> bm!219266 m!3402521))

(declare-fun m!3402523 () Bool)

(assert (=> bm!219268 m!3402523))

(declare-fun m!3402525 () Bool)

(assert (=> d!861318 m!3402525))

(assert (=> d!861318 m!3402385))

(declare-fun m!3402527 () Bool)

(assert (=> b!3105081 m!3402527))

(declare-fun m!3402529 () Bool)

(assert (=> bm!219267 m!3402529))

(declare-fun m!3402531 () Bool)

(assert (=> bm!219264 m!3402531))

(declare-fun m!3402533 () Bool)

(assert (=> b!3105087 m!3402533))

(declare-fun m!3402535 () Bool)

(assert (=> b!3105087 m!3402535))

(declare-fun m!3402537 () Bool)

(assert (=> bm!219270 m!3402537))

(assert (=> b!3104606 d!861318))

(declare-fun bm!219271 () Bool)

(declare-fun call!219276 () Bool)

(declare-fun call!219278 () Bool)

(assert (=> bm!219271 (= call!219276 call!219278)))

(declare-fun b!3105090 () Bool)

(declare-fun e!1940123 () Bool)

(declare-fun call!219277 () Bool)

(assert (=> b!3105090 (= e!1940123 call!219277)))

(declare-fun bm!219272 () Bool)

(declare-fun c!519209 () Bool)

(assert (=> bm!219272 (= call!219277 (validRegex!4306 (ite c!519209 (regTwo!19659 r!17423) (regOne!19658 r!17423))))))

(declare-fun d!861320 () Bool)

(declare-fun res!1271625 () Bool)

(declare-fun e!1940122 () Bool)

(assert (=> d!861320 (=> res!1271625 e!1940122)))

(assert (=> d!861320 (= res!1271625 ((_ is ElementMatch!9573) r!17423))))

(assert (=> d!861320 (= (validRegex!4306 r!17423) e!1940122)))

(declare-fun b!3105091 () Bool)

(declare-fun e!1940121 () Bool)

(declare-fun e!1940120 () Bool)

(assert (=> b!3105091 (= e!1940121 e!1940120)))

(declare-fun res!1271624 () Bool)

(assert (=> b!3105091 (=> (not res!1271624) (not e!1940120))))

(assert (=> b!3105091 (= res!1271624 call!219277)))

(declare-fun b!3105092 () Bool)

(declare-fun e!1940119 () Bool)

(assert (=> b!3105092 (= e!1940119 call!219278)))

(declare-fun c!519208 () Bool)

(declare-fun bm!219273 () Bool)

(assert (=> bm!219273 (= call!219278 (validRegex!4306 (ite c!519208 (reg!9902 r!17423) (ite c!519209 (regOne!19659 r!17423) (regTwo!19658 r!17423)))))))

(declare-fun b!3105093 () Bool)

(declare-fun res!1271626 () Bool)

(assert (=> b!3105093 (=> res!1271626 e!1940121)))

(assert (=> b!3105093 (= res!1271626 (not ((_ is Concat!14894) r!17423)))))

(declare-fun e!1940125 () Bool)

(assert (=> b!3105093 (= e!1940125 e!1940121)))

(declare-fun b!3105094 () Bool)

(assert (=> b!3105094 (= e!1940120 call!219276)))

(declare-fun b!3105095 () Bool)

(declare-fun e!1940124 () Bool)

(assert (=> b!3105095 (= e!1940124 e!1940119)))

(declare-fun res!1271623 () Bool)

(assert (=> b!3105095 (= res!1271623 (not (nullable!3217 (reg!9902 r!17423))))))

(assert (=> b!3105095 (=> (not res!1271623) (not e!1940119))))

(declare-fun b!3105096 () Bool)

(assert (=> b!3105096 (= e!1940122 e!1940124)))

(assert (=> b!3105096 (= c!519208 ((_ is Star!9573) r!17423))))

(declare-fun b!3105097 () Bool)

(assert (=> b!3105097 (= e!1940124 e!1940125)))

(assert (=> b!3105097 (= c!519209 ((_ is Union!9573) r!17423))))

(declare-fun b!3105098 () Bool)

(declare-fun res!1271622 () Bool)

(assert (=> b!3105098 (=> (not res!1271622) (not e!1940123))))

(assert (=> b!3105098 (= res!1271622 call!219276)))

(assert (=> b!3105098 (= e!1940125 e!1940123)))

(assert (= (and d!861320 (not res!1271625)) b!3105096))

(assert (= (and b!3105096 c!519208) b!3105095))

(assert (= (and b!3105096 (not c!519208)) b!3105097))

(assert (= (and b!3105095 res!1271623) b!3105092))

(assert (= (and b!3105097 c!519209) b!3105098))

(assert (= (and b!3105097 (not c!519209)) b!3105093))

(assert (= (and b!3105098 res!1271622) b!3105090))

(assert (= (and b!3105093 (not res!1271626)) b!3105091))

(assert (= (and b!3105091 res!1271624) b!3105094))

(assert (= (or b!3105098 b!3105094) bm!219271))

(assert (= (or b!3105090 b!3105091) bm!219272))

(assert (= (or b!3105092 bm!219271) bm!219273))

(declare-fun m!3402539 () Bool)

(assert (=> bm!219272 m!3402539))

(declare-fun m!3402541 () Bool)

(assert (=> bm!219273 m!3402541))

(declare-fun m!3402543 () Bool)

(assert (=> b!3105095 m!3402543))

(assert (=> start!294420 d!861320))

(declare-fun e!1940128 () Bool)

(assert (=> b!3104609 (= tp!975329 e!1940128)))

(declare-fun b!3105110 () Bool)

(declare-fun tp!975380 () Bool)

(declare-fun tp!975381 () Bool)

(assert (=> b!3105110 (= e!1940128 (and tp!975380 tp!975381))))

(declare-fun b!3105109 () Bool)

(assert (=> b!3105109 (= e!1940128 tp_is_empty!16709)))

(declare-fun b!3105111 () Bool)

(declare-fun tp!975378 () Bool)

(assert (=> b!3105111 (= e!1940128 tp!975378)))

(declare-fun b!3105112 () Bool)

(declare-fun tp!975379 () Bool)

(declare-fun tp!975382 () Bool)

(assert (=> b!3105112 (= e!1940128 (and tp!975379 tp!975382))))

(assert (= (and b!3104609 ((_ is ElementMatch!9573) (reg!9902 r!17423))) b!3105109))

(assert (= (and b!3104609 ((_ is Concat!14894) (reg!9902 r!17423))) b!3105110))

(assert (= (and b!3104609 ((_ is Star!9573) (reg!9902 r!17423))) b!3105111))

(assert (= (and b!3104609 ((_ is Union!9573) (reg!9902 r!17423))) b!3105112))

(declare-fun e!1940129 () Bool)

(assert (=> b!3104612 (= tp!975326 e!1940129)))

(declare-fun b!3105114 () Bool)

(declare-fun tp!975385 () Bool)

(declare-fun tp!975386 () Bool)

(assert (=> b!3105114 (= e!1940129 (and tp!975385 tp!975386))))

(declare-fun b!3105113 () Bool)

(assert (=> b!3105113 (= e!1940129 tp_is_empty!16709)))

(declare-fun b!3105115 () Bool)

(declare-fun tp!975383 () Bool)

(assert (=> b!3105115 (= e!1940129 tp!975383)))

(declare-fun b!3105116 () Bool)

(declare-fun tp!975384 () Bool)

(declare-fun tp!975387 () Bool)

(assert (=> b!3105116 (= e!1940129 (and tp!975384 tp!975387))))

(assert (= (and b!3104612 ((_ is ElementMatch!9573) (regOne!19659 r!17423))) b!3105113))

(assert (= (and b!3104612 ((_ is Concat!14894) (regOne!19659 r!17423))) b!3105114))

(assert (= (and b!3104612 ((_ is Star!9573) (regOne!19659 r!17423))) b!3105115))

(assert (= (and b!3104612 ((_ is Union!9573) (regOne!19659 r!17423))) b!3105116))

(declare-fun e!1940130 () Bool)

(assert (=> b!3104612 (= tp!975325 e!1940130)))

(declare-fun b!3105118 () Bool)

(declare-fun tp!975390 () Bool)

(declare-fun tp!975391 () Bool)

(assert (=> b!3105118 (= e!1940130 (and tp!975390 tp!975391))))

(declare-fun b!3105117 () Bool)

(assert (=> b!3105117 (= e!1940130 tp_is_empty!16709)))

(declare-fun b!3105119 () Bool)

(declare-fun tp!975388 () Bool)

(assert (=> b!3105119 (= e!1940130 tp!975388)))

(declare-fun b!3105120 () Bool)

(declare-fun tp!975389 () Bool)

(declare-fun tp!975392 () Bool)

(assert (=> b!3105120 (= e!1940130 (and tp!975389 tp!975392))))

(assert (= (and b!3104612 ((_ is ElementMatch!9573) (regTwo!19659 r!17423))) b!3105117))

(assert (= (and b!3104612 ((_ is Concat!14894) (regTwo!19659 r!17423))) b!3105118))

(assert (= (and b!3104612 ((_ is Star!9573) (regTwo!19659 r!17423))) b!3105119))

(assert (= (and b!3104612 ((_ is Union!9573) (regTwo!19659 r!17423))) b!3105120))

(declare-fun b!3105125 () Bool)

(declare-fun e!1940133 () Bool)

(declare-fun tp!975395 () Bool)

(assert (=> b!3105125 (= e!1940133 (and tp_is_empty!16709 tp!975395))))

(assert (=> b!3104607 (= tp!975327 e!1940133)))

(assert (= (and b!3104607 ((_ is Cons!35314) (t!234503 s!11993))) b!3105125))

(declare-fun e!1940134 () Bool)

(assert (=> b!3104613 (= tp!975324 e!1940134)))

(declare-fun b!3105127 () Bool)

(declare-fun tp!975398 () Bool)

(declare-fun tp!975399 () Bool)

(assert (=> b!3105127 (= e!1940134 (and tp!975398 tp!975399))))

(declare-fun b!3105126 () Bool)

(assert (=> b!3105126 (= e!1940134 tp_is_empty!16709)))

(declare-fun b!3105128 () Bool)

(declare-fun tp!975396 () Bool)

(assert (=> b!3105128 (= e!1940134 tp!975396)))

(declare-fun b!3105129 () Bool)

(declare-fun tp!975397 () Bool)

(declare-fun tp!975400 () Bool)

(assert (=> b!3105129 (= e!1940134 (and tp!975397 tp!975400))))

(assert (= (and b!3104613 ((_ is ElementMatch!9573) (regOne!19658 r!17423))) b!3105126))

(assert (= (and b!3104613 ((_ is Concat!14894) (regOne!19658 r!17423))) b!3105127))

(assert (= (and b!3104613 ((_ is Star!9573) (regOne!19658 r!17423))) b!3105128))

(assert (= (and b!3104613 ((_ is Union!9573) (regOne!19658 r!17423))) b!3105129))

(declare-fun e!1940135 () Bool)

(assert (=> b!3104613 (= tp!975328 e!1940135)))

(declare-fun b!3105131 () Bool)

(declare-fun tp!975403 () Bool)

(declare-fun tp!975404 () Bool)

(assert (=> b!3105131 (= e!1940135 (and tp!975403 tp!975404))))

(declare-fun b!3105130 () Bool)

(assert (=> b!3105130 (= e!1940135 tp_is_empty!16709)))

(declare-fun b!3105132 () Bool)

(declare-fun tp!975401 () Bool)

(assert (=> b!3105132 (= e!1940135 tp!975401)))

(declare-fun b!3105133 () Bool)

(declare-fun tp!975402 () Bool)

(declare-fun tp!975405 () Bool)

(assert (=> b!3105133 (= e!1940135 (and tp!975402 tp!975405))))

(assert (= (and b!3104613 ((_ is ElementMatch!9573) (regTwo!19658 r!17423))) b!3105130))

(assert (= (and b!3104613 ((_ is Concat!14894) (regTwo!19658 r!17423))) b!3105131))

(assert (= (and b!3104613 ((_ is Star!9573) (regTwo!19658 r!17423))) b!3105132))

(assert (= (and b!3104613 ((_ is Union!9573) (regTwo!19658 r!17423))) b!3105133))

(check-sat (not b!3104985) (not bm!219270) (not bm!219266) (not bm!219184) (not d!861318) (not b!3105133) (not b!3105125) (not bm!219227) (not b!3105110) (not bm!219272) (not bm!219268) (not b!3104870) (not b!3104976) (not b!3105114) (not b!3105118) (not b!3104977) (not b!3105115) (not b!3105095) (not b!3105111) (not bm!219257) (not bm!219263) (not b!3104637) (not b!3105132) (not b!3104984) (not bm!219226) (not bm!219267) (not b!3105120) (not b!3105128) (not b!3105129) (not bm!219260) (not bm!219183) (not b!3105131) (not b!3104981) (not b!3105087) (not b!3105056) (not b!3105116) (not b!3104979) (not b!3105112) (not b!3105127) (not d!861310) (not bm!219273) (not b!3105119) (not b!3104868) (not bm!219242) tp_is_empty!16709 (not d!861304) (not b!3105062) (not bm!219259) (not b!3105081) (not bm!219264) (not d!861316) (not bm!219261))
(check-sat)
