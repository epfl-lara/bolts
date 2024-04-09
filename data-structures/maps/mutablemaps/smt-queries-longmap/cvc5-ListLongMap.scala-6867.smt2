; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86488 () Bool)

(assert start!86488)

(declare-fun res!670487 () Bool)

(declare-fun e!564051 () Bool)

(assert (=> start!86488 (=> (not res!670487) (not e!564051))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86488 (= res!670487 (validMask!0 mask!3464))))

(assert (=> start!86488 e!564051))

(declare-datatypes ((array!63241 0))(
  ( (array!63242 (arr!30442 (Array (_ BitVec 32) (_ BitVec 64))) (size!30945 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63241)

(declare-fun array_inv!23432 (array!63241) Bool)

(assert (=> start!86488 (array_inv!23432 a!3219)))

(assert (=> start!86488 true))

(declare-fun b!1000846 () Bool)

(declare-fun res!670485 () Bool)

(declare-fun e!564056 () Bool)

(assert (=> b!1000846 (=> (not res!670485) (not e!564056))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9374 0))(
  ( (MissingZero!9374 (index!39866 (_ BitVec 32))) (Found!9374 (index!39867 (_ BitVec 32))) (Intermediate!9374 (undefined!10186 Bool) (index!39868 (_ BitVec 32)) (x!87323 (_ BitVec 32))) (Undefined!9374) (MissingVacant!9374 (index!39869 (_ BitVec 32))) )
))
(declare-fun lt!442406 () SeekEntryResult!9374)

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!442402 () (_ BitVec 64))

(declare-fun lt!442407 () array!63241)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63241 (_ BitVec 32)) SeekEntryResult!9374)

(assert (=> b!1000846 (= res!670485 (not (= lt!442406 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442402 lt!442407 mask!3464))))))

(declare-fun b!1000847 () Bool)

(declare-fun e!564053 () Bool)

(assert (=> b!1000847 (= e!564053 e!564056)))

(declare-fun res!670492 () Bool)

(assert (=> b!1000847 (=> (not res!670492) (not e!564056))))

(declare-fun lt!442404 () SeekEntryResult!9374)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000847 (= res!670492 (not (= lt!442404 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442402 mask!3464) lt!442402 lt!442407 mask!3464))))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1000847 (= lt!442402 (select (store (arr!30442 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1000847 (= lt!442407 (array!63242 (store (arr!30442 a!3219) i!1194 k!2224) (size!30945 a!3219)))))

(declare-fun b!1000848 () Bool)

(declare-fun e!564052 () Bool)

(declare-fun e!564055 () Bool)

(assert (=> b!1000848 (= e!564052 e!564055)))

(declare-fun res!670480 () Bool)

(assert (=> b!1000848 (=> (not res!670480) (not e!564055))))

(declare-fun lt!442403 () SeekEntryResult!9374)

(assert (=> b!1000848 (= res!670480 (= lt!442404 lt!442403))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000848 (= lt!442403 (Intermediate!9374 false resIndex!38 resX!38))))

(assert (=> b!1000848 (= lt!442404 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30442 a!3219) j!170) mask!3464) (select (arr!30442 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000849 () Bool)

(declare-fun res!670491 () Bool)

(assert (=> b!1000849 (=> (not res!670491) (not e!564052))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63241 (_ BitVec 32)) Bool)

(assert (=> b!1000849 (= res!670491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000850 () Bool)

(declare-fun res!670486 () Bool)

(assert (=> b!1000850 (=> (not res!670486) (not e!564051))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000850 (= res!670486 (validKeyInArray!0 (select (arr!30442 a!3219) j!170)))))

(declare-fun b!1000851 () Bool)

(assert (=> b!1000851 (= e!564055 e!564053)))

(declare-fun res!670484 () Bool)

(assert (=> b!1000851 (=> (not res!670484) (not e!564053))))

(assert (=> b!1000851 (= res!670484 (= lt!442406 lt!442403))))

(assert (=> b!1000851 (= lt!442406 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30442 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000852 () Bool)

(declare-fun res!670488 () Bool)

(assert (=> b!1000852 (=> (not res!670488) (not e!564051))))

(assert (=> b!1000852 (= res!670488 (and (= (size!30945 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30945 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30945 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000853 () Bool)

(declare-fun res!670490 () Bool)

(assert (=> b!1000853 (=> (not res!670490) (not e!564051))))

(declare-fun arrayContainsKey!0 (array!63241 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000853 (= res!670490 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000854 () Bool)

(assert (=> b!1000854 (= e!564051 e!564052)))

(declare-fun res!670483 () Bool)

(assert (=> b!1000854 (=> (not res!670483) (not e!564052))))

(declare-fun lt!442405 () SeekEntryResult!9374)

(assert (=> b!1000854 (= res!670483 (or (= lt!442405 (MissingVacant!9374 i!1194)) (= lt!442405 (MissingZero!9374 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63241 (_ BitVec 32)) SeekEntryResult!9374)

(assert (=> b!1000854 (= lt!442405 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1000855 () Bool)

(declare-fun res!670481 () Bool)

(assert (=> b!1000855 (=> (not res!670481) (not e!564052))))

(assert (=> b!1000855 (= res!670481 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30945 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30945 a!3219))))))

(declare-fun b!1000856 () Bool)

(declare-fun res!670489 () Bool)

(assert (=> b!1000856 (=> (not res!670489) (not e!564052))))

(declare-datatypes ((List!21244 0))(
  ( (Nil!21241) (Cons!21240 (h!22417 (_ BitVec 64)) (t!30253 List!21244)) )
))
(declare-fun arrayNoDuplicates!0 (array!63241 (_ BitVec 32) List!21244) Bool)

(assert (=> b!1000856 (= res!670489 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21241))))

(declare-fun b!1000857 () Bool)

(assert (=> b!1000857 (= e!564056 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194)) (bvslt mask!3464 #b00000000000000000000000000000000)))))

(declare-fun b!1000858 () Bool)

(declare-fun res!670482 () Bool)

(assert (=> b!1000858 (=> (not res!670482) (not e!564051))))

(assert (=> b!1000858 (= res!670482 (validKeyInArray!0 k!2224))))

(assert (= (and start!86488 res!670487) b!1000852))

(assert (= (and b!1000852 res!670488) b!1000850))

(assert (= (and b!1000850 res!670486) b!1000858))

(assert (= (and b!1000858 res!670482) b!1000853))

(assert (= (and b!1000853 res!670490) b!1000854))

(assert (= (and b!1000854 res!670483) b!1000849))

(assert (= (and b!1000849 res!670491) b!1000856))

(assert (= (and b!1000856 res!670489) b!1000855))

(assert (= (and b!1000855 res!670481) b!1000848))

(assert (= (and b!1000848 res!670480) b!1000851))

(assert (= (and b!1000851 res!670484) b!1000847))

(assert (= (and b!1000847 res!670492) b!1000846))

(assert (= (and b!1000846 res!670485) b!1000857))

(declare-fun m!927075 () Bool)

(assert (=> start!86488 m!927075))

(declare-fun m!927077 () Bool)

(assert (=> start!86488 m!927077))

(declare-fun m!927079 () Bool)

(assert (=> b!1000850 m!927079))

(assert (=> b!1000850 m!927079))

(declare-fun m!927081 () Bool)

(assert (=> b!1000850 m!927081))

(declare-fun m!927083 () Bool)

(assert (=> b!1000847 m!927083))

(assert (=> b!1000847 m!927083))

(declare-fun m!927085 () Bool)

(assert (=> b!1000847 m!927085))

(declare-fun m!927087 () Bool)

(assert (=> b!1000847 m!927087))

(declare-fun m!927089 () Bool)

(assert (=> b!1000847 m!927089))

(assert (=> b!1000848 m!927079))

(assert (=> b!1000848 m!927079))

(declare-fun m!927091 () Bool)

(assert (=> b!1000848 m!927091))

(assert (=> b!1000848 m!927091))

(assert (=> b!1000848 m!927079))

(declare-fun m!927093 () Bool)

(assert (=> b!1000848 m!927093))

(declare-fun m!927095 () Bool)

(assert (=> b!1000849 m!927095))

(declare-fun m!927097 () Bool)

(assert (=> b!1000858 m!927097))

(declare-fun m!927099 () Bool)

(assert (=> b!1000846 m!927099))

(declare-fun m!927101 () Bool)

(assert (=> b!1000856 m!927101))

(declare-fun m!927103 () Bool)

(assert (=> b!1000853 m!927103))

(assert (=> b!1000851 m!927079))

(assert (=> b!1000851 m!927079))

(declare-fun m!927105 () Bool)

(assert (=> b!1000851 m!927105))

(declare-fun m!927107 () Bool)

(assert (=> b!1000854 m!927107))

(push 1)

