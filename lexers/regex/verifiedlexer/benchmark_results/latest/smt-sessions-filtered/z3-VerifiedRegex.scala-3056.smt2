; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!182830 () Bool)

(assert start!182830)

(declare-fun res!826134 () Bool)

(declare-fun e!1174521 () Bool)

(assert (=> start!182830 (=> (not res!826134) (not e!1174521))))

(declare-fun i!921 () Int)

(declare-datatypes ((B!1477 0))(
  ( (B!1478 (val!5686 Int)) )
))
(declare-datatypes ((List!20286 0))(
  ( (Nil!20216) (Cons!20216 (h!25617 B!1477) (t!171715 List!20286)) )
))
(declare-fun l!3005 () List!20286)

(get-info :version)

(assert (=> start!182830 (= res!826134 (and (>= i!921 0) ((_ is Nil!20216) l!3005)))))

(assert (=> start!182830 e!1174521))

(assert (=> start!182830 true))

(declare-fun e!1174522 () Bool)

(assert (=> start!182830 e!1174522))

(declare-fun e!1174520 () Bool)

(assert (=> start!182830 e!1174520))

(declare-fun b!1838038 () Bool)

(declare-datatypes ((tuple2!19662 0))(
  ( (tuple2!19663 (_1!11233 List!20286) (_2!11233 List!20286)) )
))
(declare-fun lt!713404 () tuple2!19662)

(declare-fun acc!274 () List!20286)

(declare-fun splitAtIndexTr!12 (List!20286 Int List!20286) tuple2!19662)

(declare-fun ++!5487 (List!20286 List!20286) List!20286)

(assert (=> b!1838038 (= e!1174521 (not (= (splitAtIndexTr!12 l!3005 i!921 acc!274) (tuple2!19663 (++!5487 acc!274 (_1!11233 lt!713404)) (_2!11233 lt!713404)))))))

(declare-fun splitAtIndex!14 (List!20286 Int) tuple2!19662)

(assert (=> b!1838038 (= lt!713404 (splitAtIndex!14 l!3005 i!921))))

(declare-fun b!1838039 () Bool)

(declare-fun tp_is_empty!8225 () Bool)

(declare-fun tp!520003 () Bool)

(assert (=> b!1838039 (= e!1174522 (and tp_is_empty!8225 tp!520003))))

(declare-fun b!1838040 () Bool)

(declare-fun tp!520004 () Bool)

(assert (=> b!1838040 (= e!1174520 (and tp_is_empty!8225 tp!520004))))

(assert (= (and start!182830 res!826134) b!1838038))

(assert (= (and start!182830 ((_ is Cons!20216) l!3005)) b!1838039))

(assert (= (and start!182830 ((_ is Cons!20216) acc!274)) b!1838040))

(declare-fun m!2265939 () Bool)

(assert (=> b!1838038 m!2265939))

(declare-fun m!2265941 () Bool)

(assert (=> b!1838038 m!2265941))

(declare-fun m!2265943 () Bool)

(assert (=> b!1838038 m!2265943))

(check-sat (not b!1838038) (not b!1838040) (not b!1838039) tp_is_empty!8225)
(check-sat)
(get-model)

(declare-fun d!562075 () Bool)

(declare-fun c!299918 () Bool)

(assert (=> d!562075 (= c!299918 ((_ is Nil!20216) l!3005))))

(declare-fun e!1174533 () tuple2!19662)

(assert (=> d!562075 (= (splitAtIndexTr!12 l!3005 i!921 acc!274) e!1174533)))

(declare-fun e!1174534 () tuple2!19662)

(declare-fun b!1838064 () Bool)

(assert (=> b!1838064 (= e!1174534 (splitAtIndexTr!12 (t!171715 l!3005) (- i!921 1) (++!5487 acc!274 (Cons!20216 (h!25617 l!3005) Nil!20216))))))

(declare-fun b!1838061 () Bool)

(assert (=> b!1838061 (= e!1174533 (tuple2!19663 acc!274 Nil!20216))))

(declare-fun b!1838062 () Bool)

(assert (=> b!1838062 (= e!1174533 e!1174534)))

(declare-fun c!299919 () Bool)

(assert (=> b!1838062 (= c!299919 (= i!921 0))))

(declare-fun b!1838063 () Bool)

(assert (=> b!1838063 (= e!1174534 (tuple2!19663 acc!274 l!3005))))

(assert (= (and d!562075 c!299918) b!1838061))

(assert (= (and d!562075 (not c!299918)) b!1838062))

(assert (= (and b!1838062 c!299919) b!1838063))

(assert (= (and b!1838062 (not c!299919)) b!1838064))

(declare-fun m!2265949 () Bool)

(assert (=> b!1838064 m!2265949))

(assert (=> b!1838064 m!2265949))

(declare-fun m!2265951 () Bool)

(assert (=> b!1838064 m!2265951))

(assert (=> b!1838038 d!562075))

(declare-fun b!1838086 () Bool)

(declare-fun e!1174545 () List!20286)

(assert (=> b!1838086 (= e!1174545 (Cons!20216 (h!25617 acc!274) (++!5487 (t!171715 acc!274) (_1!11233 lt!713404))))))

(declare-fun d!562081 () Bool)

(declare-fun e!1174546 () Bool)

(assert (=> d!562081 e!1174546))

(declare-fun res!826145 () Bool)

(assert (=> d!562081 (=> (not res!826145) (not e!1174546))))

(declare-fun lt!713410 () List!20286)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3006 (List!20286) (InoxSet B!1477))

(assert (=> d!562081 (= res!826145 (= (content!3006 lt!713410) ((_ map or) (content!3006 acc!274) (content!3006 (_1!11233 lt!713404)))))))

(assert (=> d!562081 (= lt!713410 e!1174545)))

(declare-fun c!299925 () Bool)

(assert (=> d!562081 (= c!299925 ((_ is Nil!20216) acc!274))))

(assert (=> d!562081 (= (++!5487 acc!274 (_1!11233 lt!713404)) lt!713410)))

(declare-fun b!1838088 () Bool)

(assert (=> b!1838088 (= e!1174546 (or (not (= (_1!11233 lt!713404) Nil!20216)) (= lt!713410 acc!274)))))

(declare-fun b!1838085 () Bool)

(assert (=> b!1838085 (= e!1174545 (_1!11233 lt!713404))))

(declare-fun b!1838087 () Bool)

(declare-fun res!826146 () Bool)

(assert (=> b!1838087 (=> (not res!826146) (not e!1174546))))

(declare-fun size!16027 (List!20286) Int)

(assert (=> b!1838087 (= res!826146 (= (size!16027 lt!713410) (+ (size!16027 acc!274) (size!16027 (_1!11233 lt!713404)))))))

(assert (= (and d!562081 c!299925) b!1838085))

(assert (= (and d!562081 (not c!299925)) b!1838086))

(assert (= (and d!562081 res!826145) b!1838087))

(assert (= (and b!1838087 res!826146) b!1838088))

(declare-fun m!2265967 () Bool)

(assert (=> b!1838086 m!2265967))

(declare-fun m!2265969 () Bool)

(assert (=> d!562081 m!2265969))

(declare-fun m!2265971 () Bool)

(assert (=> d!562081 m!2265971))

(declare-fun m!2265973 () Bool)

(assert (=> d!562081 m!2265973))

(declare-fun m!2265975 () Bool)

(assert (=> b!1838087 m!2265975))

(declare-fun m!2265977 () Bool)

(assert (=> b!1838087 m!2265977))

(declare-fun m!2265979 () Bool)

(assert (=> b!1838087 m!2265979))

(assert (=> b!1838038 d!562081))

(declare-fun b!1838120 () Bool)

(declare-fun e!1174564 () tuple2!19662)

(assert (=> b!1838120 (= e!1174564 (tuple2!19663 Nil!20216 l!3005))))

(declare-fun e!1174562 () Bool)

(declare-fun lt!713421 () tuple2!19662)

(declare-fun b!1838121 () Bool)

(declare-fun drop!974 (List!20286 Int) List!20286)

(assert (=> b!1838121 (= e!1174562 (= (_2!11233 lt!713421) (drop!974 l!3005 i!921)))))

(declare-fun b!1838122 () Bool)

(declare-fun lt!713422 () tuple2!19662)

(assert (=> b!1838122 (= lt!713422 (splitAtIndex!14 (t!171715 l!3005) (- i!921 1)))))

(assert (=> b!1838122 (= e!1174564 (tuple2!19663 (Cons!20216 (h!25617 l!3005) (_1!11233 lt!713422)) (_2!11233 lt!713422)))))

(declare-fun b!1838123 () Bool)

(declare-fun e!1174563 () tuple2!19662)

(assert (=> b!1838123 (= e!1174563 (tuple2!19663 Nil!20216 Nil!20216))))

(declare-fun b!1838124 () Bool)

(declare-fun res!826157 () Bool)

(assert (=> b!1838124 (=> (not res!826157) (not e!1174562))))

(declare-fun take!150 (List!20286 Int) List!20286)

(assert (=> b!1838124 (= res!826157 (= (_1!11233 lt!713421) (take!150 l!3005 i!921)))))

(declare-fun d!562085 () Bool)

(assert (=> d!562085 e!1174562))

(declare-fun res!826158 () Bool)

(assert (=> d!562085 (=> (not res!826158) (not e!1174562))))

(assert (=> d!562085 (= res!826158 (= (++!5487 (_1!11233 lt!713421) (_2!11233 lt!713421)) l!3005))))

(assert (=> d!562085 (= lt!713421 e!1174563)))

(declare-fun c!299937 () Bool)

(assert (=> d!562085 (= c!299937 ((_ is Nil!20216) l!3005))))

(assert (=> d!562085 (= (splitAtIndex!14 l!3005 i!921) lt!713421)))

(declare-fun b!1838119 () Bool)

(assert (=> b!1838119 (= e!1174563 e!1174564)))

(declare-fun c!299936 () Bool)

(assert (=> b!1838119 (= c!299936 (<= i!921 0))))

(assert (= (and d!562085 c!299937) b!1838123))

(assert (= (and d!562085 (not c!299937)) b!1838119))

(assert (= (and b!1838119 c!299936) b!1838120))

(assert (= (and b!1838119 (not c!299936)) b!1838122))

(assert (= (and d!562085 res!826158) b!1838124))

(assert (= (and b!1838124 res!826157) b!1838121))

(declare-fun m!2265987 () Bool)

(assert (=> b!1838121 m!2265987))

(declare-fun m!2265991 () Bool)

(assert (=> b!1838122 m!2265991))

(declare-fun m!2265993 () Bool)

(assert (=> b!1838124 m!2265993))

(declare-fun m!2265995 () Bool)

(assert (=> d!562085 m!2265995))

(assert (=> b!1838038 d!562085))

(declare-fun b!1838134 () Bool)

(declare-fun e!1174570 () Bool)

(declare-fun tp!520010 () Bool)

(assert (=> b!1838134 (= e!1174570 (and tp_is_empty!8225 tp!520010))))

(assert (=> b!1838040 (= tp!520004 e!1174570)))

(assert (= (and b!1838040 ((_ is Cons!20216) (t!171715 acc!274))) b!1838134))

(declare-fun b!1838136 () Bool)

(declare-fun e!1174572 () Bool)

(declare-fun tp!520012 () Bool)

(assert (=> b!1838136 (= e!1174572 (and tp_is_empty!8225 tp!520012))))

(assert (=> b!1838039 (= tp!520003 e!1174572)))

(assert (= (and b!1838039 ((_ is Cons!20216) (t!171715 l!3005))) b!1838136))

(check-sat (not b!1838086) (not b!1838122) (not b!1838064) (not b!1838087) (not b!1838124) (not d!562081) (not b!1838134) (not d!562085) (not b!1838121) (not b!1838136) tp_is_empty!8225)
(check-sat)
