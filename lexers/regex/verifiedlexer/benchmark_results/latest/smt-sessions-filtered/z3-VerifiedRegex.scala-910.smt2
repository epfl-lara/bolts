; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47208 () Bool)

(assert start!47208)

(assert (=> start!47208 true))

(declare-fun bs!60340 () Bool)

(declare-fun b!518440 () Bool)

(assert (= bs!60340 (and b!518440 start!47208)))

(declare-fun lambda!14714 () Int)

(declare-datatypes ((B!1085 0))(
  ( (B!1086 (val!1830 Int)) )
))
(declare-datatypes ((List!4770 0))(
  ( (Nil!4760) (Cons!4760 (h!10161 B!1085) (t!73360 List!4770)) )
))
(declare-fun lt!216165 () List!4770)

(declare-fun lambda!14715 () Int)

(declare-fun l!3695 () List!4770)

(assert (=> bs!60340 (= (= lt!216165 l!3695) (= lambda!14715 lambda!14714))))

(assert (=> b!518440 true))

(declare-fun b!518432 () Bool)

(declare-fun e!310430 () Bool)

(declare-fun tp_is_empty!2681 () Bool)

(declare-fun tp!161625 () Bool)

(assert (=> b!518432 (= e!310430 (and tp_is_empty!2681 tp!161625))))

(declare-fun b!518433 () Bool)

(declare-fun e!310428 () Bool)

(declare-fun e!310427 () Bool)

(assert (=> b!518433 (= e!310428 e!310427)))

(declare-fun res!219903 () Bool)

(assert (=> b!518433 (=> (not res!219903) (not e!310427))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!216164 () (InoxSet B!1085))

(declare-fun lIn!3 () List!4770)

(declare-fun content!845 (List!4770) (InoxSet B!1085))

(assert (=> b!518433 (= res!219903 (= (content!845 lt!216165) ((_ map and) lt!216164 ((_ map not) (store ((as const (Array B!1085 Bool)) false) (h!10161 lIn!3) true)))))))

(declare-fun -!52 (List!4770 B!1085) List!4770)

(assert (=> b!518433 (= lt!216165 (-!52 l!3695 (h!10161 lIn!3)))))

(declare-fun b!518434 () Bool)

(declare-fun e!310431 () Bool)

(declare-fun tp!161624 () Bool)

(assert (=> b!518434 (= e!310431 (and tp_is_empty!2681 tp!161624))))

(declare-fun b!518435 () Bool)

(declare-fun e!310432 () Bool)

(assert (=> b!518435 (= e!310432 false)))

(declare-fun b!518436 () Bool)

(declare-fun res!219900 () Bool)

(assert (=> b!518436 (=> (not res!219900) (not e!310428))))

(declare-fun contains!1120 (List!4770 B!1085) Bool)

(assert (=> b!518436 (= res!219900 (not (contains!1120 (t!73360 lIn!3) (h!10161 lIn!3))))))

(declare-fun b!518437 () Bool)

(declare-fun res!219904 () Bool)

(declare-fun e!310429 () Bool)

(assert (=> b!518437 (=> (not res!219904) (not e!310429))))

(declare-fun noDuplicate!121 (List!4770) Bool)

(assert (=> b!518437 (= res!219904 (noDuplicate!121 lIn!3))))

(declare-fun b!518438 () Bool)

(assert (=> b!518438 (= e!310429 e!310428)))

(declare-fun res!219902 () Bool)

(assert (=> b!518438 (=> (not res!219902) (not e!310428))))

(assert (=> b!518438 (= res!219902 (= ((_ map implies) (content!845 lIn!3) lt!216164) ((as const (InoxSet B!1085)) true)))))

(assert (=> b!518438 (= lt!216164 (content!845 l!3695))))

(declare-datatypes ((Unit!8724 0))(
  ( (Unit!8725) )
))
(declare-fun lt!216163 () Unit!8724)

(declare-fun forallContainsSubset!6 (List!4770 List!4770) Unit!8724)

(assert (=> b!518438 (= lt!216163 (forallContainsSubset!6 lIn!3 l!3695))))

(assert (=> b!518440 (= e!310427 e!310432)))

(declare-fun res!219905 () Bool)

(assert (=> b!518440 (=> (not res!219905) (not e!310432))))

(declare-fun forall!1429 (List!4770 Int) Bool)

(assert (=> b!518440 (= res!219905 (forall!1429 (t!73360 lIn!3) lambda!14715))))

(declare-fun lt!216162 () Unit!8724)

(declare-fun subsetContains!4 (List!4770 List!4770) Unit!8724)

(assert (=> b!518440 (= lt!216162 (subsetContains!4 (t!73360 lIn!3) lt!216165))))

(declare-fun b!518441 () Bool)

(declare-fun res!219906 () Bool)

(assert (=> b!518441 (=> (not res!219906) (not e!310432))))

(assert (=> b!518441 (= res!219906 (noDuplicate!121 (t!73360 lIn!3)))))

(declare-fun res!219899 () Bool)

(assert (=> start!47208 (=> (not res!219899) (not e!310429))))

(assert (=> start!47208 (= res!219899 (forall!1429 lIn!3 lambda!14714))))

(assert (=> start!47208 e!310429))

(assert (=> start!47208 e!310431))

(assert (=> start!47208 e!310430))

(declare-fun b!518439 () Bool)

(declare-fun res!219901 () Bool)

(assert (=> b!518439 (=> (not res!219901) (not e!310429))))

(get-info :version)

(assert (=> b!518439 (= res!219901 ((_ is Cons!4760) lIn!3))))

(assert (= (and start!47208 res!219899) b!518437))

(assert (= (and b!518437 res!219904) b!518439))

(assert (= (and b!518439 res!219901) b!518438))

(assert (= (and b!518438 res!219902) b!518436))

(assert (= (and b!518436 res!219900) b!518433))

(assert (= (and b!518433 res!219903) b!518440))

(assert (= (and b!518440 res!219905) b!518441))

(assert (= (and b!518441 res!219906) b!518435))

(assert (= (and start!47208 ((_ is Cons!4760) lIn!3)) b!518434))

(assert (= (and start!47208 ((_ is Cons!4760) l!3695)) b!518432))

(declare-fun m!765409 () Bool)

(assert (=> b!518441 m!765409))

(declare-fun m!765411 () Bool)

(assert (=> start!47208 m!765411))

(declare-fun m!765413 () Bool)

(assert (=> b!518438 m!765413))

(declare-fun m!765415 () Bool)

(assert (=> b!518438 m!765415))

(declare-fun m!765417 () Bool)

(assert (=> b!518438 m!765417))

(declare-fun m!765419 () Bool)

(assert (=> b!518437 m!765419))

(declare-fun m!765421 () Bool)

(assert (=> b!518436 m!765421))

(declare-fun m!765423 () Bool)

(assert (=> b!518440 m!765423))

(declare-fun m!765425 () Bool)

(assert (=> b!518440 m!765425))

(declare-fun m!765427 () Bool)

(assert (=> b!518433 m!765427))

(declare-fun m!765429 () Bool)

(assert (=> b!518433 m!765429))

(declare-fun m!765431 () Bool)

(assert (=> b!518433 m!765431))

(check-sat (not b!518432) (not b!518441) tp_is_empty!2681 (not b!518433) (not b!518434) (not start!47208) (not b!518436) (not b!518440) (not b!518437) (not b!518438))
(check-sat)
