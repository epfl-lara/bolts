; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228634 () Bool)

(assert start!228634)

(declare-fun b!2316913 () Bool)

(declare-fun e!1485358 () Bool)

(declare-datatypes ((T!43740 0))(
  ( (T!43741 (val!7956 Int)) )
))
(declare-datatypes ((List!27742 0))(
  ( (Nil!27644) (Cons!27644 (h!33045 T!43740) (t!207362 List!27742)) )
))
(declare-datatypes ((IArray!18103 0))(
  ( (IArray!18104 (innerList!9109 List!27742)) )
))
(declare-datatypes ((Conc!9049 0))(
  ( (Node!9049 (left!20970 Conc!9049) (right!21300 Conc!9049) (csize!18328 Int) (cheight!9260 Int)) (Leaf!13283 (xs!11997 IArray!18103) (csize!18329 Int)) (Empty!9049) )
))
(declare-fun lt!859184 () Conc!9049)

(declare-fun isBalanced!2743 (Conc!9049) Bool)

(assert (=> b!2316913 (= e!1485358 (isBalanced!2743 lt!859184))))

(declare-fun b!2316914 () Bool)

(declare-fun e!1485362 () Bool)

(declare-fun e!1485359 () Bool)

(assert (=> b!2316914 (= e!1485362 e!1485359)))

(declare-fun res!989965 () Bool)

(assert (=> b!2316914 (=> (not res!989965) (not e!1485359))))

(declare-fun lt!859181 () Int)

(assert (=> b!2316914 (= res!989965 (> lt!859181 512))))

(declare-fun arr!18 () IArray!18103)

(declare-fun size!21877 (IArray!18103) Int)

(assert (=> b!2316914 (= lt!859181 (size!21877 arr!18))))

(declare-fun b!2316915 () Bool)

(declare-fun e!1485357 () Bool)

(declare-fun tp!735859 () Bool)

(assert (=> b!2316915 (= e!1485357 tp!735859)))

(declare-fun b!2316916 () Bool)

(declare-fun e!1485356 () Bool)

(assert (=> b!2316916 (= e!1485359 e!1485356)))

(declare-fun res!989966 () Bool)

(assert (=> b!2316916 (=> (not res!989966) (not e!1485356))))

(declare-fun lt!859187 () List!27742)

(declare-fun lt!859185 () List!27742)

(assert (=> b!2316916 (= res!989966 (= lt!859187 lt!859185))))

(declare-fun lt!859192 () Conc!9049)

(declare-fun list!10968 (Conc!9049) List!27742)

(assert (=> b!2316916 (= lt!859185 (list!10968 lt!859192))))

(declare-fun lt!859195 () List!27742)

(declare-fun lt!859189 () List!27742)

(declare-fun lt!859193 () List!27742)

(declare-fun ++!6791 (List!27742 List!27742) List!27742)

(assert (=> b!2316916 (= lt!859187 (++!6791 (++!6791 lt!859195 lt!859193) lt!859189))))

(declare-fun lt!859194 () IArray!18103)

(declare-fun list!10969 (IArray!18103) List!27742)

(assert (=> b!2316916 (= lt!859189 (list!10969 lt!859194))))

(declare-fun lt!859186 () Conc!9049)

(assert (=> b!2316916 (= lt!859193 (list!10968 lt!859186))))

(declare-fun acc!252 () Conc!9049)

(assert (=> b!2316916 (= lt!859195 (list!10968 acc!252))))

(declare-fun fromArray!21 (IArray!18103 Conc!9049) Conc!9049)

(assert (=> b!2316916 (= lt!859192 (fromArray!21 lt!859194 lt!859184))))

(declare-fun ++!6792 (Conc!9049 Conc!9049) Conc!9049)

(assert (=> b!2316916 (= lt!859184 (++!6792 acc!252 lt!859186))))

(declare-fun slice!672 (IArray!18103 Int Int) IArray!18103)

(assert (=> b!2316916 (= lt!859194 (slice!672 arr!18 512 lt!859181))))

(assert (=> b!2316916 (= lt!859186 (Leaf!13283 (slice!672 arr!18 0 512) 512))))

(declare-fun b!2316917 () Bool)

(declare-fun e!1485360 () Bool)

(assert (=> b!2316917 (= e!1485356 (not e!1485360))))

(declare-fun res!989968 () Bool)

(assert (=> b!2316917 (=> res!989968 e!1485360)))

(declare-fun lt!859190 () List!27742)

(assert (=> b!2316917 (= res!989968 (not (= lt!859190 lt!859185)))))

(assert (=> b!2316917 (= lt!859187 lt!859190)))

(declare-fun lt!859183 () List!27742)

(assert (=> b!2316917 (= lt!859190 (++!6791 lt!859195 lt!859183))))

(assert (=> b!2316917 (= lt!859183 (++!6791 lt!859193 lt!859189))))

(declare-datatypes ((Unit!40494 0))(
  ( (Unit!40495) )
))
(declare-fun lt!859191 () Unit!40494)

(declare-fun lemmaConcatAssociativity!1445 (List!27742 List!27742 List!27742) Unit!40494)

(assert (=> b!2316917 (= lt!859191 (lemmaConcatAssociativity!1445 lt!859195 lt!859193 lt!859189))))

(declare-fun b!2316918 () Bool)

(declare-fun res!989967 () Bool)

(assert (=> b!2316918 (=> res!989967 e!1485360)))

(assert (=> b!2316918 (= res!989967 (not (isBalanced!2743 lt!859192)))))

(declare-fun b!2316919 () Bool)

(assert (=> b!2316919 (= e!1485360 e!1485358)))

(declare-fun res!989969 () Bool)

(assert (=> b!2316919 (=> res!989969 e!1485358)))

(declare-fun lt!859182 () List!27742)

(assert (=> b!2316919 (= res!989969 (not (= lt!859183 lt!859182)))))

(declare-fun slice!673 (List!27742 Int Int) List!27742)

(declare-fun size!21878 (List!27742) Int)

(assert (=> b!2316919 (= (++!6791 (slice!673 lt!859182 0 512) (slice!673 lt!859182 512 (size!21878 lt!859182))) lt!859182)))

(declare-fun lt!859188 () Unit!40494)

(declare-fun sliceSplit!12 (List!27742 Int) Unit!40494)

(assert (=> b!2316919 (= lt!859188 (sliceSplit!12 lt!859182 512))))

(assert (=> b!2316919 (= lt!859182 (list!10969 arr!18))))

(declare-fun b!2316920 () Bool)

(declare-fun e!1485361 () Bool)

(declare-fun tp!735858 () Bool)

(assert (=> b!2316920 (= e!1485361 tp!735858)))

(declare-fun tp!735857 () Bool)

(declare-fun e!1485363 () Bool)

(declare-fun tp!735856 () Bool)

(declare-fun b!2316921 () Bool)

(declare-fun inv!37519 (Conc!9049) Bool)

(assert (=> b!2316921 (= e!1485363 (and (inv!37519 (left!20970 acc!252)) tp!735857 (inv!37519 (right!21300 acc!252)) tp!735856))))

(declare-fun res!989964 () Bool)

(assert (=> start!228634 (=> (not res!989964) (not e!1485362))))

(assert (=> start!228634 (= res!989964 (isBalanced!2743 acc!252))))

(assert (=> start!228634 e!1485362))

(assert (=> start!228634 (and (inv!37519 acc!252) e!1485363)))

(declare-fun inv!37520 (IArray!18103) Bool)

(assert (=> start!228634 (and (inv!37520 arr!18) e!1485361)))

(declare-fun b!2316922 () Bool)

(declare-fun res!989970 () Bool)

(assert (=> b!2316922 (=> res!989970 e!1485358)))

(assert (=> b!2316922 (= res!989970 (not (= lt!859185 (++!6791 lt!859195 lt!859182))))))

(declare-fun b!2316923 () Bool)

(assert (=> b!2316923 (= e!1485363 (and (inv!37520 (xs!11997 acc!252)) e!1485357))))

(assert (= (and start!228634 res!989964) b!2316914))

(assert (= (and b!2316914 res!989965) b!2316916))

(assert (= (and b!2316916 res!989966) b!2316917))

(assert (= (and b!2316917 (not res!989968)) b!2316918))

(assert (= (and b!2316918 (not res!989967)) b!2316919))

(assert (= (and b!2316919 (not res!989969)) b!2316922))

(assert (= (and b!2316922 (not res!989970)) b!2316913))

(get-info :version)

(assert (= (and start!228634 ((_ is Node!9049) acc!252)) b!2316921))

(assert (= b!2316923 b!2316915))

(assert (= (and start!228634 ((_ is Leaf!13283) acc!252)) b!2316923))

(assert (= start!228634 b!2316920))

(declare-fun m!2744353 () Bool)

(assert (=> b!2316919 m!2744353))

(declare-fun m!2744355 () Bool)

(assert (=> b!2316919 m!2744355))

(declare-fun m!2744357 () Bool)

(assert (=> b!2316919 m!2744357))

(declare-fun m!2744359 () Bool)

(assert (=> b!2316919 m!2744359))

(assert (=> b!2316919 m!2744353))

(declare-fun m!2744361 () Bool)

(assert (=> b!2316919 m!2744361))

(assert (=> b!2316919 m!2744355))

(declare-fun m!2744363 () Bool)

(assert (=> b!2316919 m!2744363))

(assert (=> b!2316919 m!2744361))

(declare-fun m!2744365 () Bool)

(assert (=> b!2316914 m!2744365))

(declare-fun m!2744367 () Bool)

(assert (=> b!2316923 m!2744367))

(declare-fun m!2744369 () Bool)

(assert (=> b!2316918 m!2744369))

(declare-fun m!2744371 () Bool)

(assert (=> b!2316916 m!2744371))

(declare-fun m!2744373 () Bool)

(assert (=> b!2316916 m!2744373))

(declare-fun m!2744375 () Bool)

(assert (=> b!2316916 m!2744375))

(declare-fun m!2744377 () Bool)

(assert (=> b!2316916 m!2744377))

(declare-fun m!2744379 () Bool)

(assert (=> b!2316916 m!2744379))

(declare-fun m!2744381 () Bool)

(assert (=> b!2316916 m!2744381))

(assert (=> b!2316916 m!2744375))

(declare-fun m!2744383 () Bool)

(assert (=> b!2316916 m!2744383))

(declare-fun m!2744385 () Bool)

(assert (=> b!2316916 m!2744385))

(declare-fun m!2744387 () Bool)

(assert (=> b!2316916 m!2744387))

(declare-fun m!2744389 () Bool)

(assert (=> b!2316916 m!2744389))

(declare-fun m!2744391 () Bool)

(assert (=> b!2316917 m!2744391))

(declare-fun m!2744393 () Bool)

(assert (=> b!2316917 m!2744393))

(declare-fun m!2744395 () Bool)

(assert (=> b!2316917 m!2744395))

(declare-fun m!2744397 () Bool)

(assert (=> b!2316921 m!2744397))

(declare-fun m!2744399 () Bool)

(assert (=> b!2316921 m!2744399))

(declare-fun m!2744401 () Bool)

(assert (=> b!2316913 m!2744401))

(declare-fun m!2744403 () Bool)

(assert (=> b!2316922 m!2744403))

(declare-fun m!2744405 () Bool)

(assert (=> start!228634 m!2744405))

(declare-fun m!2744407 () Bool)

(assert (=> start!228634 m!2744407))

(declare-fun m!2744409 () Bool)

(assert (=> start!228634 m!2744409))

(check-sat (not b!2316915) (not b!2316914) (not b!2316918) (not b!2316917) (not b!2316922) (not b!2316916) (not b!2316919) (not b!2316921) (not b!2316920) (not start!228634) (not b!2316913) (not b!2316923))
(check-sat)
(get-model)

(declare-fun b!2316936 () Bool)

(declare-fun res!989983 () Bool)

(declare-fun e!1485369 () Bool)

(assert (=> b!2316936 (=> (not res!989983) (not e!1485369))))

(declare-fun height!1314 (Conc!9049) Int)

(assert (=> b!2316936 (= res!989983 (<= (- (height!1314 (left!20970 lt!859192)) (height!1314 (right!21300 lt!859192))) 1))))

(declare-fun b!2316937 () Bool)

(declare-fun res!989987 () Bool)

(assert (=> b!2316937 (=> (not res!989987) (not e!1485369))))

(assert (=> b!2316937 (= res!989987 (isBalanced!2743 (left!20970 lt!859192)))))

(declare-fun b!2316938 () Bool)

(declare-fun res!989984 () Bool)

(assert (=> b!2316938 (=> (not res!989984) (not e!1485369))))

(declare-fun isEmpty!15768 (Conc!9049) Bool)

(assert (=> b!2316938 (= res!989984 (not (isEmpty!15768 (left!20970 lt!859192))))))

(declare-fun b!2316939 () Bool)

(declare-fun e!1485368 () Bool)

(assert (=> b!2316939 (= e!1485368 e!1485369)))

(declare-fun res!989985 () Bool)

(assert (=> b!2316939 (=> (not res!989985) (not e!1485369))))

(assert (=> b!2316939 (= res!989985 (<= (- 1) (- (height!1314 (left!20970 lt!859192)) (height!1314 (right!21300 lt!859192)))))))

(declare-fun d!684930 () Bool)

(declare-fun res!989988 () Bool)

(assert (=> d!684930 (=> res!989988 e!1485368)))

(assert (=> d!684930 (= res!989988 (not ((_ is Node!9049) lt!859192)))))

(assert (=> d!684930 (= (isBalanced!2743 lt!859192) e!1485368)))

(declare-fun b!2316940 () Bool)

(assert (=> b!2316940 (= e!1485369 (not (isEmpty!15768 (right!21300 lt!859192))))))

(declare-fun b!2316941 () Bool)

(declare-fun res!989986 () Bool)

(assert (=> b!2316941 (=> (not res!989986) (not e!1485369))))

(assert (=> b!2316941 (= res!989986 (isBalanced!2743 (right!21300 lt!859192)))))

(assert (= (and d!684930 (not res!989988)) b!2316939))

(assert (= (and b!2316939 res!989985) b!2316936))

(assert (= (and b!2316936 res!989983) b!2316937))

(assert (= (and b!2316937 res!989987) b!2316941))

(assert (= (and b!2316941 res!989986) b!2316938))

(assert (= (and b!2316938 res!989984) b!2316940))

(declare-fun m!2744411 () Bool)

(assert (=> b!2316936 m!2744411))

(declare-fun m!2744413 () Bool)

(assert (=> b!2316936 m!2744413))

(declare-fun m!2744415 () Bool)

(assert (=> b!2316940 m!2744415))

(assert (=> b!2316939 m!2744411))

(assert (=> b!2316939 m!2744413))

(declare-fun m!2744417 () Bool)

(assert (=> b!2316938 m!2744417))

(declare-fun m!2744419 () Bool)

(assert (=> b!2316941 m!2744419))

(declare-fun m!2744421 () Bool)

(assert (=> b!2316937 m!2744421))

(assert (=> b!2316918 d!684930))

(declare-fun b!2316942 () Bool)

(declare-fun res!989989 () Bool)

(declare-fun e!1485371 () Bool)

(assert (=> b!2316942 (=> (not res!989989) (not e!1485371))))

(assert (=> b!2316942 (= res!989989 (<= (- (height!1314 (left!20970 lt!859184)) (height!1314 (right!21300 lt!859184))) 1))))

(declare-fun b!2316943 () Bool)

(declare-fun res!989993 () Bool)

(assert (=> b!2316943 (=> (not res!989993) (not e!1485371))))

(assert (=> b!2316943 (= res!989993 (isBalanced!2743 (left!20970 lt!859184)))))

(declare-fun b!2316944 () Bool)

(declare-fun res!989990 () Bool)

(assert (=> b!2316944 (=> (not res!989990) (not e!1485371))))

(assert (=> b!2316944 (= res!989990 (not (isEmpty!15768 (left!20970 lt!859184))))))

(declare-fun b!2316945 () Bool)

(declare-fun e!1485370 () Bool)

(assert (=> b!2316945 (= e!1485370 e!1485371)))

(declare-fun res!989991 () Bool)

(assert (=> b!2316945 (=> (not res!989991) (not e!1485371))))

(assert (=> b!2316945 (= res!989991 (<= (- 1) (- (height!1314 (left!20970 lt!859184)) (height!1314 (right!21300 lt!859184)))))))

(declare-fun d!684934 () Bool)

(declare-fun res!989994 () Bool)

(assert (=> d!684934 (=> res!989994 e!1485370)))

(assert (=> d!684934 (= res!989994 (not ((_ is Node!9049) lt!859184)))))

(assert (=> d!684934 (= (isBalanced!2743 lt!859184) e!1485370)))

(declare-fun b!2316946 () Bool)

(assert (=> b!2316946 (= e!1485371 (not (isEmpty!15768 (right!21300 lt!859184))))))

(declare-fun b!2316947 () Bool)

(declare-fun res!989992 () Bool)

(assert (=> b!2316947 (=> (not res!989992) (not e!1485371))))

(assert (=> b!2316947 (= res!989992 (isBalanced!2743 (right!21300 lt!859184)))))

(assert (= (and d!684934 (not res!989994)) b!2316945))

(assert (= (and b!2316945 res!989991) b!2316942))

(assert (= (and b!2316942 res!989989) b!2316943))

(assert (= (and b!2316943 res!989993) b!2316947))

(assert (= (and b!2316947 res!989992) b!2316944))

(assert (= (and b!2316944 res!989990) b!2316946))

(declare-fun m!2744423 () Bool)

(assert (=> b!2316942 m!2744423))

(declare-fun m!2744425 () Bool)

(assert (=> b!2316942 m!2744425))

(declare-fun m!2744427 () Bool)

(assert (=> b!2316946 m!2744427))

(assert (=> b!2316945 m!2744423))

(assert (=> b!2316945 m!2744425))

(declare-fun m!2744429 () Bool)

(assert (=> b!2316944 m!2744429))

(declare-fun m!2744431 () Bool)

(assert (=> b!2316947 m!2744431))

(declare-fun m!2744433 () Bool)

(assert (=> b!2316943 m!2744433))

(assert (=> b!2316913 d!684934))

(declare-fun d!684936 () Bool)

(assert (=> d!684936 (= (inv!37520 (xs!11997 acc!252)) (<= (size!21878 (innerList!9109 (xs!11997 acc!252))) 2147483647))))

(declare-fun bs!458866 () Bool)

(assert (= bs!458866 d!684936))

(declare-fun m!2744435 () Bool)

(assert (=> bs!458866 m!2744435))

(assert (=> b!2316923 d!684936))

(declare-fun d!684938 () Bool)

(declare-fun lt!859200 () Int)

(assert (=> d!684938 (= lt!859200 (size!21878 (list!10969 arr!18)))))

(declare-fun choose!13560 (IArray!18103) Int)

(assert (=> d!684938 (= lt!859200 (choose!13560 arr!18))))

(assert (=> d!684938 (= (size!21877 arr!18) lt!859200)))

(declare-fun bs!458867 () Bool)

(assert (= bs!458867 d!684938))

(assert (=> bs!458867 m!2744359))

(assert (=> bs!458867 m!2744359))

(declare-fun m!2744437 () Bool)

(assert (=> bs!458867 m!2744437))

(declare-fun m!2744439 () Bool)

(assert (=> bs!458867 m!2744439))

(assert (=> b!2316914 d!684938))

(declare-fun b!2316971 () Bool)

(declare-fun e!1485383 () Bool)

(declare-fun lt!859204 () List!27742)

(assert (=> b!2316971 (= e!1485383 (or (not (= (slice!673 lt!859182 512 (size!21878 lt!859182)) Nil!27644)) (= lt!859204 (slice!673 lt!859182 0 512))))))

(declare-fun b!2316968 () Bool)

(declare-fun e!1485382 () List!27742)

(assert (=> b!2316968 (= e!1485382 (slice!673 lt!859182 512 (size!21878 lt!859182)))))

(declare-fun b!2316969 () Bool)

(assert (=> b!2316969 (= e!1485382 (Cons!27644 (h!33045 (slice!673 lt!859182 0 512)) (++!6791 (t!207362 (slice!673 lt!859182 0 512)) (slice!673 lt!859182 512 (size!21878 lt!859182)))))))

(declare-fun d!684940 () Bool)

(assert (=> d!684940 e!1485383))

(declare-fun res!990005 () Bool)

(assert (=> d!684940 (=> (not res!990005) (not e!1485383))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3730 (List!27742) (InoxSet T!43740))

(assert (=> d!684940 (= res!990005 (= (content!3730 lt!859204) ((_ map or) (content!3730 (slice!673 lt!859182 0 512)) (content!3730 (slice!673 lt!859182 512 (size!21878 lt!859182))))))))

(assert (=> d!684940 (= lt!859204 e!1485382)))

(declare-fun c!367221 () Bool)

(assert (=> d!684940 (= c!367221 ((_ is Nil!27644) (slice!673 lt!859182 0 512)))))

(assert (=> d!684940 (= (++!6791 (slice!673 lt!859182 0 512) (slice!673 lt!859182 512 (size!21878 lt!859182))) lt!859204)))

(declare-fun b!2316970 () Bool)

(declare-fun res!990006 () Bool)

(assert (=> b!2316970 (=> (not res!990006) (not e!1485383))))

(assert (=> b!2316970 (= res!990006 (= (size!21878 lt!859204) (+ (size!21878 (slice!673 lt!859182 0 512)) (size!21878 (slice!673 lt!859182 512 (size!21878 lt!859182))))))))

(assert (= (and d!684940 c!367221) b!2316968))

(assert (= (and d!684940 (not c!367221)) b!2316969))

(assert (= (and d!684940 res!990005) b!2316970))

(assert (= (and b!2316970 res!990006) b!2316971))

(assert (=> b!2316969 m!2744355))

(declare-fun m!2744453 () Bool)

(assert (=> b!2316969 m!2744453))

(declare-fun m!2744455 () Bool)

(assert (=> d!684940 m!2744455))

(assert (=> d!684940 m!2744361))

(declare-fun m!2744457 () Bool)

(assert (=> d!684940 m!2744457))

(assert (=> d!684940 m!2744355))

(declare-fun m!2744459 () Bool)

(assert (=> d!684940 m!2744459))

(declare-fun m!2744461 () Bool)

(assert (=> b!2316970 m!2744461))

(assert (=> b!2316970 m!2744361))

(declare-fun m!2744463 () Bool)

(assert (=> b!2316970 m!2744463))

(assert (=> b!2316970 m!2744355))

(declare-fun m!2744465 () Bool)

(assert (=> b!2316970 m!2744465))

(assert (=> b!2316919 d!684940))

(declare-fun d!684944 () Bool)

(assert (=> d!684944 (= (list!10969 arr!18) (innerList!9109 arr!18))))

(assert (=> b!2316919 d!684944))

(declare-fun d!684946 () Bool)

(assert (=> d!684946 (= (++!6791 (slice!673 lt!859182 0 512) (slice!673 lt!859182 512 (size!21878 lt!859182))) lt!859182)))

(declare-fun lt!859207 () Unit!40494)

(declare-fun choose!13561 (List!27742 Int) Unit!40494)

(assert (=> d!684946 (= lt!859207 (choose!13561 lt!859182 512))))

(assert (=> d!684946 (= (sliceSplit!12 lt!859182 512) lt!859207)))

(declare-fun bs!458868 () Bool)

(assert (= bs!458868 d!684946))

(declare-fun m!2744479 () Bool)

(assert (=> bs!458868 m!2744479))

(assert (=> bs!458868 m!2744361))

(assert (=> bs!458868 m!2744355))

(assert (=> bs!458868 m!2744363))

(assert (=> bs!458868 m!2744353))

(assert (=> bs!458868 m!2744361))

(assert (=> bs!458868 m!2744353))

(assert (=> bs!458868 m!2744355))

(assert (=> b!2316919 d!684946))

(declare-fun d!684950 () Bool)

(declare-fun take!478 (List!27742 Int) List!27742)

(declare-fun drop!1501 (List!27742 Int) List!27742)

(assert (=> d!684950 (= (slice!673 lt!859182 0 512) (take!478 (drop!1501 lt!859182 0) (- 512 0)))))

(declare-fun bs!458869 () Bool)

(assert (= bs!458869 d!684950))

(declare-fun m!2744481 () Bool)

(assert (=> bs!458869 m!2744481))

(assert (=> bs!458869 m!2744481))

(declare-fun m!2744483 () Bool)

(assert (=> bs!458869 m!2744483))

(assert (=> b!2316919 d!684950))

(declare-fun d!684952 () Bool)

(assert (=> d!684952 (= (slice!673 lt!859182 512 (size!21878 lt!859182)) (take!478 (drop!1501 lt!859182 512) (- (size!21878 lt!859182) 512)))))

(declare-fun bs!458870 () Bool)

(assert (= bs!458870 d!684952))

(declare-fun m!2744485 () Bool)

(assert (=> bs!458870 m!2744485))

(assert (=> bs!458870 m!2744485))

(declare-fun m!2744487 () Bool)

(assert (=> bs!458870 m!2744487))

(assert (=> b!2316919 d!684952))

(declare-fun d!684954 () Bool)

(declare-fun lt!859213 () Int)

(assert (=> d!684954 (>= lt!859213 0)))

(declare-fun e!1485395 () Int)

(assert (=> d!684954 (= lt!859213 e!1485395)))

(declare-fun c!367224 () Bool)

(assert (=> d!684954 (= c!367224 ((_ is Nil!27644) lt!859182))))

(assert (=> d!684954 (= (size!21878 lt!859182) lt!859213)))

(declare-fun b!2316997 () Bool)

(assert (=> b!2316997 (= e!1485395 0)))

(declare-fun b!2316998 () Bool)

(assert (=> b!2316998 (= e!1485395 (+ 1 (size!21878 (t!207362 lt!859182))))))

(assert (= (and d!684954 c!367224) b!2316997))

(assert (= (and d!684954 (not c!367224)) b!2316998))

(declare-fun m!2744493 () Bool)

(assert (=> b!2316998 m!2744493))

(assert (=> b!2316919 d!684954))

(declare-fun d!684958 () Bool)

(declare-fun c!367233 () Bool)

(assert (=> d!684958 (= c!367233 ((_ is Node!9049) (left!20970 acc!252)))))

(declare-fun e!1485406 () Bool)

(assert (=> d!684958 (= (inv!37519 (left!20970 acc!252)) e!1485406)))

(declare-fun b!2317017 () Bool)

(declare-fun inv!37521 (Conc!9049) Bool)

(assert (=> b!2317017 (= e!1485406 (inv!37521 (left!20970 acc!252)))))

(declare-fun b!2317018 () Bool)

(declare-fun e!1485407 () Bool)

(assert (=> b!2317018 (= e!1485406 e!1485407)))

(declare-fun res!990030 () Bool)

(assert (=> b!2317018 (= res!990030 (not ((_ is Leaf!13283) (left!20970 acc!252))))))

(assert (=> b!2317018 (=> res!990030 e!1485407)))

(declare-fun b!2317019 () Bool)

(declare-fun inv!37522 (Conc!9049) Bool)

(assert (=> b!2317019 (= e!1485407 (inv!37522 (left!20970 acc!252)))))

(assert (= (and d!684958 c!367233) b!2317017))

(assert (= (and d!684958 (not c!367233)) b!2317018))

(assert (= (and b!2317018 (not res!990030)) b!2317019))

(declare-fun m!2744503 () Bool)

(assert (=> b!2317017 m!2744503))

(declare-fun m!2744505 () Bool)

(assert (=> b!2317019 m!2744505))

(assert (=> b!2316921 d!684958))

(declare-fun d!684964 () Bool)

(declare-fun c!367234 () Bool)

(assert (=> d!684964 (= c!367234 ((_ is Node!9049) (right!21300 acc!252)))))

(declare-fun e!1485409 () Bool)

(assert (=> d!684964 (= (inv!37519 (right!21300 acc!252)) e!1485409)))

(declare-fun b!2317021 () Bool)

(assert (=> b!2317021 (= e!1485409 (inv!37521 (right!21300 acc!252)))))

(declare-fun b!2317022 () Bool)

(declare-fun e!1485410 () Bool)

(assert (=> b!2317022 (= e!1485409 e!1485410)))

(declare-fun res!990032 () Bool)

(assert (=> b!2317022 (= res!990032 (not ((_ is Leaf!13283) (right!21300 acc!252))))))

(assert (=> b!2317022 (=> res!990032 e!1485410)))

(declare-fun b!2317023 () Bool)

(assert (=> b!2317023 (= e!1485410 (inv!37522 (right!21300 acc!252)))))

(assert (= (and d!684964 c!367234) b!2317021))

(assert (= (and d!684964 (not c!367234)) b!2317022))

(assert (= (and b!2317022 (not res!990032)) b!2317023))

(declare-fun m!2744511 () Bool)

(assert (=> b!2317021 m!2744511))

(declare-fun m!2744513 () Bool)

(assert (=> b!2317023 m!2744513))

(assert (=> b!2316921 d!684964))

(declare-fun b!2317027 () Bool)

(declare-fun lt!859215 () List!27742)

(declare-fun e!1485412 () Bool)

(assert (=> b!2317027 (= e!1485412 (or (not (= lt!859182 Nil!27644)) (= lt!859215 lt!859195)))))

(declare-fun b!2317024 () Bool)

(declare-fun e!1485411 () List!27742)

(assert (=> b!2317024 (= e!1485411 lt!859182)))

(declare-fun b!2317025 () Bool)

(assert (=> b!2317025 (= e!1485411 (Cons!27644 (h!33045 lt!859195) (++!6791 (t!207362 lt!859195) lt!859182)))))

(declare-fun d!684968 () Bool)

(assert (=> d!684968 e!1485412))

(declare-fun res!990033 () Bool)

(assert (=> d!684968 (=> (not res!990033) (not e!1485412))))

(assert (=> d!684968 (= res!990033 (= (content!3730 lt!859215) ((_ map or) (content!3730 lt!859195) (content!3730 lt!859182))))))

(assert (=> d!684968 (= lt!859215 e!1485411)))

(declare-fun c!367235 () Bool)

(assert (=> d!684968 (= c!367235 ((_ is Nil!27644) lt!859195))))

(assert (=> d!684968 (= (++!6791 lt!859195 lt!859182) lt!859215)))

(declare-fun b!2317026 () Bool)

(declare-fun res!990034 () Bool)

(assert (=> b!2317026 (=> (not res!990034) (not e!1485412))))

(assert (=> b!2317026 (= res!990034 (= (size!21878 lt!859215) (+ (size!21878 lt!859195) (size!21878 lt!859182))))))

(assert (= (and d!684968 c!367235) b!2317024))

(assert (= (and d!684968 (not c!367235)) b!2317025))

(assert (= (and d!684968 res!990033) b!2317026))

(assert (= (and b!2317026 res!990034) b!2317027))

(declare-fun m!2744515 () Bool)

(assert (=> b!2317025 m!2744515))

(declare-fun m!2744517 () Bool)

(assert (=> d!684968 m!2744517))

(declare-fun m!2744519 () Bool)

(assert (=> d!684968 m!2744519))

(declare-fun m!2744521 () Bool)

(assert (=> d!684968 m!2744521))

(declare-fun m!2744523 () Bool)

(assert (=> b!2317026 m!2744523))

(declare-fun m!2744525 () Bool)

(assert (=> b!2317026 m!2744525))

(assert (=> b!2317026 m!2744353))

(assert (=> b!2316922 d!684968))

(declare-fun lt!859216 () List!27742)

(declare-fun e!1485414 () Bool)

(declare-fun b!2317031 () Bool)

(assert (=> b!2317031 (= e!1485414 (or (not (= lt!859183 Nil!27644)) (= lt!859216 lt!859195)))))

(declare-fun b!2317028 () Bool)

(declare-fun e!1485413 () List!27742)

(assert (=> b!2317028 (= e!1485413 lt!859183)))

(declare-fun b!2317029 () Bool)

(assert (=> b!2317029 (= e!1485413 (Cons!27644 (h!33045 lt!859195) (++!6791 (t!207362 lt!859195) lt!859183)))))

(declare-fun d!684970 () Bool)

(assert (=> d!684970 e!1485414))

(declare-fun res!990035 () Bool)

(assert (=> d!684970 (=> (not res!990035) (not e!1485414))))

(assert (=> d!684970 (= res!990035 (= (content!3730 lt!859216) ((_ map or) (content!3730 lt!859195) (content!3730 lt!859183))))))

(assert (=> d!684970 (= lt!859216 e!1485413)))

(declare-fun c!367236 () Bool)

(assert (=> d!684970 (= c!367236 ((_ is Nil!27644) lt!859195))))

(assert (=> d!684970 (= (++!6791 lt!859195 lt!859183) lt!859216)))

(declare-fun b!2317030 () Bool)

(declare-fun res!990036 () Bool)

(assert (=> b!2317030 (=> (not res!990036) (not e!1485414))))

(assert (=> b!2317030 (= res!990036 (= (size!21878 lt!859216) (+ (size!21878 lt!859195) (size!21878 lt!859183))))))

(assert (= (and d!684970 c!367236) b!2317028))

(assert (= (and d!684970 (not c!367236)) b!2317029))

(assert (= (and d!684970 res!990035) b!2317030))

(assert (= (and b!2317030 res!990036) b!2317031))

(declare-fun m!2744527 () Bool)

(assert (=> b!2317029 m!2744527))

(declare-fun m!2744529 () Bool)

(assert (=> d!684970 m!2744529))

(assert (=> d!684970 m!2744519))

(declare-fun m!2744531 () Bool)

(assert (=> d!684970 m!2744531))

(declare-fun m!2744533 () Bool)

(assert (=> b!2317030 m!2744533))

(assert (=> b!2317030 m!2744525))

(declare-fun m!2744535 () Bool)

(assert (=> b!2317030 m!2744535))

(assert (=> b!2316917 d!684970))

(declare-fun e!1485416 () Bool)

(declare-fun b!2317035 () Bool)

(declare-fun lt!859217 () List!27742)

(assert (=> b!2317035 (= e!1485416 (or (not (= lt!859189 Nil!27644)) (= lt!859217 lt!859193)))))

(declare-fun b!2317032 () Bool)

(declare-fun e!1485415 () List!27742)

(assert (=> b!2317032 (= e!1485415 lt!859189)))

(declare-fun b!2317033 () Bool)

(assert (=> b!2317033 (= e!1485415 (Cons!27644 (h!33045 lt!859193) (++!6791 (t!207362 lt!859193) lt!859189)))))

(declare-fun d!684972 () Bool)

(assert (=> d!684972 e!1485416))

(declare-fun res!990037 () Bool)

(assert (=> d!684972 (=> (not res!990037) (not e!1485416))))

(assert (=> d!684972 (= res!990037 (= (content!3730 lt!859217) ((_ map or) (content!3730 lt!859193) (content!3730 lt!859189))))))

(assert (=> d!684972 (= lt!859217 e!1485415)))

(declare-fun c!367237 () Bool)

(assert (=> d!684972 (= c!367237 ((_ is Nil!27644) lt!859193))))

(assert (=> d!684972 (= (++!6791 lt!859193 lt!859189) lt!859217)))

(declare-fun b!2317034 () Bool)

(declare-fun res!990038 () Bool)

(assert (=> b!2317034 (=> (not res!990038) (not e!1485416))))

(assert (=> b!2317034 (= res!990038 (= (size!21878 lt!859217) (+ (size!21878 lt!859193) (size!21878 lt!859189))))))

(assert (= (and d!684972 c!367237) b!2317032))

(assert (= (and d!684972 (not c!367237)) b!2317033))

(assert (= (and d!684972 res!990037) b!2317034))

(assert (= (and b!2317034 res!990038) b!2317035))

(declare-fun m!2744537 () Bool)

(assert (=> b!2317033 m!2744537))

(declare-fun m!2744539 () Bool)

(assert (=> d!684972 m!2744539))

(declare-fun m!2744541 () Bool)

(assert (=> d!684972 m!2744541))

(declare-fun m!2744543 () Bool)

(assert (=> d!684972 m!2744543))

(declare-fun m!2744545 () Bool)

(assert (=> b!2317034 m!2744545))

(declare-fun m!2744547 () Bool)

(assert (=> b!2317034 m!2744547))

(declare-fun m!2744549 () Bool)

(assert (=> b!2317034 m!2744549))

(assert (=> b!2316917 d!684972))

(declare-fun d!684974 () Bool)

(assert (=> d!684974 (= (++!6791 (++!6791 lt!859195 lt!859193) lt!859189) (++!6791 lt!859195 (++!6791 lt!859193 lt!859189)))))

(declare-fun lt!859220 () Unit!40494)

(declare-fun choose!13562 (List!27742 List!27742 List!27742) Unit!40494)

(assert (=> d!684974 (= lt!859220 (choose!13562 lt!859195 lt!859193 lt!859189))))

(assert (=> d!684974 (= (lemmaConcatAssociativity!1445 lt!859195 lt!859193 lt!859189) lt!859220)))

(declare-fun bs!458871 () Bool)

(assert (= bs!458871 d!684974))

(declare-fun m!2744551 () Bool)

(assert (=> bs!458871 m!2744551))

(assert (=> bs!458871 m!2744375))

(assert (=> bs!458871 m!2744377))

(assert (=> bs!458871 m!2744393))

(assert (=> bs!458871 m!2744375))

(assert (=> bs!458871 m!2744393))

(declare-fun m!2744553 () Bool)

(assert (=> bs!458871 m!2744553))

(assert (=> b!2316917 d!684974))

(declare-fun b!2317046 () Bool)

(declare-fun e!1485422 () List!27742)

(assert (=> b!2317046 (= e!1485422 (list!10969 (xs!11997 lt!859192)))))

(declare-fun b!2317044 () Bool)

(declare-fun e!1485421 () List!27742)

(assert (=> b!2317044 (= e!1485421 Nil!27644)))

(declare-fun b!2317047 () Bool)

(assert (=> b!2317047 (= e!1485422 (++!6791 (list!10968 (left!20970 lt!859192)) (list!10968 (right!21300 lt!859192))))))

(declare-fun b!2317045 () Bool)

(assert (=> b!2317045 (= e!1485421 e!1485422)))

(declare-fun c!367243 () Bool)

(assert (=> b!2317045 (= c!367243 ((_ is Leaf!13283) lt!859192))))

(declare-fun d!684976 () Bool)

(declare-fun c!367242 () Bool)

(assert (=> d!684976 (= c!367242 ((_ is Empty!9049) lt!859192))))

(assert (=> d!684976 (= (list!10968 lt!859192) e!1485421)))

(assert (= (and d!684976 c!367242) b!2317044))

(assert (= (and d!684976 (not c!367242)) b!2317045))

(assert (= (and b!2317045 c!367243) b!2317046))

(assert (= (and b!2317045 (not c!367243)) b!2317047))

(declare-fun m!2744555 () Bool)

(assert (=> b!2317046 m!2744555))

(declare-fun m!2744557 () Bool)

(assert (=> b!2317047 m!2744557))

(declare-fun m!2744559 () Bool)

(assert (=> b!2317047 m!2744559))

(assert (=> b!2317047 m!2744557))

(assert (=> b!2317047 m!2744559))

(declare-fun m!2744561 () Bool)

(assert (=> b!2317047 m!2744561))

(assert (=> b!2316916 d!684976))

(declare-fun d!684978 () Bool)

(declare-fun lt!859223 () IArray!18103)

(assert (=> d!684978 (= lt!859223 (IArray!18104 (slice!673 (list!10969 arr!18) 512 lt!859181)))))

(declare-fun choose!13563 (IArray!18103 Int Int) IArray!18103)

(assert (=> d!684978 (= lt!859223 (choose!13563 arr!18 512 lt!859181))))

(declare-fun e!1485425 () Bool)

(assert (=> d!684978 e!1485425))

(declare-fun res!990041 () Bool)

(assert (=> d!684978 (=> (not res!990041) (not e!1485425))))

(assert (=> d!684978 (= res!990041 (and (<= 0 512) (<= 512 lt!859181)))))

(assert (=> d!684978 (= (slice!672 arr!18 512 lt!859181) lt!859223)))

(declare-fun b!2317050 () Bool)

(assert (=> b!2317050 (= e!1485425 (<= lt!859181 (size!21877 arr!18)))))

(assert (= (and d!684978 res!990041) b!2317050))

(assert (=> d!684978 m!2744359))

(assert (=> d!684978 m!2744359))

(declare-fun m!2744563 () Bool)

(assert (=> d!684978 m!2744563))

(declare-fun m!2744565 () Bool)

(assert (=> d!684978 m!2744565))

(assert (=> b!2317050 m!2744365))

(assert (=> b!2316916 d!684978))

(declare-fun lt!859224 () List!27742)

(declare-fun b!2317054 () Bool)

(declare-fun e!1485427 () Bool)

(assert (=> b!2317054 (= e!1485427 (or (not (= lt!859193 Nil!27644)) (= lt!859224 lt!859195)))))

(declare-fun b!2317051 () Bool)

(declare-fun e!1485426 () List!27742)

(assert (=> b!2317051 (= e!1485426 lt!859193)))

(declare-fun b!2317052 () Bool)

(assert (=> b!2317052 (= e!1485426 (Cons!27644 (h!33045 lt!859195) (++!6791 (t!207362 lt!859195) lt!859193)))))

(declare-fun d!684980 () Bool)

(assert (=> d!684980 e!1485427))

(declare-fun res!990042 () Bool)

(assert (=> d!684980 (=> (not res!990042) (not e!1485427))))

(assert (=> d!684980 (= res!990042 (= (content!3730 lt!859224) ((_ map or) (content!3730 lt!859195) (content!3730 lt!859193))))))

(assert (=> d!684980 (= lt!859224 e!1485426)))

(declare-fun c!367244 () Bool)

(assert (=> d!684980 (= c!367244 ((_ is Nil!27644) lt!859195))))

(assert (=> d!684980 (= (++!6791 lt!859195 lt!859193) lt!859224)))

(declare-fun b!2317053 () Bool)

(declare-fun res!990043 () Bool)

(assert (=> b!2317053 (=> (not res!990043) (not e!1485427))))

(assert (=> b!2317053 (= res!990043 (= (size!21878 lt!859224) (+ (size!21878 lt!859195) (size!21878 lt!859193))))))

(assert (= (and d!684980 c!367244) b!2317051))

(assert (= (and d!684980 (not c!367244)) b!2317052))

(assert (= (and d!684980 res!990042) b!2317053))

(assert (= (and b!2317053 res!990043) b!2317054))

(declare-fun m!2744567 () Bool)

(assert (=> b!2317052 m!2744567))

(declare-fun m!2744569 () Bool)

(assert (=> d!684980 m!2744569))

(assert (=> d!684980 m!2744519))

(assert (=> d!684980 m!2744541))

(declare-fun m!2744571 () Bool)

(assert (=> b!2317053 m!2744571))

(assert (=> b!2317053 m!2744525))

(assert (=> b!2317053 m!2744547))

(assert (=> b!2316916 d!684980))

(declare-fun d!684982 () Bool)

(assert (=> d!684982 (= (list!10969 lt!859194) (innerList!9109 lt!859194))))

(assert (=> b!2316916 d!684982))

(declare-fun d!684984 () Bool)

(declare-fun lt!859227 () IArray!18103)

(assert (=> d!684984 (= lt!859227 (IArray!18104 (slice!673 (list!10969 arr!18) 0 512)))))

(assert (=> d!684984 (= lt!859227 (choose!13563 arr!18 0 512))))

(declare-fun e!1485428 () Bool)

(assert (=> d!684984 e!1485428))

(declare-fun res!990044 () Bool)

(assert (=> d!684984 (=> (not res!990044) (not e!1485428))))

(assert (=> d!684984 (= res!990044 (and (<= 0 0) (<= 0 512)))))

(assert (=> d!684984 (= (slice!672 arr!18 0 512) lt!859227)))

(declare-fun b!2317057 () Bool)

(assert (=> b!2317057 (= e!1485428 (<= 512 (size!21877 arr!18)))))

(assert (= (and d!684984 res!990044) b!2317057))

(assert (=> d!684984 m!2744359))

(assert (=> d!684984 m!2744359))

(declare-fun m!2744573 () Bool)

(assert (=> d!684984 m!2744573))

(declare-fun m!2744575 () Bool)

(assert (=> d!684984 m!2744575))

(assert (=> b!2317057 m!2744365))

(assert (=> b!2316916 d!684984))

(declare-fun b!2317066 () Bool)

(declare-fun e!1485434 () List!27742)

(assert (=> b!2317066 (= e!1485434 (list!10969 (xs!11997 acc!252)))))

(declare-fun b!2317064 () Bool)

(declare-fun e!1485433 () List!27742)

(assert (=> b!2317064 (= e!1485433 Nil!27644)))

(declare-fun b!2317067 () Bool)

(assert (=> b!2317067 (= e!1485434 (++!6791 (list!10968 (left!20970 acc!252)) (list!10968 (right!21300 acc!252))))))

(declare-fun b!2317065 () Bool)

(assert (=> b!2317065 (= e!1485433 e!1485434)))

(declare-fun c!367250 () Bool)

(assert (=> b!2317065 (= c!367250 ((_ is Leaf!13283) acc!252))))

(declare-fun d!684986 () Bool)

(declare-fun c!367249 () Bool)

(assert (=> d!684986 (= c!367249 ((_ is Empty!9049) acc!252))))

(assert (=> d!684986 (= (list!10968 acc!252) e!1485433)))

(assert (= (and d!684986 c!367249) b!2317064))

(assert (= (and d!684986 (not c!367249)) b!2317065))

(assert (= (and b!2317065 c!367250) b!2317066))

(assert (= (and b!2317065 (not c!367250)) b!2317067))

(declare-fun m!2744577 () Bool)

(assert (=> b!2317066 m!2744577))

(declare-fun m!2744579 () Bool)

(assert (=> b!2317067 m!2744579))

(declare-fun m!2744581 () Bool)

(assert (=> b!2317067 m!2744581))

(assert (=> b!2317067 m!2744579))

(assert (=> b!2317067 m!2744581))

(declare-fun m!2744583 () Bool)

(assert (=> b!2317067 m!2744583))

(assert (=> b!2316916 d!684986))

(declare-fun e!1485436 () Bool)

(declare-fun b!2317071 () Bool)

(declare-fun lt!859250 () List!27742)

(assert (=> b!2317071 (= e!1485436 (or (not (= lt!859189 Nil!27644)) (= lt!859250 (++!6791 lt!859195 lt!859193))))))

(declare-fun b!2317068 () Bool)

(declare-fun e!1485435 () List!27742)

(assert (=> b!2317068 (= e!1485435 lt!859189)))

(declare-fun b!2317069 () Bool)

(assert (=> b!2317069 (= e!1485435 (Cons!27644 (h!33045 (++!6791 lt!859195 lt!859193)) (++!6791 (t!207362 (++!6791 lt!859195 lt!859193)) lt!859189)))))

(declare-fun d!684988 () Bool)

(assert (=> d!684988 e!1485436))

(declare-fun res!990045 () Bool)

(assert (=> d!684988 (=> (not res!990045) (not e!1485436))))

(assert (=> d!684988 (= res!990045 (= (content!3730 lt!859250) ((_ map or) (content!3730 (++!6791 lt!859195 lt!859193)) (content!3730 lt!859189))))))

(assert (=> d!684988 (= lt!859250 e!1485435)))

(declare-fun c!367251 () Bool)

(assert (=> d!684988 (= c!367251 ((_ is Nil!27644) (++!6791 lt!859195 lt!859193)))))

(assert (=> d!684988 (= (++!6791 (++!6791 lt!859195 lt!859193) lt!859189) lt!859250)))

(declare-fun b!2317070 () Bool)

(declare-fun res!990046 () Bool)

(assert (=> b!2317070 (=> (not res!990046) (not e!1485436))))

(assert (=> b!2317070 (= res!990046 (= (size!21878 lt!859250) (+ (size!21878 (++!6791 lt!859195 lt!859193)) (size!21878 lt!859189))))))

(assert (= (and d!684988 c!367251) b!2317068))

(assert (= (and d!684988 (not c!367251)) b!2317069))

(assert (= (and d!684988 res!990045) b!2317070))

(assert (= (and b!2317070 res!990046) b!2317071))

(declare-fun m!2744585 () Bool)

(assert (=> b!2317069 m!2744585))

(declare-fun m!2744587 () Bool)

(assert (=> d!684988 m!2744587))

(assert (=> d!684988 m!2744375))

(declare-fun m!2744589 () Bool)

(assert (=> d!684988 m!2744589))

(assert (=> d!684988 m!2744543))

(declare-fun m!2744591 () Bool)

(assert (=> b!2317070 m!2744591))

(assert (=> b!2317070 m!2744375))

(declare-fun m!2744593 () Bool)

(assert (=> b!2317070 m!2744593))

(assert (=> b!2317070 m!2744549))

(assert (=> b!2316916 d!684988))

(declare-fun bm!137846 () Bool)

(declare-fun call!137852 () Conc!9049)

(declare-fun call!137851 () Conc!9049)

(assert (=> bm!137846 (= call!137852 call!137851)))

(declare-fun b!2317216 () Bool)

(declare-fun e!1485510 () Conc!9049)

(assert (=> b!2317216 (= e!1485510 call!137851)))

(declare-fun bm!137847 () Bool)

(declare-fun call!137857 () Int)

(declare-fun c!367307 () Bool)

(assert (=> bm!137847 (= call!137857 (height!1314 (ite c!367307 (left!20970 acc!252) lt!859186)))))

(declare-fun bm!137848 () Bool)

(declare-fun call!137861 () Conc!9049)

(declare-fun call!137865 () Conc!9049)

(assert (=> bm!137848 (= call!137861 call!137865)))

(declare-fun b!2317217 () Bool)

(declare-fun e!1485516 () Bool)

(assert (=> b!2317217 (= e!1485516 (isBalanced!2743 lt!859186))))

(declare-fun b!2317218 () Bool)

(declare-fun e!1485513 () Conc!9049)

(declare-fun call!137853 () Conc!9049)

(assert (=> b!2317218 (= e!1485513 call!137853)))

(declare-fun bm!137849 () Bool)

(declare-fun call!137855 () Conc!9049)

(declare-fun call!137866 () Conc!9049)

(assert (=> bm!137849 (= call!137855 call!137866)))

(declare-fun b!2317219 () Bool)

(declare-fun e!1485511 () Conc!9049)

(assert (=> b!2317219 (= e!1485511 acc!252)))

(declare-fun bm!137850 () Bool)

(declare-fun call!137863 () Int)

(assert (=> bm!137850 (= call!137863 (height!1314 (ite c!367307 (right!21300 acc!252) (left!20970 lt!859186))))))

(declare-fun bm!137851 () Bool)

(declare-fun call!137860 () Conc!9049)

(declare-fun call!137862 () Conc!9049)

(assert (=> bm!137851 (= call!137860 call!137862)))

(declare-fun b!2317220 () Bool)

(declare-fun e!1485507 () Conc!9049)

(assert (=> b!2317220 (= e!1485507 call!137855)))

(declare-fun b!2317221 () Bool)

(declare-fun e!1485509 () Conc!9049)

(assert (=> b!2317221 (= e!1485510 e!1485509)))

(declare-fun lt!859292 () Int)

(assert (=> b!2317221 (= c!367307 (< lt!859292 (- 1)))))

(declare-fun bm!137852 () Bool)

(assert (=> bm!137852 (= call!137862 call!137852)))

(declare-fun d!684990 () Bool)

(declare-fun e!1485512 () Bool)

(assert (=> d!684990 e!1485512))

(declare-fun res!990089 () Bool)

(assert (=> d!684990 (=> (not res!990089) (not e!1485512))))

(declare-fun appendAssocInst!598 (Conc!9049 Conc!9049) Bool)

(assert (=> d!684990 (= res!990089 (appendAssocInst!598 acc!252 lt!859186))))

(declare-fun lt!859295 () Conc!9049)

(declare-fun e!1485514 () Conc!9049)

(assert (=> d!684990 (= lt!859295 e!1485514)))

(declare-fun c!367308 () Bool)

(assert (=> d!684990 (= c!367308 (= acc!252 Empty!9049))))

(assert (=> d!684990 e!1485516))

(declare-fun res!990090 () Bool)

(assert (=> d!684990 (=> (not res!990090) (not e!1485516))))

(assert (=> d!684990 (= res!990090 (isBalanced!2743 acc!252))))

(assert (=> d!684990 (= (++!6792 acc!252 lt!859186) lt!859295)))

(declare-fun b!2317222 () Bool)

(assert (=> b!2317222 (= e!1485507 call!137855)))

(declare-fun bm!137853 () Bool)

(assert (=> bm!137853 (= call!137853 call!137866)))

(declare-fun b!2317223 () Bool)

(assert (=> b!2317223 (= e!1485512 (= (list!10968 lt!859295) (++!6791 (list!10968 acc!252) (list!10968 lt!859186))))))

(declare-fun bm!137854 () Bool)

(declare-fun call!137864 () Conc!9049)

(declare-fun call!137858 () Conc!9049)

(assert (=> bm!137854 (= call!137864 call!137858)))

(declare-fun c!367306 () Bool)

(declare-fun c!367310 () Bool)

(declare-fun c!367305 () Bool)

(declare-fun c!367309 () Bool)

(declare-fun lt!859294 () Conc!9049)

(declare-fun bm!137855 () Bool)

(declare-fun call!137856 () Conc!9049)

(declare-fun lt!859293 () Conc!9049)

(declare-fun c!367304 () Bool)

(declare-fun <>!204 (Conc!9049 Conc!9049) Conc!9049)

(assert (=> bm!137855 (= call!137851 (<>!204 (ite c!367306 acc!252 (ite c!367307 (ite c!367304 (left!20970 acc!252) (ite c!367309 (left!20970 (right!21300 acc!252)) (left!20970 acc!252))) (ite c!367310 call!137861 (ite c!367305 lt!859293 (right!21300 (left!20970 lt!859186)))))) (ite c!367306 lt!859186 (ite c!367307 (ite c!367304 call!137856 (ite c!367309 lt!859294 (left!20970 (right!21300 acc!252)))) (ite c!367310 (right!21300 lt!859186) (ite c!367305 (right!21300 (left!20970 lt!859186)) (right!21300 lt!859186)))))))))

(declare-fun b!2317224 () Bool)

(declare-fun e!1485508 () Conc!9049)

(assert (=> b!2317224 (= e!1485508 call!137858)))

(declare-fun bm!137856 () Bool)

(assert (=> bm!137856 (= call!137865 (++!6792 (ite c!367307 (ite c!367304 (right!21300 acc!252) (right!21300 (right!21300 acc!252))) acc!252) (ite c!367307 lt!859186 (ite c!367310 (left!20970 lt!859186) (left!20970 (left!20970 lt!859186))))))))

(declare-fun b!2317225 () Bool)

(assert (=> b!2317225 (= e!1485508 e!1485507)))

(assert (=> b!2317225 (= lt!859293 call!137861)))

(declare-fun call!137859 () Int)

(assert (=> b!2317225 (= c!367305 (= call!137859 (- call!137857 3)))))

(declare-fun b!2317226 () Bool)

(assert (=> b!2317226 (= e!1485514 e!1485511)))

(declare-fun c!367311 () Bool)

(assert (=> b!2317226 (= c!367311 (= lt!859186 Empty!9049))))

(declare-fun b!2317227 () Bool)

(assert (=> b!2317227 (= c!367304 (>= call!137857 call!137863))))

(declare-fun e!1485515 () Conc!9049)

(assert (=> b!2317227 (= e!1485509 e!1485515)))

(declare-fun b!2317228 () Bool)

(assert (=> b!2317228 (= e!1485514 lt!859186)))

(declare-fun b!2317229 () Bool)

(declare-fun res!990091 () Bool)

(assert (=> b!2317229 (=> (not res!990091) (not e!1485512))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2317229 (= res!990091 (>= (height!1314 lt!859295) (max!0 (height!1314 acc!252) (height!1314 lt!859186))))))

(declare-fun bm!137857 () Bool)

(assert (=> bm!137857 (= call!137866 (<>!204 (ite c!367307 (ite c!367309 (left!20970 acc!252) call!137860) (ite c!367305 call!137864 lt!859293)) (ite c!367307 (ite c!367309 call!137860 lt!859294) (ite c!367305 (right!21300 lt!859186) call!137864))))))

(declare-fun b!2317230 () Bool)

(assert (=> b!2317230 (= e!1485513 call!137853)))

(declare-fun b!2317231 () Bool)

(declare-fun res!990087 () Bool)

(assert (=> b!2317231 (=> (not res!990087) (not e!1485512))))

(assert (=> b!2317231 (= res!990087 (isBalanced!2743 lt!859295))))

(declare-fun b!2317232 () Bool)

(assert (=> b!2317232 (= e!1485515 e!1485513)))

(assert (=> b!2317232 (= lt!859294 call!137856)))

(declare-fun call!137854 () Int)

(assert (=> b!2317232 (= c!367309 (= call!137859 (- call!137854 3)))))

(declare-fun b!2317233 () Bool)

(assert (=> b!2317233 (= c!367310 (>= call!137854 call!137863))))

(assert (=> b!2317233 (= e!1485509 e!1485508)))

(declare-fun b!2317234 () Bool)

(declare-fun res!990088 () Bool)

(assert (=> b!2317234 (=> (not res!990088) (not e!1485512))))

(assert (=> b!2317234 (= res!990088 (<= (height!1314 lt!859295) (+ (max!0 (height!1314 acc!252) (height!1314 lt!859186)) 1)))))

(declare-fun bm!137858 () Bool)

(assert (=> bm!137858 (= call!137858 call!137852)))

(declare-fun b!2317235 () Bool)

(assert (=> b!2317235 (= c!367306 (and (<= (- 1) lt!859292) (<= lt!859292 1)))))

(assert (=> b!2317235 (= lt!859292 (- (height!1314 lt!859186) (height!1314 acc!252)))))

(assert (=> b!2317235 (= e!1485511 e!1485510)))

(declare-fun bm!137859 () Bool)

(assert (=> bm!137859 (= call!137854 (height!1314 (ite c!367307 acc!252 (right!21300 lt!859186))))))

(declare-fun bm!137860 () Bool)

(assert (=> bm!137860 (= call!137856 call!137865)))

(declare-fun bm!137861 () Bool)

(assert (=> bm!137861 (= call!137859 (height!1314 (ite c!367307 lt!859294 lt!859293)))))

(declare-fun b!2317236 () Bool)

(assert (=> b!2317236 (= e!1485515 call!137862)))

(assert (= (and d!684990 res!990090) b!2317217))

(assert (= (and d!684990 c!367308) b!2317228))

(assert (= (and d!684990 (not c!367308)) b!2317226))

(assert (= (and b!2317226 c!367311) b!2317219))

(assert (= (and b!2317226 (not c!367311)) b!2317235))

(assert (= (and b!2317235 c!367306) b!2317216))

(assert (= (and b!2317235 (not c!367306)) b!2317221))

(assert (= (and b!2317221 c!367307) b!2317227))

(assert (= (and b!2317221 (not c!367307)) b!2317233))

(assert (= (and b!2317227 c!367304) b!2317236))

(assert (= (and b!2317227 (not c!367304)) b!2317232))

(assert (= (and b!2317232 c!367309) b!2317230))

(assert (= (and b!2317232 (not c!367309)) b!2317218))

(assert (= (or b!2317230 b!2317218) bm!137851))

(assert (= (or b!2317230 b!2317218) bm!137853))

(assert (= (or b!2317236 b!2317232) bm!137860))

(assert (= (or b!2317236 bm!137851) bm!137852))

(assert (= (and b!2317233 c!367310) b!2317224))

(assert (= (and b!2317233 (not c!367310)) b!2317225))

(assert (= (and b!2317225 c!367305) b!2317222))

(assert (= (and b!2317225 (not c!367305)) b!2317220))

(assert (= (or b!2317222 b!2317220) bm!137854))

(assert (= (or b!2317222 b!2317220) bm!137849))

(assert (= (or b!2317224 b!2317225) bm!137848))

(assert (= (or b!2317224 bm!137854) bm!137858))

(assert (= (or b!2317232 b!2317233) bm!137859))

(assert (= (or bm!137852 bm!137858) bm!137846))

(assert (= (or bm!137853 bm!137849) bm!137857))

(assert (= (or bm!137860 bm!137848) bm!137856))

(assert (= (or b!2317232 b!2317225) bm!137861))

(assert (= (or b!2317227 b!2317233) bm!137850))

(assert (= (or b!2317227 b!2317225) bm!137847))

(assert (= (or b!2317216 bm!137846) bm!137855))

(assert (= (and d!684990 res!990089) b!2317231))

(assert (= (and b!2317231 res!990087) b!2317234))

(assert (= (and b!2317234 res!990088) b!2317229))

(assert (= (and b!2317229 res!990091) b!2317223))

(declare-fun m!2744755 () Bool)

(assert (=> bm!137850 m!2744755))

(declare-fun m!2744767 () Bool)

(assert (=> bm!137855 m!2744767))

(declare-fun m!2744769 () Bool)

(assert (=> bm!137859 m!2744769))

(declare-fun m!2744771 () Bool)

(assert (=> b!2317217 m!2744771))

(declare-fun m!2744773 () Bool)

(assert (=> b!2317234 m!2744773))

(declare-fun m!2744777 () Bool)

(assert (=> b!2317234 m!2744777))

(declare-fun m!2744781 () Bool)

(assert (=> b!2317234 m!2744781))

(assert (=> b!2317234 m!2744777))

(assert (=> b!2317234 m!2744781))

(declare-fun m!2744785 () Bool)

(assert (=> b!2317234 m!2744785))

(declare-fun m!2744787 () Bool)

(assert (=> bm!137856 m!2744787))

(declare-fun m!2744789 () Bool)

(assert (=> d!684990 m!2744789))

(assert (=> d!684990 m!2744405))

(declare-fun m!2744791 () Bool)

(assert (=> bm!137857 m!2744791))

(declare-fun m!2744793 () Bool)

(assert (=> b!2317231 m!2744793))

(declare-fun m!2744795 () Bool)

(assert (=> b!2317223 m!2744795))

(assert (=> b!2317223 m!2744373))

(assert (=> b!2317223 m!2744383))

(assert (=> b!2317223 m!2744373))

(assert (=> b!2317223 m!2744383))

(declare-fun m!2744797 () Bool)

(assert (=> b!2317223 m!2744797))

(assert (=> b!2317229 m!2744773))

(assert (=> b!2317229 m!2744777))

(assert (=> b!2317229 m!2744781))

(assert (=> b!2317229 m!2744777))

(assert (=> b!2317229 m!2744781))

(assert (=> b!2317229 m!2744785))

(declare-fun m!2744799 () Bool)

(assert (=> bm!137861 m!2744799))

(declare-fun m!2744801 () Bool)

(assert (=> bm!137847 m!2744801))

(assert (=> b!2317235 m!2744781))

(assert (=> b!2317235 m!2744777))

(assert (=> b!2316916 d!684990))

(declare-fun b!2317256 () Bool)

(declare-fun e!1485528 () List!27742)

(assert (=> b!2317256 (= e!1485528 (list!10969 (xs!11997 lt!859186)))))

(declare-fun b!2317254 () Bool)

(declare-fun e!1485527 () List!27742)

(assert (=> b!2317254 (= e!1485527 Nil!27644)))

(declare-fun b!2317257 () Bool)

(assert (=> b!2317257 (= e!1485528 (++!6791 (list!10968 (left!20970 lt!859186)) (list!10968 (right!21300 lt!859186))))))

(declare-fun b!2317255 () Bool)

(assert (=> b!2317255 (= e!1485527 e!1485528)))

(declare-fun c!367318 () Bool)

(assert (=> b!2317255 (= c!367318 ((_ is Leaf!13283) lt!859186))))

(declare-fun d!685028 () Bool)

(declare-fun c!367317 () Bool)

(assert (=> d!685028 (= c!367317 ((_ is Empty!9049) lt!859186))))

(assert (=> d!685028 (= (list!10968 lt!859186) e!1485527)))

(assert (= (and d!685028 c!367317) b!2317254))

(assert (= (and d!685028 (not c!367317)) b!2317255))

(assert (= (and b!2317255 c!367318) b!2317256))

(assert (= (and b!2317255 (not c!367318)) b!2317257))

(declare-fun m!2744803 () Bool)

(assert (=> b!2317256 m!2744803))

(declare-fun m!2744805 () Bool)

(assert (=> b!2317257 m!2744805))

(declare-fun m!2744807 () Bool)

(assert (=> b!2317257 m!2744807))

(assert (=> b!2317257 m!2744805))

(assert (=> b!2317257 m!2744807))

(declare-fun m!2744809 () Bool)

(assert (=> b!2317257 m!2744809))

(assert (=> b!2316916 d!685028))

(declare-fun d!685030 () Bool)

(declare-fun e!1485555 () Bool)

(assert (=> d!685030 e!1485555))

(declare-fun res!990109 () Bool)

(assert (=> d!685030 (=> (not res!990109) (not e!1485555))))

(declare-fun lt!859336 () Conc!9049)

(assert (=> d!685030 (= res!990109 (isBalanced!2743 lt!859336))))

(declare-fun e!1485554 () Conc!9049)

(assert (=> d!685030 (= lt!859336 e!1485554)))

(declare-fun c!367325 () Bool)

(assert (=> d!685030 (= c!367325 (<= (size!21877 lt!859194) 512))))

(assert (=> d!685030 (isBalanced!2743 lt!859184)))

(assert (=> d!685030 (= (fromArray!21 lt!859194 lt!859184) lt!859336)))

(declare-fun bm!137866 () Bool)

(declare-fun call!137872 () Int)

(assert (=> bm!137866 (= call!137872 (size!21877 lt!859194))))

(declare-fun b!2317300 () Bool)

(declare-fun e!1485553 () Conc!9049)

(assert (=> b!2317300 (= e!1485553 lt!859184)))

(declare-fun b!2317301 () Bool)

(declare-fun call!137871 () Conc!9049)

(assert (=> b!2317301 (= e!1485553 call!137871)))

(declare-fun b!2317302 () Bool)

(assert (=> b!2317302 (= e!1485555 (= (list!10968 lt!859336) (++!6791 (list!10968 lt!859184) (list!10969 lt!859194))))))

(declare-fun b!2317303 () Bool)

(assert (=> b!2317303 (= e!1485554 (fromArray!21 (slice!672 lt!859194 512 call!137872) call!137871))))

(declare-fun lt!859335 () Conc!9049)

(assert (=> b!2317303 (= lt!859335 (Leaf!13283 (slice!672 lt!859194 0 512) 512))))

(declare-fun lt!859328 () Conc!9049)

(assert (=> b!2317303 (= lt!859328 (fromArray!21 (slice!672 lt!859194 512 call!137872) call!137871))))

(declare-fun lt!859334 () List!27742)

(assert (=> b!2317303 (= lt!859334 (list!10968 lt!859184))))

(declare-fun lt!859329 () List!27742)

(assert (=> b!2317303 (= lt!859329 (list!10968 lt!859335))))

(declare-fun lt!859337 () List!27742)

(assert (=> b!2317303 (= lt!859337 (list!10969 (slice!672 lt!859194 512 call!137872)))))

(declare-fun lt!859339 () Unit!40494)

(assert (=> b!2317303 (= lt!859339 (lemmaConcatAssociativity!1445 lt!859334 lt!859329 lt!859337))))

(assert (=> b!2317303 (= (++!6791 (++!6791 lt!859334 lt!859329) lt!859337) (++!6791 lt!859334 (++!6791 lt!859329 lt!859337)))))

(declare-fun lt!859330 () Unit!40494)

(assert (=> b!2317303 (= lt!859330 lt!859339)))

(declare-fun lt!859331 () List!27742)

(assert (=> b!2317303 (= lt!859331 (list!10969 lt!859194))))

(declare-fun lt!859333 () Int)

(assert (=> b!2317303 (= lt!859333 512)))

(declare-fun lt!859338 () Unit!40494)

(assert (=> b!2317303 (= lt!859338 (sliceSplit!12 lt!859331 lt!859333))))

(assert (=> b!2317303 (= (++!6791 (slice!673 lt!859331 0 lt!859333) (slice!673 lt!859331 lt!859333 (size!21878 lt!859331))) lt!859331)))

(declare-fun lt!859332 () Unit!40494)

(assert (=> b!2317303 (= lt!859332 lt!859338)))

(declare-fun b!2317304 () Bool)

(assert (=> b!2317304 (= e!1485554 e!1485553)))

(declare-fun c!367326 () Bool)

(assert (=> b!2317304 (= c!367326 (= call!137872 0))))

(declare-fun bm!137867 () Bool)

(assert (=> bm!137867 (= call!137871 (++!6792 lt!859184 (ite c!367325 (Leaf!13283 lt!859194 call!137872) lt!859335)))))

(assert (= (and d!685030 c!367325) b!2317304))

(assert (= (and d!685030 (not c!367325)) b!2317303))

(assert (= (and b!2317304 c!367326) b!2317300))

(assert (= (and b!2317304 (not c!367326)) b!2317301))

(assert (= (or b!2317304 b!2317301 b!2317303) bm!137866))

(assert (= (or b!2317301 b!2317303) bm!137867))

(assert (= (and d!685030 res!990109) b!2317302))

(declare-fun m!2744851 () Bool)

(assert (=> bm!137866 m!2744851))

(assert (=> b!2317303 m!2744381))

(declare-fun m!2744853 () Bool)

(assert (=> b!2317303 m!2744853))

(assert (=> b!2317303 m!2744853))

(declare-fun m!2744855 () Bool)

(assert (=> b!2317303 m!2744855))

(declare-fun m!2744857 () Bool)

(assert (=> b!2317303 m!2744857))

(declare-fun m!2744859 () Bool)

(assert (=> b!2317303 m!2744859))

(declare-fun m!2744861 () Bool)

(assert (=> b!2317303 m!2744861))

(declare-fun m!2744863 () Bool)

(assert (=> b!2317303 m!2744863))

(declare-fun m!2744865 () Bool)

(assert (=> b!2317303 m!2744865))

(declare-fun m!2744867 () Bool)

(assert (=> b!2317303 m!2744867))

(declare-fun m!2744869 () Bool)

(assert (=> b!2317303 m!2744869))

(declare-fun m!2744871 () Bool)

(assert (=> b!2317303 m!2744871))

(declare-fun m!2744873 () Bool)

(assert (=> b!2317303 m!2744873))

(declare-fun m!2744875 () Bool)

(assert (=> b!2317303 m!2744875))

(declare-fun m!2744877 () Bool)

(assert (=> b!2317303 m!2744877))

(assert (=> b!2317303 m!2744857))

(assert (=> b!2317303 m!2744865))

(assert (=> b!2317303 m!2744863))

(declare-fun m!2744879 () Bool)

(assert (=> b!2317303 m!2744879))

(assert (=> b!2317303 m!2744853))

(declare-fun m!2744881 () Bool)

(assert (=> b!2317303 m!2744881))

(assert (=> b!2317303 m!2744861))

(assert (=> b!2317303 m!2744867))

(declare-fun m!2744883 () Bool)

(assert (=> b!2317303 m!2744883))

(declare-fun m!2744885 () Bool)

(assert (=> b!2317302 m!2744885))

(assert (=> b!2317302 m!2744869))

(assert (=> b!2317302 m!2744381))

(assert (=> b!2317302 m!2744869))

(assert (=> b!2317302 m!2744381))

(declare-fun m!2744887 () Bool)

(assert (=> b!2317302 m!2744887))

(declare-fun m!2744889 () Bool)

(assert (=> bm!137867 m!2744889))

(declare-fun m!2744891 () Bool)

(assert (=> d!685030 m!2744891))

(assert (=> d!685030 m!2744851))

(assert (=> d!685030 m!2744401))

(assert (=> b!2316916 d!685030))

(declare-fun b!2317305 () Bool)

(declare-fun res!990110 () Bool)

(declare-fun e!1485557 () Bool)

(assert (=> b!2317305 (=> (not res!990110) (not e!1485557))))

(assert (=> b!2317305 (= res!990110 (<= (- (height!1314 (left!20970 acc!252)) (height!1314 (right!21300 acc!252))) 1))))

(declare-fun b!2317306 () Bool)

(declare-fun res!990114 () Bool)

(assert (=> b!2317306 (=> (not res!990114) (not e!1485557))))

(assert (=> b!2317306 (= res!990114 (isBalanced!2743 (left!20970 acc!252)))))

(declare-fun b!2317307 () Bool)

(declare-fun res!990111 () Bool)

(assert (=> b!2317307 (=> (not res!990111) (not e!1485557))))

(assert (=> b!2317307 (= res!990111 (not (isEmpty!15768 (left!20970 acc!252))))))

(declare-fun b!2317308 () Bool)

(declare-fun e!1485556 () Bool)

(assert (=> b!2317308 (= e!1485556 e!1485557)))

(declare-fun res!990112 () Bool)

(assert (=> b!2317308 (=> (not res!990112) (not e!1485557))))

(assert (=> b!2317308 (= res!990112 (<= (- 1) (- (height!1314 (left!20970 acc!252)) (height!1314 (right!21300 acc!252)))))))

(declare-fun d!685040 () Bool)

(declare-fun res!990115 () Bool)

(assert (=> d!685040 (=> res!990115 e!1485556)))

(assert (=> d!685040 (= res!990115 (not ((_ is Node!9049) acc!252)))))

(assert (=> d!685040 (= (isBalanced!2743 acc!252) e!1485556)))

(declare-fun b!2317309 () Bool)

(assert (=> b!2317309 (= e!1485557 (not (isEmpty!15768 (right!21300 acc!252))))))

(declare-fun b!2317310 () Bool)

(declare-fun res!990113 () Bool)

(assert (=> b!2317310 (=> (not res!990113) (not e!1485557))))

(assert (=> b!2317310 (= res!990113 (isBalanced!2743 (right!21300 acc!252)))))

(assert (= (and d!685040 (not res!990115)) b!2317308))

(assert (= (and b!2317308 res!990112) b!2317305))

(assert (= (and b!2317305 res!990110) b!2317306))

(assert (= (and b!2317306 res!990114) b!2317310))

(assert (= (and b!2317310 res!990113) b!2317307))

(assert (= (and b!2317307 res!990111) b!2317309))

(declare-fun m!2744893 () Bool)

(assert (=> b!2317305 m!2744893))

(declare-fun m!2744895 () Bool)

(assert (=> b!2317305 m!2744895))

(declare-fun m!2744897 () Bool)

(assert (=> b!2317309 m!2744897))

(assert (=> b!2317308 m!2744893))

(assert (=> b!2317308 m!2744895))

(declare-fun m!2744899 () Bool)

(assert (=> b!2317307 m!2744899))

(declare-fun m!2744901 () Bool)

(assert (=> b!2317310 m!2744901))

(declare-fun m!2744903 () Bool)

(assert (=> b!2317306 m!2744903))

(assert (=> start!228634 d!685040))

(declare-fun d!685042 () Bool)

(declare-fun c!367327 () Bool)

(assert (=> d!685042 (= c!367327 ((_ is Node!9049) acc!252))))

(declare-fun e!1485558 () Bool)

(assert (=> d!685042 (= (inv!37519 acc!252) e!1485558)))

(declare-fun b!2317311 () Bool)

(assert (=> b!2317311 (= e!1485558 (inv!37521 acc!252))))

(declare-fun b!2317312 () Bool)

(declare-fun e!1485559 () Bool)

(assert (=> b!2317312 (= e!1485558 e!1485559)))

(declare-fun res!990116 () Bool)

(assert (=> b!2317312 (= res!990116 (not ((_ is Leaf!13283) acc!252)))))

(assert (=> b!2317312 (=> res!990116 e!1485559)))

(declare-fun b!2317313 () Bool)

(assert (=> b!2317313 (= e!1485559 (inv!37522 acc!252))))

(assert (= (and d!685042 c!367327) b!2317311))

(assert (= (and d!685042 (not c!367327)) b!2317312))

(assert (= (and b!2317312 (not res!990116)) b!2317313))

(declare-fun m!2744905 () Bool)

(assert (=> b!2317311 m!2744905))

(declare-fun m!2744907 () Bool)

(assert (=> b!2317313 m!2744907))

(assert (=> start!228634 d!685042))

(declare-fun d!685044 () Bool)

(assert (=> d!685044 (= (inv!37520 arr!18) (<= (size!21878 (innerList!9109 arr!18)) 2147483647))))

(declare-fun bs!458879 () Bool)

(assert (= bs!458879 d!685044))

(declare-fun m!2744909 () Bool)

(assert (=> bs!458879 m!2744909))

(assert (=> start!228634 d!685044))

(declare-fun b!2317322 () Bool)

(declare-fun e!1485564 () Bool)

(declare-fun tp!735884 () Bool)

(declare-fun tp!735883 () Bool)

(assert (=> b!2317322 (= e!1485564 (and (inv!37519 (left!20970 (left!20970 acc!252))) tp!735883 (inv!37519 (right!21300 (left!20970 acc!252))) tp!735884))))

(declare-fun b!2317324 () Bool)

(declare-fun e!1485565 () Bool)

(declare-fun tp!735882 () Bool)

(assert (=> b!2317324 (= e!1485565 tp!735882)))

(declare-fun b!2317323 () Bool)

(assert (=> b!2317323 (= e!1485564 (and (inv!37520 (xs!11997 (left!20970 acc!252))) e!1485565))))

(assert (=> b!2316921 (= tp!735857 (and (inv!37519 (left!20970 acc!252)) e!1485564))))

(assert (= (and b!2316921 ((_ is Node!9049) (left!20970 acc!252))) b!2317322))

(assert (= b!2317323 b!2317324))

(assert (= (and b!2316921 ((_ is Leaf!13283) (left!20970 acc!252))) b!2317323))

(declare-fun m!2744911 () Bool)

(assert (=> b!2317322 m!2744911))

(declare-fun m!2744913 () Bool)

(assert (=> b!2317322 m!2744913))

(declare-fun m!2744915 () Bool)

(assert (=> b!2317323 m!2744915))

(assert (=> b!2316921 m!2744397))

(declare-fun e!1485566 () Bool)

(declare-fun b!2317325 () Bool)

(declare-fun tp!735886 () Bool)

(declare-fun tp!735887 () Bool)

(assert (=> b!2317325 (= e!1485566 (and (inv!37519 (left!20970 (right!21300 acc!252))) tp!735886 (inv!37519 (right!21300 (right!21300 acc!252))) tp!735887))))

(declare-fun b!2317327 () Bool)

(declare-fun e!1485567 () Bool)

(declare-fun tp!735885 () Bool)

(assert (=> b!2317327 (= e!1485567 tp!735885)))

(declare-fun b!2317326 () Bool)

(assert (=> b!2317326 (= e!1485566 (and (inv!37520 (xs!11997 (right!21300 acc!252))) e!1485567))))

(assert (=> b!2316921 (= tp!735856 (and (inv!37519 (right!21300 acc!252)) e!1485566))))

(assert (= (and b!2316921 ((_ is Node!9049) (right!21300 acc!252))) b!2317325))

(assert (= b!2317326 b!2317327))

(assert (= (and b!2316921 ((_ is Leaf!13283) (right!21300 acc!252))) b!2317326))

(declare-fun m!2744917 () Bool)

(assert (=> b!2317325 m!2744917))

(declare-fun m!2744919 () Bool)

(assert (=> b!2317325 m!2744919))

(declare-fun m!2744921 () Bool)

(assert (=> b!2317326 m!2744921))

(assert (=> b!2316921 m!2744399))

(declare-fun b!2317332 () Bool)

(declare-fun e!1485570 () Bool)

(declare-fun tp_is_empty!10793 () Bool)

(declare-fun tp!735890 () Bool)

(assert (=> b!2317332 (= e!1485570 (and tp_is_empty!10793 tp!735890))))

(assert (=> b!2316920 (= tp!735858 e!1485570)))

(assert (= (and b!2316920 ((_ is Cons!27644) (innerList!9109 arr!18))) b!2317332))

(declare-fun b!2317333 () Bool)

(declare-fun e!1485571 () Bool)

(declare-fun tp!735891 () Bool)

(assert (=> b!2317333 (= e!1485571 (and tp_is_empty!10793 tp!735891))))

(assert (=> b!2316915 (= tp!735859 e!1485571)))

(assert (= (and b!2316915 ((_ is Cons!27644) (innerList!9109 (xs!11997 acc!252)))) b!2317333))

(check-sat (not d!684974) (not b!2317311) (not d!684978) (not d!684938) (not b!2316944) (not b!2317326) (not b!2317322) (not d!684968) (not b!2316969) (not b!2316970) (not b!2316943) (not b!2317217) (not b!2317257) (not d!685030) (not b!2317306) (not b!2317050) (not bm!137867) (not b!2317017) (not b!2317019) (not d!684970) (not bm!137850) (not b!2317053) (not bm!137855) (not b!2316939) (not d!684936) (not b!2317234) (not d!684984) (not d!684988) (not b!2317332) (not b!2317025) (not b!2316937) (not b!2316946) (not b!2317303) (not b!2316936) (not b!2317026) (not b!2317313) (not b!2316921) (not b!2317070) (not b!2317305) (not bm!137856) (not b!2317052) (not b!2317057) (not d!684940) (not b!2316945) (not b!2317223) (not b!2317067) (not b!2316938) tp_is_empty!10793 (not b!2317033) (not d!684950) (not b!2317256) (not b!2316947) (not bm!137861) (not b!2316941) (not b!2317029) (not d!684980) (not d!684946) (not b!2317324) (not bm!137859) (not b!2317333) (not bm!137866) (not b!2317021) (not b!2317030) (not b!2317066) (not b!2317034) (not b!2317302) (not b!2317323) (not b!2317309) (not b!2317047) (not d!684952) (not b!2317327) (not b!2317023) (not b!2317231) (not b!2316998) (not bm!137847) (not b!2317325) (not b!2317307) (not d!684972) (not d!685044) (not d!684990) (not b!2317310) (not bm!137857) (not b!2317308) (not b!2317235) (not b!2316940) (not b!2317069) (not b!2317229) (not b!2317046) (not b!2316942))
(check-sat)
