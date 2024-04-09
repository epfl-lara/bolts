; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29192 () Bool)

(assert start!29192)

(declare-fun b!296086 () Bool)

(declare-fun res!156012 () Bool)

(declare-fun e!187153 () Bool)

(assert (=> b!296086 (=> (not res!156012) (not e!187153))))

(declare-datatypes ((array!14992 0))(
  ( (array!14993 (arr!7106 (Array (_ BitVec 32) (_ BitVec 64))) (size!7458 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14992)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14992 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296086 (= res!156012 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296088 () Bool)

(declare-fun e!187151 () Bool)

(assert (=> b!296088 (= e!187151 (not true))))

(declare-datatypes ((SeekEntryResult!2266 0))(
  ( (MissingZero!2266 (index!11234 (_ BitVec 32))) (Found!2266 (index!11235 (_ BitVec 32))) (Intermediate!2266 (undefined!3078 Bool) (index!11236 (_ BitVec 32)) (x!29411 (_ BitVec 32))) (Undefined!2266) (MissingVacant!2266 (index!11237 (_ BitVec 32))) )
))
(declare-fun lt!147044 () SeekEntryResult!2266)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!296088 (and (= (select (arr!7106 a!3312) (index!11236 lt!147044)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11236 lt!147044) i!1256))))

(declare-fun b!296089 () Bool)

(declare-fun e!187152 () Bool)

(declare-fun e!187154 () Bool)

(assert (=> b!296089 (= e!187152 e!187154)))

(declare-fun res!156013 () Bool)

(assert (=> b!296089 (=> (not res!156013) (not e!187154))))

(declare-fun lt!147043 () Bool)

(assert (=> b!296089 (= res!156013 lt!147043)))

(declare-fun lt!147046 () SeekEntryResult!2266)

(declare-fun lt!147047 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14992 (_ BitVec 32)) SeekEntryResult!2266)

(assert (=> b!296089 (= lt!147046 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147047 k0!2524 (array!14993 (store (arr!7106 a!3312) i!1256 k0!2524) (size!7458 a!3312)) mask!3809))))

(assert (=> b!296089 (= lt!147044 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147047 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296089 (= lt!147047 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!296090 () Bool)

(assert (=> b!296090 (= e!187153 e!187152)))

(declare-fun res!156011 () Bool)

(assert (=> b!296090 (=> (not res!156011) (not e!187152))))

(declare-fun lt!147042 () SeekEntryResult!2266)

(assert (=> b!296090 (= res!156011 (or lt!147043 (= lt!147042 (MissingVacant!2266 i!1256))))))

(assert (=> b!296090 (= lt!147043 (= lt!147042 (MissingZero!2266 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14992 (_ BitVec 32)) SeekEntryResult!2266)

(assert (=> b!296090 (= lt!147042 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!296091 () Bool)

(declare-fun res!156008 () Bool)

(assert (=> b!296091 (=> (not res!156008) (not e!187152))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14992 (_ BitVec 32)) Bool)

(assert (=> b!296091 (= res!156008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!296092 () Bool)

(declare-fun res!156010 () Bool)

(assert (=> b!296092 (=> (not res!156010) (not e!187153))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296092 (= res!156010 (validKeyInArray!0 k0!2524))))

(declare-fun b!296093 () Bool)

(declare-fun res!156014 () Bool)

(assert (=> b!296093 (=> (not res!156014) (not e!187153))))

(assert (=> b!296093 (= res!156014 (and (= (size!7458 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7458 a!3312))))))

(declare-fun res!156009 () Bool)

(assert (=> start!29192 (=> (not res!156009) (not e!187153))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29192 (= res!156009 (validMask!0 mask!3809))))

(assert (=> start!29192 e!187153))

(assert (=> start!29192 true))

(declare-fun array_inv!5060 (array!14992) Bool)

(assert (=> start!29192 (array_inv!5060 a!3312)))

(declare-fun b!296087 () Bool)

(assert (=> b!296087 (= e!187154 e!187151)))

(declare-fun res!156015 () Bool)

(assert (=> b!296087 (=> (not res!156015) (not e!187151))))

(declare-fun lt!147045 () Bool)

(assert (=> b!296087 (= res!156015 (and (or lt!147045 (not (undefined!3078 lt!147044))) (or lt!147045 (not (= (select (arr!7106 a!3312) (index!11236 lt!147044)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147045 (not (= (select (arr!7106 a!3312) (index!11236 lt!147044)) k0!2524))) (not lt!147045)))))

(get-info :version)

(assert (=> b!296087 (= lt!147045 (not ((_ is Intermediate!2266) lt!147044)))))

(assert (= (and start!29192 res!156009) b!296093))

(assert (= (and b!296093 res!156014) b!296092))

(assert (= (and b!296092 res!156010) b!296086))

(assert (= (and b!296086 res!156012) b!296090))

(assert (= (and b!296090 res!156011) b!296091))

(assert (= (and b!296091 res!156008) b!296089))

(assert (= (and b!296089 res!156013) b!296087))

(assert (= (and b!296087 res!156015) b!296088))

(declare-fun m!309165 () Bool)

(assert (=> start!29192 m!309165))

(declare-fun m!309167 () Bool)

(assert (=> start!29192 m!309167))

(declare-fun m!309169 () Bool)

(assert (=> b!296087 m!309169))

(declare-fun m!309171 () Bool)

(assert (=> b!296089 m!309171))

(declare-fun m!309173 () Bool)

(assert (=> b!296089 m!309173))

(declare-fun m!309175 () Bool)

(assert (=> b!296089 m!309175))

(declare-fun m!309177 () Bool)

(assert (=> b!296089 m!309177))

(declare-fun m!309179 () Bool)

(assert (=> b!296086 m!309179))

(declare-fun m!309181 () Bool)

(assert (=> b!296090 m!309181))

(declare-fun m!309183 () Bool)

(assert (=> b!296091 m!309183))

(declare-fun m!309185 () Bool)

(assert (=> b!296092 m!309185))

(assert (=> b!296088 m!309169))

(check-sat (not start!29192) (not b!296091) (not b!296089) (not b!296090) (not b!296092) (not b!296086))
(check-sat)
