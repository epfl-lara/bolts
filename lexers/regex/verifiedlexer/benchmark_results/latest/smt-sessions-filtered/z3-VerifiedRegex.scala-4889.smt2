; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!250848 () Bool)

(assert start!250848)

(declare-fun b!2590194 () Bool)

(assert (=> b!2590194 true))

(declare-fun b!2590185 () Bool)

(declare-fun e!1633897 () Bool)

(declare-fun e!1633898 () Bool)

(assert (=> b!2590185 (= e!1633897 (not e!1633898))))

(declare-fun res!1088990 () Bool)

(assert (=> b!2590185 (=> res!1088990 e!1633898)))

(declare-fun lt!910703 () Int)

(declare-datatypes ((B!1977 0))(
  ( (B!1978 (val!9456 Int)) )
))
(declare-datatypes ((List!29889 0))(
  ( (Nil!29789) (Cons!29789 (h!35209 B!1977) (t!212902 List!29889)) )
))
(declare-fun l!3230 () List!29889)

(declare-fun size!23102 (List!29889) Int)

(assert (=> b!2590185 (= res!1088990 (>= lt!910703 (size!23102 l!3230)))))

(declare-fun lt!910705 () Int)

(assert (=> b!2590185 (= lt!910703 lt!910705)))

(assert (=> b!2590185 (= lt!910705 (size!23102 (t!212902 l!3230)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!910710 () (InoxSet B!1977))

(declare-fun toList!1740 ((InoxSet B!1977)) List!29889)

(assert (=> b!2590185 (= lt!910703 (size!23102 (toList!1740 lt!910710)))))

(declare-fun content!4130 (List!29889) (InoxSet B!1977))

(assert (=> b!2590185 (= lt!910710 (content!4130 (t!212902 l!3230)))))

(declare-datatypes ((Unit!43674 0))(
  ( (Unit!43675) )
))
(declare-fun lt!910702 () Unit!43674)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!30 (List!29889) Unit!43674)

(assert (=> b!2590185 (= lt!910702 (lemmaNoDuplicateThenContentToListSameSize!30 (t!212902 l!3230)))))

(declare-fun b!2590186 () Bool)

(declare-fun e!1633896 () Bool)

(assert (=> b!2590186 (= e!1633896 true)))

(declare-fun b!2590187 () Bool)

(declare-fun res!1088991 () Bool)

(assert (=> b!2590187 (=> res!1088991 e!1633898)))

(assert (=> b!2590187 (= res!1088991 (select lt!910710 (h!35209 l!3230)))))

(declare-fun res!1088993 () Bool)

(assert (=> start!250848 (=> (not res!1088993) (not e!1633897))))

(declare-fun noDuplicate!337 (List!29889) Bool)

(assert (=> start!250848 (= res!1088993 (noDuplicate!337 l!3230))))

(assert (=> start!250848 e!1633897))

(declare-fun e!1633894 () Bool)

(assert (=> start!250848 e!1633894))

(declare-fun b!2590188 () Bool)

(declare-fun res!1088988 () Bool)

(assert (=> b!2590188 (=> (not res!1088988) (not e!1633897))))

(get-info :version)

(assert (=> b!2590188 (= res!1088988 ((_ is Cons!29789) l!3230))))

(declare-fun b!2590189 () Bool)

(declare-fun res!1088989 () Bool)

(assert (=> b!2590189 (=> res!1088989 e!1633898)))

(declare-fun contains!5341 (List!29889 B!1977) Bool)

(assert (=> b!2590189 (= res!1088989 (contains!5341 (t!212902 l!3230) (h!35209 l!3230)))))

(declare-fun b!2590190 () Bool)

(declare-fun e!1633895 () Bool)

(assert (=> b!2590190 (= e!1633898 e!1633895)))

(declare-fun res!1088986 () Bool)

(assert (=> b!2590190 (=> res!1088986 e!1633895)))

(declare-fun lt!910709 () Int)

(assert (=> b!2590190 (= res!1088986 (not (= (size!23102 l!3230) lt!910709)))))

(assert (=> b!2590190 (= lt!910709 (+ 1 lt!910705))))

(declare-fun b!2590191 () Bool)

(declare-fun tp_is_empty!13257 () Bool)

(declare-fun tp!822576 () Bool)

(assert (=> b!2590191 (= e!1633894 (and tp_is_empty!13257 tp!822576))))

(declare-fun b!2590192 () Bool)

(declare-fun e!1633893 () Bool)

(assert (=> b!2590192 (= e!1633893 e!1633896)))

(declare-fun res!1088984 () Bool)

(assert (=> b!2590192 (=> res!1088984 e!1633896)))

(declare-fun lt!910706 () List!29889)

(assert (=> b!2590192 (= res!1088984 (not (noDuplicate!337 lt!910706)))))

(declare-fun lt!910708 () Unit!43674)

(declare-fun subsetContains!32 (List!29889 List!29889) Unit!43674)

(assert (=> b!2590192 (= lt!910708 (subsetContains!32 l!3230 lt!910706))))

(declare-fun b!2590193 () Bool)

(declare-fun e!1633899 () Bool)

(assert (=> b!2590193 (= e!1633895 e!1633899)))

(declare-fun res!1088985 () Bool)

(assert (=> b!2590193 (=> res!1088985 e!1633899)))

(declare-fun lt!910701 () (InoxSet B!1977))

(assert (=> b!2590193 (= res!1088985 (not (= (content!4130 l!3230) lt!910701)))))

(assert (=> b!2590193 (= lt!910701 ((_ map or) lt!910710 (store ((as const (Array B!1977 Bool)) false) (h!35209 l!3230) true)))))

(declare-fun e!1633892 () Unit!43674)

(declare-fun Unit!43676 () Unit!43674)

(assert (=> b!2590194 (= e!1633892 Unit!43676)))

(declare-fun lt!910713 () Unit!43674)

(assert (=> b!2590194 (= lt!910713 (subsetContains!32 lt!910706 l!3230))))

(declare-fun lt!910712 () Unit!43674)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!6 (List!29889 List!29889) Unit!43674)

(assert (=> b!2590194 (= lt!910712 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!6 l!3230 lt!910706))))

(declare-fun lambda!95930 () Int)

(declare-fun exists!890 (List!29889 Int) Bool)

(assert (=> b!2590194 (exists!890 l!3230 lambda!95930)))

(declare-fun lt!910704 () B!1977)

(declare-fun getWitness!518 (List!29889 Int) B!1977)

(assert (=> b!2590194 (= lt!910704 (getWitness!518 l!3230 lambda!95930))))

(assert (=> b!2590194 false))

(declare-fun b!2590195 () Bool)

(declare-fun res!1088992 () Bool)

(assert (=> b!2590195 (=> res!1088992 e!1633893)))

(assert (=> b!2590195 (= res!1088992 (not (= lt!910701 (content!4130 l!3230))))))

(declare-fun b!2590196 () Bool)

(declare-fun Unit!43677 () Unit!43674)

(assert (=> b!2590196 (= e!1633892 Unit!43677)))

(declare-fun b!2590197 () Bool)

(assert (=> b!2590197 (= e!1633899 e!1633893)))

(declare-fun res!1088987 () Bool)

(assert (=> b!2590197 (=> res!1088987 e!1633893)))

(declare-fun lt!910711 () Int)

(assert (=> b!2590197 (= res!1088987 (<= lt!910711 lt!910709))))

(declare-fun lt!910707 () Unit!43674)

(assert (=> b!2590197 (= lt!910707 e!1633892)))

(declare-fun c!417598 () Bool)

(assert (=> b!2590197 (= c!417598 (< lt!910711 lt!910709))))

(assert (=> b!2590197 (= lt!910711 (size!23102 lt!910706))))

(assert (=> b!2590197 (= lt!910706 (toList!1740 lt!910701))))

(assert (= (and start!250848 res!1088993) b!2590188))

(assert (= (and b!2590188 res!1088988) b!2590185))

(assert (= (and b!2590185 (not res!1088990)) b!2590187))

(assert (= (and b!2590187 (not res!1088991)) b!2590189))

(assert (= (and b!2590189 (not res!1088989)) b!2590190))

(assert (= (and b!2590190 (not res!1088986)) b!2590193))

(assert (= (and b!2590193 (not res!1088985)) b!2590197))

(assert (= (and b!2590197 c!417598) b!2590194))

(assert (= (and b!2590197 (not c!417598)) b!2590196))

(assert (= (and b!2590197 (not res!1088987)) b!2590195))

(assert (= (and b!2590195 (not res!1088992)) b!2590192))

(assert (= (and b!2590192 (not res!1088984)) b!2590186))

(assert (= (and start!250848 ((_ is Cons!29789) l!3230)) b!2590191))

(declare-fun m!2926263 () Bool)

(assert (=> b!2590197 m!2926263))

(declare-fun m!2926265 () Bool)

(assert (=> b!2590197 m!2926265))

(declare-fun m!2926267 () Bool)

(assert (=> b!2590190 m!2926267))

(declare-fun m!2926269 () Bool)

(assert (=> b!2590189 m!2926269))

(declare-fun m!2926271 () Bool)

(assert (=> start!250848 m!2926271))

(declare-fun m!2926273 () Bool)

(assert (=> b!2590195 m!2926273))

(declare-fun m!2926275 () Bool)

(assert (=> b!2590185 m!2926275))

(declare-fun m!2926277 () Bool)

(assert (=> b!2590185 m!2926277))

(declare-fun m!2926279 () Bool)

(assert (=> b!2590185 m!2926279))

(declare-fun m!2926281 () Bool)

(assert (=> b!2590185 m!2926281))

(assert (=> b!2590185 m!2926267))

(assert (=> b!2590185 m!2926275))

(declare-fun m!2926283 () Bool)

(assert (=> b!2590185 m!2926283))

(assert (=> b!2590193 m!2926273))

(declare-fun m!2926285 () Bool)

(assert (=> b!2590193 m!2926285))

(declare-fun m!2926287 () Bool)

(assert (=> b!2590187 m!2926287))

(declare-fun m!2926289 () Bool)

(assert (=> b!2590194 m!2926289))

(declare-fun m!2926291 () Bool)

(assert (=> b!2590194 m!2926291))

(declare-fun m!2926293 () Bool)

(assert (=> b!2590194 m!2926293))

(declare-fun m!2926295 () Bool)

(assert (=> b!2590194 m!2926295))

(declare-fun m!2926297 () Bool)

(assert (=> b!2590192 m!2926297))

(declare-fun m!2926299 () Bool)

(assert (=> b!2590192 m!2926299))

(check-sat (not b!2590192) (not b!2590197) tp_is_empty!13257 (not b!2590194) (not b!2590189) (not b!2590193) (not b!2590185) (not start!250848) (not b!2590195) (not b!2590190) (not b!2590191))
(check-sat)
