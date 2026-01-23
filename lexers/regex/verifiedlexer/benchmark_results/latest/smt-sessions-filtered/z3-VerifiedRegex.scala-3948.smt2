; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216084 () Bool)

(assert start!216084)

(declare-fun res!952565 () Bool)

(declare-fun e!1416476 () Bool)

(assert (=> start!216084 (=> (not res!952565) (not e!1416476))))

(declare-datatypes ((B!1793 0))(
  ( (B!1794 (val!7422 Int)) )
))
(declare-datatypes ((List!26050 0))(
  ( (Nil!25966) (Cons!25966 (h!31367 B!1793) (t!199366 List!26050)) )
))
(declare-fun l!3389 () List!26050)

(declare-fun isEmpty!14844 (List!26050) Bool)

(assert (=> start!216084 (= res!952565 (not (isEmpty!14844 l!3389)))))

(assert (=> start!216084 e!1416476))

(declare-fun e!1416477 () Bool)

(assert (=> start!216084 e!1416477))

(declare-fun b!2218054 () Bool)

(declare-fun res!952566 () Bool)

(assert (=> b!2218054 (=> (not res!952566) (not e!1416476))))

(get-info :version)

(assert (=> b!2218054 (= res!952566 (and ((_ is Cons!25966) l!3389) ((_ is Nil!25966) (t!199366 l!3389))))))

(declare-fun b!2218055 () Bool)

(declare-fun isPrefix!2179 (List!26050 List!26050) Bool)

(declare-fun removeLast!20 (List!26050) List!26050)

(assert (=> b!2218055 (= e!1416476 (not (isPrefix!2179 (removeLast!20 l!3389) l!3389)))))

(declare-fun b!2218056 () Bool)

(declare-fun tp_is_empty!9841 () Bool)

(declare-fun tp!691048 () Bool)

(assert (=> b!2218056 (= e!1416477 (and tp_is_empty!9841 tp!691048))))

(assert (= (and start!216084 res!952565) b!2218054))

(assert (= (and b!2218054 res!952566) b!2218055))

(assert (= (and start!216084 ((_ is Cons!25966) l!3389)) b!2218056))

(declare-fun m!2658913 () Bool)

(assert (=> start!216084 m!2658913))

(declare-fun m!2658915 () Bool)

(assert (=> b!2218055 m!2658915))

(assert (=> b!2218055 m!2658915))

(declare-fun m!2658917 () Bool)

(assert (=> b!2218055 m!2658917))

(check-sat (not b!2218055) (not start!216084) (not b!2218056) tp_is_empty!9841)
(check-sat)
(get-model)

(declare-fun b!2218066 () Bool)

(declare-fun res!952575 () Bool)

(declare-fun e!1416484 () Bool)

(assert (=> b!2218066 (=> (not res!952575) (not e!1416484))))

(declare-fun head!4740 (List!26050) B!1793)

(assert (=> b!2218066 (= res!952575 (= (head!4740 (removeLast!20 l!3389)) (head!4740 l!3389)))))

(declare-fun d!662977 () Bool)

(declare-fun e!1416485 () Bool)

(assert (=> d!662977 e!1416485))

(declare-fun res!952578 () Bool)

(assert (=> d!662977 (=> res!952578 e!1416485)))

(declare-fun lt!826938 () Bool)

(assert (=> d!662977 (= res!952578 (not lt!826938))))

(declare-fun e!1416486 () Bool)

(assert (=> d!662977 (= lt!826938 e!1416486)))

(declare-fun res!952577 () Bool)

(assert (=> d!662977 (=> res!952577 e!1416486)))

(assert (=> d!662977 (= res!952577 ((_ is Nil!25966) (removeLast!20 l!3389)))))

(assert (=> d!662977 (= (isPrefix!2179 (removeLast!20 l!3389) l!3389) lt!826938)))

(declare-fun b!2218068 () Bool)

(declare-fun size!20263 (List!26050) Int)

(assert (=> b!2218068 (= e!1416485 (>= (size!20263 l!3389) (size!20263 (removeLast!20 l!3389))))))

(declare-fun b!2218065 () Bool)

(assert (=> b!2218065 (= e!1416486 e!1416484)))

(declare-fun res!952576 () Bool)

(assert (=> b!2218065 (=> (not res!952576) (not e!1416484))))

(assert (=> b!2218065 (= res!952576 (not ((_ is Nil!25966) l!3389)))))

(declare-fun b!2218067 () Bool)

(declare-fun tail!3229 (List!26050) List!26050)

(assert (=> b!2218067 (= e!1416484 (isPrefix!2179 (tail!3229 (removeLast!20 l!3389)) (tail!3229 l!3389)))))

(assert (= (and d!662977 (not res!952577)) b!2218065))

(assert (= (and b!2218065 res!952576) b!2218066))

(assert (= (and b!2218066 res!952575) b!2218067))

(assert (= (and d!662977 (not res!952578)) b!2218068))

(assert (=> b!2218066 m!2658915))

(declare-fun m!2658919 () Bool)

(assert (=> b!2218066 m!2658919))

(declare-fun m!2658921 () Bool)

(assert (=> b!2218066 m!2658921))

(declare-fun m!2658923 () Bool)

(assert (=> b!2218068 m!2658923))

(assert (=> b!2218068 m!2658915))

(declare-fun m!2658925 () Bool)

(assert (=> b!2218068 m!2658925))

(assert (=> b!2218067 m!2658915))

(declare-fun m!2658927 () Bool)

(assert (=> b!2218067 m!2658927))

(declare-fun m!2658929 () Bool)

(assert (=> b!2218067 m!2658929))

(assert (=> b!2218067 m!2658927))

(assert (=> b!2218067 m!2658929))

(declare-fun m!2658931 () Bool)

(assert (=> b!2218067 m!2658931))

(assert (=> b!2218055 d!662977))

(declare-fun d!662979 () Bool)

(declare-fun lt!826941 () List!26050)

(declare-fun ++!6460 (List!26050 List!26050) List!26050)

(declare-fun last!358 (List!26050) B!1793)

(assert (=> d!662979 (= (++!6460 lt!826941 (Cons!25966 (last!358 l!3389) Nil!25966)) l!3389)))

(declare-fun e!1416489 () List!26050)

(assert (=> d!662979 (= lt!826941 e!1416489)))

(declare-fun c!354137 () Bool)

(assert (=> d!662979 (= c!354137 (and ((_ is Cons!25966) l!3389) ((_ is Nil!25966) (t!199366 l!3389))))))

(assert (=> d!662979 (not (isEmpty!14844 l!3389))))

(assert (=> d!662979 (= (removeLast!20 l!3389) lt!826941)))

(declare-fun b!2218073 () Bool)

(assert (=> b!2218073 (= e!1416489 Nil!25966)))

(declare-fun b!2218074 () Bool)

(assert (=> b!2218074 (= e!1416489 (Cons!25966 (h!31367 l!3389) (removeLast!20 (t!199366 l!3389))))))

(assert (= (and d!662979 c!354137) b!2218073))

(assert (= (and d!662979 (not c!354137)) b!2218074))

(declare-fun m!2658933 () Bool)

(assert (=> d!662979 m!2658933))

(declare-fun m!2658935 () Bool)

(assert (=> d!662979 m!2658935))

(assert (=> d!662979 m!2658913))

(declare-fun m!2658937 () Bool)

(assert (=> b!2218074 m!2658937))

(assert (=> b!2218055 d!662979))

(declare-fun d!662981 () Bool)

(assert (=> d!662981 (= (isEmpty!14844 l!3389) ((_ is Nil!25966) l!3389))))

(assert (=> start!216084 d!662981))

(declare-fun b!2218079 () Bool)

(declare-fun e!1416492 () Bool)

(declare-fun tp!691051 () Bool)

(assert (=> b!2218079 (= e!1416492 (and tp_is_empty!9841 tp!691051))))

(assert (=> b!2218056 (= tp!691048 e!1416492)))

(assert (= (and b!2218056 ((_ is Cons!25966) (t!199366 l!3389))) b!2218079))

(check-sat tp_is_empty!9841 (not d!662979) (not b!2218079) (not b!2218066) (not b!2218074) (not b!2218067) (not b!2218068))
(check-sat)
