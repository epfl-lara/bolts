; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13450 () Bool)

(assert start!13450)

(declare-fun b!130065 () Bool)

(declare-fun res!60028 () Bool)

(declare-fun e!74935 () Bool)

(assert (=> b!130065 (=> (not res!60028) (not e!74935))))

(declare-datatypes ((B!725 0))(
  ( (B!726 (val!848 Int)) )
))
(declare-datatypes ((List!2166 0))(
  ( (Nil!2160) (Cons!2160 (h!7557 B!725) (t!22752 List!2166)) )
))
(declare-fun baseList!9 () List!2166)

(declare-fun newList!20 () List!2166)

(declare-fun contains!340 (List!2166 B!725) Bool)

(assert (=> b!130065 (= res!60028 (contains!340 baseList!9 (h!7557 newList!20)))))

(declare-fun b!130066 () Bool)

(declare-fun e!74936 () Bool)

(declare-fun lt!39142 () List!2166)

(declare-fun lt!39140 () List!2166)

(declare-fun subseq!31 (List!2166 List!2166) Bool)

(assert (=> b!130066 (= e!74936 (subseq!31 lt!39142 lt!39140))))

(declare-fun b!130067 () Bool)

(declare-fun e!74941 () Bool)

(assert (=> b!130067 (= e!74941 e!74936)))

(declare-fun res!60030 () Bool)

(assert (=> b!130067 (=> res!60030 e!74936)))

(declare-fun lt!39134 () List!2166)

(assert (=> b!130067 (= res!60030 (not (= lt!39140 lt!39134)))))

(assert (=> b!130067 (= lt!39134 lt!39140)))

(declare-fun lt!39136 () List!2166)

(declare-fun ++!440 (List!2166 List!2166) List!2166)

(assert (=> b!130067 (= lt!39140 (++!440 baseList!9 (++!440 lt!39136 (t!22752 newList!20))))))

(declare-datatypes ((Unit!1704 0))(
  ( (Unit!1705) )
))
(declare-fun lt!39141 () Unit!1704)

(declare-fun lemmaConcatAssociativity!128 (List!2166 List!2166 List!2166) Unit!1704)

(assert (=> b!130067 (= lt!39141 (lemmaConcatAssociativity!128 baseList!9 lt!39136 (t!22752 newList!20)))))

(assert (=> b!130067 (subseq!31 lt!39142 lt!39134)))

(assert (=> b!130067 (= lt!39134 (++!440 (++!440 baseList!9 lt!39136) (t!22752 newList!20)))))

(declare-fun lt!39133 () Unit!1704)

(declare-fun lemmaBiggerSndListPreservesSubSeq!6 (List!2166 List!2166 List!2166 List!2166) Unit!1704)

(assert (=> b!130067 (= lt!39133 (lemmaBiggerSndListPreservesSubSeq!6 lt!39142 baseList!9 (t!22752 newList!20) lt!39136))))

(assert (=> b!130067 (= lt!39136 (Cons!2160 (h!7557 newList!20) Nil!2160))))

(declare-fun b!130069 () Bool)

(declare-fun e!74938 () Bool)

(assert (=> b!130069 (= e!74935 (not e!74938))))

(declare-fun res!60026 () Bool)

(assert (=> b!130069 (=> res!60026 e!74938)))

(declare-fun lt!39139 () Bool)

(assert (=> b!130069 (= res!60026 lt!39139)))

(declare-fun e!74934 () Bool)

(assert (=> b!130069 e!74934))

(declare-fun res!60032 () Bool)

(assert (=> b!130069 (=> (not res!60032) (not e!74934))))

(assert (=> b!130069 (= res!60032 (not lt!39139))))

(declare-fun noDuplicate!56 (List!2166) Bool)

(assert (=> b!130069 (= lt!39139 (not (noDuplicate!56 lt!39142)))))

(declare-fun concatWithoutDuplicates!18 (List!2166 List!2166) List!2166)

(assert (=> b!130069 (= lt!39142 (concatWithoutDuplicates!18 baseList!9 (t!22752 newList!20)))))

(assert (=> b!130069 (subseq!31 baseList!9 baseList!9)))

(declare-fun lt!39135 () Unit!1704)

(declare-fun lemmaSubseqRefl!28 (List!2166) Unit!1704)

(assert (=> b!130069 (= lt!39135 (lemmaSubseqRefl!28 baseList!9))))

(declare-fun b!130070 () Bool)

(declare-fun res!60029 () Bool)

(assert (=> b!130070 (=> res!60029 e!74941)))

(declare-fun lt!39137 () List!2166)

(assert (=> b!130070 (= res!60029 (not (subseq!31 lt!39142 lt!39137)))))

(declare-fun b!130071 () Bool)

(declare-fun e!74939 () Bool)

(declare-fun tp_is_empty!1369 () Bool)

(declare-fun tp!70252 () Bool)

(assert (=> b!130071 (= e!74939 (and tp_is_empty!1369 tp!70252))))

(declare-fun b!130072 () Bool)

(declare-fun res!60025 () Bool)

(declare-fun e!74940 () Bool)

(assert (=> b!130072 (=> (not res!60025) (not e!74940))))

(declare-fun lt!39138 () List!2166)

(assert (=> b!130072 (= res!60025 (subseq!31 lt!39142 lt!39138))))

(declare-fun b!130073 () Bool)

(assert (=> b!130073 (= e!74938 e!74941)))

(declare-fun res!60023 () Bool)

(assert (=> b!130073 (=> res!60023 e!74941)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!275 (List!2166) (InoxSet B!725))

(assert (=> b!130073 (= res!60023 (not (= (content!275 lt!39137) (content!275 lt!39142))))))

(assert (=> b!130073 (= lt!39137 (++!440 baseList!9 (t!22752 newList!20)))))

(declare-fun b!130074 () Bool)

(declare-fun e!74937 () Bool)

(declare-fun tp!70251 () Bool)

(assert (=> b!130074 (= e!74937 (and tp_is_empty!1369 tp!70251))))

(declare-fun b!130075 () Bool)

(declare-fun res!60027 () Bool)

(assert (=> b!130075 (=> (not res!60027) (not e!74935))))

(get-info :version)

(assert (=> b!130075 (= res!60027 ((_ is Cons!2160) newList!20))))

(declare-fun b!130076 () Bool)

(declare-fun isPrefix!159 (List!2166 List!2166) Bool)

(assert (=> b!130076 (= e!74940 (isPrefix!159 baseList!9 lt!39142))))

(declare-fun b!130068 () Bool)

(assert (=> b!130068 (= e!74934 e!74940)))

(declare-fun res!60031 () Bool)

(assert (=> b!130068 (=> (not res!60031) (not e!74940))))

(assert (=> b!130068 (= res!60031 (= (content!275 lt!39138) (content!275 lt!39142)))))

(assert (=> b!130068 (= lt!39138 (++!440 baseList!9 (t!22752 newList!20)))))

(declare-fun res!60024 () Bool)

(assert (=> start!13450 (=> (not res!60024) (not e!74935))))

(assert (=> start!13450 (= res!60024 (noDuplicate!56 baseList!9))))

(assert (=> start!13450 e!74935))

(assert (=> start!13450 e!74937))

(assert (=> start!13450 e!74939))

(assert (= (and start!13450 res!60024) b!130075))

(assert (= (and b!130075 res!60027) b!130065))

(assert (= (and b!130065 res!60028) b!130069))

(assert (= (and b!130069 res!60032) b!130068))

(assert (= (and b!130068 res!60031) b!130072))

(assert (= (and b!130072 res!60025) b!130076))

(assert (= (and b!130069 (not res!60026)) b!130073))

(assert (= (and b!130073 (not res!60023)) b!130070))

(assert (= (and b!130070 (not res!60029)) b!130067))

(assert (= (and b!130067 (not res!60030)) b!130066))

(assert (= (and start!13450 ((_ is Cons!2160) baseList!9)) b!130074))

(assert (= (and start!13450 ((_ is Cons!2160) newList!20)) b!130071))

(declare-fun m!114587 () Bool)

(assert (=> b!130069 m!114587))

(declare-fun m!114589 () Bool)

(assert (=> b!130069 m!114589))

(declare-fun m!114591 () Bool)

(assert (=> b!130069 m!114591))

(declare-fun m!114593 () Bool)

(assert (=> b!130069 m!114593))

(declare-fun m!114595 () Bool)

(assert (=> b!130065 m!114595))

(declare-fun m!114597 () Bool)

(assert (=> b!130070 m!114597))

(declare-fun m!114599 () Bool)

(assert (=> b!130072 m!114599))

(declare-fun m!114601 () Bool)

(assert (=> b!130068 m!114601))

(declare-fun m!114603 () Bool)

(assert (=> b!130068 m!114603))

(declare-fun m!114605 () Bool)

(assert (=> b!130068 m!114605))

(declare-fun m!114607 () Bool)

(assert (=> b!130067 m!114607))

(declare-fun m!114609 () Bool)

(assert (=> b!130067 m!114609))

(declare-fun m!114611 () Bool)

(assert (=> b!130067 m!114611))

(declare-fun m!114613 () Bool)

(assert (=> b!130067 m!114613))

(declare-fun m!114615 () Bool)

(assert (=> b!130067 m!114615))

(assert (=> b!130067 m!114607))

(declare-fun m!114617 () Bool)

(assert (=> b!130067 m!114617))

(assert (=> b!130067 m!114611))

(declare-fun m!114619 () Bool)

(assert (=> b!130067 m!114619))

(declare-fun m!114621 () Bool)

(assert (=> b!130076 m!114621))

(declare-fun m!114623 () Bool)

(assert (=> start!13450 m!114623))

(declare-fun m!114625 () Bool)

(assert (=> b!130073 m!114625))

(assert (=> b!130073 m!114603))

(assert (=> b!130073 m!114605))

(declare-fun m!114627 () Bool)

(assert (=> b!130066 m!114627))

(check-sat (not b!130069) (not b!130067) (not b!130066) (not b!130072) (not b!130074) (not b!130071) (not b!130065) (not b!130070) (not b!130076) (not start!13450) tp_is_empty!1369 (not b!130073) (not b!130068))
(check-sat)
