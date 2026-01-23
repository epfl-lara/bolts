; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13446 () Bool)

(assert start!13446)

(declare-fun b!129994 () Bool)

(declare-fun res!59970 () Bool)

(declare-fun e!74888 () Bool)

(assert (=> b!129994 (=> res!59970 e!74888)))

(declare-datatypes ((B!721 0))(
  ( (B!722 (val!846 Int)) )
))
(declare-datatypes ((List!2164 0))(
  ( (Nil!2158) (Cons!2158 (h!7555 B!721) (t!22750 List!2164)) )
))
(declare-fun lt!39077 () List!2164)

(declare-fun lt!39079 () List!2164)

(declare-fun subseq!29 (List!2164 List!2164) Bool)

(assert (=> b!129994 (= res!59970 (not (subseq!29 lt!39077 lt!39079)))))

(declare-fun b!129995 () Bool)

(declare-fun e!74892 () Bool)

(declare-fun e!74893 () Bool)

(assert (=> b!129995 (= e!74892 (not e!74893))))

(declare-fun res!59971 () Bool)

(assert (=> b!129995 (=> res!59971 e!74893)))

(declare-fun lt!39073 () Bool)

(assert (=> b!129995 (= res!59971 lt!39073)))

(declare-fun e!74891 () Bool)

(assert (=> b!129995 e!74891))

(declare-fun res!59972 () Bool)

(assert (=> b!129995 (=> (not res!59972) (not e!74891))))

(assert (=> b!129995 (= res!59972 (not lt!39073))))

(declare-fun noDuplicate!54 (List!2164) Bool)

(assert (=> b!129995 (= lt!39073 (not (noDuplicate!54 lt!39077)))))

(declare-fun baseList!9 () List!2164)

(declare-fun newList!20 () List!2164)

(declare-fun concatWithoutDuplicates!16 (List!2164 List!2164) List!2164)

(assert (=> b!129995 (= lt!39077 (concatWithoutDuplicates!16 baseList!9 (t!22750 newList!20)))))

(assert (=> b!129995 (subseq!29 baseList!9 baseList!9)))

(declare-datatypes ((Unit!1700 0))(
  ( (Unit!1701) )
))
(declare-fun lt!39074 () Unit!1700)

(declare-fun lemmaSubseqRefl!26 (List!2164) Unit!1700)

(assert (=> b!129995 (= lt!39074 (lemmaSubseqRefl!26 baseList!9))))

(declare-fun b!129996 () Bool)

(assert (=> b!129996 (= e!74893 e!74888)))

(declare-fun res!59969 () Bool)

(assert (=> b!129996 (=> res!59969 e!74888)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!273 (List!2164) (InoxSet B!721))

(assert (=> b!129996 (= res!59969 (not (= (content!273 lt!39079) (content!273 lt!39077))))))

(declare-fun ++!438 (List!2164 List!2164) List!2164)

(assert (=> b!129996 (= lt!39079 (++!438 baseList!9 (t!22750 newList!20)))))

(declare-fun res!59967 () Bool)

(assert (=> start!13446 (=> (not res!59967) (not e!74892))))

(assert (=> start!13446 (= res!59967 (noDuplicate!54 baseList!9))))

(assert (=> start!13446 e!74892))

(declare-fun e!74887 () Bool)

(assert (=> start!13446 e!74887))

(declare-fun e!74890 () Bool)

(assert (=> start!13446 e!74890))

(declare-fun b!129997 () Bool)

(declare-fun res!59966 () Bool)

(assert (=> b!129997 (=> (not res!59966) (not e!74892))))

(declare-fun contains!338 (List!2164 B!721) Bool)

(assert (=> b!129997 (= res!59966 (contains!338 baseList!9 (h!7555 newList!20)))))

(declare-fun b!129998 () Bool)

(declare-fun tp_is_empty!1365 () Bool)

(declare-fun tp!70240 () Bool)

(assert (=> b!129998 (= e!74887 (and tp_is_empty!1365 tp!70240))))

(declare-fun b!129999 () Bool)

(declare-fun res!59964 () Bool)

(declare-fun e!74889 () Bool)

(assert (=> b!129999 (=> (not res!59964) (not e!74889))))

(declare-fun lt!39075 () List!2164)

(assert (=> b!129999 (= res!59964 (subseq!29 lt!39077 lt!39075))))

(declare-fun b!130000 () Bool)

(declare-fun tp!70239 () Bool)

(assert (=> b!130000 (= e!74890 (and tp_is_empty!1365 tp!70239))))

(declare-fun b!130001 () Bool)

(declare-fun isPrefix!157 (List!2164 List!2164) Bool)

(assert (=> b!130001 (= e!74889 (isPrefix!157 baseList!9 lt!39077))))

(declare-fun b!130002 () Bool)

(declare-fun lt!39081 () List!2164)

(declare-fun lt!39080 () List!2164)

(assert (=> b!130002 (= e!74888 (= lt!39081 lt!39080))))

(assert (=> b!130002 (= lt!39080 lt!39081)))

(declare-fun lt!39078 () List!2164)

(assert (=> b!130002 (= lt!39081 (++!438 baseList!9 (++!438 lt!39078 (t!22750 newList!20))))))

(declare-fun lt!39076 () Unit!1700)

(declare-fun lemmaConcatAssociativity!126 (List!2164 List!2164 List!2164) Unit!1700)

(assert (=> b!130002 (= lt!39076 (lemmaConcatAssociativity!126 baseList!9 lt!39078 (t!22750 newList!20)))))

(assert (=> b!130002 (subseq!29 lt!39077 lt!39080)))

(assert (=> b!130002 (= lt!39080 (++!438 (++!438 baseList!9 lt!39078) (t!22750 newList!20)))))

(declare-fun lt!39082 () Unit!1700)

(declare-fun lemmaBiggerSndListPreservesSubSeq!4 (List!2164 List!2164 List!2164 List!2164) Unit!1700)

(assert (=> b!130002 (= lt!39082 (lemmaBiggerSndListPreservesSubSeq!4 lt!39077 baseList!9 (t!22750 newList!20) lt!39078))))

(assert (=> b!130002 (= lt!39078 (Cons!2158 (h!7555 newList!20) Nil!2158))))

(declare-fun b!130003 () Bool)

(assert (=> b!130003 (= e!74891 e!74889)))

(declare-fun res!59968 () Bool)

(assert (=> b!130003 (=> (not res!59968) (not e!74889))))

(assert (=> b!130003 (= res!59968 (= (content!273 lt!39075) (content!273 lt!39077)))))

(assert (=> b!130003 (= lt!39075 (++!438 baseList!9 (t!22750 newList!20)))))

(declare-fun b!130004 () Bool)

(declare-fun res!59965 () Bool)

(assert (=> b!130004 (=> (not res!59965) (not e!74892))))

(get-info :version)

(assert (=> b!130004 (= res!59965 ((_ is Cons!2158) newList!20))))

(assert (= (and start!13446 res!59967) b!130004))

(assert (= (and b!130004 res!59965) b!129997))

(assert (= (and b!129997 res!59966) b!129995))

(assert (= (and b!129995 res!59972) b!130003))

(assert (= (and b!130003 res!59968) b!129999))

(assert (= (and b!129999 res!59964) b!130001))

(assert (= (and b!129995 (not res!59971)) b!129996))

(assert (= (and b!129996 (not res!59969)) b!129994))

(assert (= (and b!129994 (not res!59970)) b!130002))

(assert (= (and start!13446 ((_ is Cons!2158) baseList!9)) b!129998))

(assert (= (and start!13446 ((_ is Cons!2158) newList!20)) b!130000))

(declare-fun m!114505 () Bool)

(assert (=> b!129996 m!114505))

(declare-fun m!114507 () Bool)

(assert (=> b!129996 m!114507))

(declare-fun m!114509 () Bool)

(assert (=> b!129996 m!114509))

(declare-fun m!114511 () Bool)

(assert (=> b!129999 m!114511))

(declare-fun m!114513 () Bool)

(assert (=> start!13446 m!114513))

(declare-fun m!114515 () Bool)

(assert (=> b!129994 m!114515))

(declare-fun m!114517 () Bool)

(assert (=> b!130001 m!114517))

(declare-fun m!114519 () Bool)

(assert (=> b!130002 m!114519))

(declare-fun m!114521 () Bool)

(assert (=> b!130002 m!114521))

(declare-fun m!114523 () Bool)

(assert (=> b!130002 m!114523))

(declare-fun m!114525 () Bool)

(assert (=> b!130002 m!114525))

(declare-fun m!114527 () Bool)

(assert (=> b!130002 m!114527))

(assert (=> b!130002 m!114519))

(declare-fun m!114529 () Bool)

(assert (=> b!130002 m!114529))

(declare-fun m!114531 () Bool)

(assert (=> b!130002 m!114531))

(assert (=> b!130002 m!114525))

(declare-fun m!114533 () Bool)

(assert (=> b!129995 m!114533))

(declare-fun m!114535 () Bool)

(assert (=> b!129995 m!114535))

(declare-fun m!114537 () Bool)

(assert (=> b!129995 m!114537))

(declare-fun m!114539 () Bool)

(assert (=> b!129995 m!114539))

(declare-fun m!114541 () Bool)

(assert (=> b!129997 m!114541))

(declare-fun m!114543 () Bool)

(assert (=> b!130003 m!114543))

(assert (=> b!130003 m!114507))

(assert (=> b!130003 m!114509))

(check-sat (not b!129997) (not b!129999) (not b!130001) (not b!130002) (not b!130003) (not b!129994) (not b!129998) (not b!129995) tp_is_empty!1365 (not b!130000) (not start!13446) (not b!129996))
(check-sat)
