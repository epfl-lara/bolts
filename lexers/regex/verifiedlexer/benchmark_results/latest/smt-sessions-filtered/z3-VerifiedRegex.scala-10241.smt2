; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534010 () Bool)

(assert start!534010)

(declare-fun b!5048976 () Bool)

(declare-fun res!2150379 () Bool)

(declare-fun e!3152367 () Bool)

(assert (=> b!5048976 (=> (not res!2150379) (not e!3152367))))

(declare-datatypes ((T!104488 0))(
  ( (T!104489 (val!23558 Int)) )
))
(declare-datatypes ((List!58468 0))(
  ( (Nil!58344) (Cons!58344 (h!64792 T!104488) (t!371107 List!58468)) )
))
(declare-fun l!2763 () List!58468)

(declare-fun i!658 () Int)

(declare-fun drop!2668 (List!58468 Int) List!58468)

(assert (=> b!5048976 (= res!2150379 (= (drop!2668 l!2763 i!658) l!2763))))

(declare-fun b!5048977 () Bool)

(declare-fun e!3152364 () Bool)

(assert (=> b!5048977 (= e!3152364 e!3152367)))

(declare-fun res!2150377 () Bool)

(assert (=> b!5048977 (=> (not res!2150377) (not e!3152367))))

(declare-fun lt!2086167 () Int)

(get-info :version)

(assert (=> b!5048977 (= res!2150377 (and (<= i!658 lt!2086167) (not ((_ is Nil!58344) l!2763)) (= i!658 0)))))

(declare-fun size!38969 (List!58468) Int)

(assert (=> b!5048977 (= lt!2086167 (size!38969 l!2763))))

(declare-fun b!5048978 () Bool)

(declare-fun e!3152365 () Bool)

(assert (=> b!5048978 (= e!3152367 e!3152365)))

(declare-fun res!2150378 () Bool)

(assert (=> b!5048978 (=> (not res!2150378) (not e!3152365))))

(declare-fun lt!2086166 () List!58468)

(declare-fun lt!2086169 () List!58468)

(declare-fun take!855 (List!58468 Int) List!58468)

(assert (=> b!5048978 (= res!2150378 (= lt!2086166 (take!855 lt!2086169 lt!2086167)))))

(declare-fun slice!885 (List!58468 Int Int) List!58468)

(assert (=> b!5048978 (= lt!2086166 (slice!885 l!2763 0 lt!2086167))))

(assert (=> b!5048978 (= lt!2086169 (drop!2668 l!2763 0))))

(declare-fun res!2150376 () Bool)

(assert (=> start!534010 (=> (not res!2150376) (not e!3152364))))

(assert (=> start!534010 (= res!2150376 (<= 0 i!658))))

(assert (=> start!534010 e!3152364))

(assert (=> start!534010 true))

(declare-fun e!3152366 () Bool)

(assert (=> start!534010 e!3152366))

(declare-fun b!5048979 () Bool)

(declare-fun e!3152368 () Bool)

(assert (=> b!5048979 (= e!3152365 e!3152368)))

(declare-fun res!2150375 () Bool)

(assert (=> b!5048979 (=> (not res!2150375) (not e!3152368))))

(declare-fun lt!2086165 () List!58468)

(assert (=> b!5048979 (= res!2150375 (= lt!2086166 lt!2086165))))

(assert (=> b!5048979 (= lt!2086165 (take!855 l!2763 lt!2086167))))

(declare-fun b!5048980 () Bool)

(assert (=> b!5048980 (= e!3152368 (not (= l!2763 lt!2086165)))))

(assert (=> b!5048980 (= lt!2086165 l!2763)))

(declare-datatypes ((Unit!149539 0))(
  ( (Unit!149540) )
))
(declare-fun lt!2086168 () Unit!149539)

(declare-fun takeFullLemma!12 (List!58468) Unit!149539)

(assert (=> b!5048980 (= lt!2086168 (takeFullLemma!12 l!2763))))

(declare-fun b!5048981 () Bool)

(declare-fun tp_is_empty!36871 () Bool)

(declare-fun tp!1411999 () Bool)

(assert (=> b!5048981 (= e!3152366 (and tp_is_empty!36871 tp!1411999))))

(assert (= (and start!534010 res!2150376) b!5048977))

(assert (= (and b!5048977 res!2150377) b!5048976))

(assert (= (and b!5048976 res!2150379) b!5048978))

(assert (= (and b!5048978 res!2150378) b!5048979))

(assert (= (and b!5048979 res!2150375) b!5048980))

(assert (= (and start!534010 ((_ is Cons!58344) l!2763)) b!5048981))

(declare-fun m!6083972 () Bool)

(assert (=> b!5048980 m!6083972))

(declare-fun m!6083974 () Bool)

(assert (=> b!5048977 m!6083974))

(declare-fun m!6083976 () Bool)

(assert (=> b!5048976 m!6083976))

(declare-fun m!6083978 () Bool)

(assert (=> b!5048978 m!6083978))

(declare-fun m!6083980 () Bool)

(assert (=> b!5048978 m!6083980))

(declare-fun m!6083982 () Bool)

(assert (=> b!5048978 m!6083982))

(declare-fun m!6083984 () Bool)

(assert (=> b!5048979 m!6083984))

(check-sat (not b!5048980) (not b!5048981) (not b!5048979) (not b!5048977) tp_is_empty!36871 (not b!5048978) (not b!5048976))
(check-sat)
