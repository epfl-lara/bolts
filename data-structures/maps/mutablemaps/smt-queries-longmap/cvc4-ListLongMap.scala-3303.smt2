; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45776 () Bool)

(assert start!45776)

(declare-fun b!506227 () Bool)

(declare-fun res!307341 () Bool)

(declare-fun e!296304 () Bool)

(assert (=> b!506227 (=> (not res!307341) (not e!296304))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506227 (= res!307341 (validKeyInArray!0 k!2280))))

(declare-fun res!307342 () Bool)

(assert (=> start!45776 (=> (not res!307342) (not e!296304))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45776 (= res!307342 (validMask!0 mask!3524))))

(assert (=> start!45776 e!296304))

(assert (=> start!45776 true))

(declare-datatypes ((array!32492 0))(
  ( (array!32493 (arr!15623 (Array (_ BitVec 32) (_ BitVec 64))) (size!15987 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32492)

(declare-fun array_inv!11397 (array!32492) Bool)

(assert (=> start!45776 (array_inv!11397 a!3235)))

(declare-fun b!506228 () Bool)

(declare-fun res!307344 () Bool)

(declare-fun e!296303 () Bool)

(assert (=> b!506228 (=> (not res!307344) (not e!296303))))

(declare-datatypes ((List!9834 0))(
  ( (Nil!9831) (Cons!9830 (h!10707 (_ BitVec 64)) (t!16070 List!9834)) )
))
(declare-fun arrayNoDuplicates!0 (array!32492 (_ BitVec 32) List!9834) Bool)

(assert (=> b!506228 (= res!307344 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9831))))

(declare-fun b!506229 () Bool)

(declare-fun res!307338 () Bool)

(assert (=> b!506229 (=> (not res!307338) (not e!296304))))

(declare-fun arrayContainsKey!0 (array!32492 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506229 (= res!307338 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506230 () Bool)

(declare-fun res!307340 () Bool)

(assert (=> b!506230 (=> (not res!307340) (not e!296304))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!506230 (= res!307340 (validKeyInArray!0 (select (arr!15623 a!3235) j!176)))))

(declare-fun b!506231 () Bool)

(declare-fun res!307346 () Bool)

(assert (=> b!506231 (=> (not res!307346) (not e!296303))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32492 (_ BitVec 32)) Bool)

(assert (=> b!506231 (= res!307346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun e!296305 () Bool)

(declare-fun b!506232 () Bool)

(declare-datatypes ((SeekEntryResult!4097 0))(
  ( (MissingZero!4097 (index!18576 (_ BitVec 32))) (Found!4097 (index!18577 (_ BitVec 32))) (Intermediate!4097 (undefined!4909 Bool) (index!18578 (_ BitVec 32)) (x!47605 (_ BitVec 32))) (Undefined!4097) (MissingVacant!4097 (index!18579 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32492 (_ BitVec 32)) SeekEntryResult!4097)

(assert (=> b!506232 (= e!296305 (= (seekEntryOrOpen!0 (select (arr!15623 a!3235) j!176) a!3235 mask!3524) (Found!4097 j!176)))))

(declare-fun b!506233 () Bool)

(declare-fun e!296300 () Bool)

(declare-fun e!296302 () Bool)

(assert (=> b!506233 (= e!296300 e!296302)))

(declare-fun res!307336 () Bool)

(assert (=> b!506233 (=> res!307336 e!296302)))

(declare-fun lt!231049 () Bool)

(declare-fun lt!231045 () SeekEntryResult!4097)

(assert (=> b!506233 (= res!307336 (or (and (not lt!231049) (undefined!4909 lt!231045)) (and (not lt!231049) (not (undefined!4909 lt!231045)))))))

(assert (=> b!506233 (= lt!231049 (not (is-Intermediate!4097 lt!231045)))))

(declare-fun b!506234 () Bool)

(assert (=> b!506234 (= e!296302 true)))

(assert (=> b!506234 false))

(declare-fun b!506235 () Bool)

(assert (=> b!506235 (= e!296303 (not e!296300))))

(declare-fun res!307343 () Bool)

(assert (=> b!506235 (=> res!307343 e!296300)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!231046 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32492 (_ BitVec 32)) SeekEntryResult!4097)

(assert (=> b!506235 (= res!307343 (= lt!231045 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231046 (select (store (arr!15623 a!3235) i!1204 k!2280) j!176) (array!32493 (store (arr!15623 a!3235) i!1204 k!2280) (size!15987 a!3235)) mask!3524)))))

(declare-fun lt!231050 () (_ BitVec 32))

(assert (=> b!506235 (= lt!231045 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231050 (select (arr!15623 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506235 (= lt!231046 (toIndex!0 (select (store (arr!15623 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!506235 (= lt!231050 (toIndex!0 (select (arr!15623 a!3235) j!176) mask!3524))))

(assert (=> b!506235 e!296305))

(declare-fun res!307345 () Bool)

(assert (=> b!506235 (=> (not res!307345) (not e!296305))))

(assert (=> b!506235 (= res!307345 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15474 0))(
  ( (Unit!15475) )
))
(declare-fun lt!231047 () Unit!15474)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32492 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15474)

(assert (=> b!506235 (= lt!231047 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506236 () Bool)

(declare-fun res!307337 () Bool)

(assert (=> b!506236 (=> (not res!307337) (not e!296304))))

(assert (=> b!506236 (= res!307337 (and (= (size!15987 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15987 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15987 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506237 () Bool)

(assert (=> b!506237 (= e!296304 e!296303)))

(declare-fun res!307339 () Bool)

(assert (=> b!506237 (=> (not res!307339) (not e!296303))))

(declare-fun lt!231048 () SeekEntryResult!4097)

(assert (=> b!506237 (= res!307339 (or (= lt!231048 (MissingZero!4097 i!1204)) (= lt!231048 (MissingVacant!4097 i!1204))))))

(assert (=> b!506237 (= lt!231048 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!45776 res!307342) b!506236))

(assert (= (and b!506236 res!307337) b!506230))

(assert (= (and b!506230 res!307340) b!506227))

(assert (= (and b!506227 res!307341) b!506229))

(assert (= (and b!506229 res!307338) b!506237))

(assert (= (and b!506237 res!307339) b!506231))

(assert (= (and b!506231 res!307346) b!506228))

(assert (= (and b!506228 res!307344) b!506235))

(assert (= (and b!506235 res!307345) b!506232))

(assert (= (and b!506235 (not res!307343)) b!506233))

(assert (= (and b!506233 (not res!307336)) b!506234))

(declare-fun m!486925 () Bool)

(assert (=> start!45776 m!486925))

(declare-fun m!486927 () Bool)

(assert (=> start!45776 m!486927))

(declare-fun m!486929 () Bool)

(assert (=> b!506231 m!486929))

(declare-fun m!486931 () Bool)

(assert (=> b!506235 m!486931))

(declare-fun m!486933 () Bool)

(assert (=> b!506235 m!486933))

(declare-fun m!486935 () Bool)

(assert (=> b!506235 m!486935))

(assert (=> b!506235 m!486935))

(declare-fun m!486937 () Bool)

(assert (=> b!506235 m!486937))

(declare-fun m!486939 () Bool)

(assert (=> b!506235 m!486939))

(declare-fun m!486941 () Bool)

(assert (=> b!506235 m!486941))

(assert (=> b!506235 m!486939))

(declare-fun m!486943 () Bool)

(assert (=> b!506235 m!486943))

(assert (=> b!506235 m!486939))

(declare-fun m!486945 () Bool)

(assert (=> b!506235 m!486945))

(assert (=> b!506235 m!486935))

(declare-fun m!486947 () Bool)

(assert (=> b!506235 m!486947))

(assert (=> b!506230 m!486939))

(assert (=> b!506230 m!486939))

(declare-fun m!486949 () Bool)

(assert (=> b!506230 m!486949))

(declare-fun m!486951 () Bool)

(assert (=> b!506229 m!486951))

(declare-fun m!486953 () Bool)

(assert (=> b!506237 m!486953))

(declare-fun m!486955 () Bool)

(assert (=> b!506227 m!486955))

(assert (=> b!506232 m!486939))

(assert (=> b!506232 m!486939))

(declare-fun m!486957 () Bool)

(assert (=> b!506232 m!486957))

(declare-fun m!486959 () Bool)

(assert (=> b!506228 m!486959))

(push 1)

(assert (not b!506229))

(assert (not b!506231))

(assert (not b!506232))

(assert (not b!506230))

(assert (not b!506235))

(assert (not start!45776))

(assert (not b!506237))

(assert (not b!506227))

(assert (not b!506228))

(check-sat)

