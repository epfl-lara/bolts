; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131168 () Bool)

(assert start!131168)

(declare-fun b!1538208 () Bool)

(declare-fun res!1055323 () Bool)

(declare-fun e!855925 () Bool)

(assert (=> b!1538208 (=> (not res!1055323) (not e!855925))))

(declare-datatypes ((array!102160 0))(
  ( (array!102161 (arr!49290 (Array (_ BitVec 32) (_ BitVec 64))) (size!49841 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102160)

(declare-datatypes ((List!35944 0))(
  ( (Nil!35941) (Cons!35940 (h!37386 (_ BitVec 64)) (t!50645 List!35944)) )
))
(declare-fun arrayNoDuplicates!0 (array!102160 (_ BitVec 32) List!35944) Bool)

(assert (=> b!1538208 (= res!1055323 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35941))))

(declare-fun b!1538209 () Bool)

(assert (=> b!1538209 (= e!855925 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664810 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538209 (= lt!664810 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538210 () Bool)

(declare-fun res!1055331 () Bool)

(assert (=> b!1538210 (=> (not res!1055331) (not e!855925))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1538210 (= res!1055331 (not (= (select (arr!49290 a!2792) index!463) (select (arr!49290 a!2792) j!64))))))

(declare-fun b!1538211 () Bool)

(declare-fun res!1055324 () Bool)

(assert (=> b!1538211 (=> (not res!1055324) (not e!855925))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1538211 (= res!1055324 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49841 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49841 a!2792)) (= (select (arr!49290 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538212 () Bool)

(declare-fun res!1055328 () Bool)

(assert (=> b!1538212 (=> (not res!1055328) (not e!855925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102160 (_ BitVec 32)) Bool)

(assert (=> b!1538212 (= res!1055328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538213 () Bool)

(declare-fun res!1055329 () Bool)

(assert (=> b!1538213 (=> (not res!1055329) (not e!855925))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538213 (= res!1055329 (validKeyInArray!0 (select (arr!49290 a!2792) j!64)))))

(declare-fun b!1538214 () Bool)

(declare-fun res!1055326 () Bool)

(assert (=> b!1538214 (=> (not res!1055326) (not e!855925))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538214 (= res!1055326 (and (= (size!49841 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49841 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49841 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538215 () Bool)

(declare-fun res!1055325 () Bool)

(assert (=> b!1538215 (=> (not res!1055325) (not e!855925))))

(assert (=> b!1538215 (= res!1055325 (validKeyInArray!0 (select (arr!49290 a!2792) i!951)))))

(declare-fun b!1538207 () Bool)

(declare-fun res!1055330 () Bool)

(assert (=> b!1538207 (=> (not res!1055330) (not e!855925))))

(declare-datatypes ((SeekEntryResult!13439 0))(
  ( (MissingZero!13439 (index!56150 (_ BitVec 32))) (Found!13439 (index!56151 (_ BitVec 32))) (Intermediate!13439 (undefined!14251 Bool) (index!56152 (_ BitVec 32)) (x!137887 (_ BitVec 32))) (Undefined!13439) (MissingVacant!13439 (index!56153 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102160 (_ BitVec 32)) SeekEntryResult!13439)

(assert (=> b!1538207 (= res!1055330 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49290 a!2792) j!64) a!2792 mask!2480) (Found!13439 j!64)))))

(declare-fun res!1055327 () Bool)

(assert (=> start!131168 (=> (not res!1055327) (not e!855925))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131168 (= res!1055327 (validMask!0 mask!2480))))

(assert (=> start!131168 e!855925))

(assert (=> start!131168 true))

(declare-fun array_inv!38235 (array!102160) Bool)

(assert (=> start!131168 (array_inv!38235 a!2792)))

(assert (= (and start!131168 res!1055327) b!1538214))

(assert (= (and b!1538214 res!1055326) b!1538215))

(assert (= (and b!1538215 res!1055325) b!1538213))

(assert (= (and b!1538213 res!1055329) b!1538212))

(assert (= (and b!1538212 res!1055328) b!1538208))

(assert (= (and b!1538208 res!1055323) b!1538211))

(assert (= (and b!1538211 res!1055324) b!1538207))

(assert (= (and b!1538207 res!1055330) b!1538210))

(assert (= (and b!1538210 res!1055331) b!1538209))

(declare-fun m!1420701 () Bool)

(assert (=> b!1538209 m!1420701))

(declare-fun m!1420703 () Bool)

(assert (=> b!1538211 m!1420703))

(declare-fun m!1420705 () Bool)

(assert (=> b!1538208 m!1420705))

(declare-fun m!1420707 () Bool)

(assert (=> start!131168 m!1420707))

(declare-fun m!1420709 () Bool)

(assert (=> start!131168 m!1420709))

(declare-fun m!1420711 () Bool)

(assert (=> b!1538215 m!1420711))

(assert (=> b!1538215 m!1420711))

(declare-fun m!1420713 () Bool)

(assert (=> b!1538215 m!1420713))

(declare-fun m!1420715 () Bool)

(assert (=> b!1538210 m!1420715))

(declare-fun m!1420717 () Bool)

(assert (=> b!1538210 m!1420717))

(assert (=> b!1538207 m!1420717))

(assert (=> b!1538207 m!1420717))

(declare-fun m!1420719 () Bool)

(assert (=> b!1538207 m!1420719))

(declare-fun m!1420721 () Bool)

(assert (=> b!1538212 m!1420721))

(assert (=> b!1538213 m!1420717))

(assert (=> b!1538213 m!1420717))

(declare-fun m!1420723 () Bool)

(assert (=> b!1538213 m!1420723))

(push 1)

(assert (not start!131168))

(assert (not b!1538208))

(assert (not b!1538207))

(assert (not b!1538215))

(assert (not b!1538209))

(assert (not b!1538212))

(assert (not b!1538213))

(check-sat)

