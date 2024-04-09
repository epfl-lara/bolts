; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68514 () Bool)

(assert start!68514)

(declare-fun b!796181 () Bool)

(declare-fun res!540871 () Bool)

(declare-fun e!441825 () Bool)

(assert (=> b!796181 (=> (not res!540871) (not e!441825))))

(declare-datatypes ((array!43255 0))(
  ( (array!43256 (arr!20704 (Array (_ BitVec 32) (_ BitVec 64))) (size!21125 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43255)

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43255 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796181 (= res!540871 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796182 () Bool)

(declare-fun res!540870 () Bool)

(assert (=> b!796182 (=> (not res!540870) (not e!441825))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796182 (= res!540870 (validKeyInArray!0 k0!2044))))

(declare-fun b!796183 () Bool)

(declare-fun res!540872 () Bool)

(assert (=> b!796183 (=> (not res!540872) (not e!441825))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!796183 (= res!540872 (validKeyInArray!0 (select (arr!20704 a!3170) j!153)))))

(declare-fun b!796184 () Bool)

(declare-fun res!540873 () Bool)

(declare-fun e!441828 () Bool)

(assert (=> b!796184 (=> (not res!540873) (not e!441828))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!796184 (= res!540873 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21125 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20704 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21125 a!3170)) (= (select (arr!20704 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796185 () Bool)

(declare-fun res!540879 () Bool)

(assert (=> b!796185 (=> (not res!540879) (not e!441825))))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!796185 (= res!540879 (and (= (size!21125 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21125 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21125 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!540877 () Bool)

(assert (=> start!68514 (=> (not res!540877) (not e!441825))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68514 (= res!540877 (validMask!0 mask!3266))))

(assert (=> start!68514 e!441825))

(assert (=> start!68514 true))

(declare-fun array_inv!16478 (array!43255) Bool)

(assert (=> start!68514 (array_inv!16478 a!3170)))

(declare-fun b!796186 () Bool)

(assert (=> b!796186 (= e!441825 e!441828)))

(declare-fun res!540880 () Bool)

(assert (=> b!796186 (=> (not res!540880) (not e!441828))))

(declare-datatypes ((SeekEntryResult!8302 0))(
  ( (MissingZero!8302 (index!35575 (_ BitVec 32))) (Found!8302 (index!35576 (_ BitVec 32))) (Intermediate!8302 (undefined!9114 Bool) (index!35577 (_ BitVec 32)) (x!66509 (_ BitVec 32))) (Undefined!8302) (MissingVacant!8302 (index!35578 (_ BitVec 32))) )
))
(declare-fun lt!355021 () SeekEntryResult!8302)

(assert (=> b!796186 (= res!540880 (or (= lt!355021 (MissingZero!8302 i!1163)) (= lt!355021 (MissingVacant!8302 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43255 (_ BitVec 32)) SeekEntryResult!8302)

(assert (=> b!796186 (= lt!355021 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!796187 () Bool)

(declare-fun e!441829 () Bool)

(declare-fun e!441826 () Bool)

(assert (=> b!796187 (= e!441829 e!441826)))

(declare-fun res!540876 () Bool)

(assert (=> b!796187 (=> (not res!540876) (not e!441826))))

(declare-fun lt!355016 () SeekEntryResult!8302)

(declare-fun lt!355019 () SeekEntryResult!8302)

(assert (=> b!796187 (= res!540876 (and (= lt!355019 lt!355016) (= lt!355016 (Found!8302 j!153)) (= (select (arr!20704 a!3170) index!1236) (select (arr!20704 a!3170) j!153))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43255 (_ BitVec 32)) SeekEntryResult!8302)

(assert (=> b!796187 (= lt!355016 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20704 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!796187 (= lt!355019 (seekEntryOrOpen!0 (select (arr!20704 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796188 () Bool)

(assert (=> b!796188 (= e!441828 e!441829)))

(declare-fun res!540874 () Bool)

(assert (=> b!796188 (=> (not res!540874) (not e!441829))))

(declare-fun lt!355017 () SeekEntryResult!8302)

(declare-fun lt!355018 () SeekEntryResult!8302)

(assert (=> b!796188 (= res!540874 (= lt!355017 lt!355018))))

(declare-fun lt!355020 () (_ BitVec 64))

(declare-fun lt!355015 () array!43255)

(assert (=> b!796188 (= lt!355018 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355020 lt!355015 mask!3266))))

(assert (=> b!796188 (= lt!355017 (seekEntryOrOpen!0 lt!355020 lt!355015 mask!3266))))

(assert (=> b!796188 (= lt!355020 (select (store (arr!20704 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!796188 (= lt!355015 (array!43256 (store (arr!20704 a!3170) i!1163 k0!2044) (size!21125 a!3170)))))

(declare-fun b!796189 () Bool)

(declare-fun res!540878 () Bool)

(assert (=> b!796189 (=> (not res!540878) (not e!441828))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43255 (_ BitVec 32)) Bool)

(assert (=> b!796189 (= res!540878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796190 () Bool)

(declare-fun res!540875 () Bool)

(assert (=> b!796190 (=> (not res!540875) (not e!441828))))

(declare-datatypes ((List!14720 0))(
  ( (Nil!14717) (Cons!14716 (h!15845 (_ BitVec 64)) (t!21043 List!14720)) )
))
(declare-fun arrayNoDuplicates!0 (array!43255 (_ BitVec 32) List!14720) Bool)

(assert (=> b!796190 (= res!540875 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14717))))

(declare-fun b!796191 () Bool)

(assert (=> b!796191 (= e!441826 (not (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(assert (=> b!796191 (= lt!355018 (Found!8302 index!1236))))

(assert (= (and start!68514 res!540877) b!796185))

(assert (= (and b!796185 res!540879) b!796183))

(assert (= (and b!796183 res!540872) b!796182))

(assert (= (and b!796182 res!540870) b!796181))

(assert (= (and b!796181 res!540871) b!796186))

(assert (= (and b!796186 res!540880) b!796189))

(assert (= (and b!796189 res!540878) b!796190))

(assert (= (and b!796190 res!540875) b!796184))

(assert (= (and b!796184 res!540873) b!796188))

(assert (= (and b!796188 res!540874) b!796187))

(assert (= (and b!796187 res!540876) b!796191))

(declare-fun m!737053 () Bool)

(assert (=> b!796186 m!737053))

(declare-fun m!737055 () Bool)

(assert (=> b!796188 m!737055))

(declare-fun m!737057 () Bool)

(assert (=> b!796188 m!737057))

(declare-fun m!737059 () Bool)

(assert (=> b!796188 m!737059))

(declare-fun m!737061 () Bool)

(assert (=> b!796188 m!737061))

(declare-fun m!737063 () Bool)

(assert (=> b!796183 m!737063))

(assert (=> b!796183 m!737063))

(declare-fun m!737065 () Bool)

(assert (=> b!796183 m!737065))

(declare-fun m!737067 () Bool)

(assert (=> b!796190 m!737067))

(declare-fun m!737069 () Bool)

(assert (=> b!796189 m!737069))

(declare-fun m!737071 () Bool)

(assert (=> b!796187 m!737071))

(assert (=> b!796187 m!737063))

(assert (=> b!796187 m!737063))

(declare-fun m!737073 () Bool)

(assert (=> b!796187 m!737073))

(assert (=> b!796187 m!737063))

(declare-fun m!737075 () Bool)

(assert (=> b!796187 m!737075))

(declare-fun m!737077 () Bool)

(assert (=> b!796182 m!737077))

(declare-fun m!737079 () Bool)

(assert (=> b!796184 m!737079))

(declare-fun m!737081 () Bool)

(assert (=> b!796184 m!737081))

(declare-fun m!737083 () Bool)

(assert (=> b!796181 m!737083))

(declare-fun m!737085 () Bool)

(assert (=> start!68514 m!737085))

(declare-fun m!737087 () Bool)

(assert (=> start!68514 m!737087))

(check-sat (not b!796181) (not start!68514) (not b!796188) (not b!796189) (not b!796187) (not b!796190) (not b!796182) (not b!796183) (not b!796186))
(check-sat)
