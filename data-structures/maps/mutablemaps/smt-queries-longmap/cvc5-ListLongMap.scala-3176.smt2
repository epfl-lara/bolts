; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44692 () Bool)

(assert start!44692)

(declare-fun b!490104 () Bool)

(declare-fun res!293194 () Bool)

(declare-fun e!288136 () Bool)

(assert (=> b!490104 (=> (not res!293194) (not e!288136))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31711 0))(
  ( (array!31712 (arr!15240 (Array (_ BitVec 32) (_ BitVec 64))) (size!15604 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31711)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!490104 (= res!293194 (and (= (size!15604 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15604 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15604 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490105 () Bool)

(declare-fun res!293192 () Bool)

(declare-fun e!288139 () Bool)

(assert (=> b!490105 (=> (not res!293192) (not e!288139))))

(declare-datatypes ((List!9451 0))(
  ( (Nil!9448) (Cons!9447 (h!10309 (_ BitVec 64)) (t!15687 List!9451)) )
))
(declare-fun arrayNoDuplicates!0 (array!31711 (_ BitVec 32) List!9451) Bool)

(assert (=> b!490105 (= res!293192 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9448))))

(declare-fun b!490106 () Bool)

(declare-fun res!293196 () Bool)

(assert (=> b!490106 (=> (not res!293196) (not e!288136))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490106 (= res!293196 (validKeyInArray!0 k!2280))))

(declare-fun e!288138 () Bool)

(declare-fun b!490107 () Bool)

(declare-datatypes ((SeekEntryResult!3714 0))(
  ( (MissingZero!3714 (index!17035 (_ BitVec 32))) (Found!3714 (index!17036 (_ BitVec 32))) (Intermediate!3714 (undefined!4526 Bool) (index!17037 (_ BitVec 32)) (x!46167 (_ BitVec 32))) (Undefined!3714) (MissingVacant!3714 (index!17038 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31711 (_ BitVec 32)) SeekEntryResult!3714)

(assert (=> b!490107 (= e!288138 (= (seekEntryOrOpen!0 (select (arr!15240 a!3235) j!176) a!3235 mask!3524) (Found!3714 j!176)))))

(declare-fun b!490108 () Bool)

(declare-fun res!293195 () Bool)

(assert (=> b!490108 (=> (not res!293195) (not e!288136))))

(assert (=> b!490108 (= res!293195 (validKeyInArray!0 (select (arr!15240 a!3235) j!176)))))

(declare-fun b!490109 () Bool)

(assert (=> b!490109 (= e!288139 (not true))))

(declare-fun lt!221363 () (_ BitVec 32))

(declare-fun lt!221361 () SeekEntryResult!3714)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31711 (_ BitVec 32)) SeekEntryResult!3714)

(assert (=> b!490109 (= lt!221361 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221363 (select (store (arr!15240 a!3235) i!1204 k!2280) j!176) (array!31712 (store (arr!15240 a!3235) i!1204 k!2280) (size!15604 a!3235)) mask!3524))))

(declare-fun lt!221366 () SeekEntryResult!3714)

(declare-fun lt!221362 () (_ BitVec 32))

(assert (=> b!490109 (= lt!221366 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221362 (select (arr!15240 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490109 (= lt!221363 (toIndex!0 (select (store (arr!15240 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!490109 (= lt!221362 (toIndex!0 (select (arr!15240 a!3235) j!176) mask!3524))))

(assert (=> b!490109 e!288138))

(declare-fun res!293198 () Bool)

(assert (=> b!490109 (=> (not res!293198) (not e!288138))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31711 (_ BitVec 32)) Bool)

(assert (=> b!490109 (= res!293198 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14366 0))(
  ( (Unit!14367) )
))
(declare-fun lt!221364 () Unit!14366)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31711 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14366)

(assert (=> b!490109 (= lt!221364 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490110 () Bool)

(declare-fun res!293191 () Bool)

(assert (=> b!490110 (=> (not res!293191) (not e!288136))))

(declare-fun arrayContainsKey!0 (array!31711 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490110 (= res!293191 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490111 () Bool)

(declare-fun res!293197 () Bool)

(assert (=> b!490111 (=> (not res!293197) (not e!288139))))

(assert (=> b!490111 (= res!293197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490112 () Bool)

(assert (=> b!490112 (= e!288136 e!288139)))

(declare-fun res!293193 () Bool)

(assert (=> b!490112 (=> (not res!293193) (not e!288139))))

(declare-fun lt!221365 () SeekEntryResult!3714)

(assert (=> b!490112 (= res!293193 (or (= lt!221365 (MissingZero!3714 i!1204)) (= lt!221365 (MissingVacant!3714 i!1204))))))

(assert (=> b!490112 (= lt!221365 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!293190 () Bool)

(assert (=> start!44692 (=> (not res!293190) (not e!288136))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44692 (= res!293190 (validMask!0 mask!3524))))

(assert (=> start!44692 e!288136))

(assert (=> start!44692 true))

(declare-fun array_inv!11014 (array!31711) Bool)

(assert (=> start!44692 (array_inv!11014 a!3235)))

(assert (= (and start!44692 res!293190) b!490104))

(assert (= (and b!490104 res!293194) b!490108))

(assert (= (and b!490108 res!293195) b!490106))

(assert (= (and b!490106 res!293196) b!490110))

(assert (= (and b!490110 res!293191) b!490112))

(assert (= (and b!490112 res!293193) b!490111))

(assert (= (and b!490111 res!293197) b!490105))

(assert (= (and b!490105 res!293192) b!490109))

(assert (= (and b!490109 res!293198) b!490107))

(declare-fun m!470203 () Bool)

(assert (=> start!44692 m!470203))

(declare-fun m!470205 () Bool)

(assert (=> start!44692 m!470205))

(declare-fun m!470207 () Bool)

(assert (=> b!490111 m!470207))

(declare-fun m!470209 () Bool)

(assert (=> b!490109 m!470209))

(declare-fun m!470211 () Bool)

(assert (=> b!490109 m!470211))

(declare-fun m!470213 () Bool)

(assert (=> b!490109 m!470213))

(declare-fun m!470215 () Bool)

(assert (=> b!490109 m!470215))

(declare-fun m!470217 () Bool)

(assert (=> b!490109 m!470217))

(assert (=> b!490109 m!470209))

(declare-fun m!470219 () Bool)

(assert (=> b!490109 m!470219))

(assert (=> b!490109 m!470209))

(assert (=> b!490109 m!470217))

(declare-fun m!470221 () Bool)

(assert (=> b!490109 m!470221))

(assert (=> b!490109 m!470217))

(declare-fun m!470223 () Bool)

(assert (=> b!490109 m!470223))

(declare-fun m!470225 () Bool)

(assert (=> b!490109 m!470225))

(declare-fun m!470227 () Bool)

(assert (=> b!490112 m!470227))

(declare-fun m!470229 () Bool)

(assert (=> b!490105 m!470229))

(assert (=> b!490107 m!470209))

(assert (=> b!490107 m!470209))

(declare-fun m!470231 () Bool)

(assert (=> b!490107 m!470231))

(assert (=> b!490108 m!470209))

(assert (=> b!490108 m!470209))

(declare-fun m!470233 () Bool)

(assert (=> b!490108 m!470233))

(declare-fun m!470235 () Bool)

(assert (=> b!490106 m!470235))

(declare-fun m!470237 () Bool)

(assert (=> b!490110 m!470237))

(push 1)

