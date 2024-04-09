; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86590 () Bool)

(assert start!86590)

(declare-fun b!1003219 () Bool)

(declare-fun e!565103 () Bool)

(declare-fun e!565101 () Bool)

(assert (=> b!1003219 (= e!565103 e!565101)))

(declare-fun res!672861 () Bool)

(assert (=> b!1003219 (=> (not res!672861) (not e!565101))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9425 0))(
  ( (MissingZero!9425 (index!40070 (_ BitVec 32))) (Found!9425 (index!40071 (_ BitVec 32))) (Intermediate!9425 (undefined!10237 Bool) (index!40072 (_ BitVec 32)) (x!87510 (_ BitVec 32))) (Undefined!9425) (MissingVacant!9425 (index!40073 (_ BitVec 32))) )
))
(declare-fun lt!443582 () SeekEntryResult!9425)

(declare-datatypes ((array!63343 0))(
  ( (array!63344 (arr!30493 (Array (_ BitVec 32) (_ BitVec 64))) (size!30996 (_ BitVec 32))) )
))
(declare-fun lt!443576 () array!63343)

(declare-fun lt!443579 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63343 (_ BitVec 32)) SeekEntryResult!9425)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003219 (= res!672861 (not (= lt!443582 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443579 mask!3464) lt!443579 lt!443576 mask!3464))))))

(declare-fun a!3219 () array!63343)

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1003219 (= lt!443579 (select (store (arr!30493 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1003219 (= lt!443576 (array!63344 (store (arr!30493 a!3219) i!1194 k!2224) (size!30996 a!3219)))))

(declare-fun b!1003220 () Bool)

(declare-fun res!672856 () Bool)

(declare-fun e!565100 () Bool)

(assert (=> b!1003220 (=> (not res!672856) (not e!565100))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003220 (= res!672856 (validKeyInArray!0 (select (arr!30493 a!3219) j!170)))))

(declare-fun b!1003221 () Bool)

(declare-fun res!672853 () Bool)

(assert (=> b!1003221 (=> (not res!672853) (not e!565101))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1003221 (= res!672853 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003222 () Bool)

(declare-fun res!672857 () Bool)

(declare-fun e!565098 () Bool)

(assert (=> b!1003222 (=> (not res!672857) (not e!565098))))

(declare-fun lt!443580 () SeekEntryResult!9425)

(declare-fun lt!443581 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1003222 (= res!672857 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443581 (select (arr!30493 a!3219) j!170) a!3219 mask!3464) lt!443580))))

(declare-fun b!1003223 () Bool)

(declare-fun res!672864 () Bool)

(assert (=> b!1003223 (=> (not res!672864) (not e!565100))))

(assert (=> b!1003223 (= res!672864 (and (= (size!30996 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30996 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30996 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003224 () Bool)

(assert (=> b!1003224 (= e!565101 e!565098)))

(declare-fun res!672868 () Bool)

(assert (=> b!1003224 (=> (not res!672868) (not e!565098))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003224 (= res!672868 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443581 #b00000000000000000000000000000000) (bvslt lt!443581 (size!30996 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003224 (= lt!443581 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1003225 () Bool)

(declare-fun res!672855 () Bool)

(declare-fun e!565102 () Bool)

(assert (=> b!1003225 (=> (not res!672855) (not e!565102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63343 (_ BitVec 32)) Bool)

(assert (=> b!1003225 (= res!672855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003226 () Bool)

(declare-fun e!565097 () Bool)

(assert (=> b!1003226 (= e!565097 e!565103)))

(declare-fun res!672858 () Bool)

(assert (=> b!1003226 (=> (not res!672858) (not e!565103))))

(declare-fun lt!443583 () SeekEntryResult!9425)

(assert (=> b!1003226 (= res!672858 (= lt!443583 lt!443580))))

(assert (=> b!1003226 (= lt!443583 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30493 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003227 () Bool)

(assert (=> b!1003227 (= e!565100 e!565102)))

(declare-fun res!672863 () Bool)

(assert (=> b!1003227 (=> (not res!672863) (not e!565102))))

(declare-fun lt!443578 () SeekEntryResult!9425)

(assert (=> b!1003227 (= res!672863 (or (= lt!443578 (MissingVacant!9425 i!1194)) (= lt!443578 (MissingZero!9425 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63343 (_ BitVec 32)) SeekEntryResult!9425)

(assert (=> b!1003227 (= lt!443578 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1003228 () Bool)

(assert (=> b!1003228 (= e!565098 false)))

(declare-fun lt!443577 () SeekEntryResult!9425)

(assert (=> b!1003228 (= lt!443577 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443581 lt!443579 lt!443576 mask!3464))))

(declare-fun b!1003230 () Bool)

(assert (=> b!1003230 (= e!565102 e!565097)))

(declare-fun res!672862 () Bool)

(assert (=> b!1003230 (=> (not res!672862) (not e!565097))))

(assert (=> b!1003230 (= res!672862 (= lt!443582 lt!443580))))

(assert (=> b!1003230 (= lt!443580 (Intermediate!9425 false resIndex!38 resX!38))))

(assert (=> b!1003230 (= lt!443582 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30493 a!3219) j!170) mask!3464) (select (arr!30493 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003231 () Bool)

(declare-fun res!672865 () Bool)

(assert (=> b!1003231 (=> (not res!672865) (not e!565102))))

(assert (=> b!1003231 (= res!672865 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30996 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30996 a!3219))))))

(declare-fun b!1003232 () Bool)

(declare-fun res!672859 () Bool)

(assert (=> b!1003232 (=> (not res!672859) (not e!565102))))

(declare-datatypes ((List!21295 0))(
  ( (Nil!21292) (Cons!21291 (h!22468 (_ BitVec 64)) (t!30304 List!21295)) )
))
(declare-fun arrayNoDuplicates!0 (array!63343 (_ BitVec 32) List!21295) Bool)

(assert (=> b!1003232 (= res!672859 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21292))))

(declare-fun res!672866 () Bool)

(assert (=> start!86590 (=> (not res!672866) (not e!565100))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86590 (= res!672866 (validMask!0 mask!3464))))

(assert (=> start!86590 e!565100))

(declare-fun array_inv!23483 (array!63343) Bool)

(assert (=> start!86590 (array_inv!23483 a!3219)))

(assert (=> start!86590 true))

(declare-fun b!1003229 () Bool)

(declare-fun res!672867 () Bool)

(assert (=> b!1003229 (=> (not res!672867) (not e!565100))))

(declare-fun arrayContainsKey!0 (array!63343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003229 (= res!672867 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1003233 () Bool)

(declare-fun res!672854 () Bool)

(assert (=> b!1003233 (=> (not res!672854) (not e!565100))))

(assert (=> b!1003233 (= res!672854 (validKeyInArray!0 k!2224))))

(declare-fun b!1003234 () Bool)

(declare-fun res!672860 () Bool)

(assert (=> b!1003234 (=> (not res!672860) (not e!565101))))

(assert (=> b!1003234 (= res!672860 (not (= lt!443583 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443579 lt!443576 mask!3464))))))

(assert (= (and start!86590 res!672866) b!1003223))

(assert (= (and b!1003223 res!672864) b!1003220))

(assert (= (and b!1003220 res!672856) b!1003233))

(assert (= (and b!1003233 res!672854) b!1003229))

(assert (= (and b!1003229 res!672867) b!1003227))

(assert (= (and b!1003227 res!672863) b!1003225))

(assert (= (and b!1003225 res!672855) b!1003232))

(assert (= (and b!1003232 res!672859) b!1003231))

(assert (= (and b!1003231 res!672865) b!1003230))

(assert (= (and b!1003230 res!672862) b!1003226))

(assert (= (and b!1003226 res!672858) b!1003219))

(assert (= (and b!1003219 res!672861) b!1003234))

(assert (= (and b!1003234 res!672860) b!1003221))

(assert (= (and b!1003221 res!672853) b!1003224))

(assert (= (and b!1003224 res!672868) b!1003222))

(assert (= (and b!1003222 res!672857) b!1003228))

(declare-fun m!929061 () Bool)

(assert (=> b!1003230 m!929061))

(assert (=> b!1003230 m!929061))

(declare-fun m!929063 () Bool)

(assert (=> b!1003230 m!929063))

(assert (=> b!1003230 m!929063))

(assert (=> b!1003230 m!929061))

(declare-fun m!929065 () Bool)

(assert (=> b!1003230 m!929065))

(declare-fun m!929067 () Bool)

(assert (=> b!1003227 m!929067))

(declare-fun m!929069 () Bool)

(assert (=> b!1003234 m!929069))

(declare-fun m!929071 () Bool)

(assert (=> start!86590 m!929071))

(declare-fun m!929073 () Bool)

(assert (=> start!86590 m!929073))

(declare-fun m!929075 () Bool)

(assert (=> b!1003224 m!929075))

(assert (=> b!1003226 m!929061))

(assert (=> b!1003226 m!929061))

(declare-fun m!929077 () Bool)

(assert (=> b!1003226 m!929077))

(declare-fun m!929079 () Bool)

(assert (=> b!1003219 m!929079))

(assert (=> b!1003219 m!929079))

(declare-fun m!929081 () Bool)

(assert (=> b!1003219 m!929081))

(declare-fun m!929083 () Bool)

(assert (=> b!1003219 m!929083))

(declare-fun m!929085 () Bool)

(assert (=> b!1003219 m!929085))

(declare-fun m!929087 () Bool)

(assert (=> b!1003233 m!929087))

(declare-fun m!929089 () Bool)

(assert (=> b!1003228 m!929089))

(declare-fun m!929091 () Bool)

(assert (=> b!1003225 m!929091))

(declare-fun m!929093 () Bool)

(assert (=> b!1003232 m!929093))

(assert (=> b!1003222 m!929061))

(assert (=> b!1003222 m!929061))

(declare-fun m!929095 () Bool)

(assert (=> b!1003222 m!929095))

(assert (=> b!1003220 m!929061))

(assert (=> b!1003220 m!929061))

(declare-fun m!929097 () Bool)

(assert (=> b!1003220 m!929097))

(declare-fun m!929099 () Bool)

(assert (=> b!1003229 m!929099))

(push 1)

