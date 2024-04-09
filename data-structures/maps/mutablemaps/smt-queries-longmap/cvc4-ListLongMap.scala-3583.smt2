; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49304 () Bool)

(assert start!49304)

(declare-fun b!542487 () Bool)

(declare-fun res!337195 () Bool)

(declare-fun e!313942 () Bool)

(assert (=> b!542487 (=> (not res!337195) (not e!313942))))

(declare-datatypes ((array!34268 0))(
  ( (array!34269 (arr!16463 (Array (_ BitVec 32) (_ BitVec 64))) (size!16827 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34268)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34268 (_ BitVec 32)) Bool)

(assert (=> b!542487 (= res!337195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542488 () Bool)

(declare-fun res!337196 () Bool)

(declare-fun e!313941 () Bool)

(assert (=> b!542488 (=> (not res!337196) (not e!313941))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542488 (= res!337196 (validKeyInArray!0 k!1998))))

(declare-fun res!337191 () Bool)

(assert (=> start!49304 (=> (not res!337191) (not e!313941))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49304 (= res!337191 (validMask!0 mask!3216))))

(assert (=> start!49304 e!313941))

(assert (=> start!49304 true))

(declare-fun array_inv!12237 (array!34268) Bool)

(assert (=> start!49304 (array_inv!12237 a!3154)))

(declare-fun b!542489 () Bool)

(declare-fun res!337189 () Bool)

(declare-fun e!313939 () Bool)

(assert (=> b!542489 (=> (not res!337189) (not e!313939))))

(declare-datatypes ((SeekEntryResult!4928 0))(
  ( (MissingZero!4928 (index!21936 (_ BitVec 32))) (Found!4928 (index!21937 (_ BitVec 32))) (Intermediate!4928 (undefined!5740 Bool) (index!21938 (_ BitVec 32)) (x!50874 (_ BitVec 32))) (Undefined!4928) (MissingVacant!4928 (index!21939 (_ BitVec 32))) )
))
(declare-fun lt!247944 () SeekEntryResult!4928)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34268 (_ BitVec 32)) SeekEntryResult!4928)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542489 (= res!337189 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16463 a!3154) j!147) mask!3216) (select (arr!16463 a!3154) j!147) a!3154 mask!3216) lt!247944))))

(declare-fun b!542490 () Bool)

(assert (=> b!542490 (= e!313941 e!313942)))

(declare-fun res!337194 () Bool)

(assert (=> b!542490 (=> (not res!337194) (not e!313942))))

(declare-fun lt!247946 () SeekEntryResult!4928)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542490 (= res!337194 (or (= lt!247946 (MissingZero!4928 i!1153)) (= lt!247946 (MissingVacant!4928 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34268 (_ BitVec 32)) SeekEntryResult!4928)

(assert (=> b!542490 (= lt!247946 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!542491 () Bool)

(declare-fun res!337199 () Bool)

(assert (=> b!542491 (=> (not res!337199) (not e!313942))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542491 (= res!337199 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16827 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16827 a!3154)) (= (select (arr!16463 a!3154) resIndex!32) (select (arr!16463 a!3154) j!147))))))

(declare-fun b!542492 () Bool)

(declare-fun res!337188 () Bool)

(assert (=> b!542492 (=> (not res!337188) (not e!313941))))

(assert (=> b!542492 (= res!337188 (validKeyInArray!0 (select (arr!16463 a!3154) j!147)))))

(declare-fun b!542493 () Bool)

(declare-fun res!337198 () Bool)

(assert (=> b!542493 (=> (not res!337198) (not e!313941))))

(assert (=> b!542493 (= res!337198 (and (= (size!16827 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16827 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16827 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542494 () Bool)

(assert (=> b!542494 (= e!313939 false)))

(declare-fun lt!247945 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542494 (= lt!247945 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542495 () Bool)

(declare-fun res!337192 () Bool)

(assert (=> b!542495 (=> (not res!337192) (not e!313942))))

(declare-datatypes ((List!10635 0))(
  ( (Nil!10632) (Cons!10631 (h!11586 (_ BitVec 64)) (t!16871 List!10635)) )
))
(declare-fun arrayNoDuplicates!0 (array!34268 (_ BitVec 32) List!10635) Bool)

(assert (=> b!542495 (= res!337192 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10632))))

(declare-fun b!542496 () Bool)

(assert (=> b!542496 (= e!313942 e!313939)))

(declare-fun res!337193 () Bool)

(assert (=> b!542496 (=> (not res!337193) (not e!313939))))

(assert (=> b!542496 (= res!337193 (= lt!247944 (Intermediate!4928 false resIndex!32 resX!32)))))

(assert (=> b!542496 (= lt!247944 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16463 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542497 () Bool)

(declare-fun res!337197 () Bool)

(assert (=> b!542497 (=> (not res!337197) (not e!313941))))

(declare-fun arrayContainsKey!0 (array!34268 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542497 (= res!337197 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542498 () Bool)

(declare-fun res!337190 () Bool)

(assert (=> b!542498 (=> (not res!337190) (not e!313939))))

(assert (=> b!542498 (= res!337190 (and (not (= (select (arr!16463 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16463 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16463 a!3154) index!1177) (select (arr!16463 a!3154) j!147)))))))

(assert (= (and start!49304 res!337191) b!542493))

(assert (= (and b!542493 res!337198) b!542492))

(assert (= (and b!542492 res!337188) b!542488))

(assert (= (and b!542488 res!337196) b!542497))

(assert (= (and b!542497 res!337197) b!542490))

(assert (= (and b!542490 res!337194) b!542487))

(assert (= (and b!542487 res!337195) b!542495))

(assert (= (and b!542495 res!337192) b!542491))

(assert (= (and b!542491 res!337199) b!542496))

(assert (= (and b!542496 res!337193) b!542489))

(assert (= (and b!542489 res!337189) b!542498))

(assert (= (and b!542498 res!337190) b!542494))

(declare-fun m!520741 () Bool)

(assert (=> b!542488 m!520741))

(declare-fun m!520743 () Bool)

(assert (=> b!542494 m!520743))

(declare-fun m!520745 () Bool)

(assert (=> b!542495 m!520745))

(declare-fun m!520747 () Bool)

(assert (=> b!542496 m!520747))

(assert (=> b!542496 m!520747))

(declare-fun m!520749 () Bool)

(assert (=> b!542496 m!520749))

(assert (=> b!542492 m!520747))

(assert (=> b!542492 m!520747))

(declare-fun m!520751 () Bool)

(assert (=> b!542492 m!520751))

(declare-fun m!520753 () Bool)

(assert (=> b!542498 m!520753))

(assert (=> b!542498 m!520747))

(declare-fun m!520755 () Bool)

(assert (=> b!542497 m!520755))

(declare-fun m!520757 () Bool)

(assert (=> b!542487 m!520757))

(assert (=> b!542489 m!520747))

(assert (=> b!542489 m!520747))

(declare-fun m!520759 () Bool)

(assert (=> b!542489 m!520759))

(assert (=> b!542489 m!520759))

(assert (=> b!542489 m!520747))

(declare-fun m!520761 () Bool)

(assert (=> b!542489 m!520761))

(declare-fun m!520763 () Bool)

(assert (=> b!542491 m!520763))

(assert (=> b!542491 m!520747))

(declare-fun m!520765 () Bool)

(assert (=> b!542490 m!520765))

(declare-fun m!520767 () Bool)

(assert (=> start!49304 m!520767))

(declare-fun m!520769 () Bool)

(assert (=> start!49304 m!520769))

(push 1)

(assert (not b!542490))

(assert (not b!542487))

(assert (not b!542492))

(assert (not start!49304))

(assert (not b!542488))

(assert (not b!542497))

(assert (not b!542496))

(assert (not b!542495))

(assert (not b!542494))

(assert (not b!542489))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

