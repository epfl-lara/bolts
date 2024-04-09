; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130604 () Bool)

(assert start!130604)

(declare-fun res!1049583 () Bool)

(declare-fun e!853769 () Bool)

(assert (=> start!130604 (=> (not res!1049583) (not e!853769))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130604 (= res!1049583 (validMask!0 mask!2480))))

(assert (=> start!130604 e!853769))

(assert (=> start!130604 true))

(declare-datatypes ((array!101710 0))(
  ( (array!101711 (arr!49071 (Array (_ BitVec 32) (_ BitVec 64))) (size!49622 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101710)

(declare-fun array_inv!38016 (array!101710) Bool)

(assert (=> start!130604 (array_inv!38016 a!2792)))

(declare-fun b!1532301 () Bool)

(declare-fun res!1049579 () Bool)

(assert (=> b!1532301 (=> (not res!1049579) (not e!853769))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101710 (_ BitVec 32)) Bool)

(assert (=> b!1532301 (= res!1049579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532302 () Bool)

(declare-fun res!1049580 () Bool)

(assert (=> b!1532302 (=> (not res!1049580) (not e!853769))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532302 (= res!1049580 (validKeyInArray!0 (select (arr!49071 a!2792) j!64)))))

(declare-fun b!1532303 () Bool)

(declare-fun res!1049582 () Bool)

(assert (=> b!1532303 (=> (not res!1049582) (not e!853769))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532303 (= res!1049582 (and (= (size!49622 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49622 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49622 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532304 () Bool)

(declare-fun res!1049581 () Bool)

(assert (=> b!1532304 (=> (not res!1049581) (not e!853769))))

(assert (=> b!1532304 (= res!1049581 (validKeyInArray!0 (select (arr!49071 a!2792) i!951)))))

(declare-fun b!1532305 () Bool)

(assert (=> b!1532305 (= e!853769 (and (bvsle #b00000000000000000000000000000000 (size!49622 a!2792)) (bvsge (size!49622 a!2792) #b01111111111111111111111111111111)))))

(assert (= (and start!130604 res!1049583) b!1532303))

(assert (= (and b!1532303 res!1049582) b!1532304))

(assert (= (and b!1532304 res!1049581) b!1532302))

(assert (= (and b!1532302 res!1049580) b!1532301))

(assert (= (and b!1532301 res!1049579) b!1532305))

(declare-fun m!1415077 () Bool)

(assert (=> start!130604 m!1415077))

(declare-fun m!1415079 () Bool)

(assert (=> start!130604 m!1415079))

(declare-fun m!1415081 () Bool)

(assert (=> b!1532301 m!1415081))

(declare-fun m!1415083 () Bool)

(assert (=> b!1532302 m!1415083))

(assert (=> b!1532302 m!1415083))

(declare-fun m!1415085 () Bool)

(assert (=> b!1532302 m!1415085))

(declare-fun m!1415087 () Bool)

(assert (=> b!1532304 m!1415087))

(assert (=> b!1532304 m!1415087))

(declare-fun m!1415089 () Bool)

(assert (=> b!1532304 m!1415089))

(push 1)

(assert (not b!1532304))

(assert (not start!130604))

(assert (not b!1532301))

(assert (not b!1532302))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!159967 () Bool)

(assert (=> d!159967 (= (validKeyInArray!0 (select (arr!49071 a!2792) i!951)) (and (not (= (select (arr!49071 a!2792) i!951) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49071 a!2792) i!951) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1532304 d!159967))

(declare-fun d!159969 () Bool)

(assert (=> d!159969 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!130604 d!159969))

(declare-fun d!159979 () Bool)

(assert (=> d!159979 (= (array_inv!38016 a!2792) (bvsge (size!49622 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!130604 d!159979))

(declare-fun b!1532338 () Bool)

(declare-fun e!853795 () Bool)

(declare-fun e!853794 () Bool)

(assert (=> b!1532338 (= e!853795 e!853794)))

(declare-fun lt!663584 () (_ BitVec 64))

