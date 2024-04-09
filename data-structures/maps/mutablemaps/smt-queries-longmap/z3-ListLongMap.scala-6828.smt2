; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85992 () Bool)

(assert start!85992)

(declare-fun b!995906 () Bool)

(declare-fun res!666271 () Bool)

(declare-fun e!561979 () Bool)

(assert (=> b!995906 (=> (not res!666271) (not e!561979))))

(declare-datatypes ((array!62994 0))(
  ( (array!62995 (arr!30326 (Array (_ BitVec 32) (_ BitVec 64))) (size!30829 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62994)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!995906 (= res!666271 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30829 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30829 a!3219))))))

(declare-fun b!995907 () Bool)

(assert (=> b!995907 (= e!561979 false)))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!441057 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!995907 (= lt!441057 (toIndex!0 (select (arr!30326 a!3219) j!170) mask!3464))))

(declare-fun b!995908 () Bool)

(declare-fun res!666267 () Bool)

(assert (=> b!995908 (=> (not res!666267) (not e!561979))))

(declare-datatypes ((List!21128 0))(
  ( (Nil!21125) (Cons!21124 (h!22286 (_ BitVec 64)) (t!30137 List!21128)) )
))
(declare-fun arrayNoDuplicates!0 (array!62994 (_ BitVec 32) List!21128) Bool)

(assert (=> b!995908 (= res!666267 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21125))))

(declare-fun res!666268 () Bool)

(declare-fun e!561980 () Bool)

(assert (=> start!85992 (=> (not res!666268) (not e!561980))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85992 (= res!666268 (validMask!0 mask!3464))))

(assert (=> start!85992 e!561980))

(declare-fun array_inv!23316 (array!62994) Bool)

(assert (=> start!85992 (array_inv!23316 a!3219)))

(assert (=> start!85992 true))

(declare-fun b!995909 () Bool)

(declare-fun res!666269 () Bool)

(assert (=> b!995909 (=> (not res!666269) (not e!561980))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995909 (= res!666269 (and (= (size!30829 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30829 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30829 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!995910 () Bool)

(declare-fun res!666263 () Bool)

(assert (=> b!995910 (=> (not res!666263) (not e!561980))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995910 (= res!666263 (validKeyInArray!0 (select (arr!30326 a!3219) j!170)))))

(declare-fun b!995911 () Bool)

(declare-fun res!666264 () Bool)

(assert (=> b!995911 (=> (not res!666264) (not e!561979))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62994 (_ BitVec 32)) Bool)

(assert (=> b!995911 (= res!666264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995912 () Bool)

(assert (=> b!995912 (= e!561980 e!561979)))

(declare-fun res!666265 () Bool)

(assert (=> b!995912 (=> (not res!666265) (not e!561979))))

(declare-datatypes ((SeekEntryResult!9258 0))(
  ( (MissingZero!9258 (index!39402 (_ BitVec 32))) (Found!9258 (index!39403 (_ BitVec 32))) (Intermediate!9258 (undefined!10070 Bool) (index!39404 (_ BitVec 32)) (x!86868 (_ BitVec 32))) (Undefined!9258) (MissingVacant!9258 (index!39405 (_ BitVec 32))) )
))
(declare-fun lt!441056 () SeekEntryResult!9258)

(assert (=> b!995912 (= res!666265 (or (= lt!441056 (MissingVacant!9258 i!1194)) (= lt!441056 (MissingZero!9258 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62994 (_ BitVec 32)) SeekEntryResult!9258)

(assert (=> b!995912 (= lt!441056 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!995913 () Bool)

(declare-fun res!666270 () Bool)

(assert (=> b!995913 (=> (not res!666270) (not e!561980))))

(declare-fun arrayContainsKey!0 (array!62994 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995913 (= res!666270 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!995914 () Bool)

(declare-fun res!666266 () Bool)

(assert (=> b!995914 (=> (not res!666266) (not e!561980))))

(assert (=> b!995914 (= res!666266 (validKeyInArray!0 k0!2224))))

(assert (= (and start!85992 res!666268) b!995909))

(assert (= (and b!995909 res!666269) b!995910))

(assert (= (and b!995910 res!666263) b!995914))

(assert (= (and b!995914 res!666266) b!995913))

(assert (= (and b!995913 res!666270) b!995912))

(assert (= (and b!995912 res!666265) b!995911))

(assert (= (and b!995911 res!666264) b!995908))

(assert (= (and b!995908 res!666267) b!995906))

(assert (= (and b!995906 res!666271) b!995907))

(declare-fun m!923261 () Bool)

(assert (=> b!995913 m!923261))

(declare-fun m!923263 () Bool)

(assert (=> b!995908 m!923263))

(declare-fun m!923265 () Bool)

(assert (=> b!995907 m!923265))

(assert (=> b!995907 m!923265))

(declare-fun m!923267 () Bool)

(assert (=> b!995907 m!923267))

(declare-fun m!923269 () Bool)

(assert (=> start!85992 m!923269))

(declare-fun m!923271 () Bool)

(assert (=> start!85992 m!923271))

(declare-fun m!923273 () Bool)

(assert (=> b!995914 m!923273))

(declare-fun m!923275 () Bool)

(assert (=> b!995911 m!923275))

(assert (=> b!995910 m!923265))

(assert (=> b!995910 m!923265))

(declare-fun m!923277 () Bool)

(assert (=> b!995910 m!923277))

(declare-fun m!923279 () Bool)

(assert (=> b!995912 m!923279))

(check-sat (not b!995914) (not start!85992) (not b!995913) (not b!995908) (not b!995911) (not b!995912) (not b!995907) (not b!995910))
(check-sat)
