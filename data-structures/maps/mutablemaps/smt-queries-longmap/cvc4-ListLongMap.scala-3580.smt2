; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49286 () Bool)

(assert start!49286)

(declare-fun b!542163 () Bool)

(declare-fun res!336864 () Bool)

(declare-fun e!313834 () Bool)

(assert (=> b!542163 (=> (not res!336864) (not e!313834))))

(declare-datatypes ((array!34250 0))(
  ( (array!34251 (arr!16454 (Array (_ BitVec 32) (_ BitVec 64))) (size!16818 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34250)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!542163 (= res!336864 (and (= (size!16818 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16818 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16818 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542164 () Bool)

(declare-fun res!336867 () Bool)

(declare-fun e!313831 () Bool)

(assert (=> b!542164 (=> (not res!336867) (not e!313831))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542164 (= res!336867 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16818 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16818 a!3154)) (= (select (arr!16454 a!3154) resIndex!32) (select (arr!16454 a!3154) j!147))))))

(declare-fun b!542165 () Bool)

(declare-fun res!336873 () Bool)

(assert (=> b!542165 (=> (not res!336873) (not e!313834))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542165 (= res!336873 (validKeyInArray!0 k!1998))))

(declare-fun b!542166 () Bool)

(assert (=> b!542166 (= e!313834 e!313831)))

(declare-fun res!336868 () Bool)

(assert (=> b!542166 (=> (not res!336868) (not e!313831))))

(declare-datatypes ((SeekEntryResult!4919 0))(
  ( (MissingZero!4919 (index!21900 (_ BitVec 32))) (Found!4919 (index!21901 (_ BitVec 32))) (Intermediate!4919 (undefined!5731 Bool) (index!21902 (_ BitVec 32)) (x!50841 (_ BitVec 32))) (Undefined!4919) (MissingVacant!4919 (index!21903 (_ BitVec 32))) )
))
(declare-fun lt!247865 () SeekEntryResult!4919)

(assert (=> b!542166 (= res!336868 (or (= lt!247865 (MissingZero!4919 i!1153)) (= lt!247865 (MissingVacant!4919 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34250 (_ BitVec 32)) SeekEntryResult!4919)

(assert (=> b!542166 (= lt!247865 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!542167 () Bool)

(declare-fun res!336870 () Bool)

(declare-fun e!313832 () Bool)

(assert (=> b!542167 (=> (not res!336870) (not e!313832))))

(assert (=> b!542167 (= res!336870 (and (not (= (select (arr!16454 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16454 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16454 a!3154) index!1177) (select (arr!16454 a!3154) j!147)))))))

(declare-fun b!542168 () Bool)

(assert (=> b!542168 (= e!313832 false)))

(declare-fun lt!247864 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542168 (= lt!247864 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542169 () Bool)

(declare-fun res!336875 () Bool)

(assert (=> b!542169 (=> (not res!336875) (not e!313834))))

(declare-fun arrayContainsKey!0 (array!34250 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542169 (= res!336875 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542170 () Bool)

(declare-fun res!336869 () Bool)

(assert (=> b!542170 (=> (not res!336869) (not e!313832))))

(declare-fun lt!247863 () SeekEntryResult!4919)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34250 (_ BitVec 32)) SeekEntryResult!4919)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542170 (= res!336869 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16454 a!3154) j!147) mask!3216) (select (arr!16454 a!3154) j!147) a!3154 mask!3216) lt!247863))))

(declare-fun b!542171 () Bool)

(declare-fun res!336871 () Bool)

(assert (=> b!542171 (=> (not res!336871) (not e!313831))))

(declare-datatypes ((List!10626 0))(
  ( (Nil!10623) (Cons!10622 (h!11577 (_ BitVec 64)) (t!16862 List!10626)) )
))
(declare-fun arrayNoDuplicates!0 (array!34250 (_ BitVec 32) List!10626) Bool)

(assert (=> b!542171 (= res!336871 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10623))))

(declare-fun res!336874 () Bool)

(assert (=> start!49286 (=> (not res!336874) (not e!313834))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49286 (= res!336874 (validMask!0 mask!3216))))

(assert (=> start!49286 e!313834))

(assert (=> start!49286 true))

(declare-fun array_inv!12228 (array!34250) Bool)

(assert (=> start!49286 (array_inv!12228 a!3154)))

(declare-fun b!542172 () Bool)

(declare-fun res!336872 () Bool)

(assert (=> b!542172 (=> (not res!336872) (not e!313831))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34250 (_ BitVec 32)) Bool)

(assert (=> b!542172 (= res!336872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542173 () Bool)

(assert (=> b!542173 (= e!313831 e!313832)))

(declare-fun res!336865 () Bool)

(assert (=> b!542173 (=> (not res!336865) (not e!313832))))

(assert (=> b!542173 (= res!336865 (= lt!247863 (Intermediate!4919 false resIndex!32 resX!32)))))

(assert (=> b!542173 (= lt!247863 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16454 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542174 () Bool)

(declare-fun res!336866 () Bool)

(assert (=> b!542174 (=> (not res!336866) (not e!313834))))

(assert (=> b!542174 (= res!336866 (validKeyInArray!0 (select (arr!16454 a!3154) j!147)))))

(assert (= (and start!49286 res!336874) b!542163))

(assert (= (and b!542163 res!336864) b!542174))

(assert (= (and b!542174 res!336866) b!542165))

(assert (= (and b!542165 res!336873) b!542169))

(assert (= (and b!542169 res!336875) b!542166))

(assert (= (and b!542166 res!336868) b!542172))

(assert (= (and b!542172 res!336872) b!542171))

(assert (= (and b!542171 res!336871) b!542164))

(assert (= (and b!542164 res!336867) b!542173))

(assert (= (and b!542173 res!336865) b!542170))

(assert (= (and b!542170 res!336869) b!542167))

(assert (= (and b!542167 res!336870) b!542168))

(declare-fun m!520471 () Bool)

(assert (=> b!542172 m!520471))

(declare-fun m!520473 () Bool)

(assert (=> start!49286 m!520473))

(declare-fun m!520475 () Bool)

(assert (=> start!49286 m!520475))

(declare-fun m!520477 () Bool)

(assert (=> b!542171 m!520477))

(declare-fun m!520479 () Bool)

(assert (=> b!542167 m!520479))

(declare-fun m!520481 () Bool)

(assert (=> b!542167 m!520481))

(declare-fun m!520483 () Bool)

(assert (=> b!542168 m!520483))

(assert (=> b!542170 m!520481))

(assert (=> b!542170 m!520481))

(declare-fun m!520485 () Bool)

(assert (=> b!542170 m!520485))

(assert (=> b!542170 m!520485))

(assert (=> b!542170 m!520481))

(declare-fun m!520487 () Bool)

(assert (=> b!542170 m!520487))

(assert (=> b!542174 m!520481))

(assert (=> b!542174 m!520481))

(declare-fun m!520489 () Bool)

(assert (=> b!542174 m!520489))

(declare-fun m!520491 () Bool)

(assert (=> b!542169 m!520491))

(declare-fun m!520493 () Bool)

(assert (=> b!542166 m!520493))

(declare-fun m!520495 () Bool)

(assert (=> b!542165 m!520495))

(assert (=> b!542173 m!520481))

(assert (=> b!542173 m!520481))

(declare-fun m!520497 () Bool)

(assert (=> b!542173 m!520497))

(declare-fun m!520499 () Bool)

(assert (=> b!542164 m!520499))

(assert (=> b!542164 m!520481))

(push 1)

