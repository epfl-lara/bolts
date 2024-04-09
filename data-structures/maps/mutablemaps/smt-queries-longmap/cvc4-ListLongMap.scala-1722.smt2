; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31792 () Bool)

(assert start!31792)

(declare-fun b!317259 () Bool)

(declare-fun res!172005 () Bool)

(declare-fun e!197269 () Bool)

(assert (=> b!317259 (=> (not res!172005) (not e!197269))))

(declare-datatypes ((array!16161 0))(
  ( (array!16162 (arr!7644 (Array (_ BitVec 32) (_ BitVec 64))) (size!7996 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16161)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!317259 (= res!172005 (and (= (select (arr!7644 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7996 a!3293))))))

(declare-fun b!317260 () Bool)

(declare-fun e!197268 () Bool)

(assert (=> b!317260 (= e!197268 e!197269)))

(declare-fun res!172002 () Bool)

(assert (=> b!317260 (=> (not res!172002) (not e!197269))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2795 0))(
  ( (MissingZero!2795 (index!13356 (_ BitVec 32))) (Found!2795 (index!13357 (_ BitVec 32))) (Intermediate!2795 (undefined!3607 Bool) (index!13358 (_ BitVec 32)) (x!31583 (_ BitVec 32))) (Undefined!2795) (MissingVacant!2795 (index!13359 (_ BitVec 32))) )
))
(declare-fun lt!154919 () SeekEntryResult!2795)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16161 (_ BitVec 32)) SeekEntryResult!2795)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317260 (= res!172002 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154919))))

(assert (=> b!317260 (= lt!154919 (Intermediate!2795 false resIndex!52 resX!52))))

(declare-fun b!317261 () Bool)

(declare-fun res!171996 () Bool)

(assert (=> b!317261 (=> (not res!171996) (not e!197268))))

(assert (=> b!317261 (= res!171996 (and (= (size!7996 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7996 a!3293))))))

(declare-fun b!317262 () Bool)

(declare-fun res!172003 () Bool)

(assert (=> b!317262 (=> (not res!172003) (not e!197268))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317262 (= res!172003 (validKeyInArray!0 k!2441))))

(declare-fun b!317263 () Bool)

(declare-fun e!197266 () Bool)

(assert (=> b!317263 (= e!197266 (not true))))

(declare-fun e!197265 () Bool)

(assert (=> b!317263 e!197265))

(declare-fun res!171997 () Bool)

(assert (=> b!317263 (=> (not res!171997) (not e!197265))))

(declare-fun lt!154921 () SeekEntryResult!2795)

(declare-fun lt!154920 () (_ BitVec 32))

(assert (=> b!317263 (= res!171997 (= lt!154921 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154920 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317263 (= lt!154920 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317264 () Bool)

(declare-fun res!172000 () Bool)

(assert (=> b!317264 (=> (not res!172000) (not e!197268))))

(declare-fun arrayContainsKey!0 (array!16161 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317264 (= res!172000 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317265 () Bool)

(declare-fun res!172001 () Bool)

(assert (=> b!317265 (=> (not res!172001) (not e!197268))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16161 (_ BitVec 32)) Bool)

(assert (=> b!317265 (= res!172001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun lt!154922 () array!16161)

(declare-fun b!317266 () Bool)

(assert (=> b!317266 (= e!197265 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!154922 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154920 k!2441 lt!154922 mask!3709)))))

(assert (=> b!317266 (= lt!154922 (array!16162 (store (arr!7644 a!3293) i!1240 k!2441) (size!7996 a!3293)))))

(declare-fun res!172004 () Bool)

(assert (=> start!31792 (=> (not res!172004) (not e!197268))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31792 (= res!172004 (validMask!0 mask!3709))))

(assert (=> start!31792 e!197268))

(declare-fun array_inv!5598 (array!16161) Bool)

(assert (=> start!31792 (array_inv!5598 a!3293)))

(assert (=> start!31792 true))

(declare-fun b!317267 () Bool)

(declare-fun res!171999 () Bool)

(assert (=> b!317267 (=> (not res!171999) (not e!197268))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16161 (_ BitVec 32)) SeekEntryResult!2795)

(assert (=> b!317267 (= res!171999 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2795 i!1240)))))

(declare-fun b!317268 () Bool)

(assert (=> b!317268 (= e!197269 e!197266)))

(declare-fun res!171998 () Bool)

(assert (=> b!317268 (=> (not res!171998) (not e!197266))))

(assert (=> b!317268 (= res!171998 (and (= lt!154921 lt!154919) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7644 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!317268 (= lt!154921 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(assert (= (and start!31792 res!172004) b!317261))

(assert (= (and b!317261 res!171996) b!317262))

(assert (= (and b!317262 res!172003) b!317264))

(assert (= (and b!317264 res!172000) b!317267))

(assert (= (and b!317267 res!171999) b!317265))

(assert (= (and b!317265 res!172001) b!317260))

(assert (= (and b!317260 res!172002) b!317259))

(assert (= (and b!317259 res!172005) b!317268))

(assert (= (and b!317268 res!171998) b!317263))

(assert (= (and b!317263 res!171997) b!317266))

(declare-fun m!325937 () Bool)

(assert (=> b!317268 m!325937))

(declare-fun m!325939 () Bool)

(assert (=> b!317268 m!325939))

(declare-fun m!325941 () Bool)

(assert (=> b!317264 m!325941))

(declare-fun m!325943 () Bool)

(assert (=> b!317265 m!325943))

(declare-fun m!325945 () Bool)

(assert (=> b!317259 m!325945))

(declare-fun m!325947 () Bool)

(assert (=> b!317267 m!325947))

(declare-fun m!325949 () Bool)

(assert (=> b!317260 m!325949))

(assert (=> b!317260 m!325949))

(declare-fun m!325951 () Bool)

(assert (=> b!317260 m!325951))

(declare-fun m!325953 () Bool)

(assert (=> b!317263 m!325953))

(declare-fun m!325955 () Bool)

(assert (=> b!317263 m!325955))

(declare-fun m!325957 () Bool)

(assert (=> b!317266 m!325957))

(declare-fun m!325959 () Bool)

(assert (=> b!317266 m!325959))

(declare-fun m!325961 () Bool)

(assert (=> b!317266 m!325961))

(declare-fun m!325963 () Bool)

(assert (=> start!31792 m!325963))

(declare-fun m!325965 () Bool)

(assert (=> start!31792 m!325965))

(declare-fun m!325967 () Bool)

(assert (=> b!317262 m!325967))

(push 1)

(assert (not b!317262))

(assert (not b!317260))

(assert (not b!317263))

(assert (not b!317264))

(assert (not b!317268))

