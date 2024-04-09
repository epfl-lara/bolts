; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31594 () Bool)

(assert start!31594)

(declare-fun b!315905 () Bool)

(declare-fun res!171217 () Bool)

(declare-fun e!196530 () Bool)

(assert (=> b!315905 (=> (not res!171217) (not e!196530))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((array!16116 0))(
  ( (array!16117 (arr!7626 (Array (_ BitVec 32) (_ BitVec 64))) (size!7978 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16116)

(assert (=> b!315905 (= res!171217 (and (= (size!7978 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7978 a!3293))))))

(declare-fun b!315906 () Bool)

(declare-fun res!171218 () Bool)

(declare-fun e!196529 () Bool)

(assert (=> b!315906 (=> (not res!171218) (not e!196529))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!315906 (= res!171218 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7626 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!315907 () Bool)

(assert (=> b!315907 false))

(declare-datatypes ((Unit!9755 0))(
  ( (Unit!9756) )
))
(declare-fun e!196531 () Unit!9755)

(declare-fun Unit!9757 () Unit!9755)

(assert (=> b!315907 (= e!196531 Unit!9757)))

(declare-fun b!315908 () Bool)

(declare-fun res!171216 () Bool)

(assert (=> b!315908 (=> (not res!171216) (not e!196530))))

(declare-datatypes ((SeekEntryResult!2777 0))(
  ( (MissingZero!2777 (index!13284 (_ BitVec 32))) (Found!2777 (index!13285 (_ BitVec 32))) (Intermediate!2777 (undefined!3589 Bool) (index!13286 (_ BitVec 32)) (x!31490 (_ BitVec 32))) (Undefined!2777) (MissingVacant!2777 (index!13287 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16116 (_ BitVec 32)) SeekEntryResult!2777)

(assert (=> b!315908 (= res!171216 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2777 i!1240)))))

(declare-fun b!315909 () Bool)

(assert (=> b!315909 (= e!196530 e!196529)))

(declare-fun res!171220 () Bool)

(assert (=> b!315909 (=> (not res!171220) (not e!196529))))

(declare-fun lt!154407 () SeekEntryResult!2777)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16116 (_ BitVec 32)) SeekEntryResult!2777)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315909 (= res!171220 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154407))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!315909 (= lt!154407 (Intermediate!2777 false resIndex!52 resX!52))))

(declare-fun b!315910 () Bool)

(assert (=> b!315910 (= e!196529 (not true))))

(assert (=> b!315910 (= index!1781 resIndex!52)))

(declare-fun lt!154409 () Unit!9755)

(declare-fun e!196528 () Unit!9755)

(assert (=> b!315910 (= lt!154409 e!196528)))

(declare-fun c!49963 () Bool)

(assert (=> b!315910 (= c!49963 (not (= resIndex!52 index!1781)))))

(declare-fun b!315911 () Bool)

(declare-fun res!171213 () Bool)

(assert (=> b!315911 (=> (not res!171213) (not e!196529))))

(assert (=> b!315911 (= res!171213 (and (= (select (arr!7626 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7978 a!3293))))))

(declare-fun b!315912 () Bool)

(declare-fun res!171214 () Bool)

(assert (=> b!315912 (=> (not res!171214) (not e!196530))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315912 (= res!171214 (validKeyInArray!0 k!2441))))

(declare-fun res!171222 () Bool)

(assert (=> start!31594 (=> (not res!171222) (not e!196530))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31594 (= res!171222 (validMask!0 mask!3709))))

(assert (=> start!31594 e!196530))

(declare-fun array_inv!5580 (array!16116) Bool)

(assert (=> start!31594 (array_inv!5580 a!3293)))

(assert (=> start!31594 true))

(declare-fun b!315913 () Bool)

(declare-fun res!171221 () Bool)

(assert (=> b!315913 (=> (not res!171221) (not e!196530))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16116 (_ BitVec 32)) Bool)

(assert (=> b!315913 (= res!171221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!315914 () Bool)

(declare-fun Unit!9758 () Unit!9755)

(assert (=> b!315914 (= e!196528 Unit!9758)))

(declare-fun b!315915 () Bool)

(assert (=> b!315915 false))

(declare-fun lt!154408 () SeekEntryResult!2777)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315915 (= lt!154408 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9759 () Unit!9755)

(assert (=> b!315915 (= e!196531 Unit!9759)))

(declare-fun b!315916 () Bool)

(declare-fun res!171219 () Bool)

(assert (=> b!315916 (=> (not res!171219) (not e!196529))))

(assert (=> b!315916 (= res!171219 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!154407))))

(declare-fun b!315917 () Bool)

(assert (=> b!315917 (= e!196528 e!196531)))

(declare-fun c!49964 () Bool)

(assert (=> b!315917 (= c!49964 (or (= (select (arr!7626 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7626 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315918 () Bool)

(declare-fun res!171215 () Bool)

(assert (=> b!315918 (=> (not res!171215) (not e!196530))))

(declare-fun arrayContainsKey!0 (array!16116 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315918 (= res!171215 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!31594 res!171222) b!315905))

(assert (= (and b!315905 res!171217) b!315912))

(assert (= (and b!315912 res!171214) b!315918))

(assert (= (and b!315918 res!171215) b!315908))

(assert (= (and b!315908 res!171216) b!315913))

(assert (= (and b!315913 res!171221) b!315909))

(assert (= (and b!315909 res!171220) b!315911))

(assert (= (and b!315911 res!171213) b!315916))

(assert (= (and b!315916 res!171219) b!315906))

(assert (= (and b!315906 res!171218) b!315910))

(assert (= (and b!315910 c!49963) b!315917))

(assert (= (and b!315910 (not c!49963)) b!315914))

(assert (= (and b!315917 c!49964) b!315907))

(assert (= (and b!315917 (not c!49964)) b!315915))

(declare-fun m!324959 () Bool)

(assert (=> b!315916 m!324959))

(declare-fun m!324961 () Bool)

(assert (=> b!315918 m!324961))

(declare-fun m!324963 () Bool)

(assert (=> b!315913 m!324963))

(declare-fun m!324965 () Bool)

(assert (=> b!315909 m!324965))

(assert (=> b!315909 m!324965))

(declare-fun m!324967 () Bool)

(assert (=> b!315909 m!324967))

(declare-fun m!324969 () Bool)

(assert (=> b!315908 m!324969))

(declare-fun m!324971 () Bool)

(assert (=> b!315915 m!324971))

(assert (=> b!315915 m!324971))

(declare-fun m!324973 () Bool)

(assert (=> b!315915 m!324973))

(declare-fun m!324975 () Bool)

(assert (=> b!315906 m!324975))

(assert (=> b!315917 m!324975))

(declare-fun m!324977 () Bool)

(assert (=> start!31594 m!324977))

(declare-fun m!324979 () Bool)

(assert (=> start!31594 m!324979))

(declare-fun m!324981 () Bool)

(assert (=> b!315911 m!324981))

(declare-fun m!324983 () Bool)

(assert (=> b!315912 m!324983))

(push 1)

