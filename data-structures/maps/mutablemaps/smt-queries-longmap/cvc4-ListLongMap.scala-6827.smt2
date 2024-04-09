; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85988 () Bool)

(assert start!85988)

(declare-fun b!995853 () Bool)

(declare-fun res!666211 () Bool)

(declare-fun e!561961 () Bool)

(assert (=> b!995853 (=> (not res!666211) (not e!561961))))

(declare-datatypes ((array!62990 0))(
  ( (array!62991 (arr!30324 (Array (_ BitVec 32) (_ BitVec 64))) (size!30827 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62990)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!62990 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995853 (= res!666211 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!995854 () Bool)

(declare-fun res!666210 () Bool)

(declare-fun e!561960 () Bool)

(assert (=> b!995854 (=> (not res!666210) (not e!561960))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62990 (_ BitVec 32)) Bool)

(assert (=> b!995854 (= res!666210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995855 () Bool)

(assert (=> b!995855 (= e!561960 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!441045 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!995855 (= lt!441045 (toIndex!0 (select (arr!30324 a!3219) j!170) mask!3464))))

(declare-fun b!995856 () Bool)

(declare-fun res!666209 () Bool)

(assert (=> b!995856 (=> (not res!666209) (not e!561961))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995856 (= res!666209 (and (= (size!30827 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30827 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30827 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!995857 () Bool)

(declare-fun res!666212 () Bool)

(assert (=> b!995857 (=> (not res!666212) (not e!561960))))

(declare-datatypes ((List!21126 0))(
  ( (Nil!21123) (Cons!21122 (h!22284 (_ BitVec 64)) (t!30135 List!21126)) )
))
(declare-fun arrayNoDuplicates!0 (array!62990 (_ BitVec 32) List!21126) Bool)

(assert (=> b!995857 (= res!666212 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21123))))

(declare-fun b!995858 () Bool)

(declare-fun res!666215 () Bool)

(assert (=> b!995858 (=> (not res!666215) (not e!561960))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!995858 (= res!666215 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30827 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30827 a!3219))))))

(declare-fun res!666214 () Bool)

(assert (=> start!85988 (=> (not res!666214) (not e!561961))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85988 (= res!666214 (validMask!0 mask!3464))))

(assert (=> start!85988 e!561961))

(declare-fun array_inv!23314 (array!62990) Bool)

(assert (=> start!85988 (array_inv!23314 a!3219)))

(assert (=> start!85988 true))

(declare-fun b!995852 () Bool)

(declare-fun res!666213 () Bool)

(assert (=> b!995852 (=> (not res!666213) (not e!561961))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995852 (= res!666213 (validKeyInArray!0 k!2224))))

(declare-fun b!995859 () Bool)

(declare-fun res!666217 () Bool)

(assert (=> b!995859 (=> (not res!666217) (not e!561961))))

(assert (=> b!995859 (= res!666217 (validKeyInArray!0 (select (arr!30324 a!3219) j!170)))))

(declare-fun b!995860 () Bool)

(assert (=> b!995860 (= e!561961 e!561960)))

(declare-fun res!666216 () Bool)

(assert (=> b!995860 (=> (not res!666216) (not e!561960))))

(declare-datatypes ((SeekEntryResult!9256 0))(
  ( (MissingZero!9256 (index!39394 (_ BitVec 32))) (Found!9256 (index!39395 (_ BitVec 32))) (Intermediate!9256 (undefined!10068 Bool) (index!39396 (_ BitVec 32)) (x!86858 (_ BitVec 32))) (Undefined!9256) (MissingVacant!9256 (index!39397 (_ BitVec 32))) )
))
(declare-fun lt!441044 () SeekEntryResult!9256)

(assert (=> b!995860 (= res!666216 (or (= lt!441044 (MissingVacant!9256 i!1194)) (= lt!441044 (MissingZero!9256 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62990 (_ BitVec 32)) SeekEntryResult!9256)

(assert (=> b!995860 (= lt!441044 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(assert (= (and start!85988 res!666214) b!995856))

(assert (= (and b!995856 res!666209) b!995859))

(assert (= (and b!995859 res!666217) b!995852))

(assert (= (and b!995852 res!666213) b!995853))

(assert (= (and b!995853 res!666211) b!995860))

(assert (= (and b!995860 res!666216) b!995854))

(assert (= (and b!995854 res!666210) b!995857))

(assert (= (and b!995857 res!666212) b!995858))

(assert (= (and b!995858 res!666215) b!995855))

(declare-fun m!923221 () Bool)

(assert (=> b!995855 m!923221))

(assert (=> b!995855 m!923221))

(declare-fun m!923223 () Bool)

(assert (=> b!995855 m!923223))

(declare-fun m!923225 () Bool)

(assert (=> b!995860 m!923225))

(declare-fun m!923227 () Bool)

(assert (=> b!995857 m!923227))

(declare-fun m!923229 () Bool)

(assert (=> b!995852 m!923229))

(declare-fun m!923231 () Bool)

(assert (=> start!85988 m!923231))

(declare-fun m!923233 () Bool)

(assert (=> start!85988 m!923233))

(declare-fun m!923235 () Bool)

(assert (=> b!995854 m!923235))

(assert (=> b!995859 m!923221))

(assert (=> b!995859 m!923221))

(declare-fun m!923237 () Bool)

(assert (=> b!995859 m!923237))

(declare-fun m!923239 () Bool)

(assert (=> b!995853 m!923239))

(push 1)

(assert (not b!995857))

(assert (not b!995855))

(assert (not start!85988))

(assert (not b!995860))

(assert (not b!995854))

(assert (not b!995853))

(assert (not b!995852))

(assert (not b!995859))

