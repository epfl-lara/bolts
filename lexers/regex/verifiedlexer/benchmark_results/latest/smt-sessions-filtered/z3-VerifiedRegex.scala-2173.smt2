; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107784 () Bool)

(assert start!107784)

(declare-fun b!1210078 () Bool)

(declare-fun e!776256 () Bool)

(declare-datatypes ((B!1305 0))(
  ( (B!1306 (val!4010 Int)) )
))
(declare-datatypes ((List!12257 0))(
  ( (Nil!12199) (Cons!12199 (h!17600 B!1305) (t!112641 List!12257)) )
))
(declare-fun lt!414089 () List!12257)

(declare-fun isEmpty!7285 (List!12257) Bool)

(assert (=> b!1210078 (= e!776256 (not (isEmpty!7285 (t!112641 lt!414089))))))

(declare-fun setIsEmpty!7858 () Bool)

(declare-fun setRes!7858 () Bool)

(assert (=> setIsEmpty!7858 setRes!7858))

(declare-fun b!1210079 () Bool)

(declare-fun e!776259 () Bool)

(declare-fun e!776258 () Bool)

(assert (=> b!1210079 (= e!776259 e!776258)))

(declare-fun res!544099 () Bool)

(assert (=> b!1210079 (=> (not res!544099) (not e!776258))))

(assert (=> b!1210079 (= res!544099 e!776256)))

(declare-fun res!544098 () Bool)

(assert (=> b!1210079 (=> res!544098 e!776256)))

(declare-fun lt!414092 () Bool)

(assert (=> b!1210079 (= res!544098 lt!414092)))

(get-info :version)

(assert (=> b!1210079 (= lt!414092 (not ((_ is Cons!12199) lt!414089)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun s!1510 () (InoxSet B!1305))

(declare-fun toList!671 ((InoxSet B!1305)) List!12257)

(assert (=> b!1210079 (= lt!414089 (toList!671 s!1510))))

(declare-fun res!544097 () Bool)

(assert (=> start!107784 (=> (not res!544097) (not e!776259))))

(assert (=> start!107784 (= res!544097 (not (= s!1510 ((as const (Array B!1305 Bool)) false))))))

(assert (=> start!107784 e!776259))

(declare-fun condSetEmpty!7858 () Bool)

(assert (=> start!107784 (= condSetEmpty!7858 (= s!1510 ((as const (Array B!1305 Bool)) false)))))

(assert (=> start!107784 setRes!7858))

(declare-fun b!1210080 () Bool)

(declare-fun res!544101 () Bool)

(assert (=> b!1210080 (=> (not res!544101) (not e!776258))))

(assert (=> b!1210080 (= res!544101 (not lt!414092))))

(declare-fun setNonEmpty!7858 () Bool)

(declare-fun tp!342773 () Bool)

(declare-fun tp_is_empty!6163 () Bool)

(assert (=> setNonEmpty!7858 (= setRes!7858 (and tp!342773 tp_is_empty!6163))))

(declare-fun setElem!7858 () B!1305)

(declare-fun setRest!7858 () (InoxSet B!1305))

(assert (=> setNonEmpty!7858 (= s!1510 ((_ map or) (store ((as const (Array B!1305 Bool)) false) setElem!7858 true) setRest!7858))))

(declare-fun b!1210081 () Bool)

(declare-fun res!544100 () Bool)

(declare-fun e!776257 () Bool)

(assert (=> b!1210081 (=> res!544100 e!776257)))

(declare-fun contains!2028 (List!12257 B!1305) Bool)

(assert (=> b!1210081 (= res!544100 (not (contains!2028 lt!414089 (h!17600 lt!414089))))))

(declare-fun b!1210082 () Bool)

(assert (=> b!1210082 (= e!776258 (not e!776257))))

(declare-fun res!544096 () Bool)

(assert (=> b!1210082 (=> res!544096 e!776257)))

(declare-fun lt!414093 () List!12257)

(assert (=> b!1210082 (= res!544096 (or (not (= lt!414089 (Cons!12199 (h!17600 lt!414089) (t!112641 lt!414089)))) (not (= lt!414093 (t!112641 lt!414089))) (not (= (t!112641 lt!414089) lt!414093))))))

(declare-fun tail!1766 (List!12257) List!12257)

(assert (=> b!1210082 (= lt!414093 (tail!1766 lt!414089))))

(declare-fun -!76 (List!12257 B!1305) List!12257)

(assert (=> b!1210082 (= lt!414093 (-!76 lt!414089 (h!17600 lt!414089)))))

(declare-datatypes ((Unit!18576 0))(
  ( (Unit!18577) )
))
(declare-fun lt!414091 () Unit!18576)

(declare-fun lemmaNoDuplicateMinusHeadSameAsTail!4 (List!12257 B!1305) Unit!18576)

(assert (=> b!1210082 (= lt!414091 (lemmaNoDuplicateMinusHeadSameAsTail!4 lt!414089 (h!17600 lt!414089)))))

(declare-fun b!1210083 () Bool)

(assert (=> b!1210083 (= e!776257 (not (= lt!414089 Nil!12199)))))

(declare-fun size!9735 (List!12257) Int)

(assert (=> b!1210083 (< (size!9735 lt!414093) (size!9735 lt!414089))))

(declare-fun lt!414090 () Unit!18576)

(declare-fun lemmaRemoveElmtContainedSizeSmaller!6 (List!12257 B!1305) Unit!18576)

(assert (=> b!1210083 (= lt!414090 (lemmaRemoveElmtContainedSizeSmaller!6 lt!414089 (h!17600 lt!414089)))))

(assert (= (and start!107784 res!544097) b!1210079))

(assert (= (and b!1210079 (not res!544098)) b!1210078))

(assert (= (and b!1210079 res!544099) b!1210080))

(assert (= (and b!1210080 res!544101) b!1210082))

(assert (= (and b!1210082 (not res!544096)) b!1210081))

(assert (= (and b!1210081 (not res!544100)) b!1210083))

(assert (= (and start!107784 condSetEmpty!7858) setIsEmpty!7858))

(assert (= (and start!107784 (not condSetEmpty!7858)) setNonEmpty!7858))

(declare-fun m!1386057 () Bool)

(assert (=> b!1210078 m!1386057))

(declare-fun m!1386059 () Bool)

(assert (=> b!1210079 m!1386059))

(declare-fun m!1386061 () Bool)

(assert (=> b!1210082 m!1386061))

(declare-fun m!1386063 () Bool)

(assert (=> b!1210082 m!1386063))

(declare-fun m!1386065 () Bool)

(assert (=> b!1210082 m!1386065))

(declare-fun m!1386067 () Bool)

(assert (=> b!1210083 m!1386067))

(declare-fun m!1386069 () Bool)

(assert (=> b!1210083 m!1386069))

(declare-fun m!1386071 () Bool)

(assert (=> b!1210083 m!1386071))

(declare-fun m!1386073 () Bool)

(assert (=> b!1210081 m!1386073))

(check-sat (not setNonEmpty!7858) (not b!1210079) tp_is_empty!6163 (not b!1210083) (not b!1210081) (not b!1210078) (not b!1210082))
(check-sat)
