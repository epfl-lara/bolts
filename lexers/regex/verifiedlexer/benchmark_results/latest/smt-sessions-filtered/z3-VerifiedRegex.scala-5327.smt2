; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272360 () Bool)

(assert start!272360)

(declare-fun e!1778861 () Bool)

(declare-fun b!2812890 () Bool)

(declare-datatypes ((B!2433 0))(
  ( (B!2434 (val!10342 Int)) )
))
(declare-datatypes ((List!32989 0))(
  ( (Nil!32867) (Cons!32867 (h!38287 B!2433) (t!229959 List!32989)) )
))
(declare-fun l2!1521 () List!32989)

(declare-fun l1!1552 () List!32989)

(declare-fun l3!334 () List!32989)

(declare-fun lt!1004963 () List!32989)

(declare-fun ++!8075 (List!32989 List!32989) List!32989)

(assert (=> b!2812890 (= e!1778861 (not (= (++!8075 (++!8075 l1!1552 l2!1521) l3!334) (++!8075 l1!1552 lt!1004963))))))

(declare-fun lt!1004964 () List!32989)

(assert (=> b!2812890 (= (++!8075 lt!1004964 l3!334) (++!8075 (t!229959 l1!1552) lt!1004963))))

(assert (=> b!2812890 (= lt!1004963 (++!8075 l2!1521 l3!334))))

(assert (=> b!2812890 (= lt!1004964 (++!8075 (t!229959 l1!1552) l2!1521))))

(declare-datatypes ((Unit!46872 0))(
  ( (Unit!46873) )
))
(declare-fun lt!1004965 () Unit!46872)

(declare-fun lemmaConcatAssociativity!1680 (List!32989 List!32989 List!32989) Unit!46872)

(assert (=> b!2812890 (= lt!1004965 (lemmaConcatAssociativity!1680 (t!229959 l1!1552) l2!1521 l3!334))))

(declare-fun b!2812891 () Bool)

(declare-fun e!1778863 () Bool)

(declare-fun tp_is_empty!14407 () Bool)

(declare-fun tp!898198 () Bool)

(assert (=> b!2812891 (= e!1778863 (and tp_is_empty!14407 tp!898198))))

(declare-fun b!2812892 () Bool)

(declare-fun e!1778862 () Bool)

(declare-fun tp!898200 () Bool)

(assert (=> b!2812892 (= e!1778862 (and tp_is_empty!14407 tp!898200))))

(declare-fun b!2812893 () Bool)

(declare-fun e!1778860 () Bool)

(declare-fun tp!898199 () Bool)

(assert (=> b!2812893 (= e!1778860 (and tp_is_empty!14407 tp!898199))))

(declare-fun res!1170958 () Bool)

(assert (=> start!272360 (=> (not res!1170958) (not e!1778861))))

(get-info :version)

(assert (=> start!272360 (= res!1170958 ((_ is Cons!32867) l1!1552))))

(assert (=> start!272360 e!1778861))

(assert (=> start!272360 e!1778863))

(assert (=> start!272360 e!1778862))

(assert (=> start!272360 e!1778860))

(assert (= (and start!272360 res!1170958) b!2812890))

(assert (= (and start!272360 ((_ is Cons!32867) l1!1552)) b!2812891))

(assert (= (and start!272360 ((_ is Cons!32867) l2!1521)) b!2812892))

(assert (= (and start!272360 ((_ is Cons!32867) l3!334)) b!2812893))

(declare-fun m!3243257 () Bool)

(assert (=> b!2812890 m!3243257))

(declare-fun m!3243259 () Bool)

(assert (=> b!2812890 m!3243259))

(declare-fun m!3243261 () Bool)

(assert (=> b!2812890 m!3243261))

(declare-fun m!3243263 () Bool)

(assert (=> b!2812890 m!3243263))

(declare-fun m!3243265 () Bool)

(assert (=> b!2812890 m!3243265))

(declare-fun m!3243267 () Bool)

(assert (=> b!2812890 m!3243267))

(declare-fun m!3243269 () Bool)

(assert (=> b!2812890 m!3243269))

(assert (=> b!2812890 m!3243257))

(declare-fun m!3243271 () Bool)

(assert (=> b!2812890 m!3243271))

(check-sat (not b!2812891) (not b!2812893) (not b!2812890) (not b!2812892) tp_is_empty!14407)
(check-sat)
(get-model)

(declare-fun b!2812927 () Bool)

(declare-fun e!1778880 () List!32989)

(assert (=> b!2812927 (= e!1778880 (Cons!32867 (h!38287 (t!229959 l1!1552)) (++!8075 (t!229959 (t!229959 l1!1552)) lt!1004963)))))

(declare-fun b!2812926 () Bool)

(assert (=> b!2812926 (= e!1778880 lt!1004963)))

(declare-fun b!2812929 () Bool)

(declare-fun e!1778881 () Bool)

(declare-fun lt!1004974 () List!32989)

(assert (=> b!2812929 (= e!1778881 (or (not (= lt!1004963 Nil!32867)) (= lt!1004974 (t!229959 l1!1552))))))

(declare-fun b!2812928 () Bool)

(declare-fun res!1170976 () Bool)

(assert (=> b!2812928 (=> (not res!1170976) (not e!1778881))))

(declare-fun size!25612 (List!32989) Int)

(assert (=> b!2812928 (= res!1170976 (= (size!25612 lt!1004974) (+ (size!25612 (t!229959 l1!1552)) (size!25612 lt!1004963))))))

(declare-fun d!816572 () Bool)

(assert (=> d!816572 e!1778881))

(declare-fun res!1170975 () Bool)

(assert (=> d!816572 (=> (not res!1170975) (not e!1778881))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4587 (List!32989) (InoxSet B!2433))

(assert (=> d!816572 (= res!1170975 (= (content!4587 lt!1004974) ((_ map or) (content!4587 (t!229959 l1!1552)) (content!4587 lt!1004963))))))

(assert (=> d!816572 (= lt!1004974 e!1778880)))

(declare-fun c!455797 () Bool)

(assert (=> d!816572 (= c!455797 ((_ is Nil!32867) (t!229959 l1!1552)))))

(assert (=> d!816572 (= (++!8075 (t!229959 l1!1552) lt!1004963) lt!1004974)))

(assert (= (and d!816572 c!455797) b!2812926))

(assert (= (and d!816572 (not c!455797)) b!2812927))

(assert (= (and d!816572 res!1170975) b!2812928))

(assert (= (and b!2812928 res!1170976) b!2812929))

(declare-fun m!3243315 () Bool)

(assert (=> b!2812927 m!3243315))

(declare-fun m!3243321 () Bool)

(assert (=> b!2812928 m!3243321))

(declare-fun m!3243325 () Bool)

(assert (=> b!2812928 m!3243325))

(declare-fun m!3243329 () Bool)

(assert (=> b!2812928 m!3243329))

(declare-fun m!3243331 () Bool)

(assert (=> d!816572 m!3243331))

(declare-fun m!3243333 () Bool)

(assert (=> d!816572 m!3243333))

(declare-fun m!3243335 () Bool)

(assert (=> d!816572 m!3243335))

(assert (=> b!2812890 d!816572))

(declare-fun b!2812939 () Bool)

(declare-fun e!1778886 () List!32989)

(assert (=> b!2812939 (= e!1778886 (Cons!32867 (h!38287 l1!1552) (++!8075 (t!229959 l1!1552) l2!1521)))))

(declare-fun b!2812938 () Bool)

(assert (=> b!2812938 (= e!1778886 l2!1521)))

(declare-fun lt!1004977 () List!32989)

(declare-fun e!1778887 () Bool)

(declare-fun b!2812941 () Bool)

(assert (=> b!2812941 (= e!1778887 (or (not (= l2!1521 Nil!32867)) (= lt!1004977 l1!1552)))))

(declare-fun b!2812940 () Bool)

(declare-fun res!1170982 () Bool)

(assert (=> b!2812940 (=> (not res!1170982) (not e!1778887))))

(assert (=> b!2812940 (= res!1170982 (= (size!25612 lt!1004977) (+ (size!25612 l1!1552) (size!25612 l2!1521))))))

(declare-fun d!816584 () Bool)

(assert (=> d!816584 e!1778887))

(declare-fun res!1170981 () Bool)

(assert (=> d!816584 (=> (not res!1170981) (not e!1778887))))

(assert (=> d!816584 (= res!1170981 (= (content!4587 lt!1004977) ((_ map or) (content!4587 l1!1552) (content!4587 l2!1521))))))

(assert (=> d!816584 (= lt!1004977 e!1778886)))

(declare-fun c!455800 () Bool)

(assert (=> d!816584 (= c!455800 ((_ is Nil!32867) l1!1552))))

(assert (=> d!816584 (= (++!8075 l1!1552 l2!1521) lt!1004977)))

(assert (= (and d!816584 c!455800) b!2812938))

(assert (= (and d!816584 (not c!455800)) b!2812939))

(assert (= (and d!816584 res!1170981) b!2812940))

(assert (= (and b!2812940 res!1170982) b!2812941))

(assert (=> b!2812939 m!3243263))

(declare-fun m!3243343 () Bool)

(assert (=> b!2812940 m!3243343))

(declare-fun m!3243345 () Bool)

(assert (=> b!2812940 m!3243345))

(declare-fun m!3243347 () Bool)

(assert (=> b!2812940 m!3243347))

(declare-fun m!3243349 () Bool)

(assert (=> d!816584 m!3243349))

(declare-fun m!3243351 () Bool)

(assert (=> d!816584 m!3243351))

(declare-fun m!3243353 () Bool)

(assert (=> d!816584 m!3243353))

(assert (=> b!2812890 d!816584))

(declare-fun b!2812943 () Bool)

(declare-fun e!1778888 () List!32989)

(assert (=> b!2812943 (= e!1778888 (Cons!32867 (h!38287 l2!1521) (++!8075 (t!229959 l2!1521) l3!334)))))

(declare-fun b!2812942 () Bool)

(assert (=> b!2812942 (= e!1778888 l3!334)))

(declare-fun lt!1004978 () List!32989)

(declare-fun e!1778889 () Bool)

(declare-fun b!2812945 () Bool)

(assert (=> b!2812945 (= e!1778889 (or (not (= l3!334 Nil!32867)) (= lt!1004978 l2!1521)))))

(declare-fun b!2812944 () Bool)

(declare-fun res!1170984 () Bool)

(assert (=> b!2812944 (=> (not res!1170984) (not e!1778889))))

(assert (=> b!2812944 (= res!1170984 (= (size!25612 lt!1004978) (+ (size!25612 l2!1521) (size!25612 l3!334))))))

(declare-fun d!816588 () Bool)

(assert (=> d!816588 e!1778889))

(declare-fun res!1170983 () Bool)

(assert (=> d!816588 (=> (not res!1170983) (not e!1778889))))

(assert (=> d!816588 (= res!1170983 (= (content!4587 lt!1004978) ((_ map or) (content!4587 l2!1521) (content!4587 l3!334))))))

(assert (=> d!816588 (= lt!1004978 e!1778888)))

(declare-fun c!455801 () Bool)

(assert (=> d!816588 (= c!455801 ((_ is Nil!32867) l2!1521))))

(assert (=> d!816588 (= (++!8075 l2!1521 l3!334) lt!1004978)))

(assert (= (and d!816588 c!455801) b!2812942))

(assert (= (and d!816588 (not c!455801)) b!2812943))

(assert (= (and d!816588 res!1170983) b!2812944))

(assert (= (and b!2812944 res!1170984) b!2812945))

(declare-fun m!3243355 () Bool)

(assert (=> b!2812943 m!3243355))

(declare-fun m!3243357 () Bool)

(assert (=> b!2812944 m!3243357))

(assert (=> b!2812944 m!3243347))

(declare-fun m!3243359 () Bool)

(assert (=> b!2812944 m!3243359))

(declare-fun m!3243361 () Bool)

(assert (=> d!816588 m!3243361))

(assert (=> d!816588 m!3243353))

(declare-fun m!3243363 () Bool)

(assert (=> d!816588 m!3243363))

(assert (=> b!2812890 d!816588))

(declare-fun b!2812947 () Bool)

(declare-fun e!1778890 () List!32989)

(assert (=> b!2812947 (= e!1778890 (Cons!32867 (h!38287 (t!229959 l1!1552)) (++!8075 (t!229959 (t!229959 l1!1552)) l2!1521)))))

(declare-fun b!2812946 () Bool)

(assert (=> b!2812946 (= e!1778890 l2!1521)))

(declare-fun b!2812949 () Bool)

(declare-fun lt!1004979 () List!32989)

(declare-fun e!1778891 () Bool)

(assert (=> b!2812949 (= e!1778891 (or (not (= l2!1521 Nil!32867)) (= lt!1004979 (t!229959 l1!1552))))))

(declare-fun b!2812948 () Bool)

(declare-fun res!1170986 () Bool)

(assert (=> b!2812948 (=> (not res!1170986) (not e!1778891))))

(assert (=> b!2812948 (= res!1170986 (= (size!25612 lt!1004979) (+ (size!25612 (t!229959 l1!1552)) (size!25612 l2!1521))))))

(declare-fun d!816590 () Bool)

(assert (=> d!816590 e!1778891))

(declare-fun res!1170985 () Bool)

(assert (=> d!816590 (=> (not res!1170985) (not e!1778891))))

(assert (=> d!816590 (= res!1170985 (= (content!4587 lt!1004979) ((_ map or) (content!4587 (t!229959 l1!1552)) (content!4587 l2!1521))))))

(assert (=> d!816590 (= lt!1004979 e!1778890)))

(declare-fun c!455802 () Bool)

(assert (=> d!816590 (= c!455802 ((_ is Nil!32867) (t!229959 l1!1552)))))

(assert (=> d!816590 (= (++!8075 (t!229959 l1!1552) l2!1521) lt!1004979)))

(assert (= (and d!816590 c!455802) b!2812946))

(assert (= (and d!816590 (not c!455802)) b!2812947))

(assert (= (and d!816590 res!1170985) b!2812948))

(assert (= (and b!2812948 res!1170986) b!2812949))

(declare-fun m!3243365 () Bool)

(assert (=> b!2812947 m!3243365))

(declare-fun m!3243367 () Bool)

(assert (=> b!2812948 m!3243367))

(assert (=> b!2812948 m!3243325))

(assert (=> b!2812948 m!3243347))

(declare-fun m!3243369 () Bool)

(assert (=> d!816590 m!3243369))

(assert (=> d!816590 m!3243333))

(assert (=> d!816590 m!3243353))

(assert (=> b!2812890 d!816590))

(declare-fun d!816592 () Bool)

(assert (=> d!816592 (= (++!8075 (++!8075 (t!229959 l1!1552) l2!1521) l3!334) (++!8075 (t!229959 l1!1552) (++!8075 l2!1521 l3!334)))))

(declare-fun lt!1004986 () Unit!46872)

(declare-fun choose!16627 (List!32989 List!32989 List!32989) Unit!46872)

(assert (=> d!816592 (= lt!1004986 (choose!16627 (t!229959 l1!1552) l2!1521 l3!334))))

(assert (=> d!816592 (= (lemmaConcatAssociativity!1680 (t!229959 l1!1552) l2!1521 l3!334) lt!1004986)))

(declare-fun bs!516497 () Bool)

(assert (= bs!516497 d!816592))

(assert (=> bs!516497 m!3243263))

(assert (=> bs!516497 m!3243271))

(declare-fun m!3243387 () Bool)

(assert (=> bs!516497 m!3243387))

(assert (=> bs!516497 m!3243263))

(declare-fun m!3243389 () Bool)

(assert (=> bs!516497 m!3243389))

(assert (=> bs!516497 m!3243271))

(declare-fun m!3243391 () Bool)

(assert (=> bs!516497 m!3243391))

(assert (=> b!2812890 d!816592))

(declare-fun e!1778897 () List!32989)

(declare-fun b!2812960 () Bool)

(assert (=> b!2812960 (= e!1778897 (Cons!32867 (h!38287 (++!8075 l1!1552 l2!1521)) (++!8075 (t!229959 (++!8075 l1!1552 l2!1521)) l3!334)))))

(declare-fun b!2812959 () Bool)

(assert (=> b!2812959 (= e!1778897 l3!334)))

(declare-fun e!1778898 () Bool)

(declare-fun lt!1004987 () List!32989)

(declare-fun b!2812962 () Bool)

(assert (=> b!2812962 (= e!1778898 (or (not (= l3!334 Nil!32867)) (= lt!1004987 (++!8075 l1!1552 l2!1521))))))

(declare-fun b!2812961 () Bool)

(declare-fun res!1170990 () Bool)

(assert (=> b!2812961 (=> (not res!1170990) (not e!1778898))))

(assert (=> b!2812961 (= res!1170990 (= (size!25612 lt!1004987) (+ (size!25612 (++!8075 l1!1552 l2!1521)) (size!25612 l3!334))))))

(declare-fun d!816596 () Bool)

(assert (=> d!816596 e!1778898))

(declare-fun res!1170989 () Bool)

(assert (=> d!816596 (=> (not res!1170989) (not e!1778898))))

(assert (=> d!816596 (= res!1170989 (= (content!4587 lt!1004987) ((_ map or) (content!4587 (++!8075 l1!1552 l2!1521)) (content!4587 l3!334))))))

(assert (=> d!816596 (= lt!1004987 e!1778897)))

(declare-fun c!455804 () Bool)

(assert (=> d!816596 (= c!455804 ((_ is Nil!32867) (++!8075 l1!1552 l2!1521)))))

(assert (=> d!816596 (= (++!8075 (++!8075 l1!1552 l2!1521) l3!334) lt!1004987)))

(assert (= (and d!816596 c!455804) b!2812959))

(assert (= (and d!816596 (not c!455804)) b!2812960))

(assert (= (and d!816596 res!1170989) b!2812961))

(assert (= (and b!2812961 res!1170990) b!2812962))

(declare-fun m!3243393 () Bool)

(assert (=> b!2812960 m!3243393))

(declare-fun m!3243395 () Bool)

(assert (=> b!2812961 m!3243395))

(assert (=> b!2812961 m!3243257))

(declare-fun m!3243397 () Bool)

(assert (=> b!2812961 m!3243397))

(assert (=> b!2812961 m!3243359))

(declare-fun m!3243399 () Bool)

(assert (=> d!816596 m!3243399))

(assert (=> d!816596 m!3243257))

(declare-fun m!3243401 () Bool)

(assert (=> d!816596 m!3243401))

(assert (=> d!816596 m!3243363))

(assert (=> b!2812890 d!816596))

(declare-fun b!2812966 () Bool)

(declare-fun e!1778901 () List!32989)

(assert (=> b!2812966 (= e!1778901 (Cons!32867 (h!38287 l1!1552) (++!8075 (t!229959 l1!1552) lt!1004963)))))

(declare-fun b!2812965 () Bool)

(assert (=> b!2812965 (= e!1778901 lt!1004963)))

(declare-fun e!1778902 () Bool)

(declare-fun b!2812968 () Bool)

(declare-fun lt!1004988 () List!32989)

(assert (=> b!2812968 (= e!1778902 (or (not (= lt!1004963 Nil!32867)) (= lt!1004988 l1!1552)))))

(declare-fun b!2812967 () Bool)

(declare-fun res!1170992 () Bool)

(assert (=> b!2812967 (=> (not res!1170992) (not e!1778902))))

(assert (=> b!2812967 (= res!1170992 (= (size!25612 lt!1004988) (+ (size!25612 l1!1552) (size!25612 lt!1004963))))))

(declare-fun d!816598 () Bool)

(assert (=> d!816598 e!1778902))

(declare-fun res!1170991 () Bool)

(assert (=> d!816598 (=> (not res!1170991) (not e!1778902))))

(assert (=> d!816598 (= res!1170991 (= (content!4587 lt!1004988) ((_ map or) (content!4587 l1!1552) (content!4587 lt!1004963))))))

(assert (=> d!816598 (= lt!1004988 e!1778901)))

(declare-fun c!455805 () Bool)

(assert (=> d!816598 (= c!455805 ((_ is Nil!32867) l1!1552))))

(assert (=> d!816598 (= (++!8075 l1!1552 lt!1004963) lt!1004988)))

(assert (= (and d!816598 c!455805) b!2812965))

(assert (= (and d!816598 (not c!455805)) b!2812966))

(assert (= (and d!816598 res!1170991) b!2812967))

(assert (= (and b!2812967 res!1170992) b!2812968))

(assert (=> b!2812966 m!3243267))

(declare-fun m!3243403 () Bool)

(assert (=> b!2812967 m!3243403))

(assert (=> b!2812967 m!3243345))

(assert (=> b!2812967 m!3243329))

(declare-fun m!3243405 () Bool)

(assert (=> d!816598 m!3243405))

(assert (=> d!816598 m!3243351))

(assert (=> d!816598 m!3243335))

(assert (=> b!2812890 d!816598))

(declare-fun b!2812970 () Bool)

(declare-fun e!1778903 () List!32989)

(assert (=> b!2812970 (= e!1778903 (Cons!32867 (h!38287 lt!1004964) (++!8075 (t!229959 lt!1004964) l3!334)))))

(declare-fun b!2812969 () Bool)

(assert (=> b!2812969 (= e!1778903 l3!334)))

(declare-fun lt!1004989 () List!32989)

(declare-fun b!2812972 () Bool)

(declare-fun e!1778904 () Bool)

(assert (=> b!2812972 (= e!1778904 (or (not (= l3!334 Nil!32867)) (= lt!1004989 lt!1004964)))))

(declare-fun b!2812971 () Bool)

(declare-fun res!1170994 () Bool)

(assert (=> b!2812971 (=> (not res!1170994) (not e!1778904))))

(assert (=> b!2812971 (= res!1170994 (= (size!25612 lt!1004989) (+ (size!25612 lt!1004964) (size!25612 l3!334))))))

(declare-fun d!816600 () Bool)

(assert (=> d!816600 e!1778904))

(declare-fun res!1170993 () Bool)

(assert (=> d!816600 (=> (not res!1170993) (not e!1778904))))

(assert (=> d!816600 (= res!1170993 (= (content!4587 lt!1004989) ((_ map or) (content!4587 lt!1004964) (content!4587 l3!334))))))

(assert (=> d!816600 (= lt!1004989 e!1778903)))

(declare-fun c!455806 () Bool)

(assert (=> d!816600 (= c!455806 ((_ is Nil!32867) lt!1004964))))

(assert (=> d!816600 (= (++!8075 lt!1004964 l3!334) lt!1004989)))

(assert (= (and d!816600 c!455806) b!2812969))

(assert (= (and d!816600 (not c!455806)) b!2812970))

(assert (= (and d!816600 res!1170993) b!2812971))

(assert (= (and b!2812971 res!1170994) b!2812972))

(declare-fun m!3243407 () Bool)

(assert (=> b!2812970 m!3243407))

(declare-fun m!3243409 () Bool)

(assert (=> b!2812971 m!3243409))

(declare-fun m!3243411 () Bool)

(assert (=> b!2812971 m!3243411))

(assert (=> b!2812971 m!3243359))

(declare-fun m!3243413 () Bool)

(assert (=> d!816600 m!3243413))

(declare-fun m!3243415 () Bool)

(assert (=> d!816600 m!3243415))

(assert (=> d!816600 m!3243363))

(assert (=> b!2812890 d!816600))

(declare-fun b!2812977 () Bool)

(declare-fun e!1778907 () Bool)

(declare-fun tp!898208 () Bool)

(assert (=> b!2812977 (= e!1778907 (and tp_is_empty!14407 tp!898208))))

(assert (=> b!2812891 (= tp!898198 e!1778907)))

(assert (= (and b!2812891 ((_ is Cons!32867) (t!229959 l1!1552))) b!2812977))

(declare-fun b!2812978 () Bool)

(declare-fun e!1778908 () Bool)

(declare-fun tp!898209 () Bool)

(assert (=> b!2812978 (= e!1778908 (and tp_is_empty!14407 tp!898209))))

(assert (=> b!2812892 (= tp!898200 e!1778908)))

(assert (= (and b!2812892 ((_ is Cons!32867) (t!229959 l2!1521))) b!2812978))

(declare-fun b!2812979 () Bool)

(declare-fun e!1778909 () Bool)

(declare-fun tp!898210 () Bool)

(assert (=> b!2812979 (= e!1778909 (and tp_is_empty!14407 tp!898210))))

(assert (=> b!2812893 (= tp!898199 e!1778909)))

(assert (= (and b!2812893 ((_ is Cons!32867) (t!229959 l3!334))) b!2812979))

(check-sat (not b!2812927) (not b!2812943) (not b!2812944) (not d!816572) (not b!2812960) (not d!816584) (not d!816596) (not d!816588) (not b!2812971) (not d!816592) (not b!2812939) (not b!2812967) (not d!816600) (not b!2812940) (not b!2812947) (not b!2812948) (not b!2812970) (not d!816590) (not b!2812978) (not b!2812979) (not b!2812928) (not b!2812961) (not b!2812977) tp_is_empty!14407 (not d!816598) (not b!2812966))
(check-sat)
