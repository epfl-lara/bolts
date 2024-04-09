; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44164 () Bool)

(assert start!44164)

(declare-fun b!486052 () Bool)

(declare-fun res!289732 () Bool)

(declare-fun e!286104 () Bool)

(assert (=> b!486052 (=> (not res!289732) (not e!286104))))

(declare-datatypes ((array!31459 0))(
  ( (array!31460 (arr!15123 (Array (_ BitVec 32) (_ BitVec 64))) (size!15487 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31459)

(assert (=> b!486052 (= res!289732 (and (bvsle #b00000000000000000000000000000000 (size!15487 a!3235)) (bvslt (size!15487 a!3235) #b01111111111111111111111111111111)))))

(declare-fun b!486053 () Bool)

(declare-fun res!289735 () Bool)

(assert (=> b!486053 (=> (not res!289735) (not e!286104))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31459 (_ BitVec 32)) Bool)

(assert (=> b!486053 (= res!289735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486054 () Bool)

(declare-fun res!289734 () Bool)

(declare-fun e!286103 () Bool)

(assert (=> b!486054 (=> (not res!289734) (not e!286103))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486054 (= res!289734 (validKeyInArray!0 k!2280))))

(declare-fun res!289733 () Bool)

(assert (=> start!44164 (=> (not res!289733) (not e!286103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44164 (= res!289733 (validMask!0 mask!3524))))

(assert (=> start!44164 e!286103))

(assert (=> start!44164 true))

(declare-fun array_inv!10897 (array!31459) Bool)

(assert (=> start!44164 (array_inv!10897 a!3235)))

(declare-fun b!486055 () Bool)

(declare-fun res!289739 () Bool)

(assert (=> b!486055 (=> (not res!289739) (not e!286103))))

(declare-fun arrayContainsKey!0 (array!31459 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486055 (= res!289739 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486056 () Bool)

(declare-fun res!289736 () Bool)

(assert (=> b!486056 (=> (not res!289736) (not e!286103))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!486056 (= res!289736 (and (= (size!15487 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15487 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15487 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486057 () Bool)

(assert (=> b!486057 (= e!286103 e!286104)))

(declare-fun res!289738 () Bool)

(assert (=> b!486057 (=> (not res!289738) (not e!286104))))

(declare-datatypes ((SeekEntryResult!3597 0))(
  ( (MissingZero!3597 (index!16567 (_ BitVec 32))) (Found!3597 (index!16568 (_ BitVec 32))) (Intermediate!3597 (undefined!4409 Bool) (index!16569 (_ BitVec 32)) (x!45732 (_ BitVec 32))) (Undefined!3597) (MissingVacant!3597 (index!16570 (_ BitVec 32))) )
))
(declare-fun lt!219647 () SeekEntryResult!3597)

(assert (=> b!486057 (= res!289738 (or (= lt!219647 (MissingZero!3597 i!1204)) (= lt!219647 (MissingVacant!3597 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31459 (_ BitVec 32)) SeekEntryResult!3597)

(assert (=> b!486057 (= lt!219647 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!486058 () Bool)

(declare-datatypes ((List!9334 0))(
  ( (Nil!9331) (Cons!9330 (h!10186 (_ BitVec 64)) (t!15570 List!9334)) )
))
(declare-fun noDuplicate!208 (List!9334) Bool)

(assert (=> b!486058 (= e!286104 (not (noDuplicate!208 Nil!9331)))))

(declare-fun b!486059 () Bool)

(declare-fun res!289737 () Bool)

(assert (=> b!486059 (=> (not res!289737) (not e!286103))))

(assert (=> b!486059 (= res!289737 (validKeyInArray!0 (select (arr!15123 a!3235) j!176)))))

(assert (= (and start!44164 res!289733) b!486056))

(assert (= (and b!486056 res!289736) b!486059))

(assert (= (and b!486059 res!289737) b!486054))

(assert (= (and b!486054 res!289734) b!486055))

(assert (= (and b!486055 res!289739) b!486057))

(assert (= (and b!486057 res!289738) b!486053))

(assert (= (and b!486053 res!289735) b!486052))

(assert (= (and b!486052 res!289732) b!486058))

(declare-fun m!466087 () Bool)

(assert (=> b!486054 m!466087))

(declare-fun m!466089 () Bool)

(assert (=> b!486053 m!466089))

(declare-fun m!466091 () Bool)

(assert (=> start!44164 m!466091))

(declare-fun m!466093 () Bool)

(assert (=> start!44164 m!466093))

(declare-fun m!466095 () Bool)

(assert (=> b!486057 m!466095))

(declare-fun m!466097 () Bool)

(assert (=> b!486059 m!466097))

(assert (=> b!486059 m!466097))

(declare-fun m!466099 () Bool)

(assert (=> b!486059 m!466099))

(declare-fun m!466101 () Bool)

(assert (=> b!486055 m!466101))

(declare-fun m!466103 () Bool)

(assert (=> b!486058 m!466103))

(push 1)

(assert (not b!486059))

(assert (not b!486055))

(assert (not b!486057))

(assert (not b!486054))

(assert (not start!44164))

(assert (not b!486058))

(assert (not b!486053))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!77379 () Bool)

(assert (=> d!77379 (= (validKeyInArray!0 (select (arr!15123 a!3235) j!176)) (and (not (= (select (arr!15123 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15123 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!486059 d!77379))

(declare-fun d!77381 () Bool)

(declare-fun res!289796 () Bool)

(declare-fun e!286134 () Bool)

(assert (=> d!77381 (=> res!289796 e!286134)))

(assert (=> d!77381 (= res!289796 (is-Nil!9331 Nil!9331))))

(assert (=> d!77381 (= (noDuplicate!208 Nil!9331) e!286134)))

(declare-fun b!486120 () Bool)

(declare-fun e!286135 () Bool)

(assert (=> b!486120 (= e!286134 e!286135)))

(declare-fun res!289797 () Bool)

(assert (=> b!486120 (=> (not res!289797) (not e!286135))))

(declare-fun contains!2695 (List!9334 (_ BitVec 64)) Bool)

(assert (=> b!486120 (= res!289797 (not (contains!2695 (t!15570 Nil!9331) (h!10186 Nil!9331))))))

(declare-fun b!486121 () Bool)

(assert (=> b!486121 (= e!286135 (noDuplicate!208 (t!15570 Nil!9331)))))

(assert (= (and d!77381 (not res!289796)) b!486120))

(assert (= (and b!486120 res!289797) b!486121))

(declare-fun m!466141 () Bool)

(assert (=> b!486120 m!466141))

(declare-fun m!466143 () Bool)

(assert (=> b!486121 m!466143))

(assert (=> b!486058 d!77381))

(declare-fun b!486148 () Bool)

(declare-fun e!286157 () Bool)

(declare-fun e!286158 () Bool)

(assert (=> b!486148 (= e!286157 e!286158)))

(declare-fun c!58435 () Bool)

(assert (=> b!486148 (= c!58435 (validKeyInArray!0 (select (arr!15123 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!486149 () Bool)

(declare-fun e!286159 () Bool)

(declare-fun call!31270 () Bool)

(assert (=> b!486149 (= e!286159 call!31270)))

(declare-fun b!486150 () Bool)

(assert (=> b!486150 (= e!286158 e!286159)))

(declare-fun lt!219675 () (_ BitVec 64))

(assert (=> b!486150 (= lt!219675 (select (arr!15123 a!3235) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!14164 0))(
  ( (Unit!14165) )
))
(declare-fun lt!219676 () Unit!14164)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31459 (_ BitVec 64) (_ BitVec 32)) Unit!14164)

(assert (=> b!486150 (= lt!219676 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!219675 #b00000000000000000000000000000000))))

(assert (=> b!486150 (arrayContainsKey!0 a!3235 lt!219675 #b00000000000000000000000000000000)))

(declare-fun lt!219677 () Unit!14164)

(assert (=> b!486150 (= lt!219677 lt!219676)))

(declare-fun res!289815 () Bool)

(assert (=> b!486150 (= res!289815 (= (seekEntryOrOpen!0 (select (arr!15123 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3597 #b00000000000000000000000000000000)))))

(assert (=> b!486150 (=> (not res!289815) (not e!286159))))

(declare-fun b!486151 () Bool)

(assert (=> b!486151 (= e!286158 call!31270)))

(declare-fun d!77383 () Bool)

(declare-fun res!289814 () Bool)

(assert (=> d!77383 (=> res!289814 e!286157)))

(assert (=> d!77383 (= res!289814 (bvsge #b00000000000000000000000000000000 (size!15487 a!3235)))))

(assert (=> d!77383 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!286157)))

(declare-fun bm!31267 () Bool)

(assert (=> bm!31267 (= call!31270 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!77383 (not res!289814)) b!486148))

(assert (= (and b!486148 c!58435) b!486150))

(assert (= (and b!486148 (not c!58435)) b!486151))

(assert (= (and b!486150 res!289815) b!486149))

(assert (= (or b!486149 b!486151) bm!31267))

(declare-fun m!466159 () Bool)

(assert (=> b!486148 m!466159))

(assert (=> b!486148 m!466159))

(declare-fun m!466161 () Bool)

(assert (=> b!486148 m!466161))

(assert (=> b!486150 m!466159))

(declare-fun m!466163 () Bool)

(assert (=> b!486150 m!466163))

(declare-fun m!466165 () Bool)

(assert (=> b!486150 m!466165))

(assert (=> b!486150 m!466159))

(declare-fun m!466167 () Bool)

(assert (=> b!486150 m!466167))

(declare-fun m!466169 () Bool)

(assert (=> bm!31267 m!466169))

(assert (=> b!486053 d!77383))

(declare-fun d!77391 () Bool)

(declare-fun res!289822 () Bool)

(declare-fun e!286167 () Bool)

(assert (=> d!77391 (=> res!289822 e!286167)))

(assert (=> d!77391 (= res!289822 (= (select (arr!15123 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!77391 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!286167)))

(declare-fun b!486160 () Bool)

(declare-fun e!286168 () Bool)

(assert (=> b!486160 (= e!286167 e!286168)))

(declare-fun res!289823 () Bool)

(assert (=> b!486160 (=> (not res!289823) (not e!286168))))

(assert (=> b!486160 (= res!289823 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15487 a!3235)))))

(declare-fun b!486161 () Bool)

(assert (=> b!486161 (= e!286168 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!77391 (not res!289822)) b!486160))

(assert (= (and b!486160 res!289823) b!486161))

(assert (=> d!77391 m!466159))

(declare-fun m!466183 () Bool)

(assert (=> b!486161 m!466183))

(assert (=> b!486055 d!77391))

(declare-fun d!77395 () Bool)

(assert (=> d!77395 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!486054 d!77395))

(declare-fun d!77397 () Bool)

(assert (=> d!77397 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44164 d!77397))

(declare-fun d!77409 () Bool)

(assert (=> d!77409 (= (array_inv!10897 a!3235) (bvsge (size!15487 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44164 d!77409))

(declare-fun b!486222 () Bool)

(declare-fun e!286207 () SeekEntryResult!3597)

(declare-fun lt!219707 () SeekEntryResult!3597)

(assert (=> b!486222 (= e!286207 (MissingZero!3597 (index!16569 lt!219707)))))

(declare-fun d!77411 () Bool)

(declare-fun lt!219705 () SeekEntryResult!3597)

(assert (=> d!77411 (and (or (is-Undefined!3597 lt!219705) (not (is-Found!3597 lt!219705)) (and (bvsge (index!16568 lt!219705) #b00000000000000000000000000000000) (bvslt (index!16568 lt!219705) (size!15487 a!3235)))) (or (is-Undefined!3597 lt!219705) (is-Found!3597 lt!219705) (not (is-MissingZero!3597 lt!219705)) (and (bvsge (index!16567 lt!219705) #b00000000000000000000000000000000) (bvslt (index!16567 lt!219705) (size!15487 a!3235)))) (or (is-Undefined!3597 lt!219705) (is-Found!3597 lt!219705) (is-MissingZero!3597 lt!219705) (not (is-MissingVacant!3597 lt!219705)) (and (bvsge (index!16570 lt!219705) #b00000000000000000000000000000000) (bvslt (index!16570 lt!219705) (size!15487 a!3235)))) (or (is-Undefined!3597 lt!219705) (ite (is-Found!3597 lt!219705) (= (select (arr!15123 a!3235) (index!16568 lt!219705)) k!2280) (ite (is-MissingZero!3597 lt!219705) (= (select (arr!15123 a!3235) (index!16567 lt!219705)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3597 lt!219705) (= (select (arr!15123 a!3235) (index!16570 lt!219705)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!286206 () SeekEntryResult!3597)

(assert (=> d!77411 (= lt!219705 e!286206)))

(declare-fun c!58461 () Bool)

(assert (=> d!77411 (= c!58461 (and (is-Intermediate!3597 lt!219707) (undefined!4409 lt!219707)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31459 (_ BitVec 32)) SeekEntryResult!3597)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!77411 (= lt!219707 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!77411 (validMask!0 mask!3524)))

(assert (=> d!77411 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!219705)))

(declare-fun b!486223 () Bool)

(assert (=> b!486223 (= e!286206 Undefined!3597)))

(declare-fun b!486224 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31459 (_ BitVec 32)) SeekEntryResult!3597)

(assert (=> b!486224 (= e!286207 (seekKeyOrZeroReturnVacant!0 (x!45732 lt!219707) (index!16569 lt!219707) (index!16569 lt!219707) k!2280 a!3235 mask!3524))))

(declare-fun b!486225 () Bool)

(declare-fun e!286205 () SeekEntryResult!3597)

(assert (=> b!486225 (= e!286206 e!286205)))

(declare-fun lt!219706 () (_ BitVec 64))

(assert (=> b!486225 (= lt!219706 (select (arr!15123 a!3235) (index!16569 lt!219707)))))

(declare-fun c!58462 () Bool)

(assert (=> b!486225 (= c!58462 (= lt!219706 k!2280))))

(declare-fun b!486226 () Bool)

(declare-fun c!58463 () Bool)

(assert (=> b!486226 (= c!58463 (= lt!219706 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!486226 (= e!286205 e!286207)))

(declare-fun b!486227 () Bool)

(assert (=> b!486227 (= e!286205 (Found!3597 (index!16569 lt!219707)))))

(assert (= (and d!77411 c!58461) b!486223))

(assert (= (and d!77411 (not c!58461)) b!486225))

(assert (= (and b!486225 c!58462) b!486227))

(assert (= (and b!486225 (not c!58462)) b!486226))

(assert (= (and b!486226 c!58463) b!486222))

(assert (= (and b!486226 (not c!58463)) b!486224))

(declare-fun m!466219 () Bool)

(assert (=> d!77411 m!466219))

(declare-fun m!466221 () Bool)

(assert (=> d!77411 m!466221))

(assert (=> d!77411 m!466091))

