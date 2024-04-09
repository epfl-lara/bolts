; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28422 () Bool)

(assert start!28422)

(declare-fun b!290861 () Bool)

(declare-fun e!184063 () Bool)

(assert (=> b!290861 (= e!184063 (not true))))

(declare-datatypes ((SeekEntryResult!2125 0))(
  ( (MissingZero!2125 (index!10670 (_ BitVec 32))) (Found!2125 (index!10671 (_ BitVec 32))) (Intermediate!2125 (undefined!2937 Bool) (index!10672 (_ BitVec 32)) (x!28832 (_ BitVec 32))) (Undefined!2125) (MissingVacant!2125 (index!10673 (_ BitVec 32))) )
))
(declare-fun lt!143815 () SeekEntryResult!2125)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!290861 (= (index!10672 lt!143815) i!1256)))

(declare-fun b!290862 () Bool)

(declare-fun res!152240 () Bool)

(declare-fun e!184060 () Bool)

(assert (=> b!290862 (=> (not res!152240) (not e!184060))))

(declare-datatypes ((array!14680 0))(
  ( (array!14681 (arr!6965 (Array (_ BitVec 32) (_ BitVec 64))) (size!7317 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14680)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14680 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290862 (= res!152240 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290863 () Bool)

(declare-fun res!152242 () Bool)

(assert (=> b!290863 (=> (not res!152242) (not e!184060))))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!290863 (= res!152242 (and (= (size!7317 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7317 a!3312))))))

(declare-fun res!152241 () Bool)

(assert (=> start!28422 (=> (not res!152241) (not e!184060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28422 (= res!152241 (validMask!0 mask!3809))))

(assert (=> start!28422 e!184060))

(assert (=> start!28422 true))

(declare-fun array_inv!4919 (array!14680) Bool)

(assert (=> start!28422 (array_inv!4919 a!3312)))

(declare-fun b!290864 () Bool)

(declare-fun e!184059 () Bool)

(assert (=> b!290864 (= e!184059 e!184063)))

(declare-fun res!152244 () Bool)

(assert (=> b!290864 (=> (not res!152244) (not e!184063))))

(declare-fun lt!143818 () Bool)

(assert (=> b!290864 (= res!152244 (and (or lt!143818 (not (undefined!2937 lt!143815))) (not lt!143818) (= (select (arr!6965 a!3312) (index!10672 lt!143815)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!290864 (= lt!143818 (not ((_ is Intermediate!2125) lt!143815)))))

(declare-fun b!290865 () Bool)

(declare-fun res!152238 () Bool)

(declare-fun e!184061 () Bool)

(assert (=> b!290865 (=> (not res!152238) (not e!184061))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14680 (_ BitVec 32)) Bool)

(assert (=> b!290865 (= res!152238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290866 () Bool)

(assert (=> b!290866 (= e!184061 e!184059)))

(declare-fun res!152243 () Bool)

(assert (=> b!290866 (=> (not res!152243) (not e!184059))))

(declare-fun lt!143817 () SeekEntryResult!2125)

(declare-fun lt!143819 () Bool)

(assert (=> b!290866 (= res!152243 (and (not lt!143819) (= lt!143817 (MissingVacant!2125 i!1256))))))

(declare-fun lt!143814 () (_ BitVec 32))

(declare-fun lt!143816 () SeekEntryResult!2125)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14680 (_ BitVec 32)) SeekEntryResult!2125)

(assert (=> b!290866 (= lt!143816 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143814 k0!2524 (array!14681 (store (arr!6965 a!3312) i!1256 k0!2524) (size!7317 a!3312)) mask!3809))))

(assert (=> b!290866 (= lt!143815 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143814 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290866 (= lt!143814 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!290867 () Bool)

(assert (=> b!290867 (= e!184060 e!184061)))

(declare-fun res!152239 () Bool)

(assert (=> b!290867 (=> (not res!152239) (not e!184061))))

(assert (=> b!290867 (= res!152239 (or lt!143819 (= lt!143817 (MissingVacant!2125 i!1256))))))

(assert (=> b!290867 (= lt!143819 (= lt!143817 (MissingZero!2125 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14680 (_ BitVec 32)) SeekEntryResult!2125)

(assert (=> b!290867 (= lt!143817 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!290868 () Bool)

(declare-fun res!152237 () Bool)

(assert (=> b!290868 (=> (not res!152237) (not e!184060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290868 (= res!152237 (validKeyInArray!0 k0!2524))))

(assert (= (and start!28422 res!152241) b!290863))

(assert (= (and b!290863 res!152242) b!290868))

(assert (= (and b!290868 res!152237) b!290862))

(assert (= (and b!290862 res!152240) b!290867))

(assert (= (and b!290867 res!152239) b!290865))

(assert (= (and b!290865 res!152238) b!290866))

(assert (= (and b!290866 res!152243) b!290864))

(assert (= (and b!290864 res!152244) b!290861))

(declare-fun m!304883 () Bool)

(assert (=> b!290862 m!304883))

(declare-fun m!304885 () Bool)

(assert (=> b!290864 m!304885))

(declare-fun m!304887 () Bool)

(assert (=> start!28422 m!304887))

(declare-fun m!304889 () Bool)

(assert (=> start!28422 m!304889))

(declare-fun m!304891 () Bool)

(assert (=> b!290866 m!304891))

(declare-fun m!304893 () Bool)

(assert (=> b!290866 m!304893))

(declare-fun m!304895 () Bool)

(assert (=> b!290866 m!304895))

(declare-fun m!304897 () Bool)

(assert (=> b!290866 m!304897))

(declare-fun m!304899 () Bool)

(assert (=> b!290867 m!304899))

(declare-fun m!304901 () Bool)

(assert (=> b!290868 m!304901))

(declare-fun m!304903 () Bool)

(assert (=> b!290865 m!304903))

(check-sat (not b!290866) (not b!290867) (not b!290865) (not b!290862) (not start!28422) (not b!290868))
(check-sat)
