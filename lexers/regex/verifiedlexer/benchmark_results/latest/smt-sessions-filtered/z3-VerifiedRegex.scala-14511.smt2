; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754580 () Bool)

(assert start!754580)

(declare-fun b!8017937 () Bool)

(declare-fun res!3170113 () Bool)

(declare-fun e!4723047 () Bool)

(assert (=> b!8017937 (=> (not res!3170113) (not e!4723047))))

(declare-datatypes ((B!4061 0))(
  ( (B!4062 (val!32420 Int)) )
))
(declare-datatypes ((List!74932 0))(
  ( (Nil!74808) (Cons!74808 (h!81256 B!4061) (t!390675 List!74932)) )
))
(declare-fun p!2003 () List!74932)

(declare-fun l!3425 () List!74932)

(get-info :version)

(assert (=> b!8017937 (= res!3170113 (and (not ((_ is Nil!74808) p!2003)) (not ((_ is Nil!74808) l!3425))))))

(declare-fun b!8017940 () Bool)

(declare-fun e!4723048 () Bool)

(declare-fun tp_is_empty!53949 () Bool)

(declare-fun tp!2399969 () Bool)

(assert (=> b!8017940 (= e!4723048 (and tp_is_empty!53949 tp!2399969))))

(declare-fun res!3170114 () Bool)

(assert (=> start!754580 (=> (not res!3170114) (not e!4723047))))

(declare-fun isPrefix!6755 (List!74932 List!74932) Bool)

(assert (=> start!754580 (= res!3170114 (isPrefix!6755 p!2003 l!3425))))

(assert (=> start!754580 e!4723047))

(declare-fun e!4723049 () Bool)

(assert (=> start!754580 e!4723049))

(assert (=> start!754580 e!4723048))

(declare-fun b!8017938 () Bool)

(declare-fun tail!15896 (List!74932) List!74932)

(assert (=> b!8017938 (= e!4723047 (not (isPrefix!6755 (tail!15896 p!2003) (tail!15896 l!3425))))))

(declare-fun b!8017939 () Bool)

(declare-fun tp!2399970 () Bool)

(assert (=> b!8017939 (= e!4723049 (and tp_is_empty!53949 tp!2399970))))

(assert (= (and start!754580 res!3170114) b!8017937))

(assert (= (and b!8017937 res!3170113) b!8017938))

(assert (= (and start!754580 ((_ is Cons!74808) p!2003)) b!8017939))

(assert (= (and start!754580 ((_ is Cons!74808) l!3425)) b!8017940))

(declare-fun m!8380966 () Bool)

(assert (=> start!754580 m!8380966))

(declare-fun m!8380968 () Bool)

(assert (=> b!8017938 m!8380968))

(declare-fun m!8380970 () Bool)

(assert (=> b!8017938 m!8380970))

(assert (=> b!8017938 m!8380968))

(assert (=> b!8017938 m!8380970))

(declare-fun m!8380972 () Bool)

(assert (=> b!8017938 m!8380972))

(check-sat tp_is_empty!53949 (not start!754580) (not b!8017940) (not b!8017939) (not b!8017938))
(check-sat)
(get-model)

(declare-fun b!8017968 () Bool)

(declare-fun e!4723069 () Bool)

(declare-fun size!43599 (List!74932) Int)

(assert (=> b!8017968 (= e!4723069 (>= (size!43599 (tail!15896 l!3425)) (size!43599 (tail!15896 p!2003))))))

(declare-fun b!8017965 () Bool)

(declare-fun e!4723068 () Bool)

(declare-fun e!4723070 () Bool)

(assert (=> b!8017965 (= e!4723068 e!4723070)))

(declare-fun res!3170142 () Bool)

(assert (=> b!8017965 (=> (not res!3170142) (not e!4723070))))

(assert (=> b!8017965 (= res!3170142 (not ((_ is Nil!74808) (tail!15896 l!3425))))))

(declare-fun b!8017967 () Bool)

(assert (=> b!8017967 (= e!4723070 (isPrefix!6755 (tail!15896 (tail!15896 p!2003)) (tail!15896 (tail!15896 l!3425))))))

(declare-fun d!2390638 () Bool)

(assert (=> d!2390638 e!4723069))

(declare-fun res!3170139 () Bool)

(assert (=> d!2390638 (=> res!3170139 e!4723069)))

(declare-fun lt!2719134 () Bool)

(assert (=> d!2390638 (= res!3170139 (not lt!2719134))))

(assert (=> d!2390638 (= lt!2719134 e!4723068)))

(declare-fun res!3170140 () Bool)

(assert (=> d!2390638 (=> res!3170140 e!4723068)))

(assert (=> d!2390638 (= res!3170140 ((_ is Nil!74808) (tail!15896 p!2003)))))

(assert (=> d!2390638 (= (isPrefix!6755 (tail!15896 p!2003) (tail!15896 l!3425)) lt!2719134)))

(declare-fun b!8017966 () Bool)

(declare-fun res!3170141 () Bool)

(assert (=> b!8017966 (=> (not res!3170141) (not e!4723070))))

(declare-fun head!16371 (List!74932) B!4061)

(assert (=> b!8017966 (= res!3170141 (= (head!16371 (tail!15896 p!2003)) (head!16371 (tail!15896 l!3425))))))

(assert (= (and d!2390638 (not res!3170140)) b!8017965))

(assert (= (and b!8017965 res!3170142) b!8017966))

(assert (= (and b!8017966 res!3170141) b!8017967))

(assert (= (and d!2390638 (not res!3170139)) b!8017968))

(assert (=> b!8017968 m!8380970))

(declare-fun m!8380996 () Bool)

(assert (=> b!8017968 m!8380996))

(assert (=> b!8017968 m!8380968))

(declare-fun m!8380998 () Bool)

(assert (=> b!8017968 m!8380998))

(assert (=> b!8017967 m!8380968))

(declare-fun m!8381000 () Bool)

(assert (=> b!8017967 m!8381000))

(assert (=> b!8017967 m!8380970))

(declare-fun m!8381002 () Bool)

(assert (=> b!8017967 m!8381002))

(assert (=> b!8017967 m!8381000))

(assert (=> b!8017967 m!8381002))

(declare-fun m!8381004 () Bool)

(assert (=> b!8017967 m!8381004))

(assert (=> b!8017966 m!8380968))

(declare-fun m!8381006 () Bool)

(assert (=> b!8017966 m!8381006))

(assert (=> b!8017966 m!8380970))

(declare-fun m!8381008 () Bool)

(assert (=> b!8017966 m!8381008))

(assert (=> b!8017938 d!2390638))

(declare-fun d!2390646 () Bool)

(assert (=> d!2390646 (= (tail!15896 p!2003) (t!390675 p!2003))))

(assert (=> b!8017938 d!2390646))

(declare-fun d!2390648 () Bool)

(assert (=> d!2390648 (= (tail!15896 l!3425) (t!390675 l!3425))))

(assert (=> b!8017938 d!2390648))

(declare-fun b!8017978 () Bool)

(declare-fun e!4723076 () Bool)

(assert (=> b!8017978 (= e!4723076 (>= (size!43599 l!3425) (size!43599 p!2003)))))

(declare-fun b!8017975 () Bool)

(declare-fun e!4723075 () Bool)

(declare-fun e!4723077 () Bool)

(assert (=> b!8017975 (= e!4723075 e!4723077)))

(declare-fun res!3170146 () Bool)

(assert (=> b!8017975 (=> (not res!3170146) (not e!4723077))))

(assert (=> b!8017975 (= res!3170146 (not ((_ is Nil!74808) l!3425)))))

(declare-fun b!8017977 () Bool)

(assert (=> b!8017977 (= e!4723077 (isPrefix!6755 (tail!15896 p!2003) (tail!15896 l!3425)))))

(declare-fun d!2390650 () Bool)

(assert (=> d!2390650 e!4723076))

(declare-fun res!3170143 () Bool)

(assert (=> d!2390650 (=> res!3170143 e!4723076)))

(declare-fun lt!2719135 () Bool)

(assert (=> d!2390650 (= res!3170143 (not lt!2719135))))

(assert (=> d!2390650 (= lt!2719135 e!4723075)))

(declare-fun res!3170144 () Bool)

(assert (=> d!2390650 (=> res!3170144 e!4723075)))

(assert (=> d!2390650 (= res!3170144 ((_ is Nil!74808) p!2003))))

(assert (=> d!2390650 (= (isPrefix!6755 p!2003 l!3425) lt!2719135)))

(declare-fun b!8017976 () Bool)

(declare-fun res!3170145 () Bool)

(assert (=> b!8017976 (=> (not res!3170145) (not e!4723077))))

(assert (=> b!8017976 (= res!3170145 (= (head!16371 p!2003) (head!16371 l!3425)))))

(assert (= (and d!2390650 (not res!3170144)) b!8017975))

(assert (= (and b!8017975 res!3170146) b!8017976))

(assert (= (and b!8017976 res!3170145) b!8017977))

(assert (= (and d!2390650 (not res!3170143)) b!8017978))

(declare-fun m!8381010 () Bool)

(assert (=> b!8017978 m!8381010))

(declare-fun m!8381012 () Bool)

(assert (=> b!8017978 m!8381012))

(assert (=> b!8017977 m!8380968))

(assert (=> b!8017977 m!8380970))

(assert (=> b!8017977 m!8380968))

(assert (=> b!8017977 m!8380970))

(assert (=> b!8017977 m!8380972))

(declare-fun m!8381014 () Bool)

(assert (=> b!8017976 m!8381014))

(declare-fun m!8381016 () Bool)

(assert (=> b!8017976 m!8381016))

(assert (=> start!754580 d!2390650))

(declare-fun b!8017983 () Bool)

(declare-fun e!4723080 () Bool)

(declare-fun tp!2399977 () Bool)

(assert (=> b!8017983 (= e!4723080 (and tp_is_empty!53949 tp!2399977))))

(assert (=> b!8017940 (= tp!2399969 e!4723080)))

(assert (= (and b!8017940 ((_ is Cons!74808) (t!390675 l!3425))) b!8017983))

(declare-fun b!8017984 () Bool)

(declare-fun e!4723081 () Bool)

(declare-fun tp!2399978 () Bool)

(assert (=> b!8017984 (= e!4723081 (and tp_is_empty!53949 tp!2399978))))

(assert (=> b!8017939 (= tp!2399970 e!4723081)))

(assert (= (and b!8017939 ((_ is Cons!74808) (t!390675 p!2003))) b!8017984))

(check-sat (not b!8017967) (not b!8017984) (not b!8017976) (not b!8017977) tp_is_empty!53949 (not b!8017968) (not b!8017966) (not b!8017978) (not b!8017983))
(check-sat)
