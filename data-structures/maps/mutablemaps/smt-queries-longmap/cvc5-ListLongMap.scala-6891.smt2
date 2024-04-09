; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86632 () Bool)

(assert start!86632)

(declare-fun b!1004227 () Bool)

(declare-fun res!673873 () Bool)

(declare-fun e!565542 () Bool)

(assert (=> b!1004227 (=> (not res!673873) (not e!565542))))

(declare-datatypes ((SeekEntryResult!9446 0))(
  ( (MissingZero!9446 (index!40154 (_ BitVec 32))) (Found!9446 (index!40155 (_ BitVec 32))) (Intermediate!9446 (undefined!10258 Bool) (index!40156 (_ BitVec 32)) (x!87587 (_ BitVec 32))) (Undefined!9446) (MissingVacant!9446 (index!40157 (_ BitVec 32))) )
))
(declare-fun lt!444085 () SeekEntryResult!9446)

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((array!63385 0))(
  ( (array!63386 (arr!30514 (Array (_ BitVec 32) (_ BitVec 64))) (size!31017 (_ BitVec 32))) )
))
(declare-fun lt!444083 () array!63385)

(declare-fun lt!444087 () (_ BitVec 64))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63385 (_ BitVec 32)) SeekEntryResult!9446)

(assert (=> b!1004227 (= res!673873 (not (= lt!444085 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444087 lt!444083 mask!3464))))))

(declare-fun b!1004228 () Bool)

(declare-fun e!565544 () Bool)

(declare-fun e!565541 () Bool)

(assert (=> b!1004228 (= e!565544 e!565541)))

(declare-fun res!673862 () Bool)

(assert (=> b!1004228 (=> (not res!673862) (not e!565541))))

(declare-fun lt!444082 () SeekEntryResult!9446)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1004228 (= res!673862 (or (= lt!444082 (MissingVacant!9446 i!1194)) (= lt!444082 (MissingZero!9446 i!1194))))))

(declare-fun a!3219 () array!63385)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63385 (_ BitVec 32)) SeekEntryResult!9446)

(assert (=> b!1004228 (= lt!444082 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1004229 () Bool)

(declare-fun res!673864 () Bool)

(assert (=> b!1004229 (=> (not res!673864) (not e!565544))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1004229 (= res!673864 (validKeyInArray!0 (select (arr!30514 a!3219) j!170)))))

(declare-fun b!1004230 () Bool)

(declare-fun res!673869 () Bool)

(assert (=> b!1004230 (=> (not res!673869) (not e!565541))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1004230 (= res!673869 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31017 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31017 a!3219))))))

(declare-fun b!1004232 () Bool)

(declare-fun res!673863 () Bool)

(assert (=> b!1004232 (=> (not res!673863) (not e!565541))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63385 (_ BitVec 32)) Bool)

(assert (=> b!1004232 (= res!673863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1004233 () Bool)

(declare-fun res!673870 () Bool)

(assert (=> b!1004233 (=> (not res!673870) (not e!565544))))

(declare-fun arrayContainsKey!0 (array!63385 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1004233 (= res!673870 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1004234 () Bool)

(declare-fun res!673861 () Bool)

(assert (=> b!1004234 (=> (not res!673861) (not e!565544))))

(assert (=> b!1004234 (= res!673861 (and (= (size!31017 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31017 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31017 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1004235 () Bool)

(declare-fun e!565543 () Bool)

(declare-fun e!565540 () Bool)

(assert (=> b!1004235 (= e!565543 e!565540)))

(declare-fun res!673871 () Bool)

(assert (=> b!1004235 (=> (not res!673871) (not e!565540))))

(declare-fun lt!444081 () SeekEntryResult!9446)

(assert (=> b!1004235 (= res!673871 (= lt!444085 lt!444081))))

(assert (=> b!1004235 (= lt!444085 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30514 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004236 () Bool)

(assert (=> b!1004236 (= e!565541 e!565543)))

(declare-fun res!673866 () Bool)

(assert (=> b!1004236 (=> (not res!673866) (not e!565543))))

(declare-fun lt!444086 () SeekEntryResult!9446)

(assert (=> b!1004236 (= res!673866 (= lt!444086 lt!444081))))

(assert (=> b!1004236 (= lt!444081 (Intermediate!9446 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004236 (= lt!444086 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30514 a!3219) j!170) mask!3464) (select (arr!30514 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004237 () Bool)

(declare-fun res!673875 () Bool)

(assert (=> b!1004237 (=> (not res!673875) (not e!565542))))

(assert (=> b!1004237 (= res!673875 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1004238 () Bool)

(declare-fun res!673868 () Bool)

(assert (=> b!1004238 (=> (not res!673868) (not e!565544))))

(assert (=> b!1004238 (= res!673868 (validKeyInArray!0 k!2224))))

(declare-fun b!1004239 () Bool)

(declare-fun res!673872 () Bool)

(declare-fun e!565538 () Bool)

(assert (=> b!1004239 (=> (not res!673872) (not e!565538))))

(declare-fun lt!444084 () (_ BitVec 32))

(assert (=> b!1004239 (= res!673872 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!444084 (select (arr!30514 a!3219) j!170) a!3219 mask!3464) lt!444081))))

(declare-fun b!1004240 () Bool)

(declare-fun res!673865 () Bool)

(assert (=> b!1004240 (=> (not res!673865) (not e!565541))))

(declare-datatypes ((List!21316 0))(
  ( (Nil!21313) (Cons!21312 (h!22489 (_ BitVec 64)) (t!30325 List!21316)) )
))
(declare-fun arrayNoDuplicates!0 (array!63385 (_ BitVec 32) List!21316) Bool)

(assert (=> b!1004240 (= res!673865 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21313))))

(declare-fun b!1004241 () Bool)

(assert (=> b!1004241 (= e!565540 e!565542)))

(declare-fun res!673874 () Bool)

(assert (=> b!1004241 (=> (not res!673874) (not e!565542))))

(assert (=> b!1004241 (= res!673874 (not (= lt!444086 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444087 mask!3464) lt!444087 lt!444083 mask!3464))))))

(assert (=> b!1004241 (= lt!444087 (select (store (arr!30514 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1004241 (= lt!444083 (array!63386 (store (arr!30514 a!3219) i!1194 k!2224) (size!31017 a!3219)))))

(declare-fun b!1004242 () Bool)

(assert (=> b!1004242 (= e!565542 e!565538)))

(declare-fun res!673867 () Bool)

(assert (=> b!1004242 (=> (not res!673867) (not e!565538))))

(assert (=> b!1004242 (= res!673867 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!444084 #b00000000000000000000000000000000) (bvslt lt!444084 (size!31017 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004242 (= lt!444084 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1004231 () Bool)

(assert (=> b!1004231 (= e!565538 false)))

(declare-fun lt!444080 () SeekEntryResult!9446)

(assert (=> b!1004231 (= lt!444080 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!444084 lt!444087 lt!444083 mask!3464))))

(declare-fun res!673876 () Bool)

(assert (=> start!86632 (=> (not res!673876) (not e!565544))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86632 (= res!673876 (validMask!0 mask!3464))))

(assert (=> start!86632 e!565544))

(declare-fun array_inv!23504 (array!63385) Bool)

(assert (=> start!86632 (array_inv!23504 a!3219)))

(assert (=> start!86632 true))

(assert (= (and start!86632 res!673876) b!1004234))

(assert (= (and b!1004234 res!673861) b!1004229))

(assert (= (and b!1004229 res!673864) b!1004238))

(assert (= (and b!1004238 res!673868) b!1004233))

(assert (= (and b!1004233 res!673870) b!1004228))

(assert (= (and b!1004228 res!673862) b!1004232))

(assert (= (and b!1004232 res!673863) b!1004240))

(assert (= (and b!1004240 res!673865) b!1004230))

(assert (= (and b!1004230 res!673869) b!1004236))

(assert (= (and b!1004236 res!673866) b!1004235))

(assert (= (and b!1004235 res!673871) b!1004241))

(assert (= (and b!1004241 res!673874) b!1004227))

(assert (= (and b!1004227 res!673873) b!1004237))

(assert (= (and b!1004237 res!673875) b!1004242))

(assert (= (and b!1004242 res!673867) b!1004239))

(assert (= (and b!1004239 res!673872) b!1004231))

(declare-fun m!929901 () Bool)

(assert (=> b!1004240 m!929901))

(declare-fun m!929903 () Bool)

(assert (=> start!86632 m!929903))

(declare-fun m!929905 () Bool)

(assert (=> start!86632 m!929905))

(declare-fun m!929907 () Bool)

(assert (=> b!1004232 m!929907))

(declare-fun m!929909 () Bool)

(assert (=> b!1004241 m!929909))

(assert (=> b!1004241 m!929909))

(declare-fun m!929911 () Bool)

(assert (=> b!1004241 m!929911))

(declare-fun m!929913 () Bool)

(assert (=> b!1004241 m!929913))

(declare-fun m!929915 () Bool)

(assert (=> b!1004241 m!929915))

(declare-fun m!929917 () Bool)

(assert (=> b!1004238 m!929917))

(declare-fun m!929919 () Bool)

(assert (=> b!1004242 m!929919))

(declare-fun m!929921 () Bool)

(assert (=> b!1004233 m!929921))

(declare-fun m!929923 () Bool)

(assert (=> b!1004228 m!929923))

(declare-fun m!929925 () Bool)

(assert (=> b!1004235 m!929925))

(assert (=> b!1004235 m!929925))

(declare-fun m!929927 () Bool)

(assert (=> b!1004235 m!929927))

(assert (=> b!1004229 m!929925))

(assert (=> b!1004229 m!929925))

(declare-fun m!929929 () Bool)

(assert (=> b!1004229 m!929929))

(declare-fun m!929931 () Bool)

(assert (=> b!1004231 m!929931))

(assert (=> b!1004239 m!929925))

(assert (=> b!1004239 m!929925))

(declare-fun m!929933 () Bool)

(assert (=> b!1004239 m!929933))

(declare-fun m!929935 () Bool)

(assert (=> b!1004227 m!929935))

(assert (=> b!1004236 m!929925))

(assert (=> b!1004236 m!929925))

(declare-fun m!929937 () Bool)

(assert (=> b!1004236 m!929937))

(assert (=> b!1004236 m!929937))

(assert (=> b!1004236 m!929925))

(declare-fun m!929939 () Bool)

(assert (=> b!1004236 m!929939))

(push 1)

