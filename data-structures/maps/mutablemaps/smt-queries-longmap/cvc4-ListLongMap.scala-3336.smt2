; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46022 () Bool)

(assert start!46022)

(declare-fun b!509265 () Bool)

(declare-fun res!310268 () Bool)

(declare-fun e!297823 () Bool)

(assert (=> b!509265 (=> (not res!310268) (not e!297823))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509265 (= res!310268 (validKeyInArray!0 k!2280))))

(declare-fun b!509266 () Bool)

(declare-fun res!310265 () Bool)

(declare-fun e!297824 () Bool)

(assert (=> b!509266 (=> (not res!310265) (not e!297824))))

(declare-datatypes ((array!32693 0))(
  ( (array!32694 (arr!15722 (Array (_ BitVec 32) (_ BitVec 64))) (size!16086 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32693)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32693 (_ BitVec 32)) Bool)

(assert (=> b!509266 (= res!310265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509267 () Bool)

(declare-fun res!310261 () Bool)

(assert (=> b!509267 (=> (not res!310261) (not e!297823))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!509267 (= res!310261 (and (= (size!16086 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16086 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16086 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509268 () Bool)

(assert (=> b!509268 (= e!297823 e!297824)))

(declare-fun res!310263 () Bool)

(assert (=> b!509268 (=> (not res!310263) (not e!297824))))

(declare-datatypes ((SeekEntryResult!4196 0))(
  ( (MissingZero!4196 (index!18972 (_ BitVec 32))) (Found!4196 (index!18973 (_ BitVec 32))) (Intermediate!4196 (undefined!5008 Bool) (index!18974 (_ BitVec 32)) (x!47968 (_ BitVec 32))) (Undefined!4196) (MissingVacant!4196 (index!18975 (_ BitVec 32))) )
))
(declare-fun lt!232694 () SeekEntryResult!4196)

(assert (=> b!509268 (= res!310263 (or (= lt!232694 (MissingZero!4196 i!1204)) (= lt!232694 (MissingVacant!4196 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32693 (_ BitVec 32)) SeekEntryResult!4196)

(assert (=> b!509268 (= lt!232694 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!509269 () Bool)

(declare-fun e!297825 () Bool)

(assert (=> b!509269 (= e!297825 (= (seekEntryOrOpen!0 (select (arr!15722 a!3235) j!176) a!3235 mask!3524) (Found!4196 j!176)))))

(declare-fun b!509270 () Bool)

(assert (=> b!509270 (= e!297824 (not true))))

(declare-fun lt!232696 () SeekEntryResult!4196)

(declare-fun lt!232697 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32693 (_ BitVec 32)) SeekEntryResult!4196)

(assert (=> b!509270 (= lt!232696 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232697 (select (store (arr!15722 a!3235) i!1204 k!2280) j!176) (array!32694 (store (arr!15722 a!3235) i!1204 k!2280) (size!16086 a!3235)) mask!3524))))

(declare-fun lt!232695 () (_ BitVec 32))

(declare-fun lt!232692 () SeekEntryResult!4196)

(assert (=> b!509270 (= lt!232692 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232695 (select (arr!15722 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509270 (= lt!232697 (toIndex!0 (select (store (arr!15722 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509270 (= lt!232695 (toIndex!0 (select (arr!15722 a!3235) j!176) mask!3524))))

(assert (=> b!509270 e!297825))

(declare-fun res!310267 () Bool)

(assert (=> b!509270 (=> (not res!310267) (not e!297825))))

(assert (=> b!509270 (= res!310267 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15642 0))(
  ( (Unit!15643) )
))
(declare-fun lt!232693 () Unit!15642)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32693 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15642)

(assert (=> b!509270 (= lt!232693 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509271 () Bool)

(declare-fun res!310262 () Bool)

(assert (=> b!509271 (=> (not res!310262) (not e!297823))))

(declare-fun arrayContainsKey!0 (array!32693 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509271 (= res!310262 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509272 () Bool)

(declare-fun res!310266 () Bool)

(assert (=> b!509272 (=> (not res!310266) (not e!297824))))

(declare-datatypes ((List!9933 0))(
  ( (Nil!9930) (Cons!9929 (h!10806 (_ BitVec 64)) (t!16169 List!9933)) )
))
(declare-fun arrayNoDuplicates!0 (array!32693 (_ BitVec 32) List!9933) Bool)

(assert (=> b!509272 (= res!310266 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9930))))

(declare-fun res!310264 () Bool)

(assert (=> start!46022 (=> (not res!310264) (not e!297823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46022 (= res!310264 (validMask!0 mask!3524))))

(assert (=> start!46022 e!297823))

(assert (=> start!46022 true))

(declare-fun array_inv!11496 (array!32693) Bool)

(assert (=> start!46022 (array_inv!11496 a!3235)))

(declare-fun b!509273 () Bool)

(declare-fun res!310260 () Bool)

(assert (=> b!509273 (=> (not res!310260) (not e!297823))))

(assert (=> b!509273 (= res!310260 (validKeyInArray!0 (select (arr!15722 a!3235) j!176)))))

(assert (= (and start!46022 res!310264) b!509267))

(assert (= (and b!509267 res!310261) b!509273))

(assert (= (and b!509273 res!310260) b!509265))

(assert (= (and b!509265 res!310268) b!509271))

(assert (= (and b!509271 res!310262) b!509268))

(assert (= (and b!509268 res!310263) b!509266))

(assert (= (and b!509266 res!310265) b!509272))

(assert (= (and b!509272 res!310266) b!509270))

(assert (= (and b!509270 res!310267) b!509269))

(declare-fun m!490195 () Bool)

(assert (=> b!509265 m!490195))

(declare-fun m!490197 () Bool)

(assert (=> b!509270 m!490197))

(declare-fun m!490199 () Bool)

(assert (=> b!509270 m!490199))

(declare-fun m!490201 () Bool)

(assert (=> b!509270 m!490201))

(declare-fun m!490203 () Bool)

(assert (=> b!509270 m!490203))

(declare-fun m!490205 () Bool)

(assert (=> b!509270 m!490205))

(assert (=> b!509270 m!490205))

(declare-fun m!490207 () Bool)

(assert (=> b!509270 m!490207))

(assert (=> b!509270 m!490197))

(declare-fun m!490209 () Bool)

(assert (=> b!509270 m!490209))

(assert (=> b!509270 m!490197))

(declare-fun m!490211 () Bool)

(assert (=> b!509270 m!490211))

(assert (=> b!509270 m!490205))

(declare-fun m!490213 () Bool)

(assert (=> b!509270 m!490213))

(assert (=> b!509273 m!490197))

(assert (=> b!509273 m!490197))

(declare-fun m!490215 () Bool)

(assert (=> b!509273 m!490215))

(declare-fun m!490217 () Bool)

(assert (=> start!46022 m!490217))

(declare-fun m!490219 () Bool)

(assert (=> start!46022 m!490219))

(declare-fun m!490221 () Bool)

(assert (=> b!509268 m!490221))

(declare-fun m!490223 () Bool)

(assert (=> b!509271 m!490223))

(declare-fun m!490225 () Bool)

(assert (=> b!509266 m!490225))

(declare-fun m!490227 () Bool)

(assert (=> b!509272 m!490227))

(assert (=> b!509269 m!490197))

(assert (=> b!509269 m!490197))

(declare-fun m!490229 () Bool)

(assert (=> b!509269 m!490229))

(push 1)

(assert (not b!509266))

(assert (not b!509269))

(assert (not b!509265))

