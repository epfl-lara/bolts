; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131122 () Bool)

(assert start!131122)

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102147 0))(
  ( (array!102148 (arr!49285 (Array (_ BitVec 32) (_ BitVec 64))) (size!49836 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102147)

(declare-fun e!855791 () Bool)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun b!1537926 () Bool)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13434 0))(
  ( (MissingZero!13434 (index!56130 (_ BitVec 32))) (Found!13434 (index!56131 (_ BitVec 32))) (Intermediate!13434 (undefined!14246 Bool) (index!56132 (_ BitVec 32)) (x!137871 (_ BitVec 32))) (Undefined!13434) (MissingVacant!13434 (index!56133 (_ BitVec 32))) )
))
(declare-fun lt!664744 () SeekEntryResult!13434)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102147 (_ BitVec 32)) SeekEntryResult!13434)

(assert (=> b!1537926 (= e!855791 (not (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (store (arr!49285 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102148 (store (arr!49285 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49836 a!2792)) mask!2480) lt!664744)))))

(declare-fun res!1055156 () Bool)

(declare-fun e!855790 () Bool)

(assert (=> start!131122 (=> (not res!1055156) (not e!855790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131122 (= res!1055156 (validMask!0 mask!2480))))

(assert (=> start!131122 e!855790))

(assert (=> start!131122 true))

(declare-fun array_inv!38230 (array!102147) Bool)

(assert (=> start!131122 (array_inv!38230 a!2792)))

(declare-fun b!1537927 () Bool)

(declare-fun res!1055153 () Bool)

(assert (=> b!1537927 (=> (not res!1055153) (not e!855790))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537927 (= res!1055153 (validKeyInArray!0 (select (arr!49285 a!2792) i!951)))))

(declare-fun b!1537928 () Bool)

(declare-fun res!1055155 () Bool)

(assert (=> b!1537928 (=> (not res!1055155) (not e!855790))))

(assert (=> b!1537928 (= res!1055155 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49836 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49836 a!2792)) (= (select (arr!49285 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537929 () Bool)

(declare-fun res!1055157 () Bool)

(assert (=> b!1537929 (=> (not res!1055157) (not e!855790))))

(assert (=> b!1537929 (= res!1055157 (validKeyInArray!0 (select (arr!49285 a!2792) j!64)))))

(declare-fun b!1537930 () Bool)

(declare-fun res!1055152 () Bool)

(assert (=> b!1537930 (=> (not res!1055152) (not e!855790))))

(declare-datatypes ((List!35939 0))(
  ( (Nil!35936) (Cons!35935 (h!37381 (_ BitVec 64)) (t!50640 List!35939)) )
))
(declare-fun arrayNoDuplicates!0 (array!102147 (_ BitVec 32) List!35939) Bool)

(assert (=> b!1537930 (= res!1055152 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35936))))

(declare-fun b!1537931 () Bool)

(declare-fun res!1055151 () Bool)

(assert (=> b!1537931 (=> (not res!1055151) (not e!855790))))

(assert (=> b!1537931 (= res!1055151 (and (= (size!49836 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49836 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49836 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537932 () Bool)

(assert (=> b!1537932 (= e!855790 e!855791)))

(declare-fun res!1055154 () Bool)

(assert (=> b!1537932 (=> (not res!1055154) (not e!855791))))

(assert (=> b!1537932 (= res!1055154 (and (= lt!664744 (Found!13434 j!64)) (= (select (arr!49285 a!2792) index!463) (select (arr!49285 a!2792) j!64))))))

(assert (=> b!1537932 (= lt!664744 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49285 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537933 () Bool)

(declare-fun res!1055150 () Bool)

(assert (=> b!1537933 (=> (not res!1055150) (not e!855790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102147 (_ BitVec 32)) Bool)

(assert (=> b!1537933 (= res!1055150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!131122 res!1055156) b!1537931))

(assert (= (and b!1537931 res!1055151) b!1537927))

(assert (= (and b!1537927 res!1055153) b!1537929))

(assert (= (and b!1537929 res!1055157) b!1537933))

(assert (= (and b!1537933 res!1055150) b!1537930))

(assert (= (and b!1537930 res!1055152) b!1537928))

(assert (= (and b!1537928 res!1055155) b!1537932))

(assert (= (and b!1537932 res!1055154) b!1537926))

(declare-fun m!1420473 () Bool)

(assert (=> b!1537929 m!1420473))

(assert (=> b!1537929 m!1420473))

(declare-fun m!1420475 () Bool)

(assert (=> b!1537929 m!1420475))

(declare-fun m!1420477 () Bool)

(assert (=> b!1537933 m!1420477))

(declare-fun m!1420479 () Bool)

(assert (=> start!131122 m!1420479))

(declare-fun m!1420481 () Bool)

(assert (=> start!131122 m!1420481))

(declare-fun m!1420483 () Bool)

(assert (=> b!1537927 m!1420483))

(assert (=> b!1537927 m!1420483))

(declare-fun m!1420485 () Bool)

(assert (=> b!1537927 m!1420485))

(declare-fun m!1420487 () Bool)

(assert (=> b!1537932 m!1420487))

(assert (=> b!1537932 m!1420473))

(assert (=> b!1537932 m!1420473))

(declare-fun m!1420489 () Bool)

(assert (=> b!1537932 m!1420489))

(declare-fun m!1420491 () Bool)

(assert (=> b!1537928 m!1420491))

(declare-fun m!1420493 () Bool)

(assert (=> b!1537930 m!1420493))

(declare-fun m!1420495 () Bool)

(assert (=> b!1537926 m!1420495))

(declare-fun m!1420497 () Bool)

(assert (=> b!1537926 m!1420497))

(assert (=> b!1537926 m!1420497))

(declare-fun m!1420499 () Bool)

(assert (=> b!1537926 m!1420499))

(push 1)

(assert (not b!1537930))

(assert (not start!131122))

(assert (not b!1537933))

(assert (not b!1537926))

(assert (not b!1537932))

(assert (not b!1537929))

(assert (not b!1537927))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1538057 () Bool)

(declare-fun e!855857 () SeekEntryResult!13434)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538057 (= e!855857 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 (select (arr!49285 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1538059 () Bool)

(assert (=> b!1538059 (= e!855857 (MissingVacant!13434 vacantIndex!5))))

(declare-fun b!1538060 () Bool)

(declare-fun e!855856 () SeekEntryResult!13434)

(assert (=> b!1538060 (= e!855856 (Found!13434 index!463))))

(declare-fun b!1538061 () Bool)

(declare-fun e!855855 () SeekEntryResult!13434)

(assert (=> b!1538061 (= e!855855 Undefined!13434)))

(declare-fun b!1538062 () Bool)

(assert (=> b!1538062 (= e!855855 e!855856)))

(declare-fun lt!664776 () (_ BitVec 64))

(declare-fun c!140981 () Bool)

(assert (=> b!1538062 (= c!140981 (= lt!664776 (select (arr!49285 a!2792) j!64)))))

(declare-fun d!160229 () Bool)

(declare-fun lt!664777 () SeekEntryResult!13434)

(assert (=> d!160229 (and (or (is-Undefined!13434 lt!664777) (not (is-Found!13434 lt!664777)) (and (bvsge (index!56131 lt!664777) #b00000000000000000000000000000000) (bvslt (index!56131 lt!664777) (size!49836 a!2792)))) (or (is-Undefined!13434 lt!664777) (is-Found!13434 lt!664777) (not (is-MissingVacant!13434 lt!664777)) (not (= (index!56133 lt!664777) vacantIndex!5)) (and (bvsge (index!56133 lt!664777) #b00000000000000000000000000000000) (bvslt (index!56133 lt!664777) (size!49836 a!2792)))) (or (is-Undefined!13434 lt!664777) (ite (is-Found!13434 lt!664777) (= (select (arr!49285 a!2792) (index!56131 lt!664777)) (select (arr!49285 a!2792) j!64)) (and (is-MissingVacant!13434 lt!664777) (= (index!56133 lt!664777) vacantIndex!5) (= (select (arr!49285 a!2792) (index!56133 lt!664777)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!160229 (= lt!664777 e!855855)))

(declare-fun c!140980 () Bool)

(assert (=> d!160229 (= c!140980 (bvsge x!510 #b01111111111111111111111111111110))))

(assert (=> d!160229 (= lt!664776 (select (arr!49285 a!2792) index!463))))

(assert (=> d!160229 (validMask!0 mask!2480)))

(assert (=> d!160229 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49285 a!2792) j!64) a!2792 mask!2480) lt!664777)))

(declare-fun b!1538058 () Bool)

(declare-fun c!140979 () Bool)

(assert (=> b!1538058 (= c!140979 (= lt!664776 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1538058 (= e!855856 e!855857)))

(assert (= (and d!160229 c!140980) b!1538061))

(assert (= (and d!160229 (not c!140980)) b!1538062))

(assert (= (and b!1538062 c!140981) b!1538060))

(assert (= (and b!1538062 (not c!140981)) b!1538058))

(assert (= (and b!1538058 c!140979) b!1538059))

(assert (= (and b!1538058 (not c!140979)) b!1538057))

(declare-fun m!1420589 () Bool)

(assert (=> b!1538057 m!1420589))

(assert (=> b!1538057 m!1420589))

(assert (=> b!1538057 m!1420473))

(declare-fun m!1420591 () Bool)

(assert (=> b!1538057 m!1420591))

(declare-fun m!1420593 () Bool)

(assert (=> d!160229 m!1420593))

(declare-fun m!1420595 () Bool)

(assert (=> d!160229 m!1420595))

(assert (=> d!160229 m!1420487))

(assert (=> d!160229 m!1420479))

(assert (=> b!1537932 d!160229))

(declare-fun d!160239 () Bool)

(assert (=> d!160239 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!131122 d!160239))

(declare-fun d!160243 () Bool)

(assert (=> d!160243 (= (array_inv!38230 a!2792) (bvsge (size!49836 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!131122 d!160243))

(declare-fun e!855863 () SeekEntryResult!13434)

(declare-fun b!1538069 () Bool)

(assert (=> b!1538069 (= e!855863 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 (select (store (arr!49285 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102148 (store (arr!49285 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49836 a!2792)) mask!2480))))

(declare-fun b!1538071 () Bool)

(assert (=> b!1538071 (= e!855863 (MissingVacant!13434 vacantIndex!5))))

(declare-fun b!1538072 () Bool)

(declare-fun e!855862 () SeekEntryResult!13434)

(assert (=> b!1538072 (= e!855862 (Found!13434 index!463))))

(declare-fun b!1538073 () Bool)

(declare-fun e!855861 () SeekEntryResult!13434)

(assert (=> b!1538073 (= e!855861 Undefined!13434)))

(declare-fun b!1538074 () Bool)

(assert (=> b!1538074 (= e!855861 e!855862)))

(declare-fun c!140987 () Bool)

(declare-fun lt!664780 () (_ BitVec 64))

(assert (=> b!1538074 (= c!140987 (= lt!664780 (select (store (arr!49285 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64)))))

(declare-fun d!160245 () Bool)

(declare-fun lt!664781 () SeekEntryResult!13434)

(assert (=> d!160245 (and (or (is-Undefined!13434 lt!664781) (not (is-Found!13434 lt!664781)) (and (bvsge (index!56131 lt!664781) #b00000000000000000000000000000000) (bvslt (index!56131 lt!664781) (size!49836 (array!102148 (store (arr!49285 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49836 a!2792)))))) (or (is-Undefined!13434 lt!664781) (is-Found!13434 lt!664781) (not (is-MissingVacant!13434 lt!664781)) (not (= (index!56133 lt!664781) vacantIndex!5)) (and (bvsge (index!56133 lt!664781) #b00000000000000000000000000000000) (bvslt (index!56133 lt!664781) (size!49836 (array!102148 (store (arr!49285 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49836 a!2792)))))) (or (is-Undefined!13434 lt!664781) (ite (is-Found!13434 lt!664781) (= (select (arr!49285 (array!102148 (store (arr!49285 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49836 a!2792))) (index!56131 lt!664781)) (select (store (arr!49285 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64)) (and (is-MissingVacant!13434 lt!664781) (= (index!56133 lt!664781) vacantIndex!5) (= (select (arr!49285 (array!102148 (store (arr!49285 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49836 a!2792))) (index!56133 lt!664781)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

