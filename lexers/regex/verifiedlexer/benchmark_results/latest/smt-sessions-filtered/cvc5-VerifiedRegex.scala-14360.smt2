; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749514 () Bool)

(assert start!749514)

(declare-fun b!7940907 () Bool)

(declare-fun e!4685475 () Bool)

(declare-fun tp!2361096 () Bool)

(declare-fun tp!2361092 () Bool)

(assert (=> b!7940907 (= e!4685475 (and tp!2361096 tp!2361092))))

(declare-fun b!7940908 () Bool)

(declare-fun res!3150136 () Bool)

(declare-fun e!4685474 () Bool)

(assert (=> b!7940908 (=> (not res!3150136) (not e!4685474))))

(declare-datatypes ((C!43138 0))(
  ( (C!43139 (val!32117 Int)) )
))
(declare-datatypes ((List!74629 0))(
  ( (Nil!74505) (Cons!74505 (h!80953 C!43138) (t!390372 List!74629)) )
))
(declare-fun input!6711 () List!74629)

(declare-fun isPrefix!6500 (List!74629 List!74629) Bool)

(assert (=> b!7940908 (= res!3150136 (isPrefix!6500 Nil!74505 input!6711))))

(declare-fun b!7940909 () Bool)

(declare-fun res!3150133 () Bool)

(assert (=> b!7940909 (=> (not res!3150133) (not e!4685474))))

(declare-datatypes ((Regex!21400 0))(
  ( (ElementMatch!21400 (c!1458927 C!43138)) (Concat!30399 (regOne!43312 Regex!21400) (regTwo!43312 Regex!21400)) (EmptyExpr!21400) (Star!21400 (reg!21729 Regex!21400)) (EmptyLang!21400) (Union!21400 (regOne!43313 Regex!21400) (regTwo!43313 Regex!21400)) )
))
(declare-fun r!15654 () Regex!21400)

(declare-fun derivative!588 (Regex!21400 List!74629) Regex!21400)

(assert (=> b!7940909 (= res!3150133 (= (derivative!588 r!15654 Nil!74505) r!15654))))

(declare-fun b!7940910 () Bool)

(assert (=> b!7940910 (= e!4685474 (not true))))

(declare-datatypes ((tuple2!70490 0))(
  ( (tuple2!70491 (_1!38548 List!74629) (_2!38548 List!74629)) )
))
(declare-fun lt!2696365 () tuple2!70490)

(declare-fun lt!2696360 () Int)

(declare-fun lt!2696362 () Int)

(declare-fun findLongestMatchInner!2195 (Regex!21400 List!74629 Int List!74629 List!74629 Int) tuple2!70490)

(assert (=> b!7940910 (= lt!2696365 (findLongestMatchInner!2195 r!15654 Nil!74505 lt!2696362 input!6711 input!6711 lt!2696360))))

(declare-fun e!4685472 () Bool)

(assert (=> b!7940910 e!4685472))

(declare-fun res!3150135 () Bool)

(assert (=> b!7940910 (=> res!3150135 e!4685472)))

(declare-fun lt!2696363 () tuple2!70490)

(declare-fun isEmpty!42820 (List!74629) Bool)

(assert (=> b!7940910 (= res!3150135 (isEmpty!42820 (_1!38548 lt!2696363)))))

(declare-fun lt!2696364 () List!74629)

(assert (=> b!7940910 (= lt!2696363 (findLongestMatchInner!2195 r!15654 Nil!74505 lt!2696362 lt!2696364 input!6711 lt!2696360))))

(declare-fun size!43337 (List!74629) Int)

(assert (=> b!7940910 (= lt!2696360 (size!43337 input!6711))))

(declare-fun getSuffix!3711 (List!74629 List!74629) List!74629)

(assert (=> b!7940910 (= lt!2696364 (getSuffix!3711 input!6711 Nil!74505))))

(assert (=> b!7940910 (= lt!2696362 (size!43337 Nil!74505))))

(declare-datatypes ((Unit!169628 0))(
  ( (Unit!169629) )
))
(declare-fun lt!2696361 () Unit!169628)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!38 (Regex!21400 Regex!21400 List!74629 List!74629) Unit!169628)

(assert (=> b!7940910 (= lt!2696361 (longestMatchIsAcceptedByMatchOrIsEmptyRec!38 r!15654 r!15654 Nil!74505 input!6711))))

(declare-fun b!7940911 () Bool)

(declare-fun tp!2361095 () Bool)

(assert (=> b!7940911 (= e!4685475 tp!2361095)))

(declare-fun b!7940912 () Bool)

(declare-fun e!4685473 () Bool)

(declare-fun tp_is_empty!53343 () Bool)

(declare-fun tp!2361094 () Bool)

(assert (=> b!7940912 (= e!4685473 (and tp_is_empty!53343 tp!2361094))))

(declare-fun b!7940913 () Bool)

(declare-fun tp!2361093 () Bool)

(declare-fun tp!2361091 () Bool)

(assert (=> b!7940913 (= e!4685475 (and tp!2361093 tp!2361091))))

(declare-fun res!3150134 () Bool)

(assert (=> start!749514 (=> (not res!3150134) (not e!4685474))))

(declare-fun validRegex!11704 (Regex!21400) Bool)

(assert (=> start!749514 (= res!3150134 (validRegex!11704 r!15654))))

(assert (=> start!749514 e!4685474))

(assert (=> start!749514 e!4685475))

(assert (=> start!749514 e!4685473))

(declare-fun b!7940914 () Bool)

(assert (=> b!7940914 (= e!4685475 tp_is_empty!53343)))

(declare-fun b!7940915 () Bool)

(declare-fun matchR!10707 (Regex!21400 List!74629) Bool)

(assert (=> b!7940915 (= e!4685472 (matchR!10707 r!15654 (_1!38548 lt!2696363)))))

(assert (= (and start!749514 res!3150134) b!7940908))

(assert (= (and b!7940908 res!3150136) b!7940909))

(assert (= (and b!7940909 res!3150133) b!7940910))

(assert (= (and b!7940910 (not res!3150135)) b!7940915))

(assert (= (and start!749514 (is-ElementMatch!21400 r!15654)) b!7940914))

(assert (= (and start!749514 (is-Concat!30399 r!15654)) b!7940907))

(assert (= (and start!749514 (is-Star!21400 r!15654)) b!7940911))

(assert (= (and start!749514 (is-Union!21400 r!15654)) b!7940913))

(assert (= (and start!749514 (is-Cons!74505 input!6711)) b!7940912))

(declare-fun m!8329902 () Bool)

(assert (=> start!749514 m!8329902))

(declare-fun m!8329904 () Bool)

(assert (=> b!7940915 m!8329904))

(declare-fun m!8329906 () Bool)

(assert (=> b!7940908 m!8329906))

(declare-fun m!8329908 () Bool)

(assert (=> b!7940910 m!8329908))

(declare-fun m!8329910 () Bool)

(assert (=> b!7940910 m!8329910))

(declare-fun m!8329912 () Bool)

(assert (=> b!7940910 m!8329912))

(declare-fun m!8329914 () Bool)

(assert (=> b!7940910 m!8329914))

(declare-fun m!8329916 () Bool)

(assert (=> b!7940910 m!8329916))

(declare-fun m!8329918 () Bool)

(assert (=> b!7940910 m!8329918))

(declare-fun m!8329920 () Bool)

(assert (=> b!7940910 m!8329920))

(declare-fun m!8329922 () Bool)

(assert (=> b!7940909 m!8329922))

(push 1)

(assert (not b!7940915))

(assert (not b!7940911))

(assert tp_is_empty!53343)

(assert (not b!7940913))

(assert (not b!7940908))

(assert (not start!749514))

(assert (not b!7940909))

(assert (not b!7940907))

(assert (not b!7940910))

(assert (not b!7940912))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

