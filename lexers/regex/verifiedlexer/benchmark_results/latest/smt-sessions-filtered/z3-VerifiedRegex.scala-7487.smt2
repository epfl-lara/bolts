; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396330 () Bool)

(assert start!396330)

(declare-fun res!1703914 () Bool)

(declare-fun e!2581648 () Bool)

(assert (=> start!396330 (=> (not res!1703914) (not e!2581648))))

(declare-datatypes ((B!2725 0))(
  ( (B!2726 (val!14654 Int)) )
))
(declare-datatypes ((List!45531 0))(
  ( (Nil!45407) (Cons!45407 (h!50827 B!2725) (t!343562 List!45531)) )
))
(declare-fun l!3061 () List!45531)

(declare-fun e!9245 () B!2725)

(declare-fun contains!9265 (List!45531 B!2725) Bool)

(assert (=> start!396330 (= res!1703914 (contains!9265 l!3061 e!9245))))

(assert (=> start!396330 e!2581648))

(declare-fun e!2581647 () Bool)

(assert (=> start!396330 e!2581647))

(declare-fun tp_is_empty!21773 () Bool)

(assert (=> start!396330 tp_is_empty!21773))

(declare-fun b!4159752 () Bool)

(declare-fun res!1703913 () Bool)

(assert (=> b!4159752 (=> (not res!1703913) (not e!2581648))))

(declare-fun head!8832 (List!45531) B!2725)

(assert (=> b!4159752 (= res!1703913 (not (= (head!8832 l!3061) e!9245)))))

(declare-fun b!4159753 () Bool)

(declare-fun tail!6679 (List!45531) List!45531)

(assert (=> b!4159753 (= e!2581648 (not (contains!9265 (tail!6679 l!3061) e!9245)))))

(declare-fun b!4159754 () Bool)

(declare-fun tp!1269092 () Bool)

(assert (=> b!4159754 (= e!2581647 (and tp_is_empty!21773 tp!1269092))))

(assert (= (and start!396330 res!1703914) b!4159752))

(assert (= (and b!4159752 res!1703913) b!4159753))

(get-info :version)

(assert (= (and start!396330 ((_ is Cons!45407) l!3061)) b!4159754))

(declare-fun m!4753349 () Bool)

(assert (=> start!396330 m!4753349))

(declare-fun m!4753351 () Bool)

(assert (=> b!4159752 m!4753351))

(declare-fun m!4753353 () Bool)

(assert (=> b!4159753 m!4753353))

(assert (=> b!4159753 m!4753353))

(declare-fun m!4753355 () Bool)

(assert (=> b!4159753 m!4753355))

(check-sat (not b!4159754) tp_is_empty!21773 (not b!4159753) (not b!4159752) (not start!396330))
(check-sat)
(get-model)

(declare-fun d!1229918 () Bool)

(declare-fun lt!1482756 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7050 (List!45531) (InoxSet B!2725))

(assert (=> d!1229918 (= lt!1482756 (select (content!7050 (tail!6679 l!3061)) e!9245))))

(declare-fun e!2581660 () Bool)

(assert (=> d!1229918 (= lt!1482756 e!2581660)))

(declare-fun res!1703925 () Bool)

(assert (=> d!1229918 (=> (not res!1703925) (not e!2581660))))

(assert (=> d!1229918 (= res!1703925 ((_ is Cons!45407) (tail!6679 l!3061)))))

(assert (=> d!1229918 (= (contains!9265 (tail!6679 l!3061) e!9245) lt!1482756)))

(declare-fun b!4159765 () Bool)

(declare-fun e!2581659 () Bool)

(assert (=> b!4159765 (= e!2581660 e!2581659)))

(declare-fun res!1703926 () Bool)

(assert (=> b!4159765 (=> res!1703926 e!2581659)))

(assert (=> b!4159765 (= res!1703926 (= (h!50827 (tail!6679 l!3061)) e!9245))))

(declare-fun b!4159766 () Bool)

(assert (=> b!4159766 (= e!2581659 (contains!9265 (t!343562 (tail!6679 l!3061)) e!9245))))

(assert (= (and d!1229918 res!1703925) b!4159765))

(assert (= (and b!4159765 (not res!1703926)) b!4159766))

(assert (=> d!1229918 m!4753353))

(declare-fun m!4753363 () Bool)

(assert (=> d!1229918 m!4753363))

(declare-fun m!4753365 () Bool)

(assert (=> d!1229918 m!4753365))

(declare-fun m!4753367 () Bool)

(assert (=> b!4159766 m!4753367))

(assert (=> b!4159753 d!1229918))

(declare-fun d!1229926 () Bool)

(assert (=> d!1229926 (= (tail!6679 l!3061) (t!343562 l!3061))))

(assert (=> b!4159753 d!1229926))

(declare-fun d!1229928 () Bool)

(declare-fun lt!1482758 () Bool)

(assert (=> d!1229928 (= lt!1482758 (select (content!7050 l!3061) e!9245))))

(declare-fun e!2581666 () Bool)

(assert (=> d!1229928 (= lt!1482758 e!2581666)))

(declare-fun res!1703929 () Bool)

(assert (=> d!1229928 (=> (not res!1703929) (not e!2581666))))

(assert (=> d!1229928 (= res!1703929 ((_ is Cons!45407) l!3061))))

(assert (=> d!1229928 (= (contains!9265 l!3061 e!9245) lt!1482758)))

(declare-fun b!4159773 () Bool)

(declare-fun e!2581665 () Bool)

(assert (=> b!4159773 (= e!2581666 e!2581665)))

(declare-fun res!1703930 () Bool)

(assert (=> b!4159773 (=> res!1703930 e!2581665)))

(assert (=> b!4159773 (= res!1703930 (= (h!50827 l!3061) e!9245))))

(declare-fun b!4159774 () Bool)

(assert (=> b!4159774 (= e!2581665 (contains!9265 (t!343562 l!3061) e!9245))))

(assert (= (and d!1229928 res!1703929) b!4159773))

(assert (= (and b!4159773 (not res!1703930)) b!4159774))

(declare-fun m!4753375 () Bool)

(assert (=> d!1229928 m!4753375))

(declare-fun m!4753377 () Bool)

(assert (=> d!1229928 m!4753377))

(declare-fun m!4753379 () Bool)

(assert (=> b!4159774 m!4753379))

(assert (=> start!396330 d!1229928))

(declare-fun d!1229930 () Bool)

(assert (=> d!1229930 (= (head!8832 l!3061) (h!50827 l!3061))))

(assert (=> b!4159752 d!1229930))

(declare-fun b!4159780 () Bool)

(declare-fun e!2581670 () Bool)

(declare-fun tp!1269098 () Bool)

(assert (=> b!4159780 (= e!2581670 (and tp_is_empty!21773 tp!1269098))))

(assert (=> b!4159754 (= tp!1269092 e!2581670)))

(assert (= (and b!4159754 ((_ is Cons!45407) (t!343562 l!3061))) b!4159780))

(check-sat (not b!4159766) (not d!1229918) (not b!4159780) (not d!1229928) tp_is_empty!21773 (not b!4159774))
(check-sat)
