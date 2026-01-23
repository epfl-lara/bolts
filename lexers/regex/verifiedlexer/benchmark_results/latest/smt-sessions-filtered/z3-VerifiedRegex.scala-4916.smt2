; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251400 () Bool)

(assert start!251400)

(declare-fun b!2593193 () Bool)

(assert (=> b!2593193 true))

(declare-fun b!2593190 () Bool)

(declare-fun res!1090775 () Bool)

(declare-fun e!1636041 () Bool)

(assert (=> b!2593190 (=> (not res!1090775) (not e!1636041))))

(declare-datatypes ((B!2085 0))(
  ( (B!2086 (val!9510 Int)) )
))
(declare-datatypes ((List!29943 0))(
  ( (Nil!29843) (Cons!29843 (h!35263 B!2085) (t!212956 List!29943)) )
))
(declare-fun l!3230 () List!29943)

(get-info :version)

(assert (=> b!2593190 (= res!1090775 ((_ is Cons!29843) l!3230))))

(declare-fun b!2593191 () Bool)

(declare-fun e!1636038 () Bool)

(declare-fun e!1636042 () Bool)

(assert (=> b!2593191 (= e!1636038 e!1636042)))

(declare-fun res!1090774 () Bool)

(assert (=> b!2593191 (=> res!1090774 e!1636042)))

(declare-fun lt!912643 () Int)

(declare-fun lt!912653 () Int)

(assert (=> b!2593191 (= res!1090774 (<= lt!912643 lt!912653))))

(declare-datatypes ((Unit!43824 0))(
  ( (Unit!43825) )
))
(declare-fun lt!912650 () Unit!43824)

(declare-fun e!1636039 () Unit!43824)

(assert (=> b!2593191 (= lt!912650 e!1636039)))

(declare-fun c!418004 () Bool)

(assert (=> b!2593191 (= c!418004 (< lt!912643 lt!912653))))

(declare-fun lt!912647 () List!29943)

(declare-fun size!23150 (List!29943) Int)

(assert (=> b!2593191 (= lt!912643 (size!23150 lt!912647))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!912642 () (InoxSet B!2085))

(declare-fun toList!1788 ((InoxSet B!2085)) List!29943)

(assert (=> b!2593191 (= lt!912647 (toList!1788 lt!912642))))

(declare-fun b!2593192 () Bool)

(assert (=> b!2593192 (= e!1636042 true)))

(declare-fun lt!912651 () Bool)

(declare-fun noDuplicate!391 (List!29943) Bool)

(assert (=> b!2593192 (= lt!912651 (noDuplicate!391 lt!912647))))

(declare-fun lt!912645 () Unit!43824)

(declare-fun subsetContains!66 (List!29943 List!29943) Unit!43824)

(assert (=> b!2593192 (= lt!912645 (subsetContains!66 l!3230 lt!912647))))

(declare-fun Unit!43826 () Unit!43824)

(assert (=> b!2593193 (= e!1636039 Unit!43826)))

(declare-fun lt!912649 () Unit!43824)

(assert (=> b!2593193 (= lt!912649 (subsetContains!66 lt!912647 l!3230))))

(declare-fun lt!912652 () Unit!43824)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!32 (List!29943 List!29943) Unit!43824)

(assert (=> b!2593193 (= lt!912652 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!32 l!3230 lt!912647))))

(declare-fun lambda!96284 () Int)

(declare-fun exists!916 (List!29943 Int) Bool)

(assert (=> b!2593193 (exists!916 l!3230 lambda!96284)))

(declare-fun lt!912648 () B!2085)

(declare-fun getWitness!542 (List!29943 Int) B!2085)

(assert (=> b!2593193 (= lt!912648 (getWitness!542 l!3230 lambda!96284))))

(assert (=> b!2593193 false))

(declare-fun b!2593194 () Bool)

(declare-fun res!1090776 () Bool)

(declare-fun e!1636037 () Bool)

(assert (=> b!2593194 (=> res!1090776 e!1636037)))

(declare-fun contains!5393 (List!29943 B!2085) Bool)

(assert (=> b!2593194 (= res!1090776 (contains!5393 (t!212956 l!3230) (h!35263 l!3230)))))

(declare-fun b!2593195 () Bool)

(declare-fun res!1090771 () Bool)

(assert (=> b!2593195 (=> res!1090771 e!1636042)))

(declare-fun content!4178 (List!29943) (InoxSet B!2085))

(assert (=> b!2593195 (= res!1090771 (not (= lt!912642 (content!4178 l!3230))))))

(declare-fun b!2593196 () Bool)

(assert (=> b!2593196 (= e!1636041 (not e!1636037))))

(declare-fun res!1090777 () Bool)

(assert (=> b!2593196 (=> res!1090777 e!1636037)))

(declare-fun lt!912644 () Int)

(assert (=> b!2593196 (= res!1090777 (>= lt!912644 (size!23150 l!3230)))))

(declare-fun lt!912641 () Int)

(assert (=> b!2593196 (= lt!912644 lt!912641)))

(assert (=> b!2593196 (= lt!912641 (size!23150 (t!212956 l!3230)))))

(declare-fun lt!912646 () (InoxSet B!2085))

(assert (=> b!2593196 (= lt!912644 (size!23150 (toList!1788 lt!912646)))))

(assert (=> b!2593196 (= lt!912646 (content!4178 (t!212956 l!3230)))))

(declare-fun lt!912640 () Unit!43824)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!78 (List!29943) Unit!43824)

(assert (=> b!2593196 (= lt!912640 (lemmaNoDuplicateThenContentToListSameSize!78 (t!212956 l!3230)))))

(declare-fun b!2593197 () Bool)

(declare-fun Unit!43827 () Unit!43824)

(assert (=> b!2593197 (= e!1636039 Unit!43827)))

(declare-fun res!1090770 () Bool)

(assert (=> start!251400 (=> (not res!1090770) (not e!1636041))))

(assert (=> start!251400 (= res!1090770 (noDuplicate!391 l!3230))))

(assert (=> start!251400 e!1636041))

(declare-fun e!1636040 () Bool)

(assert (=> start!251400 e!1636040))

(declare-fun b!2593198 () Bool)

(declare-fun res!1090772 () Bool)

(assert (=> b!2593198 (=> res!1090772 e!1636037)))

(assert (=> b!2593198 (= res!1090772 (select lt!912646 (h!35263 l!3230)))))

(declare-fun b!2593199 () Bool)

(declare-fun e!1636043 () Bool)

(assert (=> b!2593199 (= e!1636037 e!1636043)))

(declare-fun res!1090773 () Bool)

(assert (=> b!2593199 (=> res!1090773 e!1636043)))

(assert (=> b!2593199 (= res!1090773 (not (= (size!23150 l!3230) lt!912653)))))

(assert (=> b!2593199 (= lt!912653 (+ 1 lt!912641))))

(declare-fun b!2593200 () Bool)

(assert (=> b!2593200 (= e!1636043 e!1636038)))

(declare-fun res!1090769 () Bool)

(assert (=> b!2593200 (=> res!1090769 e!1636038)))

(assert (=> b!2593200 (= res!1090769 (not (= (content!4178 l!3230) lt!912642)))))

(assert (=> b!2593200 (= lt!912642 ((_ map or) lt!912646 (store ((as const (Array B!2085 Bool)) false) (h!35263 l!3230) true)))))

(declare-fun b!2593201 () Bool)

(declare-fun tp_is_empty!13365 () Bool)

(declare-fun tp!822842 () Bool)

(assert (=> b!2593201 (= e!1636040 (and tp_is_empty!13365 tp!822842))))

(assert (= (and start!251400 res!1090770) b!2593190))

(assert (= (and b!2593190 res!1090775) b!2593196))

(assert (= (and b!2593196 (not res!1090777)) b!2593198))

(assert (= (and b!2593198 (not res!1090772)) b!2593194))

(assert (= (and b!2593194 (not res!1090776)) b!2593199))

(assert (= (and b!2593199 (not res!1090773)) b!2593200))

(assert (= (and b!2593200 (not res!1090769)) b!2593191))

(assert (= (and b!2593191 c!418004) b!2593193))

(assert (= (and b!2593191 (not c!418004)) b!2593197))

(assert (= (and b!2593191 (not res!1090774)) b!2593195))

(assert (= (and b!2593195 (not res!1090771)) b!2593192))

(assert (= (and start!251400 ((_ is Cons!29843) l!3230)) b!2593201))

(declare-fun m!2929247 () Bool)

(assert (=> b!2593196 m!2929247))

(declare-fun m!2929249 () Bool)

(assert (=> b!2593196 m!2929249))

(declare-fun m!2929251 () Bool)

(assert (=> b!2593196 m!2929251))

(declare-fun m!2929253 () Bool)

(assert (=> b!2593196 m!2929253))

(declare-fun m!2929255 () Bool)

(assert (=> b!2593196 m!2929255))

(declare-fun m!2929257 () Bool)

(assert (=> b!2593196 m!2929257))

(assert (=> b!2593196 m!2929251))

(declare-fun m!2929259 () Bool)

(assert (=> b!2593194 m!2929259))

(declare-fun m!2929261 () Bool)

(assert (=> start!251400 m!2929261))

(declare-fun m!2929263 () Bool)

(assert (=> b!2593193 m!2929263))

(declare-fun m!2929265 () Bool)

(assert (=> b!2593193 m!2929265))

(declare-fun m!2929267 () Bool)

(assert (=> b!2593193 m!2929267))

(declare-fun m!2929269 () Bool)

(assert (=> b!2593193 m!2929269))

(assert (=> b!2593199 m!2929255))

(declare-fun m!2929271 () Bool)

(assert (=> b!2593192 m!2929271))

(declare-fun m!2929273 () Bool)

(assert (=> b!2593192 m!2929273))

(declare-fun m!2929275 () Bool)

(assert (=> b!2593195 m!2929275))

(declare-fun m!2929277 () Bool)

(assert (=> b!2593191 m!2929277))

(declare-fun m!2929279 () Bool)

(assert (=> b!2593191 m!2929279))

(assert (=> b!2593200 m!2929275))

(declare-fun m!2929281 () Bool)

(assert (=> b!2593200 m!2929281))

(declare-fun m!2929283 () Bool)

(assert (=> b!2593198 m!2929283))

(check-sat tp_is_empty!13365 (not b!2593200) (not b!2593193) (not b!2593192) (not b!2593195) (not b!2593194) (not b!2593191) (not b!2593196) (not b!2593199) (not start!251400) (not b!2593201))
(check-sat)
