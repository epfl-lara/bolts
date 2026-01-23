; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728384 () Bool)

(assert start!728384)

(declare-fun b!7526946 () Bool)

(declare-fun e!4486393 () Bool)

(declare-fun tp!2187619 () Bool)

(declare-fun tp!2187622 () Bool)

(assert (=> b!7526946 (= e!4486393 (and tp!2187619 tp!2187622))))

(declare-fun res!3016695 () Bool)

(declare-fun e!4486392 () Bool)

(assert (=> start!728384 (=> (not res!3016695) (not e!4486392))))

(declare-datatypes ((C!39980 0))(
  ( (C!39981 (val!30430 Int)) )
))
(declare-datatypes ((Regex!19827 0))(
  ( (ElementMatch!19827 (c!1390354 C!39980)) (Concat!28672 (regOne!40166 Regex!19827) (regTwo!40166 Regex!19827)) (EmptyExpr!19827) (Star!19827 (reg!20156 Regex!19827)) (EmptyLang!19827) (Union!19827 (regOne!40167 Regex!19827) (regTwo!40167 Regex!19827)) )
))
(declare-fun baseR!93 () Regex!19827)

(declare-fun validRegex!10255 (Regex!19827) Bool)

(assert (=> start!728384 (= res!3016695 (validRegex!10255 baseR!93))))

(assert (=> start!728384 e!4486392))

(assert (=> start!728384 e!4486393))

(declare-fun e!4486394 () Bool)

(assert (=> start!728384 e!4486394))

(declare-fun e!4486390 () Bool)

(assert (=> start!728384 e!4486390))

(declare-fun e!4486395 () Bool)

(assert (=> start!728384 e!4486395))

(declare-fun b!7526947 () Bool)

(declare-fun tp_is_empty!50009 () Bool)

(declare-fun tp!2187623 () Bool)

(assert (=> b!7526947 (= e!4486394 (and tp_is_empty!50009 tp!2187623))))

(declare-fun b!7526948 () Bool)

(declare-fun tp!2187625 () Bool)

(assert (=> b!7526948 (= e!4486390 (and tp_is_empty!50009 tp!2187625))))

(declare-fun b!7526949 () Bool)

(declare-fun res!3016692 () Bool)

(declare-fun e!4486391 () Bool)

(assert (=> b!7526949 (=> (not res!3016692) (not e!4486391))))

(declare-datatypes ((List!72710 0))(
  ( (Nil!72586) (Cons!72586 (h!79034 C!39980) (t!387417 List!72710)) )
))
(declare-fun returnP!57 () List!72710)

(declare-fun input!6727 () List!72710)

(declare-datatypes ((tuple2!68796 0))(
  ( (tuple2!68797 (_1!37701 List!72710) (_2!37701 List!72710)) )
))
(declare-fun findLongestMatchInner!2106 (Regex!19827 List!72710 Int List!72710 List!72710 Int) tuple2!68796)

(declare-fun size!42323 (List!72710) Int)

(assert (=> b!7526949 (= res!3016692 (= (_1!37701 (findLongestMatchInner!2106 baseR!93 Nil!72586 (size!42323 Nil!72586) input!6727 input!6727 (size!42323 input!6727))) returnP!57))))

(declare-fun b!7526950 () Bool)

(assert (=> b!7526950 (= e!4486393 tp_is_empty!50009)))

(declare-fun b!7526951 () Bool)

(assert (=> b!7526951 (= e!4486391 false)))

(declare-fun lt!2639042 () Bool)

(declare-fun isPrefix!6033 (List!72710 List!72710) Bool)

(assert (=> b!7526951 (= lt!2639042 (isPrefix!6033 Nil!72586 input!6727))))

(declare-fun b!7526952 () Bool)

(declare-fun res!3016693 () Bool)

(assert (=> b!7526952 (=> (not res!3016693) (not e!4486391))))

(declare-fun bigger!57 () List!72710)

(declare-fun matchR!9431 (Regex!19827 List!72710) Bool)

(assert (=> b!7526952 (= res!3016693 (matchR!9431 baseR!93 bigger!57))))

(declare-fun b!7526953 () Bool)

(declare-fun tp!2187618 () Bool)

(assert (=> b!7526953 (= e!4486395 (and tp_is_empty!50009 tp!2187618))))

(declare-fun b!7526954 () Bool)

(declare-fun tp!2187621 () Bool)

(assert (=> b!7526954 (= e!4486393 tp!2187621)))

(declare-fun b!7526955 () Bool)

(declare-fun tp!2187624 () Bool)

(declare-fun tp!2187620 () Bool)

(assert (=> b!7526955 (= e!4486393 (and tp!2187624 tp!2187620))))

(declare-fun b!7526956 () Bool)

(declare-fun res!3016696 () Bool)

(assert (=> b!7526956 (=> (not res!3016696) (not e!4486392))))

(assert (=> b!7526956 (= res!3016696 (isPrefix!6033 bigger!57 input!6727))))

(declare-fun b!7526957 () Bool)

(declare-fun res!3016694 () Bool)

(assert (=> b!7526957 (=> (not res!3016694) (not e!4486392))))

(assert (=> b!7526957 (= res!3016694 (isPrefix!6033 returnP!57 input!6727))))

(declare-fun b!7526958 () Bool)

(assert (=> b!7526958 (= e!4486392 e!4486391)))

(declare-fun res!3016698 () Bool)

(assert (=> b!7526958 (=> (not res!3016698) (not e!4486391))))

(declare-fun lt!2639043 () Int)

(declare-fun lt!2639044 () Int)

(assert (=> b!7526958 (= res!3016698 (>= lt!2639043 lt!2639044))))

(assert (=> b!7526958 (= lt!2639044 (size!42323 returnP!57))))

(assert (=> b!7526958 (= lt!2639043 (size!42323 bigger!57))))

(declare-fun b!7526959 () Bool)

(declare-fun res!3016697 () Bool)

(assert (=> b!7526959 (=> (not res!3016697) (not e!4486391))))

(assert (=> b!7526959 (= res!3016697 (not (= lt!2639043 lt!2639044)))))

(assert (= (and start!728384 res!3016695) b!7526957))

(assert (= (and b!7526957 res!3016694) b!7526956))

(assert (= (and b!7526956 res!3016696) b!7526958))

(assert (= (and b!7526958 res!3016698) b!7526949))

(assert (= (and b!7526949 res!3016692) b!7526959))

(assert (= (and b!7526959 res!3016697) b!7526952))

(assert (= (and b!7526952 res!3016693) b!7526951))

(get-info :version)

(assert (= (and start!728384 ((_ is ElementMatch!19827) baseR!93)) b!7526950))

(assert (= (and start!728384 ((_ is Concat!28672) baseR!93)) b!7526955))

(assert (= (and start!728384 ((_ is Star!19827) baseR!93)) b!7526954))

(assert (= (and start!728384 ((_ is Union!19827) baseR!93)) b!7526946))

(assert (= (and start!728384 ((_ is Cons!72586) returnP!57)) b!7526947))

(assert (= (and start!728384 ((_ is Cons!72586) input!6727)) b!7526948))

(assert (= (and start!728384 ((_ is Cons!72586) bigger!57)) b!7526953))

(declare-fun m!8102002 () Bool)

(assert (=> b!7526949 m!8102002))

(declare-fun m!8102004 () Bool)

(assert (=> b!7526949 m!8102004))

(assert (=> b!7526949 m!8102002))

(assert (=> b!7526949 m!8102004))

(declare-fun m!8102006 () Bool)

(assert (=> b!7526949 m!8102006))

(declare-fun m!8102008 () Bool)

(assert (=> b!7526957 m!8102008))

(declare-fun m!8102010 () Bool)

(assert (=> start!728384 m!8102010))

(declare-fun m!8102012 () Bool)

(assert (=> b!7526956 m!8102012))

(declare-fun m!8102014 () Bool)

(assert (=> b!7526951 m!8102014))

(declare-fun m!8102016 () Bool)

(assert (=> b!7526958 m!8102016))

(declare-fun m!8102018 () Bool)

(assert (=> b!7526958 m!8102018))

(declare-fun m!8102020 () Bool)

(assert (=> b!7526952 m!8102020))

(check-sat (not b!7526952) (not b!7526947) tp_is_empty!50009 (not start!728384) (not b!7526949) (not b!7526953) (not b!7526955) (not b!7526958) (not b!7526948) (not b!7526951) (not b!7526954) (not b!7526956) (not b!7526957) (not b!7526946))
(check-sat)
