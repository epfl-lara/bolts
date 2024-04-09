; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29462 () Bool)

(assert start!29462)

(declare-fun b!297903 () Bool)

(declare-fun res!157135 () Bool)

(declare-fun e!188244 () Bool)

(assert (=> b!297903 (=> (not res!157135) (not e!188244))))

(declare-datatypes ((array!15076 0))(
  ( (array!15077 (arr!7142 (Array (_ BitVec 32) (_ BitVec 64))) (size!7494 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15076)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15076 (_ BitVec 32)) Bool)

(assert (=> b!297903 (= res!157135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!157140 () Bool)

(declare-fun e!188246 () Bool)

(assert (=> start!29462 (=> (not res!157140) (not e!188246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29462 (= res!157140 (validMask!0 mask!3809))))

(assert (=> start!29462 e!188246))

(assert (=> start!29462 true))

(declare-fun array_inv!5096 (array!15076) Bool)

(assert (=> start!29462 (array_inv!5096 a!3312)))

(declare-fun b!297904 () Bool)

(assert (=> b!297904 (= e!188246 e!188244)))

(declare-fun res!157136 () Bool)

(assert (=> b!297904 (=> (not res!157136) (not e!188244))))

(declare-fun lt!148144 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2302 0))(
  ( (MissingZero!2302 (index!11381 (_ BitVec 32))) (Found!2302 (index!11382 (_ BitVec 32))) (Intermediate!2302 (undefined!3114 Bool) (index!11383 (_ BitVec 32)) (x!29570 (_ BitVec 32))) (Undefined!2302) (MissingVacant!2302 (index!11384 (_ BitVec 32))) )
))
(declare-fun lt!148142 () SeekEntryResult!2302)

(assert (=> b!297904 (= res!157136 (or lt!148144 (= lt!148142 (MissingVacant!2302 i!1256))))))

(assert (=> b!297904 (= lt!148144 (= lt!148142 (MissingZero!2302 i!1256)))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15076 (_ BitVec 32)) SeekEntryResult!2302)

(assert (=> b!297904 (= lt!148142 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!297905 () Bool)

(declare-fun res!157139 () Bool)

(assert (=> b!297905 (=> (not res!157139) (not e!188246))))

(declare-fun arrayContainsKey!0 (array!15076 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!297905 (= res!157139 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!297906 () Bool)

(declare-fun lt!148143 () SeekEntryResult!2302)

(get-info :version)

(assert (=> b!297906 (= e!188244 (and (not lt!148144) (= lt!148142 (MissingVacant!2302 i!1256)) ((_ is Intermediate!2302) lt!148143) (undefined!3114 lt!148143)))))

(declare-fun lt!148145 () SeekEntryResult!2302)

(declare-fun lt!148141 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15076 (_ BitVec 32)) SeekEntryResult!2302)

(assert (=> b!297906 (= lt!148145 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148141 k0!2524 (array!15077 (store (arr!7142 a!3312) i!1256 k0!2524) (size!7494 a!3312)) mask!3809))))

(assert (=> b!297906 (= lt!148143 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148141 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297906 (= lt!148141 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!297907 () Bool)

(declare-fun res!157138 () Bool)

(assert (=> b!297907 (=> (not res!157138) (not e!188246))))

(assert (=> b!297907 (= res!157138 (and (= (size!7494 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7494 a!3312))))))

(declare-fun b!297908 () Bool)

(declare-fun res!157137 () Bool)

(assert (=> b!297908 (=> (not res!157137) (not e!188246))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!297908 (= res!157137 (validKeyInArray!0 k0!2524))))

(assert (= (and start!29462 res!157140) b!297907))

(assert (= (and b!297907 res!157138) b!297908))

(assert (= (and b!297908 res!157137) b!297905))

(assert (= (and b!297905 res!157139) b!297904))

(assert (= (and b!297904 res!157136) b!297903))

(assert (= (and b!297903 res!157135) b!297906))

(declare-fun m!310543 () Bool)

(assert (=> b!297904 m!310543))

(declare-fun m!310545 () Bool)

(assert (=> b!297905 m!310545))

(declare-fun m!310547 () Bool)

(assert (=> b!297908 m!310547))

(declare-fun m!310549 () Bool)

(assert (=> b!297903 m!310549))

(declare-fun m!310551 () Bool)

(assert (=> b!297906 m!310551))

(declare-fun m!310553 () Bool)

(assert (=> b!297906 m!310553))

(declare-fun m!310555 () Bool)

(assert (=> b!297906 m!310555))

(declare-fun m!310557 () Bool)

(assert (=> b!297906 m!310557))

(declare-fun m!310559 () Bool)

(assert (=> start!29462 m!310559))

(declare-fun m!310561 () Bool)

(assert (=> start!29462 m!310561))

(check-sat (not b!297906) (not b!297904) (not start!29462) (not b!297908) (not b!297905) (not b!297903))
(check-sat)
(get-model)

(declare-fun d!67169 () Bool)

(declare-fun res!157163 () Bool)

(declare-fun e!188260 () Bool)

(assert (=> d!67169 (=> res!157163 e!188260)))

(assert (=> d!67169 (= res!157163 (= (select (arr!7142 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!67169 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!188260)))

(declare-fun b!297931 () Bool)

(declare-fun e!188261 () Bool)

(assert (=> b!297931 (= e!188260 e!188261)))

(declare-fun res!157164 () Bool)

(assert (=> b!297931 (=> (not res!157164) (not e!188261))))

(assert (=> b!297931 (= res!157164 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7494 a!3312)))))

(declare-fun b!297932 () Bool)

(assert (=> b!297932 (= e!188261 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67169 (not res!157163)) b!297931))

(assert (= (and b!297931 res!157164) b!297932))

(declare-fun m!310583 () Bool)

(assert (=> d!67169 m!310583))

(declare-fun m!310585 () Bool)

(assert (=> b!297932 m!310585))

(assert (=> b!297905 d!67169))

(declare-fun d!67171 () Bool)

(declare-fun res!157169 () Bool)

(declare-fun e!188268 () Bool)

(assert (=> d!67171 (=> res!157169 e!188268)))

(assert (=> d!67171 (= res!157169 (bvsge #b00000000000000000000000000000000 (size!7494 a!3312)))))

(assert (=> d!67171 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!188268)))

(declare-fun b!297941 () Bool)

(declare-fun e!188270 () Bool)

(assert (=> b!297941 (= e!188268 e!188270)))

(declare-fun c!47970 () Bool)

(assert (=> b!297941 (= c!47970 (validKeyInArray!0 (select (arr!7142 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!297942 () Bool)

(declare-fun e!188269 () Bool)

(assert (=> b!297942 (= e!188270 e!188269)))

(declare-fun lt!148169 () (_ BitVec 64))

(assert (=> b!297942 (= lt!148169 (select (arr!7142 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9294 0))(
  ( (Unit!9295) )
))
(declare-fun lt!148167 () Unit!9294)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15076 (_ BitVec 64) (_ BitVec 32)) Unit!9294)

(assert (=> b!297942 (= lt!148167 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!148169 #b00000000000000000000000000000000))))

(assert (=> b!297942 (arrayContainsKey!0 a!3312 lt!148169 #b00000000000000000000000000000000)))

(declare-fun lt!148168 () Unit!9294)

(assert (=> b!297942 (= lt!148168 lt!148167)))

(declare-fun res!157170 () Bool)

(assert (=> b!297942 (= res!157170 (= (seekEntryOrOpen!0 (select (arr!7142 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2302 #b00000000000000000000000000000000)))))

(assert (=> b!297942 (=> (not res!157170) (not e!188269))))

(declare-fun b!297943 () Bool)

(declare-fun call!25770 () Bool)

(assert (=> b!297943 (= e!188269 call!25770)))

(declare-fun bm!25767 () Bool)

(assert (=> bm!25767 (= call!25770 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!297944 () Bool)

(assert (=> b!297944 (= e!188270 call!25770)))

(assert (= (and d!67171 (not res!157169)) b!297941))

(assert (= (and b!297941 c!47970) b!297942))

(assert (= (and b!297941 (not c!47970)) b!297944))

(assert (= (and b!297942 res!157170) b!297943))

(assert (= (or b!297943 b!297944) bm!25767))

(assert (=> b!297941 m!310583))

(assert (=> b!297941 m!310583))

(declare-fun m!310587 () Bool)

(assert (=> b!297941 m!310587))

(assert (=> b!297942 m!310583))

(declare-fun m!310589 () Bool)

(assert (=> b!297942 m!310589))

(declare-fun m!310591 () Bool)

(assert (=> b!297942 m!310591))

(assert (=> b!297942 m!310583))

(declare-fun m!310593 () Bool)

(assert (=> b!297942 m!310593))

(declare-fun m!310595 () Bool)

(assert (=> bm!25767 m!310595))

(assert (=> b!297903 d!67171))

(declare-fun e!188299 () SeekEntryResult!2302)

(declare-fun lt!148196 () SeekEntryResult!2302)

(declare-fun b!297991 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15076 (_ BitVec 32)) SeekEntryResult!2302)

(assert (=> b!297991 (= e!188299 (seekKeyOrZeroReturnVacant!0 (x!29570 lt!148196) (index!11383 lt!148196) (index!11383 lt!148196) k0!2524 a!3312 mask!3809))))

(declare-fun b!297992 () Bool)

(declare-fun e!188301 () SeekEntryResult!2302)

(assert (=> b!297992 (= e!188301 Undefined!2302)))

(declare-fun d!67175 () Bool)

(declare-fun lt!148195 () SeekEntryResult!2302)

(assert (=> d!67175 (and (or ((_ is Undefined!2302) lt!148195) (not ((_ is Found!2302) lt!148195)) (and (bvsge (index!11382 lt!148195) #b00000000000000000000000000000000) (bvslt (index!11382 lt!148195) (size!7494 a!3312)))) (or ((_ is Undefined!2302) lt!148195) ((_ is Found!2302) lt!148195) (not ((_ is MissingZero!2302) lt!148195)) (and (bvsge (index!11381 lt!148195) #b00000000000000000000000000000000) (bvslt (index!11381 lt!148195) (size!7494 a!3312)))) (or ((_ is Undefined!2302) lt!148195) ((_ is Found!2302) lt!148195) ((_ is MissingZero!2302) lt!148195) (not ((_ is MissingVacant!2302) lt!148195)) (and (bvsge (index!11384 lt!148195) #b00000000000000000000000000000000) (bvslt (index!11384 lt!148195) (size!7494 a!3312)))) (or ((_ is Undefined!2302) lt!148195) (ite ((_ is Found!2302) lt!148195) (= (select (arr!7142 a!3312) (index!11382 lt!148195)) k0!2524) (ite ((_ is MissingZero!2302) lt!148195) (= (select (arr!7142 a!3312) (index!11381 lt!148195)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2302) lt!148195) (= (select (arr!7142 a!3312) (index!11384 lt!148195)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67175 (= lt!148195 e!188301)))

(declare-fun c!47989 () Bool)

(assert (=> d!67175 (= c!47989 (and ((_ is Intermediate!2302) lt!148196) (undefined!3114 lt!148196)))))

(assert (=> d!67175 (= lt!148196 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!67175 (validMask!0 mask!3809)))

(assert (=> d!67175 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!148195)))

(declare-fun b!297993 () Bool)

(declare-fun c!47990 () Bool)

(declare-fun lt!148194 () (_ BitVec 64))

(assert (=> b!297993 (= c!47990 (= lt!148194 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188300 () SeekEntryResult!2302)

(assert (=> b!297993 (= e!188300 e!188299)))

(declare-fun b!297994 () Bool)

(assert (=> b!297994 (= e!188301 e!188300)))

(assert (=> b!297994 (= lt!148194 (select (arr!7142 a!3312) (index!11383 lt!148196)))))

(declare-fun c!47991 () Bool)

(assert (=> b!297994 (= c!47991 (= lt!148194 k0!2524))))

(declare-fun b!297995 () Bool)

(assert (=> b!297995 (= e!188300 (Found!2302 (index!11383 lt!148196)))))

(declare-fun b!297996 () Bool)

(assert (=> b!297996 (= e!188299 (MissingZero!2302 (index!11383 lt!148196)))))

(assert (= (and d!67175 c!47989) b!297992))

(assert (= (and d!67175 (not c!47989)) b!297994))

(assert (= (and b!297994 c!47991) b!297995))

(assert (= (and b!297994 (not c!47991)) b!297993))

(assert (= (and b!297993 c!47990) b!297996))

(assert (= (and b!297993 (not c!47990)) b!297991))

(declare-fun m!310625 () Bool)

(assert (=> b!297991 m!310625))

(assert (=> d!67175 m!310559))

(declare-fun m!310627 () Bool)

(assert (=> d!67175 m!310627))

(assert (=> d!67175 m!310557))

(declare-fun m!310629 () Bool)

(assert (=> d!67175 m!310629))

(declare-fun m!310631 () Bool)

(assert (=> d!67175 m!310631))

(assert (=> d!67175 m!310557))

(declare-fun m!310633 () Bool)

(assert (=> d!67175 m!310633))

(declare-fun m!310635 () Bool)

(assert (=> b!297994 m!310635))

(assert (=> b!297904 d!67175))

(declare-fun d!67189 () Bool)

(assert (=> d!67189 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!297908 d!67189))

(declare-fun b!298097 () Bool)

(declare-fun e!188364 () SeekEntryResult!2302)

(assert (=> b!298097 (= e!188364 (Intermediate!2302 true lt!148141 #b00000000000000000000000000000000))))

(declare-fun b!298098 () Bool)

(declare-fun e!188360 () SeekEntryResult!2302)

(assert (=> b!298098 (= e!188360 (Intermediate!2302 false lt!148141 #b00000000000000000000000000000000))))

(declare-fun b!298099 () Bool)

(declare-fun lt!148236 () SeekEntryResult!2302)

(assert (=> b!298099 (and (bvsge (index!11383 lt!148236) #b00000000000000000000000000000000) (bvslt (index!11383 lt!148236) (size!7494 (array!15077 (store (arr!7142 a!3312) i!1256 k0!2524) (size!7494 a!3312)))))))

(declare-fun e!188362 () Bool)

(assert (=> b!298099 (= e!188362 (= (select (arr!7142 (array!15077 (store (arr!7142 a!3312) i!1256 k0!2524) (size!7494 a!3312))) (index!11383 lt!148236)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!298100 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298100 (= e!188360 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148141 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!15077 (store (arr!7142 a!3312) i!1256 k0!2524) (size!7494 a!3312)) mask!3809))))

(declare-fun d!67191 () Bool)

(declare-fun e!188363 () Bool)

(assert (=> d!67191 e!188363))

(declare-fun c!48026 () Bool)

(assert (=> d!67191 (= c!48026 (and ((_ is Intermediate!2302) lt!148236) (undefined!3114 lt!148236)))))

(assert (=> d!67191 (= lt!148236 e!188364)))

(declare-fun c!48025 () Bool)

(assert (=> d!67191 (= c!48025 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148235 () (_ BitVec 64))

(assert (=> d!67191 (= lt!148235 (select (arr!7142 (array!15077 (store (arr!7142 a!3312) i!1256 k0!2524) (size!7494 a!3312))) lt!148141))))

(assert (=> d!67191 (validMask!0 mask!3809)))

(assert (=> d!67191 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148141 k0!2524 (array!15077 (store (arr!7142 a!3312) i!1256 k0!2524) (size!7494 a!3312)) mask!3809) lt!148236)))

(declare-fun b!298101 () Bool)

(assert (=> b!298101 (and (bvsge (index!11383 lt!148236) #b00000000000000000000000000000000) (bvslt (index!11383 lt!148236) (size!7494 (array!15077 (store (arr!7142 a!3312) i!1256 k0!2524) (size!7494 a!3312)))))))

(declare-fun res!157221 () Bool)

(assert (=> b!298101 (= res!157221 (= (select (arr!7142 (array!15077 (store (arr!7142 a!3312) i!1256 k0!2524) (size!7494 a!3312))) (index!11383 lt!148236)) k0!2524))))

(assert (=> b!298101 (=> res!157221 e!188362)))

(declare-fun e!188361 () Bool)

(assert (=> b!298101 (= e!188361 e!188362)))

(declare-fun b!298102 () Bool)

(assert (=> b!298102 (= e!188364 e!188360)))

(declare-fun c!48024 () Bool)

(assert (=> b!298102 (= c!48024 (or (= lt!148235 k0!2524) (= (bvadd lt!148235 lt!148235) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298103 () Bool)

(assert (=> b!298103 (and (bvsge (index!11383 lt!148236) #b00000000000000000000000000000000) (bvslt (index!11383 lt!148236) (size!7494 (array!15077 (store (arr!7142 a!3312) i!1256 k0!2524) (size!7494 a!3312)))))))

(declare-fun res!157219 () Bool)

(assert (=> b!298103 (= res!157219 (= (select (arr!7142 (array!15077 (store (arr!7142 a!3312) i!1256 k0!2524) (size!7494 a!3312))) (index!11383 lt!148236)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!298103 (=> res!157219 e!188362)))

(declare-fun b!298104 () Bool)

(assert (=> b!298104 (= e!188363 (bvsge (x!29570 lt!148236) #b01111111111111111111111111111110))))

(declare-fun b!298105 () Bool)

(assert (=> b!298105 (= e!188363 e!188361)))

(declare-fun res!157220 () Bool)

(assert (=> b!298105 (= res!157220 (and ((_ is Intermediate!2302) lt!148236) (not (undefined!3114 lt!148236)) (bvslt (x!29570 lt!148236) #b01111111111111111111111111111110) (bvsge (x!29570 lt!148236) #b00000000000000000000000000000000) (bvsge (x!29570 lt!148236) #b00000000000000000000000000000000)))))

(assert (=> b!298105 (=> (not res!157220) (not e!188361))))

(assert (= (and d!67191 c!48025) b!298097))

(assert (= (and d!67191 (not c!48025)) b!298102))

(assert (= (and b!298102 c!48024) b!298098))

(assert (= (and b!298102 (not c!48024)) b!298100))

(assert (= (and d!67191 c!48026) b!298104))

(assert (= (and d!67191 (not c!48026)) b!298105))

(assert (= (and b!298105 res!157220) b!298101))

(assert (= (and b!298101 (not res!157221)) b!298103))

(assert (= (and b!298103 (not res!157219)) b!298099))

(declare-fun m!310665 () Bool)

(assert (=> b!298099 m!310665))

(assert (=> b!298101 m!310665))

(declare-fun m!310667 () Bool)

(assert (=> d!67191 m!310667))

(assert (=> d!67191 m!310559))

(declare-fun m!310669 () Bool)

(assert (=> b!298100 m!310669))

(assert (=> b!298100 m!310669))

(declare-fun m!310671 () Bool)

(assert (=> b!298100 m!310671))

(assert (=> b!298103 m!310665))

(assert (=> b!297906 d!67191))

(declare-fun b!298110 () Bool)

(declare-fun e!188372 () SeekEntryResult!2302)

(assert (=> b!298110 (= e!188372 (Intermediate!2302 true lt!148141 #b00000000000000000000000000000000))))

(declare-fun b!298111 () Bool)

(declare-fun e!188368 () SeekEntryResult!2302)

(assert (=> b!298111 (= e!188368 (Intermediate!2302 false lt!148141 #b00000000000000000000000000000000))))

(declare-fun b!298112 () Bool)

(declare-fun lt!148241 () SeekEntryResult!2302)

(assert (=> b!298112 (and (bvsge (index!11383 lt!148241) #b00000000000000000000000000000000) (bvslt (index!11383 lt!148241) (size!7494 a!3312)))))

(declare-fun e!188370 () Bool)

(assert (=> b!298112 (= e!188370 (= (select (arr!7142 a!3312) (index!11383 lt!148241)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!298113 () Bool)

(assert (=> b!298113 (= e!188368 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148141 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun d!67205 () Bool)

(declare-fun e!188371 () Bool)

(assert (=> d!67205 e!188371))

(declare-fun c!48030 () Bool)

(assert (=> d!67205 (= c!48030 (and ((_ is Intermediate!2302) lt!148241) (undefined!3114 lt!148241)))))

(assert (=> d!67205 (= lt!148241 e!188372)))

(declare-fun c!48029 () Bool)

(assert (=> d!67205 (= c!48029 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148240 () (_ BitVec 64))

(assert (=> d!67205 (= lt!148240 (select (arr!7142 a!3312) lt!148141))))

(assert (=> d!67205 (validMask!0 mask!3809)))

(assert (=> d!67205 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148141 k0!2524 a!3312 mask!3809) lt!148241)))

(declare-fun b!298114 () Bool)

(assert (=> b!298114 (and (bvsge (index!11383 lt!148241) #b00000000000000000000000000000000) (bvslt (index!11383 lt!148241) (size!7494 a!3312)))))

(declare-fun res!157226 () Bool)

(assert (=> b!298114 (= res!157226 (= (select (arr!7142 a!3312) (index!11383 lt!148241)) k0!2524))))

(assert (=> b!298114 (=> res!157226 e!188370)))

(declare-fun e!188369 () Bool)

(assert (=> b!298114 (= e!188369 e!188370)))

(declare-fun b!298115 () Bool)

(assert (=> b!298115 (= e!188372 e!188368)))

(declare-fun c!48028 () Bool)

(assert (=> b!298115 (= c!48028 (or (= lt!148240 k0!2524) (= (bvadd lt!148240 lt!148240) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298116 () Bool)

(assert (=> b!298116 (and (bvsge (index!11383 lt!148241) #b00000000000000000000000000000000) (bvslt (index!11383 lt!148241) (size!7494 a!3312)))))

(declare-fun res!157224 () Bool)

(assert (=> b!298116 (= res!157224 (= (select (arr!7142 a!3312) (index!11383 lt!148241)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!298116 (=> res!157224 e!188370)))

(declare-fun b!298117 () Bool)

(assert (=> b!298117 (= e!188371 (bvsge (x!29570 lt!148241) #b01111111111111111111111111111110))))

(declare-fun b!298118 () Bool)

(assert (=> b!298118 (= e!188371 e!188369)))

(declare-fun res!157225 () Bool)

(assert (=> b!298118 (= res!157225 (and ((_ is Intermediate!2302) lt!148241) (not (undefined!3114 lt!148241)) (bvslt (x!29570 lt!148241) #b01111111111111111111111111111110) (bvsge (x!29570 lt!148241) #b00000000000000000000000000000000) (bvsge (x!29570 lt!148241) #b00000000000000000000000000000000)))))

(assert (=> b!298118 (=> (not res!157225) (not e!188369))))

(assert (= (and d!67205 c!48029) b!298110))

(assert (= (and d!67205 (not c!48029)) b!298115))

(assert (= (and b!298115 c!48028) b!298111))

(assert (= (and b!298115 (not c!48028)) b!298113))

(assert (= (and d!67205 c!48030) b!298117))

(assert (= (and d!67205 (not c!48030)) b!298118))

(assert (= (and b!298118 res!157225) b!298114))

(assert (= (and b!298114 (not res!157226)) b!298116))

(assert (= (and b!298116 (not res!157224)) b!298112))

(declare-fun m!310683 () Bool)

(assert (=> b!298112 m!310683))

(assert (=> b!298114 m!310683))

(declare-fun m!310685 () Bool)

(assert (=> d!67205 m!310685))

(assert (=> d!67205 m!310559))

(assert (=> b!298113 m!310669))

(assert (=> b!298113 m!310669))

(declare-fun m!310687 () Bool)

(assert (=> b!298113 m!310687))

(assert (=> b!298116 m!310683))

(assert (=> b!297906 d!67205))

(declare-fun d!67209 () Bool)

(declare-fun lt!148247 () (_ BitVec 32))

(declare-fun lt!148246 () (_ BitVec 32))

(assert (=> d!67209 (= lt!148247 (bvmul (bvxor lt!148246 (bvlshr lt!148246 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67209 (= lt!148246 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67209 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!157227 (let ((h!5326 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29577 (bvmul (bvxor h!5326 (bvlshr h!5326 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29577 (bvlshr x!29577 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!157227 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!157227 #b00000000000000000000000000000000))))))

(assert (=> d!67209 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!148247 (bvlshr lt!148247 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!297906 d!67209))

(declare-fun d!67211 () Bool)

(assert (=> d!67211 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29462 d!67211))

(declare-fun d!67219 () Bool)

(assert (=> d!67219 (= (array_inv!5096 a!3312) (bvsge (size!7494 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29462 d!67219))

(check-sat (not d!67205) (not b!298100) (not b!298113) (not d!67191) (not b!297932) (not b!297991) (not b!297941) (not d!67175) (not b!297942) (not bm!25767))
(check-sat)
