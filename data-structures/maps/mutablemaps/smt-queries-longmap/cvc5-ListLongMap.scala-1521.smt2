; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28666 () Bool)

(assert start!28666)

(declare-fun b!292885 () Bool)

(declare-fun res!153982 () Bool)

(declare-fun e!185251 () Bool)

(assert (=> b!292885 (=> (not res!153982) (not e!185251))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((array!14834 0))(
  ( (array!14835 (arr!7039 (Array (_ BitVec 32) (_ BitVec 64))) (size!7391 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14834)

(assert (=> b!292885 (= res!153982 (and (= (size!7391 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7391 a!3312))))))

(declare-fun res!153980 () Bool)

(assert (=> start!28666 (=> (not res!153980) (not e!185251))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28666 (= res!153980 (validMask!0 mask!3809))))

(assert (=> start!28666 e!185251))

(assert (=> start!28666 true))

(declare-fun array_inv!4993 (array!14834) Bool)

(assert (=> start!28666 (array_inv!4993 a!3312)))

(declare-fun b!292886 () Bool)

(declare-fun res!153981 () Bool)

(assert (=> b!292886 (=> (not res!153981) (not e!185251))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14834 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292886 (= res!153981 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292887 () Bool)

(declare-fun res!153983 () Bool)

(assert (=> b!292887 (=> (not res!153983) (not e!185251))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292887 (= res!153983 (validKeyInArray!0 k!2524))))

(declare-fun b!292888 () Bool)

(declare-fun res!153979 () Bool)

(declare-fun e!185249 () Bool)

(assert (=> b!292888 (=> (not res!153979) (not e!185249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14834 (_ BitVec 32)) Bool)

(assert (=> b!292888 (= res!153979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292889 () Bool)

(assert (=> b!292889 (= e!185251 e!185249)))

(declare-fun res!153984 () Bool)

(assert (=> b!292889 (=> (not res!153984) (not e!185249))))

(declare-datatypes ((SeekEntryResult!2199 0))(
  ( (MissingZero!2199 (index!10966 (_ BitVec 32))) (Found!2199 (index!10967 (_ BitVec 32))) (Intermediate!2199 (undefined!3011 Bool) (index!10968 (_ BitVec 32)) (x!29118 (_ BitVec 32))) (Undefined!2199) (MissingVacant!2199 (index!10969 (_ BitVec 32))) )
))
(declare-fun lt!145193 () SeekEntryResult!2199)

(assert (=> b!292889 (= res!153984 (or (= lt!145193 (MissingZero!2199 i!1256)) (= lt!145193 (MissingVacant!2199 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14834 (_ BitVec 32)) SeekEntryResult!2199)

(assert (=> b!292889 (= lt!145193 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292890 () Bool)

(assert (=> b!292890 (= e!185249 false)))

(declare-fun lt!145192 () SeekEntryResult!2199)

(declare-fun lt!145190 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14834 (_ BitVec 32)) SeekEntryResult!2199)

(assert (=> b!292890 (= lt!145192 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145190 k!2524 (array!14835 (store (arr!7039 a!3312) i!1256 k!2524) (size!7391 a!3312)) mask!3809))))

(declare-fun lt!145191 () SeekEntryResult!2199)

(assert (=> b!292890 (= lt!145191 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145190 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292890 (= lt!145190 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28666 res!153980) b!292885))

(assert (= (and b!292885 res!153982) b!292887))

(assert (= (and b!292887 res!153983) b!292886))

(assert (= (and b!292886 res!153981) b!292889))

(assert (= (and b!292889 res!153984) b!292888))

(assert (= (and b!292888 res!153979) b!292890))

(declare-fun m!306715 () Bool)

(assert (=> b!292889 m!306715))

(declare-fun m!306717 () Bool)

(assert (=> start!28666 m!306717))

(declare-fun m!306719 () Bool)

(assert (=> start!28666 m!306719))

(declare-fun m!306721 () Bool)

(assert (=> b!292887 m!306721))

(declare-fun m!306723 () Bool)

(assert (=> b!292888 m!306723))

(declare-fun m!306725 () Bool)

(assert (=> b!292886 m!306725))

(declare-fun m!306727 () Bool)

(assert (=> b!292890 m!306727))

(declare-fun m!306729 () Bool)

(assert (=> b!292890 m!306729))

(declare-fun m!306731 () Bool)

(assert (=> b!292890 m!306731))

(declare-fun m!306733 () Bool)

(assert (=> b!292890 m!306733))

(push 1)

