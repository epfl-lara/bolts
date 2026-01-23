; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13550 () Bool)

(assert start!13550)

(declare-fun b!131020 () Bool)

(declare-fun e!75560 () Bool)

(declare-fun tp_is_empty!1401 () Bool)

(declare-fun tp!70374 () Bool)

(assert (=> b!131020 (= e!75560 (and tp_is_empty!1401 tp!70374))))

(declare-fun b!131021 () Bool)

(declare-fun e!75559 () Bool)

(declare-fun tp!70373 () Bool)

(assert (=> b!131021 (= e!75559 (and tp_is_empty!1401 tp!70373))))

(declare-fun b!131022 () Bool)

(declare-fun e!75561 () Bool)

(declare-datatypes ((B!757 0))(
  ( (B!758 (val!864 Int)) )
))
(declare-datatypes ((List!2182 0))(
  ( (Nil!2176) (Cons!2176 (h!7573 B!757) (t!22768 List!2182)) )
))
(declare-fun newList!20 () List!2182)

(declare-fun ListPrimitiveSize!20 (List!2182) Int)

(assert (=> b!131022 (= e!75561 (not (< (ListPrimitiveSize!20 (t!22768 newList!20)) (ListPrimitiveSize!20 newList!20))))))

(declare-fun baseList!9 () List!2182)

(declare-fun subseq!45 (List!2182 List!2182) Bool)

(assert (=> b!131022 (subseq!45 baseList!9 baseList!9)))

(declare-datatypes ((Unit!1732 0))(
  ( (Unit!1733) )
))
(declare-fun lt!39548 () Unit!1732)

(declare-fun lemmaSubseqRefl!32 (List!2182) Unit!1732)

(assert (=> b!131022 (= lt!39548 (lemmaSubseqRefl!32 baseList!9))))

(declare-fun res!60692 () Bool)

(assert (=> start!13550 (=> (not res!60692) (not e!75561))))

(declare-fun noDuplicate!72 (List!2182) Bool)

(assert (=> start!13550 (= res!60692 (noDuplicate!72 baseList!9))))

(assert (=> start!13550 e!75561))

(assert (=> start!13550 e!75560))

(assert (=> start!13550 e!75559))

(declare-fun b!131023 () Bool)

(declare-fun res!60691 () Bool)

(assert (=> b!131023 (=> (not res!60691) (not e!75561))))

(get-info :version)

(assert (=> b!131023 (= res!60691 ((_ is Cons!2176) newList!20))))

(declare-fun b!131024 () Bool)

(declare-fun res!60690 () Bool)

(assert (=> b!131024 (=> (not res!60690) (not e!75561))))

(declare-fun contains!356 (List!2182 B!757) Bool)

(assert (=> b!131024 (= res!60690 (contains!356 baseList!9 (h!7573 newList!20)))))

(assert (= (and start!13550 res!60692) b!131023))

(assert (= (and b!131023 res!60691) b!131024))

(assert (= (and b!131024 res!60690) b!131022))

(assert (= (and start!13550 ((_ is Cons!2176) baseList!9)) b!131020))

(assert (= (and start!13550 ((_ is Cons!2176) newList!20)) b!131021))

(declare-fun m!115693 () Bool)

(assert (=> b!131022 m!115693))

(declare-fun m!115695 () Bool)

(assert (=> b!131022 m!115695))

(declare-fun m!115697 () Bool)

(assert (=> b!131022 m!115697))

(declare-fun m!115699 () Bool)

(assert (=> b!131022 m!115699))

(declare-fun m!115701 () Bool)

(assert (=> start!13550 m!115701))

(declare-fun m!115703 () Bool)

(assert (=> b!131024 m!115703))

(check-sat (not b!131024) (not b!131022) (not b!131020) tp_is_empty!1401 (not b!131021) (not start!13550))
(check-sat)
(get-model)

(declare-fun d!30903 () Bool)

(declare-fun res!60703 () Bool)

(declare-fun e!75572 () Bool)

(assert (=> d!30903 (=> res!60703 e!75572)))

(assert (=> d!30903 (= res!60703 ((_ is Nil!2176) baseList!9))))

(assert (=> d!30903 (= (noDuplicate!72 baseList!9) e!75572)))

(declare-fun b!131035 () Bool)

(declare-fun e!75573 () Bool)

(assert (=> b!131035 (= e!75572 e!75573)))

(declare-fun res!60704 () Bool)

(assert (=> b!131035 (=> (not res!60704) (not e!75573))))

(assert (=> b!131035 (= res!60704 (not (contains!356 (t!22768 baseList!9) (h!7573 baseList!9))))))

(declare-fun b!131036 () Bool)

(assert (=> b!131036 (= e!75573 (noDuplicate!72 (t!22768 baseList!9)))))

(assert (= (and d!30903 (not res!60703)) b!131035))

(assert (= (and b!131035 res!60704) b!131036))

(declare-fun m!115709 () Bool)

(assert (=> b!131035 m!115709))

(declare-fun m!115711 () Bool)

(assert (=> b!131036 m!115711))

(assert (=> start!13550 d!30903))

(declare-fun d!30907 () Bool)

(declare-fun lt!39553 () Int)

(assert (=> d!30907 (>= lt!39553 0)))

(declare-fun e!75580 () Int)

(assert (=> d!30907 (= lt!39553 e!75580)))

(declare-fun c!28323 () Bool)

(assert (=> d!30907 (= c!28323 ((_ is Nil!2176) (t!22768 newList!20)))))

(assert (=> d!30907 (= (ListPrimitiveSize!20 (t!22768 newList!20)) lt!39553)))

(declare-fun b!131045 () Bool)

(assert (=> b!131045 (= e!75580 0)))

(declare-fun b!131046 () Bool)

(assert (=> b!131046 (= e!75580 (+ 1 (ListPrimitiveSize!20 (t!22768 (t!22768 newList!20)))))))

(assert (= (and d!30907 c!28323) b!131045))

(assert (= (and d!30907 (not c!28323)) b!131046))

(declare-fun m!115713 () Bool)

(assert (=> b!131046 m!115713))

(assert (=> b!131022 d!30907))

(declare-fun d!30909 () Bool)

(declare-fun lt!39555 () Int)

(assert (=> d!30909 (>= lt!39555 0)))

(declare-fun e!75583 () Int)

(assert (=> d!30909 (= lt!39555 e!75583)))

(declare-fun c!28324 () Bool)

(assert (=> d!30909 (= c!28324 ((_ is Nil!2176) newList!20))))

(assert (=> d!30909 (= (ListPrimitiveSize!20 newList!20) lt!39555)))

(declare-fun b!131049 () Bool)

(assert (=> b!131049 (= e!75583 0)))

(declare-fun b!131050 () Bool)

(assert (=> b!131050 (= e!75583 (+ 1 (ListPrimitiveSize!20 (t!22768 newList!20))))))

(assert (= (and d!30909 c!28324) b!131049))

(assert (= (and d!30909 (not c!28324)) b!131050))

(assert (=> b!131050 m!115693))

(assert (=> b!131022 d!30909))

(declare-fun b!131068 () Bool)

(declare-fun e!75598 () Bool)

(declare-fun e!75596 () Bool)

(assert (=> b!131068 (= e!75598 e!75596)))

(declare-fun res!60720 () Bool)

(assert (=> b!131068 (=> res!60720 e!75596)))

(declare-fun e!75597 () Bool)

(assert (=> b!131068 (= res!60720 e!75597)))

(declare-fun res!60722 () Bool)

(assert (=> b!131068 (=> (not res!60722) (not e!75597))))

(assert (=> b!131068 (= res!60722 (= (h!7573 baseList!9) (h!7573 baseList!9)))))

(declare-fun b!131067 () Bool)

(declare-fun e!75599 () Bool)

(assert (=> b!131067 (= e!75599 e!75598)))

(declare-fun res!60719 () Bool)

(assert (=> b!131067 (=> (not res!60719) (not e!75598))))

(assert (=> b!131067 (= res!60719 ((_ is Cons!2176) baseList!9))))

(declare-fun b!131070 () Bool)

(assert (=> b!131070 (= e!75596 (subseq!45 baseList!9 (t!22768 baseList!9)))))

(declare-fun d!30911 () Bool)

(declare-fun res!60721 () Bool)

(assert (=> d!30911 (=> res!60721 e!75599)))

(assert (=> d!30911 (= res!60721 ((_ is Nil!2176) baseList!9))))

(assert (=> d!30911 (= (subseq!45 baseList!9 baseList!9) e!75599)))

(declare-fun b!131069 () Bool)

(assert (=> b!131069 (= e!75597 (subseq!45 (t!22768 baseList!9) (t!22768 baseList!9)))))

(assert (= (and d!30911 (not res!60721)) b!131067))

(assert (= (and b!131067 res!60719) b!131068))

(assert (= (and b!131068 res!60722) b!131069))

(assert (= (and b!131068 (not res!60720)) b!131070))

(declare-fun m!115723 () Bool)

(assert (=> b!131070 m!115723))

(declare-fun m!115725 () Bool)

(assert (=> b!131069 m!115725))

(assert (=> b!131022 d!30911))

(declare-fun d!30919 () Bool)

(assert (=> d!30919 (subseq!45 baseList!9 baseList!9)))

(declare-fun lt!39562 () Unit!1732)

(declare-fun choose!1656 (List!2182) Unit!1732)

(assert (=> d!30919 (= lt!39562 (choose!1656 baseList!9))))

(assert (=> d!30919 (= (lemmaSubseqRefl!32 baseList!9) lt!39562)))

(declare-fun bs!12618 () Bool)

(assert (= bs!12618 d!30919))

(assert (=> bs!12618 m!115697))

(declare-fun m!115727 () Bool)

(assert (=> bs!12618 m!115727))

(assert (=> b!131022 d!30919))

(declare-fun d!30921 () Bool)

(declare-fun lt!39568 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!289 (List!2182) (InoxSet B!757))

(assert (=> d!30921 (= lt!39568 (select (content!289 baseList!9) (h!7573 newList!20)))))

(declare-fun e!75619 () Bool)

(assert (=> d!30921 (= lt!39568 e!75619)))

(declare-fun res!60740 () Bool)

(assert (=> d!30921 (=> (not res!60740) (not e!75619))))

(assert (=> d!30921 (= res!60740 ((_ is Cons!2176) baseList!9))))

(assert (=> d!30921 (= (contains!356 baseList!9 (h!7573 newList!20)) lt!39568)))

(declare-fun b!131091 () Bool)

(declare-fun e!75618 () Bool)

(assert (=> b!131091 (= e!75619 e!75618)))

(declare-fun res!60739 () Bool)

(assert (=> b!131091 (=> res!60739 e!75618)))

(assert (=> b!131091 (= res!60739 (= (h!7573 baseList!9) (h!7573 newList!20)))))

(declare-fun b!131092 () Bool)

(assert (=> b!131092 (= e!75618 (contains!356 (t!22768 baseList!9) (h!7573 newList!20)))))

(assert (= (and d!30921 res!60740) b!131091))

(assert (= (and b!131091 (not res!60739)) b!131092))

(declare-fun m!115735 () Bool)

(assert (=> d!30921 m!115735))

(declare-fun m!115737 () Bool)

(assert (=> d!30921 m!115737))

(declare-fun m!115739 () Bool)

(assert (=> b!131092 m!115739))

(assert (=> b!131024 d!30921))

(declare-fun b!131099 () Bool)

(declare-fun e!75624 () Bool)

(declare-fun tp!70381 () Bool)

(assert (=> b!131099 (= e!75624 (and tp_is_empty!1401 tp!70381))))

(assert (=> b!131020 (= tp!70374 e!75624)))

(assert (= (and b!131020 ((_ is Cons!2176) (t!22768 baseList!9))) b!131099))

(declare-fun b!131100 () Bool)

(declare-fun e!75625 () Bool)

(declare-fun tp!70382 () Bool)

(assert (=> b!131100 (= e!75625 (and tp_is_empty!1401 tp!70382))))

(assert (=> b!131021 (= tp!70373 e!75625)))

(assert (= (and b!131021 ((_ is Cons!2176) (t!22768 newList!20))) b!131100))

(check-sat (not b!131046) (not b!131099) (not d!30919) tp_is_empty!1401 (not b!131100) (not b!131036) (not b!131070) (not b!131050) (not d!30921) (not b!131069) (not b!131035) (not b!131092))
(check-sat)
