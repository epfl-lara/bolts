; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13438 () Bool)

(assert start!13438)

(declare-fun b!129870 () Bool)

(declare-fun e!74807 () Bool)

(declare-fun e!74805 () Bool)

(assert (=> b!129870 (= e!74807 (not e!74805))))

(declare-fun res!59870 () Bool)

(assert (=> b!129870 (=> res!59870 e!74805)))

(declare-fun lt!38991 () Bool)

(assert (=> b!129870 (= res!59870 lt!38991)))

(declare-fun e!74808 () Bool)

(assert (=> b!129870 e!74808))

(declare-fun res!59864 () Bool)

(assert (=> b!129870 (=> (not res!59864) (not e!74808))))

(assert (=> b!129870 (= res!59864 (not lt!38991))))

(declare-datatypes ((B!713 0))(
  ( (B!714 (val!842 Int)) )
))
(declare-datatypes ((List!2160 0))(
  ( (Nil!2154) (Cons!2154 (h!7551 B!713) (t!22746 List!2160)) )
))
(declare-fun lt!38989 () List!2160)

(declare-fun noDuplicate!50 (List!2160) Bool)

(assert (=> b!129870 (= lt!38991 (not (noDuplicate!50 lt!38989)))))

(declare-fun baseList!9 () List!2160)

(declare-fun newList!20 () List!2160)

(declare-fun concatWithoutDuplicates!12 (List!2160 List!2160) List!2160)

(assert (=> b!129870 (= lt!38989 (concatWithoutDuplicates!12 baseList!9 (t!22746 newList!20)))))

(declare-fun subseq!25 (List!2160 List!2160) Bool)

(assert (=> b!129870 (subseq!25 baseList!9 baseList!9)))

(declare-datatypes ((Unit!1692 0))(
  ( (Unit!1693) )
))
(declare-fun lt!38992 () Unit!1692)

(declare-fun lemmaSubseqRefl!22 (List!2160) Unit!1692)

(assert (=> b!129870 (= lt!38992 (lemmaSubseqRefl!22 baseList!9))))

(declare-fun b!129871 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!269 (List!2160) (InoxSet B!713))

(declare-fun ++!434 (List!2160 List!2160) List!2160)

(assert (=> b!129871 (= e!74805 (= (content!269 (++!434 baseList!9 (t!22746 newList!20))) (content!269 lt!38989)))))

(declare-fun b!129872 () Bool)

(declare-fun e!74804 () Bool)

(declare-fun tp_is_empty!1357 () Bool)

(declare-fun tp!70216 () Bool)

(assert (=> b!129872 (= e!74804 (and tp_is_empty!1357 tp!70216))))

(declare-fun res!59867 () Bool)

(assert (=> start!13438 (=> (not res!59867) (not e!74807))))

(assert (=> start!13438 (= res!59867 (noDuplicate!50 baseList!9))))

(assert (=> start!13438 e!74807))

(assert (=> start!13438 e!74804))

(declare-fun e!74809 () Bool)

(assert (=> start!13438 e!74809))

(declare-fun b!129873 () Bool)

(declare-fun e!74806 () Bool)

(declare-fun isPrefix!153 (List!2160 List!2160) Bool)

(assert (=> b!129873 (= e!74806 (isPrefix!153 baseList!9 lt!38989))))

(declare-fun b!129874 () Bool)

(declare-fun tp!70215 () Bool)

(assert (=> b!129874 (= e!74809 (and tp_is_empty!1357 tp!70215))))

(declare-fun b!129875 () Bool)

(declare-fun res!59869 () Bool)

(assert (=> b!129875 (=> (not res!59869) (not e!74807))))

(declare-fun contains!334 (List!2160 B!713) Bool)

(assert (=> b!129875 (= res!59869 (contains!334 baseList!9 (h!7551 newList!20)))))

(declare-fun b!129876 () Bool)

(declare-fun res!59866 () Bool)

(assert (=> b!129876 (=> (not res!59866) (not e!74806))))

(declare-fun lt!38990 () List!2160)

(assert (=> b!129876 (= res!59866 (subseq!25 lt!38989 lt!38990))))

(declare-fun b!129877 () Bool)

(declare-fun res!59868 () Bool)

(assert (=> b!129877 (=> (not res!59868) (not e!74807))))

(get-info :version)

(assert (=> b!129877 (= res!59868 ((_ is Cons!2154) newList!20))))

(declare-fun b!129878 () Bool)

(assert (=> b!129878 (= e!74808 e!74806)))

(declare-fun res!59865 () Bool)

(assert (=> b!129878 (=> (not res!59865) (not e!74806))))

(assert (=> b!129878 (= res!59865 (= (content!269 lt!38990) (content!269 lt!38989)))))

(assert (=> b!129878 (= lt!38990 (++!434 baseList!9 (t!22746 newList!20)))))

(assert (= (and start!13438 res!59867) b!129877))

(assert (= (and b!129877 res!59868) b!129875))

(assert (= (and b!129875 res!59869) b!129870))

(assert (= (and b!129870 res!59864) b!129878))

(assert (= (and b!129878 res!59865) b!129876))

(assert (= (and b!129876 res!59866) b!129873))

(assert (= (and b!129870 (not res!59870)) b!129871))

(assert (= (and start!13438 ((_ is Cons!2154) baseList!9)) b!129872))

(assert (= (and start!13438 ((_ is Cons!2154) newList!20)) b!129874))

(declare-fun m!114389 () Bool)

(assert (=> b!129870 m!114389))

(declare-fun m!114391 () Bool)

(assert (=> b!129870 m!114391))

(declare-fun m!114393 () Bool)

(assert (=> b!129870 m!114393))

(declare-fun m!114395 () Bool)

(assert (=> b!129870 m!114395))

(declare-fun m!114397 () Bool)

(assert (=> start!13438 m!114397))

(declare-fun m!114399 () Bool)

(assert (=> b!129878 m!114399))

(declare-fun m!114401 () Bool)

(assert (=> b!129878 m!114401))

(declare-fun m!114403 () Bool)

(assert (=> b!129878 m!114403))

(declare-fun m!114405 () Bool)

(assert (=> b!129876 m!114405))

(declare-fun m!114407 () Bool)

(assert (=> b!129875 m!114407))

(assert (=> b!129871 m!114403))

(assert (=> b!129871 m!114403))

(declare-fun m!114409 () Bool)

(assert (=> b!129871 m!114409))

(assert (=> b!129871 m!114401))

(declare-fun m!114411 () Bool)

(assert (=> b!129873 m!114411))

(check-sat (not b!129871) (not b!129872) (not b!129875) tp_is_empty!1357 (not b!129878) (not b!129874) (not b!129873) (not b!129870) (not start!13438) (not b!129876))
(check-sat)
