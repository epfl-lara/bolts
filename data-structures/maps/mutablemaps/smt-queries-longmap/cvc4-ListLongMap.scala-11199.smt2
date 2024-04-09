; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130862 () Bool)

(assert start!130862)

(declare-fun res!1051431 () Bool)

(declare-fun e!854422 () Bool)

(assert (=> start!130862 (=> (not res!1051431) (not e!854422))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130862 (= res!1051431 (validMask!0 mask!2480))))

(assert (=> start!130862 e!854422))

(assert (=> start!130862 true))

(declare-datatypes ((array!101887 0))(
  ( (array!101888 (arr!49155 (Array (_ BitVec 32) (_ BitVec 64))) (size!49706 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101887)

(declare-fun array_inv!38100 (array!101887) Bool)

(assert (=> start!130862 (array_inv!38100 a!2792)))

(declare-fun b!1534203 () Bool)

(declare-fun res!1051430 () Bool)

(assert (=> b!1534203 (=> (not res!1051430) (not e!854422))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1534203 (= res!1051430 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49706 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49706 a!2792)) (= (select (arr!49155 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun b!1534204 () Bool)

(assert (=> b!1534204 (= e!854422 (and (not (= (select (arr!49155 a!2792) index!463) (select (arr!49155 a!2792) j!64))) (bvslt mask!2480 #b00000000000000000000000000000000)))))

(declare-fun b!1534205 () Bool)

(declare-fun res!1051434 () Bool)

(assert (=> b!1534205 (=> (not res!1051434) (not e!854422))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534205 (= res!1051434 (and (= (size!49706 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49706 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49706 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534206 () Bool)

(declare-fun res!1051433 () Bool)

(assert (=> b!1534206 (=> (not res!1051433) (not e!854422))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534206 (= res!1051433 (validKeyInArray!0 (select (arr!49155 a!2792) i!951)))))

(declare-fun b!1534207 () Bool)

(declare-fun res!1051427 () Bool)

(assert (=> b!1534207 (=> (not res!1051427) (not e!854422))))

(declare-datatypes ((SeekEntryResult!13310 0))(
  ( (MissingZero!13310 (index!55634 (_ BitVec 32))) (Found!13310 (index!55635 (_ BitVec 32))) (Intermediate!13310 (undefined!14122 Bool) (index!55636 (_ BitVec 32)) (x!137395 (_ BitVec 32))) (Undefined!13310) (MissingVacant!13310 (index!55637 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101887 (_ BitVec 32)) SeekEntryResult!13310)

(assert (=> b!1534207 (= res!1051427 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49155 a!2792) j!64) a!2792 mask!2480) (Found!13310 j!64)))))

(declare-fun b!1534208 () Bool)

(declare-fun res!1051429 () Bool)

(assert (=> b!1534208 (=> (not res!1051429) (not e!854422))))

(assert (=> b!1534208 (= res!1051429 (validKeyInArray!0 (select (arr!49155 a!2792) j!64)))))

(declare-fun b!1534209 () Bool)

(declare-fun res!1051428 () Bool)

(assert (=> b!1534209 (=> (not res!1051428) (not e!854422))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101887 (_ BitVec 32)) Bool)

(assert (=> b!1534209 (= res!1051428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534210 () Bool)

(declare-fun res!1051432 () Bool)

(assert (=> b!1534210 (=> (not res!1051432) (not e!854422))))

(declare-datatypes ((List!35809 0))(
  ( (Nil!35806) (Cons!35805 (h!37251 (_ BitVec 64)) (t!50510 List!35809)) )
))
(declare-fun arrayNoDuplicates!0 (array!101887 (_ BitVec 32) List!35809) Bool)

(assert (=> b!1534210 (= res!1051432 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35806))))

(assert (= (and start!130862 res!1051431) b!1534205))

(assert (= (and b!1534205 res!1051434) b!1534206))

(assert (= (and b!1534206 res!1051433) b!1534208))

(assert (= (and b!1534208 res!1051429) b!1534209))

(assert (= (and b!1534209 res!1051428) b!1534210))

(assert (= (and b!1534210 res!1051432) b!1534203))

(assert (= (and b!1534203 res!1051430) b!1534207))

(assert (= (and b!1534207 res!1051427) b!1534204))

(declare-fun m!1416911 () Bool)

(assert (=> b!1534210 m!1416911))

(declare-fun m!1416913 () Bool)

(assert (=> b!1534207 m!1416913))

(assert (=> b!1534207 m!1416913))

(declare-fun m!1416915 () Bool)

(assert (=> b!1534207 m!1416915))

(declare-fun m!1416917 () Bool)

(assert (=> b!1534204 m!1416917))

(assert (=> b!1534204 m!1416913))

(declare-fun m!1416919 () Bool)

(assert (=> start!130862 m!1416919))

(declare-fun m!1416921 () Bool)

(assert (=> start!130862 m!1416921))

(declare-fun m!1416923 () Bool)

(assert (=> b!1534203 m!1416923))

(declare-fun m!1416925 () Bool)

(assert (=> b!1534206 m!1416925))

(assert (=> b!1534206 m!1416925))

(declare-fun m!1416927 () Bool)

(assert (=> b!1534206 m!1416927))

(declare-fun m!1416929 () Bool)

(assert (=> b!1534209 m!1416929))

(assert (=> b!1534208 m!1416913))

(assert (=> b!1534208 m!1416913))

(declare-fun m!1416931 () Bool)

(assert (=> b!1534208 m!1416931))

(push 1)

(assert (not b!1534206))

(assert (not b!1534208))

(assert (not b!1534207))

(assert (not b!1534209))

(assert (not start!130862))

(assert (not b!1534210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

