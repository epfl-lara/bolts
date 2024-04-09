; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131230 () Bool)

(assert start!131230)

(declare-fun b!1539044 () Bool)

(declare-fun res!1056163 () Bool)

(declare-fun e!856111 () Bool)

(assert (=> b!1539044 (=> (not res!1056163) (not e!856111))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102222 0))(
  ( (array!102223 (arr!49321 (Array (_ BitVec 32) (_ BitVec 64))) (size!49872 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102222)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13470 0))(
  ( (MissingZero!13470 (index!56274 (_ BitVec 32))) (Found!13470 (index!56275 (_ BitVec 32))) (Intermediate!13470 (undefined!14282 Bool) (index!56276 (_ BitVec 32)) (x!138006 (_ BitVec 32))) (Undefined!13470) (MissingVacant!13470 (index!56277 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102222 (_ BitVec 32)) SeekEntryResult!13470)

(assert (=> b!1539044 (= res!1056163 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49321 a!2792) j!64) a!2792 mask!2480) (Found!13470 j!64)))))

(declare-fun b!1539045 () Bool)

(declare-fun res!1056162 () Bool)

(assert (=> b!1539045 (=> (not res!1056162) (not e!856111))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539045 (= res!1056162 (validKeyInArray!0 (select (arr!49321 a!2792) i!951)))))

(declare-fun b!1539046 () Bool)

(declare-fun res!1056166 () Bool)

(assert (=> b!1539046 (=> (not res!1056166) (not e!856111))))

(assert (=> b!1539046 (= res!1056166 (not (= (select (arr!49321 a!2792) index!463) (select (arr!49321 a!2792) j!64))))))

(declare-fun b!1539047 () Bool)

(assert (=> b!1539047 (= e!856111 (or (bvslt (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110)))))

(declare-fun lt!664903 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539047 (= lt!664903 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1539048 () Bool)

(declare-fun res!1056164 () Bool)

(assert (=> b!1539048 (=> (not res!1056164) (not e!856111))))

(assert (=> b!1539048 (= res!1056164 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49872 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49872 a!2792)) (= (select (arr!49321 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1539049 () Bool)

(declare-fun res!1056160 () Bool)

(assert (=> b!1539049 (=> (not res!1056160) (not e!856111))))

(declare-datatypes ((List!35975 0))(
  ( (Nil!35972) (Cons!35971 (h!37417 (_ BitVec 64)) (t!50676 List!35975)) )
))
(declare-fun arrayNoDuplicates!0 (array!102222 (_ BitVec 32) List!35975) Bool)

(assert (=> b!1539049 (= res!1056160 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35972))))

(declare-fun b!1539050 () Bool)

(declare-fun res!1056167 () Bool)

(assert (=> b!1539050 (=> (not res!1056167) (not e!856111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102222 (_ BitVec 32)) Bool)

(assert (=> b!1539050 (= res!1056167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1539051 () Bool)

(declare-fun res!1056168 () Bool)

(assert (=> b!1539051 (=> (not res!1056168) (not e!856111))))

(assert (=> b!1539051 (= res!1056168 (validKeyInArray!0 (select (arr!49321 a!2792) j!64)))))

(declare-fun b!1539052 () Bool)

(declare-fun res!1056161 () Bool)

(assert (=> b!1539052 (=> (not res!1056161) (not e!856111))))

(assert (=> b!1539052 (= res!1056161 (and (= (size!49872 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49872 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49872 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1056165 () Bool)

(assert (=> start!131230 (=> (not res!1056165) (not e!856111))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131230 (= res!1056165 (validMask!0 mask!2480))))

(assert (=> start!131230 e!856111))

(assert (=> start!131230 true))

(declare-fun array_inv!38266 (array!102222) Bool)

(assert (=> start!131230 (array_inv!38266 a!2792)))

(assert (= (and start!131230 res!1056165) b!1539052))

(assert (= (and b!1539052 res!1056161) b!1539045))

(assert (= (and b!1539045 res!1056162) b!1539051))

(assert (= (and b!1539051 res!1056168) b!1539050))

(assert (= (and b!1539050 res!1056167) b!1539049))

(assert (= (and b!1539049 res!1056160) b!1539048))

(assert (= (and b!1539048 res!1056164) b!1539044))

(assert (= (and b!1539044 res!1056163) b!1539046))

(assert (= (and b!1539046 res!1056166) b!1539047))

(declare-fun m!1421445 () Bool)

(assert (=> b!1539049 m!1421445))

(declare-fun m!1421447 () Bool)

(assert (=> b!1539044 m!1421447))

(assert (=> b!1539044 m!1421447))

(declare-fun m!1421449 () Bool)

(assert (=> b!1539044 m!1421449))

(declare-fun m!1421451 () Bool)

(assert (=> b!1539046 m!1421451))

(assert (=> b!1539046 m!1421447))

(declare-fun m!1421453 () Bool)

(assert (=> b!1539050 m!1421453))

(declare-fun m!1421455 () Bool)

(assert (=> b!1539045 m!1421455))

(assert (=> b!1539045 m!1421455))

(declare-fun m!1421457 () Bool)

(assert (=> b!1539045 m!1421457))

(assert (=> b!1539051 m!1421447))

(assert (=> b!1539051 m!1421447))

(declare-fun m!1421459 () Bool)

(assert (=> b!1539051 m!1421459))

(declare-fun m!1421461 () Bool)

(assert (=> b!1539047 m!1421461))

(declare-fun m!1421463 () Bool)

(assert (=> b!1539048 m!1421463))

(declare-fun m!1421465 () Bool)

(assert (=> start!131230 m!1421465))

(declare-fun m!1421467 () Bool)

(assert (=> start!131230 m!1421467))

(push 1)

(assert (not start!131230))

(assert (not b!1539050))

(assert (not b!1539044))

(assert (not b!1539047))

(assert (not b!1539051))

(assert (not b!1539045))

(assert (not b!1539049))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!160299 () Bool)

(declare-fun res!1056238 () Bool)

(declare-fun e!856156 () Bool)

(assert (=> d!160299 (=> res!1056238 e!856156)))

(assert (=> d!160299 (= res!1056238 (bvsge #b00000000000000000000000000000000 (size!49872 a!2792)))))

(assert (=> d!160299 (= (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35972) e!856156)))

(declare-fun b!1539150 () Bool)

(declare-fun e!856157 () Bool)

(declare-fun contains!10025 (List!35975 (_ BitVec 64)) Bool)

(assert (=> b!1539150 (= e!856157 (contains!10025 Nil!35972 (select (arr!49321 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1539151 () Bool)

(declare-fun e!856154 () Bool)

(declare-fun call!68601 () Bool)

(assert (=> b!1539151 (= e!856154 call!68601)))

(declare-fun b!1539152 () Bool)

(declare-fun e!856155 () Bool)

(assert (=> b!1539152 (= e!856155 e!856154)))

(declare-fun c!141017 () Bool)

(assert (=> b!1539152 (= c!141017 (validKeyInArray!0 (select (arr!49321 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1539153 () Bool)

(assert (=> b!1539153 (= e!856154 call!68601)))

(declare-fun b!1539154 () Bool)

(assert (=> b!1539154 (= e!856156 e!856155)))

(declare-fun res!1056239 () Bool)

(assert (=> b!1539154 (=> (not res!1056239) (not e!856155))))

(assert (=> b!1539154 (= res!1056239 (not e!856157))))

(declare-fun res!1056240 () Bool)

(assert (=> b!1539154 (=> (not res!1056240) (not e!856157))))

(assert (=> b!1539154 (= res!1056240 (validKeyInArray!0 (select (arr!49321 a!2792) #b00000000000000000000000000000000)))))

(declare-fun bm!68598 () Bool)

(assert (=> bm!68598 (= call!68601 (arrayNoDuplicates!0 a!2792 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!141017 (Cons!35971 (select (arr!49321 a!2792) #b00000000000000000000000000000000) Nil!35972) Nil!35972)))))

(assert (= (and d!160299 (not res!1056238)) b!1539154))

(assert (= (and b!1539154 res!1056240) b!1539150))

(assert (= (and b!1539154 res!1056239) b!1539152))

(assert (= (and b!1539152 c!141017) b!1539151))

(assert (= (and b!1539152 (not c!141017)) b!1539153))

(assert (= (or b!1539151 b!1539153) bm!68598))

(declare-fun m!1421533 () Bool)

(assert (=> b!1539150 m!1421533))

(assert (=> b!1539150 m!1421533))

(declare-fun m!1421535 () Bool)

(assert (=> b!1539150 m!1421535))

(assert (=> b!1539152 m!1421533))

(assert (=> b!1539152 m!1421533))

(declare-fun m!1421537 () Bool)

(assert (=> b!1539152 m!1421537))

(assert (=> b!1539154 m!1421533))

(assert (=> b!1539154 m!1421533))

(assert (=> b!1539154 m!1421537))

(assert (=> bm!68598 m!1421533))

(declare-fun m!1421539 () Bool)

(assert (=> bm!68598 m!1421539))

(assert (=> b!1539049 d!160299))

(declare-fun d!160307 () Bool)

(declare-fun res!1056250 () Bool)

(declare-fun e!856179 () Bool)

(assert (=> d!160307 (=> res!1056250 e!856179)))

(assert (=> d!160307 (= res!1056250 (bvsge #b00000000000000000000000000000000 (size!49872 a!2792)))))

(assert (=> d!160307 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480) e!856179)))

(declare-fun b!1539189 () Bool)

(declare-fun e!856180 () Bool)

(assert (=> b!1539189 (= e!856179 e!856180)))

(declare-fun c!141031 () Bool)

(assert (=> b!1539189 (= c!141031 (validKeyInArray!0 (select (arr!49321 a!2792) #b00000000000000000000000000000000)))))

(declare-fun bm!68603 () Bool)

(declare-fun call!68606 () Bool)

(assert (=> bm!68603 (= call!68606 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2792 mask!2480))))

(declare-fun b!1539190 () Bool)

(assert (=> b!1539190 (= e!856180 call!68606)))

(declare-fun b!1539191 () Bool)

(declare-fun e!856181 () Bool)

(assert (=> b!1539191 (= e!856180 e!856181)))

(declare-fun lt!664940 () (_ BitVec 64))

(assert (=> b!1539191 (= lt!664940 (select (arr!49321 a!2792) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51354 0))(
  ( (Unit!51355) )
))
(declare-fun lt!664941 () Unit!51354)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!102222 (_ BitVec 64) (_ BitVec 32)) Unit!51354)

(assert (=> b!1539191 (= lt!664941 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!664940 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!102222 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1539191 (arrayContainsKey!0 a!2792 lt!664940 #b00000000000000000000000000000000)))

(declare-fun lt!664942 () Unit!51354)

(assert (=> b!1539191 (= lt!664942 lt!664941)))

(declare-fun res!1056249 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!102222 (_ BitVec 32)) SeekEntryResult!13470)

(assert (=> b!1539191 (= res!1056249 (= (seekEntryOrOpen!0 (select (arr!49321 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13470 #b00000000000000000000000000000000)))))

(assert (=> b!1539191 (=> (not res!1056249) (not e!856181))))

(declare-fun b!1539192 () Bool)

(assert (=> b!1539192 (= e!856181 call!68606)))

(assert (= (and d!160307 (not res!1056250)) b!1539189))

(assert (= (and b!1539189 c!141031) b!1539191))

(assert (= (and b!1539189 (not c!141031)) b!1539190))

(assert (= (and b!1539191 res!1056249) b!1539192))

(assert (= (or b!1539192 b!1539190) bm!68603))

(assert (=> b!1539189 m!1421533))

(assert (=> b!1539189 m!1421533))

(assert (=> b!1539189 m!1421537))

(declare-fun m!1421549 () Bool)

(assert (=> bm!68603 m!1421549))

(assert (=> b!1539191 m!1421533))

(declare-fun m!1421551 () Bool)

(assert (=> b!1539191 m!1421551))

(declare-fun m!1421553 () Bool)

(assert (=> b!1539191 m!1421553))

(assert (=> b!1539191 m!1421533))

(declare-fun m!1421555 () Bool)

(assert (=> b!1539191 m!1421555))

(assert (=> b!1539050 d!160307))

(declare-fun d!160315 () Bool)

(assert (=> d!160315 (= (validKeyInArray!0 (select (arr!49321 a!2792) i!951)) (and (not (= (select (arr!49321 a!2792) i!951) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49321 a!2792) i!951) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1539045 d!160315))

(declare-fun b!1539224 () Bool)

(declare-fun e!856204 () SeekEntryResult!13470)

(assert (=> b!1539224 (= e!856204 Undefined!13470)))

(declare-fun d!160317 () Bool)

(declare-fun lt!664950 () SeekEntryResult!13470)

(assert (=> d!160317 (and (or (is-Undefined!13470 lt!664950) (not (is-Found!13470 lt!664950)) (and (bvsge (index!56275 lt!664950) #b00000000000000000000000000000000) (bvslt (index!56275 lt!664950) (size!49872 a!2792)))) (or (is-Undefined!13470 lt!664950) (is-Found!13470 lt!664950) (not (is-MissingVacant!13470 lt!664950)) (not (= (index!56277 lt!664950) vacantIndex!5)) (and (bvsge (index!56277 lt!664950) #b00000000000000000000000000000000) (bvslt (index!56277 lt!664950) (size!49872 a!2792)))) (or (is-Undefined!13470 lt!664950) (ite (is-Found!13470 lt!664950) (= (select (arr!49321 a!2792) (index!56275 lt!664950)) (select (arr!49321 a!2792) j!64)) (and (is-MissingVacant!13470 lt!664950) (= (index!56277 lt!664950) vacantIndex!5) (= (select (arr!49321 a!2792) (index!56277 lt!664950)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!160317 (= lt!664950 e!856204)))

(declare-fun c!141044 () Bool)

(assert (=> d!160317 (= c!141044 (bvsge x!510 #b01111111111111111111111111111110))))

(declare-fun lt!664951 () (_ BitVec 64))

(assert (=> d!160317 (= lt!664951 (select (arr!49321 a!2792) index!463))))

(assert (=> d!160317 (validMask!0 mask!2480)))

(assert (=> d!160317 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49321 a!2792) j!64) a!2792 mask!2480) lt!664950)))

(declare-fun b!1539225 () Bool)

(declare-fun e!856203 () SeekEntryResult!13470)

(assert (=> b!1539225 (= e!856204 e!856203)))

(declare-fun c!141043 () Bool)

(assert (=> b!1539225 (= c!141043 (= lt!664951 (select (arr!49321 a!2792) j!64)))))

(declare-fun b!1539226 () Bool)

(assert (=> b!1539226 (= e!856203 (Found!13470 index!463))))

(declare-fun b!1539227 () Bool)

(declare-fun e!856205 () SeekEntryResult!13470)

(assert (=> b!1539227 (= e!856205 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 (select (arr!49321 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1539228 () Bool)

(declare-fun c!141042 () Bool)

(assert (=> b!1539228 (= c!141042 (= lt!664951 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1539228 (= e!856203 e!856205)))

(declare-fun b!1539229 () Bool)

(assert (=> b!1539229 (= e!856205 (MissingVacant!13470 vacantIndex!5))))

