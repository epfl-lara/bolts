; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13422 () Bool)

(assert start!13422)

(declare-fun b!129625 () Bool)

(declare-fun e!74656 () Bool)

(declare-fun tp_is_empty!1341 () Bool)

(declare-fun tp!70168 () Bool)

(assert (=> b!129625 (= e!74656 (and tp_is_empty!1341 tp!70168))))

(declare-fun b!129626 () Bool)

(declare-fun res!59676 () Bool)

(declare-fun e!74653 () Bool)

(assert (=> b!129626 (=> (not res!59676) (not e!74653))))

(declare-datatypes ((B!697 0))(
  ( (B!698 (val!834 Int)) )
))
(declare-datatypes ((List!2152 0))(
  ( (Nil!2146) (Cons!2146 (h!7543 B!697) (t!22738 List!2152)) )
))
(declare-fun lt!38870 () List!2152)

(declare-fun lt!38868 () List!2152)

(declare-fun subseq!17 (List!2152 List!2152) Bool)

(assert (=> b!129626 (= res!59676 (subseq!17 lt!38870 lt!38868))))

(declare-fun b!129628 () Bool)

(declare-fun res!59678 () Bool)

(declare-fun e!74651 () Bool)

(assert (=> b!129628 (=> (not res!59678) (not e!74651))))

(declare-fun e!74652 () Bool)

(assert (=> b!129628 (= res!59678 e!74652)))

(declare-fun res!59667 () Bool)

(assert (=> b!129628 (=> res!59667 e!74652)))

(declare-fun newList!20 () List!2152)

(get-info :version)

(assert (=> b!129628 (= res!59667 (not ((_ is Cons!2146) newList!20)))))

(declare-fun b!129629 () Bool)

(declare-fun e!74657 () Bool)

(assert (=> b!129629 (= e!74651 (not e!74657))))

(declare-fun res!59671 () Bool)

(assert (=> b!129629 (=> res!59671 e!74657)))

(declare-fun lt!38862 () Bool)

(assert (=> b!129629 (= res!59671 lt!38862)))

(declare-fun e!74654 () Bool)

(assert (=> b!129629 e!74654))

(declare-fun res!59668 () Bool)

(assert (=> b!129629 (=> (not res!59668) (not e!74654))))

(assert (=> b!129629 (= res!59668 (not lt!38862))))

(declare-fun noDuplicate!42 (List!2152) Bool)

(assert (=> b!129629 (= lt!38862 (not (noDuplicate!42 lt!38870)))))

(declare-fun lt!38863 () List!2152)

(declare-fun concatWithoutDuplicates!6 (List!2152 List!2152) List!2152)

(assert (=> b!129629 (= lt!38870 (concatWithoutDuplicates!6 lt!38863 (t!22738 newList!20)))))

(assert (=> b!129629 (noDuplicate!42 lt!38863)))

(declare-datatypes ((Unit!1676 0))(
  ( (Unit!1677) )
))
(declare-fun lt!38865 () Unit!1676)

(declare-fun baseList!9 () List!2152)

(declare-fun lemmaAppendNewElementElementPreserves!4 (List!2152 B!697) Unit!1676)

(assert (=> b!129629 (= lt!38865 (lemmaAppendNewElementElementPreserves!4 baseList!9 (h!7543 newList!20)))))

(declare-fun isPrefix!147 (List!2152 List!2152) Bool)

(assert (=> b!129629 (isPrefix!147 baseList!9 lt!38863)))

(declare-fun lt!38867 () List!2152)

(declare-fun ++!428 (List!2152 List!2152) List!2152)

(assert (=> b!129629 (= lt!38863 (++!428 baseList!9 lt!38867))))

(declare-fun lt!38872 () Unit!1676)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!86 (List!2152 List!2152) Unit!1676)

(assert (=> b!129629 (= lt!38872 (lemmaConcatTwoListThenFirstIsPrefix!86 baseList!9 lt!38867))))

(assert (=> b!129629 (= lt!38867 (Cons!2146 (h!7543 newList!20) Nil!2146))))

(declare-fun b!129630 () Bool)

(assert (=> b!129630 (= e!74654 e!74653)))

(declare-fun res!59673 () Bool)

(assert (=> b!129630 (=> (not res!59673) (not e!74653))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!263 (List!2152) (InoxSet B!697))

(assert (=> b!129630 (= res!59673 (= (content!263 lt!38868) (content!263 lt!38870)))))

(assert (=> b!129630 (= lt!38868 (++!428 lt!38863 (t!22738 newList!20)))))

(declare-fun b!129631 () Bool)

(declare-fun res!59675 () Bool)

(assert (=> b!129631 (=> (not res!59675) (not e!74651))))

(declare-fun contains!326 (List!2152 B!697) Bool)

(assert (=> b!129631 (= res!59675 (not (contains!326 baseList!9 (h!7543 newList!20))))))

(declare-fun b!129632 () Bool)

(declare-fun e!74659 () Bool)

(assert (=> b!129632 (= e!74657 e!74659)))

(declare-fun res!59670 () Bool)

(assert (=> b!129632 (=> res!59670 e!74659)))

(declare-fun lt!38866 () List!2152)

(assert (=> b!129632 (= res!59670 (not (subseq!17 lt!38870 lt!38866)))))

(assert (=> b!129632 (= lt!38866 (++!428 lt!38863 (t!22738 newList!20)))))

(declare-fun b!129633 () Bool)

(declare-fun e!74658 () Bool)

(assert (=> b!129633 (= e!74659 e!74658)))

(declare-fun res!59672 () Bool)

(assert (=> b!129633 (=> res!59672 e!74658)))

(declare-fun lt!38864 () List!2152)

(assert (=> b!129633 (= res!59672 (not (subseq!17 lt!38870 lt!38864)))))

(assert (=> b!129633 (= lt!38866 lt!38864)))

(assert (=> b!129633 (= lt!38864 (++!428 baseList!9 (++!428 lt!38867 (t!22738 newList!20))))))

(declare-fun lt!38869 () Unit!1676)

(declare-fun lemmaConcatAssociativity!122 (List!2152 List!2152 List!2152) Unit!1676)

(assert (=> b!129633 (= lt!38869 (lemmaConcatAssociativity!122 baseList!9 lt!38867 (t!22738 newList!20)))))

(declare-fun b!129634 () Bool)

(assert (=> b!129634 (= e!74658 true)))

(declare-fun lt!38871 () Bool)

(assert (=> b!129634 (= lt!38871 (isPrefix!147 lt!38863 lt!38870))))

(declare-fun b!129635 () Bool)

(assert (=> b!129635 (= e!74653 (isPrefix!147 lt!38863 lt!38870))))

(declare-fun b!129636 () Bool)

(declare-fun res!59669 () Bool)

(assert (=> b!129636 (=> (not res!59669) (not e!74651))))

(assert (=> b!129636 (= res!59669 ((_ is Cons!2146) newList!20))))

(declare-fun res!59677 () Bool)

(assert (=> start!13422 (=> (not res!59677) (not e!74651))))

(assert (=> start!13422 (= res!59677 (noDuplicate!42 baseList!9))))

(assert (=> start!13422 e!74651))

(assert (=> start!13422 e!74656))

(declare-fun e!74655 () Bool)

(assert (=> start!13422 e!74655))

(declare-fun b!129627 () Bool)

(declare-fun tp!70167 () Bool)

(assert (=> b!129627 (= e!74655 (and tp_is_empty!1341 tp!70167))))

(declare-fun b!129637 () Bool)

(declare-fun res!59674 () Bool)

(assert (=> b!129637 (=> res!59674 e!74657)))

(assert (=> b!129637 (= res!59674 (not (= (content!263 (++!428 lt!38863 newList!20)) (content!263 lt!38870))))))

(declare-fun b!129638 () Bool)

(assert (=> b!129638 (= e!74652 (not (contains!326 baseList!9 (h!7543 newList!20))))))

(assert (= (and start!13422 res!59677) b!129628))

(assert (= (and b!129628 (not res!59667)) b!129638))

(assert (= (and b!129628 res!59678) b!129636))

(assert (= (and b!129636 res!59669) b!129631))

(assert (= (and b!129631 res!59675) b!129629))

(assert (= (and b!129629 res!59668) b!129630))

(assert (= (and b!129630 res!59673) b!129626))

(assert (= (and b!129626 res!59676) b!129635))

(assert (= (and b!129629 (not res!59671)) b!129637))

(assert (= (and b!129637 (not res!59674)) b!129632))

(assert (= (and b!129632 (not res!59670)) b!129633))

(assert (= (and b!129633 (not res!59672)) b!129634))

(assert (= (and start!13422 ((_ is Cons!2146) baseList!9)) b!129625))

(assert (= (and start!13422 ((_ is Cons!2146) newList!20)) b!129627))

(declare-fun m!114171 () Bool)

(assert (=> b!129630 m!114171))

(declare-fun m!114173 () Bool)

(assert (=> b!129630 m!114173))

(declare-fun m!114175 () Bool)

(assert (=> b!129630 m!114175))

(declare-fun m!114177 () Bool)

(assert (=> b!129629 m!114177))

(declare-fun m!114179 () Bool)

(assert (=> b!129629 m!114179))

(declare-fun m!114181 () Bool)

(assert (=> b!129629 m!114181))

(declare-fun m!114183 () Bool)

(assert (=> b!129629 m!114183))

(declare-fun m!114185 () Bool)

(assert (=> b!129629 m!114185))

(declare-fun m!114187 () Bool)

(assert (=> b!129629 m!114187))

(declare-fun m!114189 () Bool)

(assert (=> b!129629 m!114189))

(declare-fun m!114191 () Bool)

(assert (=> start!13422 m!114191))

(declare-fun m!114193 () Bool)

(assert (=> b!129631 m!114193))

(declare-fun m!114195 () Bool)

(assert (=> b!129626 m!114195))

(declare-fun m!114197 () Bool)

(assert (=> b!129635 m!114197))

(declare-fun m!114199 () Bool)

(assert (=> b!129637 m!114199))

(assert (=> b!129637 m!114199))

(declare-fun m!114201 () Bool)

(assert (=> b!129637 m!114201))

(assert (=> b!129637 m!114173))

(assert (=> b!129638 m!114193))

(assert (=> b!129634 m!114197))

(declare-fun m!114203 () Bool)

(assert (=> b!129632 m!114203))

(assert (=> b!129632 m!114175))

(declare-fun m!114205 () Bool)

(assert (=> b!129633 m!114205))

(declare-fun m!114207 () Bool)

(assert (=> b!129633 m!114207))

(assert (=> b!129633 m!114207))

(declare-fun m!114209 () Bool)

(assert (=> b!129633 m!114209))

(declare-fun m!114211 () Bool)

(assert (=> b!129633 m!114211))

(check-sat (not b!129631) (not b!129625) (not b!129633) (not b!129635) (not b!129637) (not b!129634) (not b!129632) (not b!129638) tp_is_empty!1341 (not b!129626) (not b!129627) (not b!129630) (not b!129629) (not start!13422))
(check-sat)
