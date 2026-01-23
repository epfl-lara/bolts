; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13442 () Bool)

(assert start!13442)

(declare-fun b!129929 () Bool)

(declare-fun res!59915 () Bool)

(declare-fun e!74850 () Bool)

(assert (=> b!129929 (=> (not res!59915) (not e!74850))))

(declare-datatypes ((B!717 0))(
  ( (B!718 (val!844 Int)) )
))
(declare-datatypes ((List!2162 0))(
  ( (Nil!2156) (Cons!2156 (h!7553 B!717) (t!22748 List!2162)) )
))
(declare-fun lt!39020 () List!2162)

(declare-fun lt!39021 () List!2162)

(declare-fun subseq!27 (List!2162 List!2162) Bool)

(assert (=> b!129929 (= res!59915 (subseq!27 lt!39020 lt!39021))))

(declare-fun b!129930 () Bool)

(declare-fun res!59916 () Bool)

(declare-fun e!74849 () Bool)

(assert (=> b!129930 (=> (not res!59916) (not e!74849))))

(declare-fun newList!20 () List!2162)

(get-info :version)

(assert (=> b!129930 (= res!59916 ((_ is Cons!2156) newList!20))))

(declare-fun b!129931 () Bool)

(declare-fun e!74847 () Bool)

(declare-fun tp_is_empty!1361 () Bool)

(declare-fun tp!70228 () Bool)

(assert (=> b!129931 (= e!74847 (and tp_is_empty!1361 tp!70228))))

(declare-fun res!59918 () Bool)

(assert (=> start!13442 (=> (not res!59918) (not e!74849))))

(declare-fun baseList!9 () List!2162)

(declare-fun noDuplicate!52 (List!2162) Bool)

(assert (=> start!13442 (= res!59918 (noDuplicate!52 baseList!9))))

(assert (=> start!13442 e!74849))

(declare-fun e!74846 () Bool)

(assert (=> start!13442 e!74846))

(assert (=> start!13442 e!74847))

(declare-fun b!129932 () Bool)

(declare-fun e!74845 () Bool)

(declare-fun lt!39022 () List!2162)

(assert (=> b!129932 (= e!74845 (subseq!27 lt!39020 lt!39022))))

(declare-fun b!129933 () Bool)

(declare-fun e!74848 () Bool)

(assert (=> b!129933 (= e!74849 (not e!74848))))

(declare-fun res!59912 () Bool)

(assert (=> b!129933 (=> res!59912 e!74848)))

(declare-fun lt!39019 () Bool)

(assert (=> b!129933 (= res!59912 lt!39019)))

(declare-fun e!74851 () Bool)

(assert (=> b!129933 e!74851))

(declare-fun res!59917 () Bool)

(assert (=> b!129933 (=> (not res!59917) (not e!74851))))

(assert (=> b!129933 (= res!59917 (not lt!39019))))

(assert (=> b!129933 (= lt!39019 (not (noDuplicate!52 lt!39020)))))

(declare-fun concatWithoutDuplicates!14 (List!2162 List!2162) List!2162)

(assert (=> b!129933 (= lt!39020 (concatWithoutDuplicates!14 baseList!9 (t!22748 newList!20)))))

(assert (=> b!129933 (subseq!27 baseList!9 baseList!9)))

(declare-datatypes ((Unit!1696 0))(
  ( (Unit!1697) )
))
(declare-fun lt!39018 () Unit!1696)

(declare-fun lemmaSubseqRefl!24 (List!2162) Unit!1696)

(assert (=> b!129933 (= lt!39018 (lemmaSubseqRefl!24 baseList!9))))

(declare-fun b!129934 () Bool)

(declare-fun res!59913 () Bool)

(assert (=> b!129934 (=> (not res!59913) (not e!74849))))

(declare-fun contains!336 (List!2162 B!717) Bool)

(assert (=> b!129934 (= res!59913 (contains!336 baseList!9 (h!7553 newList!20)))))

(declare-fun b!129935 () Bool)

(declare-fun tp!70227 () Bool)

(assert (=> b!129935 (= e!74846 (and tp_is_empty!1361 tp!70227))))

(declare-fun b!129936 () Bool)

(assert (=> b!129936 (= e!74848 e!74845)))

(declare-fun res!59911 () Bool)

(assert (=> b!129936 (=> res!59911 e!74845)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!271 (List!2162) (InoxSet B!717))

(assert (=> b!129936 (= res!59911 (not (= (content!271 lt!39022) (content!271 lt!39020))))))

(declare-fun ++!436 (List!2162 List!2162) List!2162)

(assert (=> b!129936 (= lt!39022 (++!436 baseList!9 (t!22748 newList!20)))))

(declare-fun b!129937 () Bool)

(assert (=> b!129937 (= e!74851 e!74850)))

(declare-fun res!59914 () Bool)

(assert (=> b!129937 (=> (not res!59914) (not e!74850))))

(assert (=> b!129937 (= res!59914 (= (content!271 lt!39021) (content!271 lt!39020)))))

(assert (=> b!129937 (= lt!39021 (++!436 baseList!9 (t!22748 newList!20)))))

(declare-fun b!129938 () Bool)

(declare-fun isPrefix!155 (List!2162 List!2162) Bool)

(assert (=> b!129938 (= e!74850 (isPrefix!155 baseList!9 lt!39020))))

(assert (= (and start!13442 res!59918) b!129930))

(assert (= (and b!129930 res!59916) b!129934))

(assert (= (and b!129934 res!59913) b!129933))

(assert (= (and b!129933 res!59917) b!129937))

(assert (= (and b!129937 res!59914) b!129929))

(assert (= (and b!129929 res!59915) b!129938))

(assert (= (and b!129933 (not res!59912)) b!129936))

(assert (= (and b!129936 (not res!59911)) b!129932))

(assert (= (and start!13442 ((_ is Cons!2156) baseList!9)) b!129935))

(assert (= (and start!13442 ((_ is Cons!2156) newList!20)) b!129931))

(declare-fun m!114439 () Bool)

(assert (=> b!129934 m!114439))

(declare-fun m!114441 () Bool)

(assert (=> b!129932 m!114441))

(declare-fun m!114443 () Bool)

(assert (=> start!13442 m!114443))

(declare-fun m!114445 () Bool)

(assert (=> b!129933 m!114445))

(declare-fun m!114447 () Bool)

(assert (=> b!129933 m!114447))

(declare-fun m!114449 () Bool)

(assert (=> b!129933 m!114449))

(declare-fun m!114451 () Bool)

(assert (=> b!129933 m!114451))

(declare-fun m!114453 () Bool)

(assert (=> b!129938 m!114453))

(declare-fun m!114455 () Bool)

(assert (=> b!129929 m!114455))

(declare-fun m!114457 () Bool)

(assert (=> b!129937 m!114457))

(declare-fun m!114459 () Bool)

(assert (=> b!129937 m!114459))

(declare-fun m!114461 () Bool)

(assert (=> b!129937 m!114461))

(declare-fun m!114463 () Bool)

(assert (=> b!129936 m!114463))

(assert (=> b!129936 m!114459))

(assert (=> b!129936 m!114461))

(check-sat (not b!129937) tp_is_empty!1361 (not b!129936) (not b!129932) (not b!129935) (not start!13442) (not b!129929) (not b!129933) (not b!129938) (not b!129931) (not b!129934))
(check-sat)
