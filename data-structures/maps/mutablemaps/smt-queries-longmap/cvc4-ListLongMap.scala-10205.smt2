; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120260 () Bool)

(assert start!120260)

(declare-fun b!1399315 () Bool)

(declare-fun res!938178 () Bool)

(declare-fun e!792235 () Bool)

(assert (=> b!1399315 (=> (not res!938178) (not e!792235))))

(declare-datatypes ((array!95650 0))(
  ( (array!95651 (arr!46173 (Array (_ BitVec 32) (_ BitVec 64))) (size!46724 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95650)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399315 (= res!938178 (validKeyInArray!0 (select (arr!46173 a!2901) i!1037)))))

(declare-fun b!1399317 () Bool)

(declare-fun res!938174 () Bool)

(assert (=> b!1399317 (=> (not res!938174) (not e!792235))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1399317 (= res!938174 (validKeyInArray!0 (select (arr!46173 a!2901) j!112)))))

(declare-fun b!1399318 () Bool)

(declare-fun res!938180 () Bool)

(assert (=> b!1399318 (=> (not res!938180) (not e!792235))))

(declare-datatypes ((List!32872 0))(
  ( (Nil!32869) (Cons!32868 (h!34113 (_ BitVec 64)) (t!47573 List!32872)) )
))
(declare-fun arrayNoDuplicates!0 (array!95650 (_ BitVec 32) List!32872) Bool)

(assert (=> b!1399318 (= res!938180 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32869))))

(declare-fun b!1399319 () Bool)

(declare-fun e!792231 () Bool)

(assert (=> b!1399319 (= e!792235 (not e!792231))))

(declare-fun res!938181 () Bool)

(assert (=> b!1399319 (=> res!938181 e!792231)))

(declare-datatypes ((SeekEntryResult!10512 0))(
  ( (MissingZero!10512 (index!44421 (_ BitVec 32))) (Found!10512 (index!44422 (_ BitVec 32))) (Intermediate!10512 (undefined!11324 Bool) (index!44423 (_ BitVec 32)) (x!126066 (_ BitVec 32))) (Undefined!10512) (MissingVacant!10512 (index!44424 (_ BitVec 32))) )
))
(declare-fun lt!615472 () SeekEntryResult!10512)

(assert (=> b!1399319 (= res!938181 (or (not (is-Intermediate!10512 lt!615472)) (undefined!11324 lt!615472)))))

(declare-fun e!792236 () Bool)

(assert (=> b!1399319 e!792236))

(declare-fun res!938177 () Bool)

(assert (=> b!1399319 (=> (not res!938177) (not e!792236))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95650 (_ BitVec 32)) Bool)

(assert (=> b!1399319 (= res!938177 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46978 0))(
  ( (Unit!46979) )
))
(declare-fun lt!615470 () Unit!46978)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95650 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46978)

(assert (=> b!1399319 (= lt!615470 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!615471 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95650 (_ BitVec 32)) SeekEntryResult!10512)

(assert (=> b!1399319 (= lt!615472 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615471 (select (arr!46173 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399319 (= lt!615471 (toIndex!0 (select (arr!46173 a!2901) j!112) mask!2840))))

(declare-fun b!1399320 () Bool)

(declare-fun res!938175 () Bool)

(assert (=> b!1399320 (=> (not res!938175) (not e!792235))))

(assert (=> b!1399320 (= res!938175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun lt!615475 () (_ BitVec 64))

(declare-fun b!1399321 () Bool)

(declare-fun lt!615474 () array!95650)

(declare-fun e!792232 () Bool)

(declare-fun lt!615469 () SeekEntryResult!10512)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95650 (_ BitVec 32)) SeekEntryResult!10512)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95650 (_ BitVec 32)) SeekEntryResult!10512)

(assert (=> b!1399321 (= e!792232 (= (seekEntryOrOpen!0 lt!615475 lt!615474 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126066 lt!615469) (index!44423 lt!615469) (index!44423 lt!615469) (select (arr!46173 a!2901) j!112) lt!615474 mask!2840)))))

(declare-fun b!1399322 () Bool)

(declare-fun e!792234 () Bool)

(assert (=> b!1399322 (= e!792231 e!792234)))

(declare-fun res!938173 () Bool)

(assert (=> b!1399322 (=> res!938173 e!792234)))

(assert (=> b!1399322 (= res!938173 (or (= lt!615472 lt!615469) (not (is-Intermediate!10512 lt!615469))))))

(assert (=> b!1399322 (= lt!615469 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615475 mask!2840) lt!615475 lt!615474 mask!2840))))

(assert (=> b!1399322 (= lt!615475 (select (store (arr!46173 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1399322 (= lt!615474 (array!95651 (store (arr!46173 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46724 a!2901)))))

(declare-fun res!938176 () Bool)

(assert (=> start!120260 (=> (not res!938176) (not e!792235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120260 (= res!938176 (validMask!0 mask!2840))))

(assert (=> start!120260 e!792235))

(assert (=> start!120260 true))

(declare-fun array_inv!35118 (array!95650) Bool)

(assert (=> start!120260 (array_inv!35118 a!2901)))

(declare-fun b!1399316 () Bool)

(declare-fun res!938172 () Bool)

(assert (=> b!1399316 (=> (not res!938172) (not e!792235))))

(assert (=> b!1399316 (= res!938172 (and (= (size!46724 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46724 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46724 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1399323 () Bool)

(assert (=> b!1399323 (= e!792236 (= (seekEntryOrOpen!0 (select (arr!46173 a!2901) j!112) a!2901 mask!2840) (Found!10512 j!112)))))

(declare-fun b!1399324 () Bool)

(assert (=> b!1399324 (= e!792234 (or (bvslt mask!2840 #b00000000000000000000000000000000) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> b!1399324 e!792232))

(declare-fun res!938179 () Bool)

(assert (=> b!1399324 (=> (not res!938179) (not e!792232))))

(assert (=> b!1399324 (= res!938179 (and (not (undefined!11324 lt!615469)) (= (index!44423 lt!615469) i!1037) (bvslt (x!126066 lt!615469) (x!126066 lt!615472)) (= (select (store (arr!46173 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44423 lt!615469)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!615473 () Unit!46978)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95650 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46978)

(assert (=> b!1399324 (= lt!615473 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615471 (x!126066 lt!615472) (index!44423 lt!615472) (x!126066 lt!615469) (index!44423 lt!615469) (undefined!11324 lt!615469) mask!2840))))

(assert (= (and start!120260 res!938176) b!1399316))

(assert (= (and b!1399316 res!938172) b!1399315))

(assert (= (and b!1399315 res!938178) b!1399317))

(assert (= (and b!1399317 res!938174) b!1399320))

(assert (= (and b!1399320 res!938175) b!1399318))

(assert (= (and b!1399318 res!938180) b!1399319))

(assert (= (and b!1399319 res!938177) b!1399323))

(assert (= (and b!1399319 (not res!938181)) b!1399322))

(assert (= (and b!1399322 (not res!938173)) b!1399324))

(assert (= (and b!1399324 res!938179) b!1399321))

(declare-fun m!1286693 () Bool)

(assert (=> b!1399323 m!1286693))

(assert (=> b!1399323 m!1286693))

(declare-fun m!1286695 () Bool)

(assert (=> b!1399323 m!1286695))

(assert (=> b!1399319 m!1286693))

(declare-fun m!1286697 () Bool)

(assert (=> b!1399319 m!1286697))

(assert (=> b!1399319 m!1286693))

(declare-fun m!1286699 () Bool)

(assert (=> b!1399319 m!1286699))

(assert (=> b!1399319 m!1286693))

(declare-fun m!1286701 () Bool)

(assert (=> b!1399319 m!1286701))

(declare-fun m!1286703 () Bool)

(assert (=> b!1399319 m!1286703))

(declare-fun m!1286705 () Bool)

(assert (=> b!1399322 m!1286705))

(assert (=> b!1399322 m!1286705))

(declare-fun m!1286707 () Bool)

(assert (=> b!1399322 m!1286707))

(declare-fun m!1286709 () Bool)

(assert (=> b!1399322 m!1286709))

(declare-fun m!1286711 () Bool)

(assert (=> b!1399322 m!1286711))

(assert (=> b!1399317 m!1286693))

(assert (=> b!1399317 m!1286693))

(declare-fun m!1286713 () Bool)

(assert (=> b!1399317 m!1286713))

(assert (=> b!1399324 m!1286709))

(declare-fun m!1286715 () Bool)

(assert (=> b!1399324 m!1286715))

(declare-fun m!1286717 () Bool)

(assert (=> b!1399324 m!1286717))

(declare-fun m!1286719 () Bool)

(assert (=> b!1399321 m!1286719))

(assert (=> b!1399321 m!1286693))

(assert (=> b!1399321 m!1286693))

(declare-fun m!1286721 () Bool)

(assert (=> b!1399321 m!1286721))

(declare-fun m!1286723 () Bool)

(assert (=> start!120260 m!1286723))

(declare-fun m!1286725 () Bool)

(assert (=> start!120260 m!1286725))

(declare-fun m!1286727 () Bool)

(assert (=> b!1399318 m!1286727))

(declare-fun m!1286729 () Bool)

(assert (=> b!1399315 m!1286729))

(assert (=> b!1399315 m!1286729))

(declare-fun m!1286731 () Bool)

(assert (=> b!1399315 m!1286731))

(declare-fun m!1286733 () Bool)

(assert (=> b!1399320 m!1286733))

(push 1)

(assert (not b!1399315))

(assert (not b!1399318))

(assert (not b!1399320))

(assert (not b!1399321))

(assert (not b!1399323))

(assert (not b!1399317))

(assert (not b!1399322))

(assert (not b!1399319))

(assert (not b!1399324))

(assert (not start!120260))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1399431 () Bool)

(declare-fun e!792302 () SeekEntryResult!10512)

(declare-fun lt!615524 () SeekEntryResult!10512)

(assert (=> b!1399431 (= e!792302 (MissingZero!10512 (index!44423 lt!615524)))))

(declare-fun d!150991 () Bool)

(declare-fun lt!615522 () SeekEntryResult!10512)

(assert (=> d!150991 (and (or (is-Undefined!10512 lt!615522) (not (is-Found!10512 lt!615522)) (and (bvsge (index!44422 lt!615522) #b00000000000000000000000000000000) (bvslt (index!44422 lt!615522) (size!46724 a!2901)))) (or (is-Undefined!10512 lt!615522) (is-Found!10512 lt!615522) (not (is-MissingZero!10512 lt!615522)) (and (bvsge (index!44421 lt!615522) #b00000000000000000000000000000000) (bvslt (index!44421 lt!615522) (size!46724 a!2901)))) (or (is-Undefined!10512 lt!615522) (is-Found!10512 lt!615522) (is-MissingZero!10512 lt!615522) (not (is-MissingVacant!10512 lt!615522)) (and (bvsge (index!44424 lt!615522) #b00000000000000000000000000000000) (bvslt (index!44424 lt!615522) (size!46724 a!2901)))) (or (is-Undefined!10512 lt!615522) (ite (is-Found!10512 lt!615522) (= (select (arr!46173 a!2901) (index!44422 lt!615522)) (select (arr!46173 a!2901) j!112)) (ite (is-MissingZero!10512 lt!615522) (= (select (arr!46173 a!2901) (index!44421 lt!615522)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10512 lt!615522) (= (select (arr!46173 a!2901) (index!44424 lt!615522)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!792301 () SeekEntryResult!10512)

(assert (=> d!150991 (= lt!615522 e!792301)))

(declare-fun c!130072 () Bool)

(assert (=> d!150991 (= c!130072 (and (is-Intermediate!10512 lt!615524) (undefined!11324 lt!615524)))))

(assert (=> d!150991 (= lt!615524 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46173 a!2901) j!112) mask!2840) (select (arr!46173 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150991 (validMask!0 mask!2840)))

(assert (=> d!150991 (= (seekEntryOrOpen!0 (select (arr!46173 a!2901) j!112) a!2901 mask!2840) lt!615522)))

(declare-fun b!1399432 () Bool)

(assert (=> b!1399432 (= e!792301 Undefined!10512)))

(declare-fun b!1399433 () Bool)

(declare-fun e!792300 () SeekEntryResult!10512)

(assert (=> b!1399433 (= e!792301 e!792300)))

(declare-fun lt!615523 () (_ BitVec 64))

(assert (=> b!1399433 (= lt!615523 (select (arr!46173 a!2901) (index!44423 lt!615524)))))

(declare-fun c!130073 () Bool)

(assert (=> b!1399433 (= c!130073 (= lt!615523 (select (arr!46173 a!2901) j!112)))))

(declare-fun b!1399434 () Bool)

(declare-fun c!130074 () Bool)

(assert (=> b!1399434 (= c!130074 (= lt!615523 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1399434 (= e!792300 e!792302)))

(declare-fun b!1399435 () Bool)

(assert (=> b!1399435 (= e!792300 (Found!10512 (index!44423 lt!615524)))))

(declare-fun b!1399436 () Bool)

(assert (=> b!1399436 (= e!792302 (seekKeyOrZeroReturnVacant!0 (x!126066 lt!615524) (index!44423 lt!615524) (index!44423 lt!615524) (select (arr!46173 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and d!150991 c!130072) b!1399432))

(assert (= (and d!150991 (not c!130072)) b!1399433))

(assert (= (and b!1399433 c!130073) b!1399435))

(assert (= (and b!1399433 (not c!130073)) b!1399434))

(assert (= (and b!1399434 c!130074) b!1399431))

(assert (= (and b!1399434 (not c!130074)) b!1399436))

(assert (=> d!150991 m!1286693))

(assert (=> d!150991 m!1286697))

(assert (=> d!150991 m!1286723))

(declare-fun m!1286791 () Bool)

(assert (=> d!150991 m!1286791))

(declare-fun m!1286793 () Bool)

(assert (=> d!150991 m!1286793))

(assert (=> d!150991 m!1286697))

(assert (=> d!150991 m!1286693))

(declare-fun m!1286795 () Bool)

(assert (=> d!150991 m!1286795))

(declare-fun m!1286797 () Bool)

(assert (=> d!150991 m!1286797))

(declare-fun m!1286799 () Bool)

(assert (=> b!1399433 m!1286799))

(assert (=> b!1399436 m!1286693))

(declare-fun m!1286801 () Bool)

(assert (=> b!1399436 m!1286801))

(assert (=> b!1399323 d!150991))

(declare-fun b!1399456 () Bool)

(declare-fun e!792316 () Bool)

(declare-fun call!66895 () Bool)

(assert (=> b!1399456 (= e!792316 call!66895)))

(declare-fun d!151001 () Bool)

(declare-fun res!938219 () Bool)

(declare-fun e!792318 () Bool)

(assert (=> d!151001 (=> res!938219 e!792318)))

(assert (=> d!151001 (= res!938219 (bvsge #b00000000000000000000000000000000 (size!46724 a!2901)))))

(assert (=> d!151001 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32869) e!792318)))

(declare-fun b!1399457 () Bool)

(declare-fun e!792317 () Bool)

(assert (=> b!1399457 (= e!792318 e!792317)))

(declare-fun res!938220 () Bool)

(assert (=> b!1399457 (=> (not res!938220) (not e!792317))))

(declare-fun e!792319 () Bool)

(assert (=> b!1399457 (= res!938220 (not e!792319))))

(declare-fun res!938218 () Bool)

(assert (=> b!1399457 (=> (not res!938218) (not e!792319))))

(assert (=> b!1399457 (= res!938218 (validKeyInArray!0 (select (arr!46173 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1399458 () Bool)

(assert (=> b!1399458 (= e!792316 call!66895)))

(declare-fun b!1399459 () Bool)

(declare-fun contains!9800 (List!32872 (_ BitVec 64)) Bool)

(assert (=> b!1399459 (= e!792319 (contains!9800 Nil!32869 (select (arr!46173 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66892 () Bool)

(declare-fun c!130080 () Bool)

(assert (=> bm!66892 (= call!66895 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130080 (Cons!32868 (select (arr!46173 a!2901) #b00000000000000000000000000000000) Nil!32869) Nil!32869)))))

(declare-fun b!1399460 () Bool)

(assert (=> b!1399460 (= e!792317 e!792316)))

(assert (=> b!1399460 (= c!130080 (validKeyInArray!0 (select (arr!46173 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!151001 (not res!938219)) b!1399457))

(assert (= (and b!1399457 res!938218) b!1399459))

(assert (= (and b!1399457 res!938220) b!1399460))

(assert (= (and b!1399460 c!130080) b!1399456))

(assert (= (and b!1399460 (not c!130080)) b!1399458))

(assert (= (or b!1399456 b!1399458) bm!66892))

(declare-fun m!1286813 () Bool)

(assert (=> b!1399457 m!1286813))

(assert (=> b!1399457 m!1286813))

(declare-fun m!1286815 () Bool)

(assert (=> b!1399457 m!1286815))

(assert (=> b!1399459 m!1286813))

(assert (=> b!1399459 m!1286813))

(declare-fun m!1286817 () Bool)

(assert (=> b!1399459 m!1286817))

(assert (=> bm!66892 m!1286813))

(declare-fun m!1286819 () Bool)

(assert (=> bm!66892 m!1286819))

(assert (=> b!1399460 m!1286813))

(assert (=> b!1399460 m!1286813))

(assert (=> b!1399460 m!1286815))

(assert (=> b!1399318 d!151001))

(declare-fun b!1399530 () Bool)

(declare-fun lt!615562 () SeekEntryResult!10512)

(assert (=> b!1399530 (and (bvsge (index!44423 lt!615562) #b00000000000000000000000000000000) (bvslt (index!44423 lt!615562) (size!46724 lt!615474)))))

(declare-fun res!938238 () Bool)

(assert (=> b!1399530 (= res!938238 (= (select (arr!46173 lt!615474) (index!44423 lt!615562)) lt!615475))))

(declare-fun e!792357 () Bool)

(assert (=> b!1399530 (=> res!938238 e!792357)))

(declare-fun e!792360 () Bool)

(assert (=> b!1399530 (= e!792360 e!792357)))

(declare-fun b!1399531 () Bool)

(declare-fun e!792358 () SeekEntryResult!10512)

(assert (=> b!1399531 (= e!792358 (Intermediate!10512 false (toIndex!0 lt!615475 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1399532 () Bool)

(declare-fun e!792359 () Bool)

(assert (=> b!1399532 (= e!792359 (bvsge (x!126066 lt!615562) #b01111111111111111111111111111110))))

(declare-fun b!1399533 () Bool)

(assert (=> b!1399533 (= e!792359 e!792360)))

(declare-fun res!938239 () Bool)

(assert (=> b!1399533 (= res!938239 (and (is-Intermediate!10512 lt!615562) (not (undefined!11324 lt!615562)) (bvslt (x!126066 lt!615562) #b01111111111111111111111111111110) (bvsge (x!126066 lt!615562) #b00000000000000000000000000000000) (bvsge (x!126066 lt!615562) #b00000000000000000000000000000000)))))

(assert (=> b!1399533 (=> (not res!938239) (not e!792360))))

(declare-fun b!1399534 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399534 (= e!792358 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!615475 mask!2840) #b00000000000000000000000000000000 mask!2840) lt!615475 lt!615474 mask!2840))))

(declare-fun b!1399535 () Bool)

(declare-fun e!792361 () SeekEntryResult!10512)

(assert (=> b!1399535 (= e!792361 e!792358)))

(declare-fun c!130108 () Bool)

(declare-fun lt!615563 () (_ BitVec 64))

(assert (=> b!1399535 (= c!130108 (or (= lt!615563 lt!615475) (= (bvadd lt!615563 lt!615563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!151009 () Bool)

(assert (=> d!151009 e!792359))

(declare-fun c!130110 () Bool)

(assert (=> d!151009 (= c!130110 (and (is-Intermediate!10512 lt!615562) (undefined!11324 lt!615562)))))

(assert (=> d!151009 (= lt!615562 e!792361)))

(declare-fun c!130109 () Bool)

(assert (=> d!151009 (= c!130109 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151009 (= lt!615563 (select (arr!46173 lt!615474) (toIndex!0 lt!615475 mask!2840)))))

(assert (=> d!151009 (validMask!0 mask!2840)))

(assert (=> d!151009 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615475 mask!2840) lt!615475 lt!615474 mask!2840) lt!615562)))

(declare-fun b!1399536 () Bool)

(assert (=> b!1399536 (and (bvsge (index!44423 lt!615562) #b00000000000000000000000000000000) (bvslt (index!44423 lt!615562) (size!46724 lt!615474)))))

(declare-fun res!938237 () Bool)

(assert (=> b!1399536 (= res!938237 (= (select (arr!46173 lt!615474) (index!44423 lt!615562)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1399536 (=> res!938237 e!792357)))

(declare-fun b!1399537 () Bool)

(assert (=> b!1399537 (and (bvsge (index!44423 lt!615562) #b00000000000000000000000000000000) (bvslt (index!44423 lt!615562) (size!46724 lt!615474)))))

(assert (=> b!1399537 (= e!792357 (= (select (arr!46173 lt!615474) (index!44423 lt!615562)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1399538 () Bool)

(assert (=> b!1399538 (= e!792361 (Intermediate!10512 true (toIndex!0 lt!615475 mask!2840) #b00000000000000000000000000000000))))

(assert (= (and d!151009 c!130109) b!1399538))

(assert (= (and d!151009 (not c!130109)) b!1399535))

(assert (= (and b!1399535 c!130108) b!1399531))

(assert (= (and b!1399535 (not c!130108)) b!1399534))

(assert (= (and d!151009 c!130110) b!1399532))

(assert (= (and d!151009 (not c!130110)) b!1399533))

(assert (= (and b!1399533 res!938239) b!1399530))

(assert (= (and b!1399530 (not res!938238)) b!1399536))

(assert (= (and b!1399536 (not res!938237)) b!1399537))

(assert (=> d!151009 m!1286705))

(declare-fun m!1286851 () Bool)

(assert (=> d!151009 m!1286851))

(assert (=> d!151009 m!1286723))

(declare-fun m!1286853 () Bool)

(assert (=> b!1399537 m!1286853))

(assert (=> b!1399534 m!1286705))

(declare-fun m!1286855 () Bool)

(assert (=> b!1399534 m!1286855))

(assert (=> b!1399534 m!1286855))

(declare-fun m!1286857 () Bool)

(assert (=> b!1399534 m!1286857))

(assert (=> b!1399530 m!1286853))

(assert (=> b!1399536 m!1286853))

(assert (=> b!1399322 d!151009))

(declare-fun d!151019 () Bool)

(declare-fun lt!615569 () (_ BitVec 32))

(declare-fun lt!615568 () (_ BitVec 32))

(assert (=> d!151019 (= lt!615569 (bvmul (bvxor lt!615568 (bvlshr lt!615568 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151019 (= lt!615568 ((_ extract 31 0) (bvand (bvxor lt!615475 (bvlshr lt!615475 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151019 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!938240 (let ((h!34116 ((_ extract 31 0) (bvand (bvxor lt!615475 (bvlshr lt!615475 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!126074 (bvmul (bvxor h!34116 (bvlshr h!34116 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!126074 (bvlshr x!126074 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!938240 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!938240 #b00000000000000000000000000000000))))))

(assert (=> d!151019 (= (toIndex!0 lt!615475 mask!2840) (bvand (bvxor lt!615569 (bvlshr lt!615569 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1399322 d!151019))

(declare-fun d!151021 () Bool)

(assert (=> d!151021 (= (validKeyInArray!0 (select (arr!46173 a!2901) j!112)) (and (not (= (select (arr!46173 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46173 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1399317 d!151021))

(declare-fun b!1399586 () Bool)

(declare-fun e!792391 () Bool)

(declare-fun call!66901 () Bool)

(assert (=> b!1399586 (= e!792391 call!66901)))

(declare-fun b!1399587 () Bool)

(declare-fun e!792393 () Bool)

(declare-fun e!792392 () Bool)

(assert (=> b!1399587 (= e!792393 e!792392)))

(declare-fun c!130128 () Bool)

(assert (=> b!1399587 (= c!130128 (validKeyInArray!0 (select (arr!46173 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1399588 () Bool)

(assert (=> b!1399588 (= e!792392 e!792391)))

(declare-fun lt!615602 () (_ BitVec 64))

(assert (=> b!1399588 (= lt!615602 (select (arr!46173 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!615603 () Unit!46978)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95650 (_ BitVec 64) (_ BitVec 32)) Unit!46978)

(assert (=> b!1399588 (= lt!615603 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!615602 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!95650 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1399588 (arrayContainsKey!0 a!2901 lt!615602 #b00000000000000000000000000000000)))

(declare-fun lt!615601 () Unit!46978)

(assert (=> b!1399588 (= lt!615601 lt!615603)))

(declare-fun res!938255 () Bool)

(assert (=> b!1399588 (= res!938255 (= (seekEntryOrOpen!0 (select (arr!46173 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10512 #b00000000000000000000000000000000)))))

(assert (=> b!1399588 (=> (not res!938255) (not e!792391))))

(declare-fun d!151023 () Bool)

(declare-fun res!938254 () Bool)

(assert (=> d!151023 (=> res!938254 e!792393)))

(assert (=> d!151023 (= res!938254 (bvsge #b00000000000000000000000000000000 (size!46724 a!2901)))))

(assert (=> d!151023 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!792393)))

(declare-fun bm!66898 () Bool)

(assert (=> bm!66898 (= call!66901 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1399589 () Bool)

(assert (=> b!1399589 (= e!792392 call!66901)))

(assert (= (and d!151023 (not res!938254)) b!1399587))

(assert (= (and b!1399587 c!130128) b!1399588))

(assert (= (and b!1399587 (not c!130128)) b!1399589))

(assert (= (and b!1399588 res!938255) b!1399586))

(assert (= (or b!1399586 b!1399589) bm!66898))

(assert (=> b!1399587 m!1286813))

(assert (=> b!1399587 m!1286813))

(assert (=> b!1399587 m!1286815))

(assert (=> b!1399588 m!1286813))

(declare-fun m!1286887 () Bool)

(assert (=> b!1399588 m!1286887))

(declare-fun m!1286889 () Bool)

(assert (=> b!1399588 m!1286889))

(assert (=> b!1399588 m!1286813))

(declare-fun m!1286891 () Bool)

(assert (=> b!1399588 m!1286891))

(declare-fun m!1286893 () Bool)

(assert (=> bm!66898 m!1286893))

(assert (=> b!1399320 d!151023))

(declare-fun d!151037 () Bool)

(assert (=> d!151037 (= (validKeyInArray!0 (select (arr!46173 a!2901) i!1037)) (and (not (= (select (arr!46173 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46173 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1399315 d!151037))

(declare-fun d!151039 () Bool)

(assert (=> d!151039 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!120260 d!151039))

(declare-fun d!151047 () Bool)

(assert (=> d!151047 (= (array_inv!35118 a!2901) (bvsge (size!46724 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!120260 d!151047))

(declare-fun b!1399615 () Bool)

(declare-fun e!792414 () SeekEntryResult!10512)

(declare-fun lt!615612 () SeekEntryResult!10512)

(assert (=> b!1399615 (= e!792414 (MissingZero!10512 (index!44423 lt!615612)))))

(declare-fun d!151049 () Bool)

(declare-fun lt!615610 () SeekEntryResult!10512)

(assert (=> d!151049 (and (or (is-Undefined!10512 lt!615610) (not (is-Found!10512 lt!615610)) (and (bvsge (index!44422 lt!615610) #b00000000000000000000000000000000) (bvslt (index!44422 lt!615610) (size!46724 lt!615474)))) (or (is-Undefined!10512 lt!615610) (is-Found!10512 lt!615610) (not (is-MissingZero!10512 lt!615610)) (and (bvsge (index!44421 lt!615610) #b00000000000000000000000000000000) (bvslt (index!44421 lt!615610) (size!46724 lt!615474)))) (or (is-Undefined!10512 lt!615610) (is-Found!10512 lt!615610) (is-MissingZero!10512 lt!615610) (not (is-MissingVacant!10512 lt!615610)) (and (bvsge (index!44424 lt!615610) #b00000000000000000000000000000000) (bvslt (index!44424 lt!615610) (size!46724 lt!615474)))) (or (is-Undefined!10512 lt!615610) (ite (is-Found!10512 lt!615610) (= (select (arr!46173 lt!615474) (index!44422 lt!615610)) lt!615475) (ite (is-MissingZero!10512 lt!615610) (= (select (arr!46173 lt!615474) (index!44421 lt!615610)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10512 lt!615610) (= (select (arr!46173 lt!615474) (index!44424 lt!615610)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!792413 () SeekEntryResult!10512)

(assert (=> d!151049 (= lt!615610 e!792413)))

(declare-fun c!130136 () Bool)

(assert (=> d!151049 (= c!130136 (and (is-Intermediate!10512 lt!615612) (undefined!11324 lt!615612)))))

(assert (=> d!151049 (= lt!615612 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615475 mask!2840) lt!615475 lt!615474 mask!2840))))

(assert (=> d!151049 (validMask!0 mask!2840)))

(assert (=> d!151049 (= (seekEntryOrOpen!0 lt!615475 lt!615474 mask!2840) lt!615610)))

(declare-fun b!1399616 () Bool)

(assert (=> b!1399616 (= e!792413 Undefined!10512)))

(declare-fun b!1399617 () Bool)

(declare-fun e!792412 () SeekEntryResult!10512)

(assert (=> b!1399617 (= e!792413 e!792412)))

(declare-fun lt!615611 () (_ BitVec 64))

(assert (=> b!1399617 (= lt!615611 (select (arr!46173 lt!615474) (index!44423 lt!615612)))))

(declare-fun c!130137 () Bool)

(assert (=> b!1399617 (= c!130137 (= lt!615611 lt!615475))))

(declare-fun b!1399618 () Bool)

(declare-fun c!130138 () Bool)

(assert (=> b!1399618 (= c!130138 (= lt!615611 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1399618 (= e!792412 e!792414)))

(declare-fun b!1399619 () Bool)

(assert (=> b!1399619 (= e!792412 (Found!10512 (index!44423 lt!615612)))))

(declare-fun b!1399620 () Bool)

(assert (=> b!1399620 (= e!792414 (seekKeyOrZeroReturnVacant!0 (x!126066 lt!615612) (index!44423 lt!615612) (index!44423 lt!615612) lt!615475 lt!615474 mask!2840))))

(assert (= (and d!151049 c!130136) b!1399616))

(assert (= (and d!151049 (not c!130136)) b!1399617))

(assert (= (and b!1399617 c!130137) b!1399619))

(assert (= (and b!1399617 (not c!130137)) b!1399618))

(assert (= (and b!1399618 c!130138) b!1399615))

(assert (= (and b!1399618 (not c!130138)) b!1399620))

(assert (=> d!151049 m!1286705))

(assert (=> d!151049 m!1286723))

(declare-fun m!1286919 () Bool)

(assert (=> d!151049 m!1286919))

(declare-fun m!1286921 () Bool)

(assert (=> d!151049 m!1286921))

