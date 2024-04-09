; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131126 () Bool)

(assert start!131126)

(declare-fun b!1537974 () Bool)

(declare-fun res!1055200 () Bool)

(declare-fun e!855809 () Bool)

(assert (=> b!1537974 (=> (not res!1055200) (not e!855809))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102151 0))(
  ( (array!102152 (arr!49287 (Array (_ BitVec 32) (_ BitVec 64))) (size!49838 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102151)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537974 (= res!1055200 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49838 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49838 a!2792)) (= (select (arr!49287 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1055199 () Bool)

(assert (=> start!131126 (=> (not res!1055199) (not e!855809))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131126 (= res!1055199 (validMask!0 mask!2480))))

(assert (=> start!131126 e!855809))

(assert (=> start!131126 true))

(declare-fun array_inv!38232 (array!102151) Bool)

(assert (=> start!131126 (array_inv!38232 a!2792)))

(declare-datatypes ((SeekEntryResult!13436 0))(
  ( (MissingZero!13436 (index!56138 (_ BitVec 32))) (Found!13436 (index!56139 (_ BitVec 32))) (Intermediate!13436 (undefined!14248 Bool) (index!56140 (_ BitVec 32)) (x!137873 (_ BitVec 32))) (Undefined!13436) (MissingVacant!13436 (index!56141 (_ BitVec 32))) )
))
(declare-fun lt!664750 () SeekEntryResult!13436)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun b!1537975 () Bool)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun e!855807 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102151 (_ BitVec 32)) SeekEntryResult!13436)

(assert (=> b!1537975 (= e!855807 (not (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (store (arr!49287 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102152 (store (arr!49287 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49838 a!2792)) mask!2480) lt!664750)))))

(declare-fun b!1537976 () Bool)

(declare-fun res!1055201 () Bool)

(assert (=> b!1537976 (=> (not res!1055201) (not e!855809))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102151 (_ BitVec 32)) Bool)

(assert (=> b!1537976 (= res!1055201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537977 () Bool)

(declare-fun res!1055202 () Bool)

(assert (=> b!1537977 (=> (not res!1055202) (not e!855809))))

(declare-datatypes ((List!35941 0))(
  ( (Nil!35938) (Cons!35937 (h!37383 (_ BitVec 64)) (t!50642 List!35941)) )
))
(declare-fun arrayNoDuplicates!0 (array!102151 (_ BitVec 32) List!35941) Bool)

(assert (=> b!1537977 (= res!1055202 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35938))))

(declare-fun b!1537978 () Bool)

(declare-fun res!1055203 () Bool)

(assert (=> b!1537978 (=> (not res!1055203) (not e!855809))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537978 (= res!1055203 (validKeyInArray!0 (select (arr!49287 a!2792) i!951)))))

(declare-fun b!1537979 () Bool)

(declare-fun res!1055204 () Bool)

(assert (=> b!1537979 (=> (not res!1055204) (not e!855809))))

(assert (=> b!1537979 (= res!1055204 (and (= (size!49838 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49838 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49838 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537980 () Bool)

(assert (=> b!1537980 (= e!855809 e!855807)))

(declare-fun res!1055205 () Bool)

(assert (=> b!1537980 (=> (not res!1055205) (not e!855807))))

(assert (=> b!1537980 (= res!1055205 (and (= lt!664750 (Found!13436 j!64)) (= (select (arr!49287 a!2792) index!463) (select (arr!49287 a!2792) j!64))))))

(assert (=> b!1537980 (= lt!664750 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49287 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537981 () Bool)

(declare-fun res!1055198 () Bool)

(assert (=> b!1537981 (=> (not res!1055198) (not e!855809))))

(assert (=> b!1537981 (= res!1055198 (validKeyInArray!0 (select (arr!49287 a!2792) j!64)))))

(assert (= (and start!131126 res!1055199) b!1537979))

(assert (= (and b!1537979 res!1055204) b!1537978))

(assert (= (and b!1537978 res!1055203) b!1537981))

(assert (= (and b!1537981 res!1055198) b!1537976))

(assert (= (and b!1537976 res!1055201) b!1537977))

(assert (= (and b!1537977 res!1055202) b!1537974))

(assert (= (and b!1537974 res!1055200) b!1537980))

(assert (= (and b!1537980 res!1055205) b!1537975))

(declare-fun m!1420529 () Bool)

(assert (=> start!131126 m!1420529))

(declare-fun m!1420531 () Bool)

(assert (=> start!131126 m!1420531))

(declare-fun m!1420533 () Bool)

(assert (=> b!1537975 m!1420533))

(declare-fun m!1420535 () Bool)

(assert (=> b!1537975 m!1420535))

(assert (=> b!1537975 m!1420535))

(declare-fun m!1420537 () Bool)

(assert (=> b!1537975 m!1420537))

(declare-fun m!1420539 () Bool)

(assert (=> b!1537981 m!1420539))

(assert (=> b!1537981 m!1420539))

(declare-fun m!1420541 () Bool)

(assert (=> b!1537981 m!1420541))

(declare-fun m!1420543 () Bool)

(assert (=> b!1537974 m!1420543))

(declare-fun m!1420545 () Bool)

(assert (=> b!1537980 m!1420545))

(assert (=> b!1537980 m!1420539))

(assert (=> b!1537980 m!1420539))

(declare-fun m!1420547 () Bool)

(assert (=> b!1537980 m!1420547))

(declare-fun m!1420549 () Bool)

(assert (=> b!1537978 m!1420549))

(assert (=> b!1537978 m!1420549))

(declare-fun m!1420551 () Bool)

(assert (=> b!1537978 m!1420551))

(declare-fun m!1420553 () Bool)

(assert (=> b!1537977 m!1420553))

(declare-fun m!1420555 () Bool)

(assert (=> b!1537976 m!1420555))

(push 1)

(assert (not b!1537976))

(assert (not start!131126))

(assert (not b!1537977))

(assert (not b!1537980))

(assert (not b!1537978))

(assert (not b!1537975))

(assert (not b!1537981))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1538063 () Bool)

(declare-fun e!855859 () SeekEntryResult!13436)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538063 (= e!855859 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 (select (arr!49287 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1538064 () Bool)

(declare-fun e!855858 () SeekEntryResult!13436)

(declare-fun e!855860 () SeekEntryResult!13436)

(assert (=> b!1538064 (= e!855858 e!855860)))

(declare-fun c!140984 () Bool)

(declare-fun lt!664778 () (_ BitVec 64))

(assert (=> b!1538064 (= c!140984 (= lt!664778 (select (arr!49287 a!2792) j!64)))))

(declare-fun b!1538065 () Bool)

(declare-fun c!140983 () Bool)

(assert (=> b!1538065 (= c!140983 (= lt!664778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1538065 (= e!855860 e!855859)))

(declare-fun b!1538066 () Bool)

(assert (=> b!1538066 (= e!855860 (Found!13436 index!463))))

(declare-fun b!1538067 () Bool)

(assert (=> b!1538067 (= e!855859 (MissingVacant!13436 vacantIndex!5))))

(declare-fun d!160233 () Bool)

(declare-fun lt!664779 () SeekEntryResult!13436)

(assert (=> d!160233 (and (or (is-Undefined!13436 lt!664779) (not (is-Found!13436 lt!664779)) (and (bvsge (index!56139 lt!664779) #b00000000000000000000000000000000) (bvslt (index!56139 lt!664779) (size!49838 a!2792)))) (or (is-Undefined!13436 lt!664779) (is-Found!13436 lt!664779) (not (is-MissingVacant!13436 lt!664779)) (not (= (index!56141 lt!664779) vacantIndex!5)) (and (bvsge (index!56141 lt!664779) #b00000000000000000000000000000000) (bvslt (index!56141 lt!664779) (size!49838 a!2792)))) (or (is-Undefined!13436 lt!664779) (ite (is-Found!13436 lt!664779) (= (select (arr!49287 a!2792) (index!56139 lt!664779)) (select (arr!49287 a!2792) j!64)) (and (is-MissingVacant!13436 lt!664779) (= (index!56141 lt!664779) vacantIndex!5) (= (select (arr!49287 a!2792) (index!56141 lt!664779)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!160233 (= lt!664779 e!855858)))

