; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49204 () Bool)

(assert start!49204)

(declare-fun b!541421 () Bool)

(declare-fun res!336300 () Bool)

(declare-fun e!313507 () Bool)

(assert (=> b!541421 (=> (not res!336300) (not e!313507))))

(declare-datatypes ((array!34219 0))(
  ( (array!34220 (arr!16440 (Array (_ BitVec 32) (_ BitVec 64))) (size!16804 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34219)

(declare-datatypes ((List!10612 0))(
  ( (Nil!10609) (Cons!10608 (h!11560 (_ BitVec 64)) (t!16848 List!10612)) )
))
(declare-fun arrayNoDuplicates!0 (array!34219 (_ BitVec 32) List!10612) Bool)

(assert (=> b!541421 (= res!336300 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10609))))

(declare-fun b!541422 () Bool)

(declare-fun res!336308 () Bool)

(declare-fun e!313505 () Bool)

(assert (=> b!541422 (=> (not res!336308) (not e!313505))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!541422 (= res!336308 (and (= (size!16804 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16804 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16804 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!541423 () Bool)

(declare-fun res!336306 () Bool)

(assert (=> b!541423 (=> (not res!336306) (not e!313507))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4905 0))(
  ( (MissingZero!4905 (index!21844 (_ BitVec 32))) (Found!4905 (index!21845 (_ BitVec 32))) (Intermediate!4905 (undefined!5717 Bool) (index!21846 (_ BitVec 32)) (x!50789 (_ BitVec 32))) (Undefined!4905) (MissingVacant!4905 (index!21847 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34219 (_ BitVec 32)) SeekEntryResult!4905)

(assert (=> b!541423 (= res!336306 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16440 a!3154) j!147) a!3154 mask!3216) (Intermediate!4905 false resIndex!32 resX!32)))))

(declare-fun res!336303 () Bool)

(assert (=> start!49204 (=> (not res!336303) (not e!313505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49204 (= res!336303 (validMask!0 mask!3216))))

(assert (=> start!49204 e!313505))

(assert (=> start!49204 true))

(declare-fun array_inv!12214 (array!34219) Bool)

(assert (=> start!49204 (array_inv!12214 a!3154)))

(declare-fun b!541424 () Bool)

(declare-fun res!336299 () Bool)

(assert (=> b!541424 (=> (not res!336299) (not e!313505))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!541424 (= res!336299 (validKeyInArray!0 (select (arr!16440 a!3154) j!147)))))

(declare-fun b!541425 () Bool)

(declare-fun res!336305 () Bool)

(assert (=> b!541425 (=> (not res!336305) (not e!313505))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!541425 (= res!336305 (validKeyInArray!0 k!1998))))

(declare-fun b!541426 () Bool)

(assert (=> b!541426 (= e!313507 false)))

(declare-fun lt!247660 () SeekEntryResult!4905)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541426 (= lt!247660 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16440 a!3154) j!147) mask!3216) (select (arr!16440 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541427 () Bool)

(declare-fun res!336301 () Bool)

(assert (=> b!541427 (=> (not res!336301) (not e!313507))))

(assert (=> b!541427 (= res!336301 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16804 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16804 a!3154)) (= (select (arr!16440 a!3154) resIndex!32) (select (arr!16440 a!3154) j!147))))))

(declare-fun b!541428 () Bool)

(declare-fun res!336307 () Bool)

(assert (=> b!541428 (=> (not res!336307) (not e!313505))))

(declare-fun arrayContainsKey!0 (array!34219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!541428 (= res!336307 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!541429 () Bool)

(declare-fun res!336302 () Bool)

(assert (=> b!541429 (=> (not res!336302) (not e!313507))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34219 (_ BitVec 32)) Bool)

(assert (=> b!541429 (= res!336302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!541430 () Bool)

(assert (=> b!541430 (= e!313505 e!313507)))

(declare-fun res!336304 () Bool)

(assert (=> b!541430 (=> (not res!336304) (not e!313507))))

(declare-fun lt!247661 () SeekEntryResult!4905)

(assert (=> b!541430 (= res!336304 (or (= lt!247661 (MissingZero!4905 i!1153)) (= lt!247661 (MissingVacant!4905 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34219 (_ BitVec 32)) SeekEntryResult!4905)

(assert (=> b!541430 (= lt!247661 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!49204 res!336303) b!541422))

(assert (= (and b!541422 res!336308) b!541424))

(assert (= (and b!541424 res!336299) b!541425))

(assert (= (and b!541425 res!336305) b!541428))

(assert (= (and b!541428 res!336307) b!541430))

(assert (= (and b!541430 res!336304) b!541429))

(assert (= (and b!541429 res!336302) b!541421))

(assert (= (and b!541421 res!336300) b!541427))

(assert (= (and b!541427 res!336301) b!541423))

(assert (= (and b!541423 res!336306) b!541426))

(declare-fun m!519919 () Bool)

(assert (=> b!541427 m!519919))

(declare-fun m!519921 () Bool)

(assert (=> b!541427 m!519921))

(declare-fun m!519923 () Bool)

(assert (=> b!541421 m!519923))

(declare-fun m!519925 () Bool)

(assert (=> b!541430 m!519925))

(declare-fun m!519927 () Bool)

(assert (=> b!541425 m!519927))

(assert (=> b!541426 m!519921))

(assert (=> b!541426 m!519921))

(declare-fun m!519929 () Bool)

(assert (=> b!541426 m!519929))

(assert (=> b!541426 m!519929))

(assert (=> b!541426 m!519921))

(declare-fun m!519931 () Bool)

(assert (=> b!541426 m!519931))

(declare-fun m!519933 () Bool)

(assert (=> b!541428 m!519933))

(declare-fun m!519935 () Bool)

(assert (=> start!49204 m!519935))

(declare-fun m!519937 () Bool)

(assert (=> start!49204 m!519937))

(assert (=> b!541423 m!519921))

(assert (=> b!541423 m!519921))

(declare-fun m!519939 () Bool)

(assert (=> b!541423 m!519939))

(declare-fun m!519941 () Bool)

(assert (=> b!541429 m!519941))

(assert (=> b!541424 m!519921))

(assert (=> b!541424 m!519921))

(declare-fun m!519943 () Bool)

(assert (=> b!541424 m!519943))

(push 1)

