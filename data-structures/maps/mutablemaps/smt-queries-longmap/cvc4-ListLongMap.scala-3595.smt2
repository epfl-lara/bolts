; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49460 () Bool)

(assert start!49460)

(declare-fun b!544254 () Bool)

(declare-fun res!338678 () Bool)

(declare-fun e!314673 () Bool)

(assert (=> b!544254 (=> (not res!338678) (not e!314673))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34343 0))(
  ( (array!34344 (arr!16499 (Array (_ BitVec 32) (_ BitVec 64))) (size!16863 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34343)

(assert (=> b!544254 (= res!338678 (and (not (= (select (arr!16499 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16499 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16499 a!3154) index!1177) (select (arr!16499 a!3154) j!147)))))))

(declare-fun b!544255 () Bool)

(declare-fun res!338671 () Bool)

(declare-fun e!314674 () Bool)

(assert (=> b!544255 (=> (not res!338671) (not e!314674))))

(declare-datatypes ((List!10671 0))(
  ( (Nil!10668) (Cons!10667 (h!11625 (_ BitVec 64)) (t!16907 List!10671)) )
))
(declare-fun arrayNoDuplicates!0 (array!34343 (_ BitVec 32) List!10671) Bool)

(assert (=> b!544255 (= res!338671 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10668))))

(declare-fun b!544256 () Bool)

(declare-fun res!338674 () Bool)

(declare-fun e!314672 () Bool)

(assert (=> b!544256 (=> (not res!338674) (not e!314672))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!544256 (= res!338674 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun res!338673 () Bool)

(assert (=> start!49460 (=> (not res!338673) (not e!314672))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49460 (= res!338673 (validMask!0 mask!3216))))

(assert (=> start!49460 e!314672))

(assert (=> start!49460 true))

(declare-fun array_inv!12273 (array!34343) Bool)

(assert (=> start!49460 (array_inv!12273 a!3154)))

(declare-fun b!544257 () Bool)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!544257 (= e!314673 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvslt (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000)))))

(declare-fun lt!248455 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544257 (= lt!248455 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!544258 () Bool)

(declare-fun res!338669 () Bool)

(assert (=> b!544258 (=> (not res!338669) (not e!314674))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34343 (_ BitVec 32)) Bool)

(assert (=> b!544258 (= res!338669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!544259 () Bool)

(declare-fun res!338667 () Bool)

(assert (=> b!544259 (=> (not res!338667) (not e!314672))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!544259 (= res!338667 (validKeyInArray!0 (select (arr!16499 a!3154) j!147)))))

(declare-fun b!544260 () Bool)

(assert (=> b!544260 (= e!314672 e!314674)))

(declare-fun res!338668 () Bool)

(assert (=> b!544260 (=> (not res!338668) (not e!314674))))

(declare-datatypes ((SeekEntryResult!4964 0))(
  ( (MissingZero!4964 (index!22080 (_ BitVec 32))) (Found!4964 (index!22081 (_ BitVec 32))) (Intermediate!4964 (undefined!5776 Bool) (index!22082 (_ BitVec 32)) (x!51021 (_ BitVec 32))) (Undefined!4964) (MissingVacant!4964 (index!22083 (_ BitVec 32))) )
))
(declare-fun lt!248454 () SeekEntryResult!4964)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!544260 (= res!338668 (or (= lt!248454 (MissingZero!4964 i!1153)) (= lt!248454 (MissingVacant!4964 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34343 (_ BitVec 32)) SeekEntryResult!4964)

(assert (=> b!544260 (= lt!248454 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!544261 () Bool)

(assert (=> b!544261 (= e!314674 e!314673)))

(declare-fun res!338676 () Bool)

(assert (=> b!544261 (=> (not res!338676) (not e!314673))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun lt!248456 () SeekEntryResult!4964)

(assert (=> b!544261 (= res!338676 (= lt!248456 (Intermediate!4964 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34343 (_ BitVec 32)) SeekEntryResult!4964)

(assert (=> b!544261 (= lt!248456 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16499 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544262 () Bool)

(declare-fun res!338675 () Bool)

(assert (=> b!544262 (=> (not res!338675) (not e!314672))))

(assert (=> b!544262 (= res!338675 (validKeyInArray!0 k!1998))))

(declare-fun b!544263 () Bool)

(declare-fun res!338672 () Bool)

(assert (=> b!544263 (=> (not res!338672) (not e!314673))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544263 (= res!338672 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16499 a!3154) j!147) mask!3216) (select (arr!16499 a!3154) j!147) a!3154 mask!3216) lt!248456))))

(declare-fun b!544264 () Bool)

(declare-fun res!338670 () Bool)

(assert (=> b!544264 (=> (not res!338670) (not e!314672))))

(assert (=> b!544264 (= res!338670 (and (= (size!16863 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16863 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16863 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!544265 () Bool)

(declare-fun res!338677 () Bool)

(assert (=> b!544265 (=> (not res!338677) (not e!314674))))

(assert (=> b!544265 (= res!338677 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16863 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16863 a!3154)) (= (select (arr!16499 a!3154) resIndex!32) (select (arr!16499 a!3154) j!147))))))

(assert (= (and start!49460 res!338673) b!544264))

(assert (= (and b!544264 res!338670) b!544259))

(assert (= (and b!544259 res!338667) b!544262))

(assert (= (and b!544262 res!338675) b!544256))

(assert (= (and b!544256 res!338674) b!544260))

(assert (= (and b!544260 res!338668) b!544258))

(assert (= (and b!544258 res!338669) b!544255))

(assert (= (and b!544255 res!338671) b!544265))

(assert (= (and b!544265 res!338677) b!544261))

(assert (= (and b!544261 res!338676) b!544263))

(assert (= (and b!544263 res!338672) b!544254))

(assert (= (and b!544254 res!338678) b!544257))

(declare-fun m!522187 () Bool)

(assert (=> start!49460 m!522187))

(declare-fun m!522189 () Bool)

(assert (=> start!49460 m!522189))

(declare-fun m!522191 () Bool)

(assert (=> b!544255 m!522191))

(declare-fun m!522193 () Bool)

(assert (=> b!544263 m!522193))

(assert (=> b!544263 m!522193))

(declare-fun m!522195 () Bool)

(assert (=> b!544263 m!522195))

(assert (=> b!544263 m!522195))

(assert (=> b!544263 m!522193))

(declare-fun m!522197 () Bool)

(assert (=> b!544263 m!522197))

(declare-fun m!522199 () Bool)

(assert (=> b!544260 m!522199))

(declare-fun m!522201 () Bool)

(assert (=> b!544257 m!522201))

(declare-fun m!522203 () Bool)

(assert (=> b!544265 m!522203))

(assert (=> b!544265 m!522193))

(declare-fun m!522205 () Bool)

(assert (=> b!544262 m!522205))

(declare-fun m!522207 () Bool)

(assert (=> b!544254 m!522207))

(assert (=> b!544254 m!522193))

(assert (=> b!544261 m!522193))

(assert (=> b!544261 m!522193))

(declare-fun m!522209 () Bool)

(assert (=> b!544261 m!522209))

(declare-fun m!522211 () Bool)

(assert (=> b!544256 m!522211))

(assert (=> b!544259 m!522193))

(assert (=> b!544259 m!522193))

(declare-fun m!522213 () Bool)

(assert (=> b!544259 m!522213))

(declare-fun m!522215 () Bool)

(assert (=> b!544258 m!522215))

(push 1)

(assert (not b!544260))

(assert (not b!544263))

(assert (not b!544262))

(assert (not b!544255))

(assert (not b!544257))

(assert (not b!544259))

