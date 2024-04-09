; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46856 () Bool)

(assert start!46856)

(declare-fun b!516928 () Bool)

(declare-fun res!316464 () Bool)

(declare-fun e!301661 () Bool)

(assert (=> b!516928 (=> (not res!316464) (not e!301661))))

(declare-datatypes ((array!33071 0))(
  ( (array!33072 (arr!15899 (Array (_ BitVec 32) (_ BitVec 64))) (size!16263 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33071)

(declare-datatypes ((List!10110 0))(
  ( (Nil!10107) (Cons!10106 (h!11007 (_ BitVec 64)) (t!16346 List!10110)) )
))
(declare-fun arrayNoDuplicates!0 (array!33071 (_ BitVec 32) List!10110) Bool)

(assert (=> b!516928 (= res!316464 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10107))))

(declare-fun b!516929 () Bool)

(declare-fun res!316466 () Bool)

(declare-fun e!301660 () Bool)

(assert (=> b!516929 (=> (not res!316466) (not e!301660))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516929 (= res!316466 (validKeyInArray!0 (select (arr!15899 a!3235) j!176)))))

(declare-fun res!316465 () Bool)

(assert (=> start!46856 (=> (not res!316465) (not e!301660))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46856 (= res!316465 (validMask!0 mask!3524))))

(assert (=> start!46856 e!301660))

(assert (=> start!46856 true))

(declare-fun array_inv!11673 (array!33071) Bool)

(assert (=> start!46856 (array_inv!11673 a!3235)))

(declare-fun b!516930 () Bool)

(declare-fun res!316468 () Bool)

(assert (=> b!516930 (=> (not res!316468) (not e!301661))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33071 (_ BitVec 32)) Bool)

(assert (=> b!516930 (= res!316468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!516931 () Bool)

(declare-fun e!301659 () Bool)

(assert (=> b!516931 (= e!301659 true)))

(declare-datatypes ((SeekEntryResult!4373 0))(
  ( (MissingZero!4373 (index!19680 (_ BitVec 32))) (Found!4373 (index!19681 (_ BitVec 32))) (Intermediate!4373 (undefined!5185 Bool) (index!19682 (_ BitVec 32)) (x!48665 (_ BitVec 32))) (Undefined!4373) (MissingVacant!4373 (index!19683 (_ BitVec 32))) )
))
(declare-fun lt!236689 () SeekEntryResult!4373)

(assert (=> b!516931 (and (bvslt (x!48665 lt!236689) #b01111111111111111111111111111110) (or (= (select (arr!15899 a!3235) (index!19682 lt!236689)) (select (arr!15899 a!3235) j!176)) (= (select (arr!15899 a!3235) (index!19682 lt!236689)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15899 a!3235) (index!19682 lt!236689)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516932 () Bool)

(declare-fun res!316467 () Bool)

(assert (=> b!516932 (=> (not res!316467) (not e!301660))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!516932 (= res!316467 (and (= (size!16263 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16263 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16263 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!516933 () Bool)

(assert (=> b!516933 (= e!301660 e!301661)))

(declare-fun res!316460 () Bool)

(assert (=> b!516933 (=> (not res!316460) (not e!301661))))

(declare-fun lt!236690 () SeekEntryResult!4373)

(assert (=> b!516933 (= res!316460 (or (= lt!236690 (MissingZero!4373 i!1204)) (= lt!236690 (MissingVacant!4373 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33071 (_ BitVec 32)) SeekEntryResult!4373)

(assert (=> b!516933 (= lt!236690 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!516934 () Bool)

(declare-fun res!316463 () Bool)

(assert (=> b!516934 (=> res!316463 e!301659)))

(assert (=> b!516934 (= res!316463 (or (undefined!5185 lt!236689) (not (is-Intermediate!4373 lt!236689))))))

(declare-fun b!516935 () Bool)

(assert (=> b!516935 (= e!301661 (not e!301659))))

(declare-fun res!316459 () Bool)

(assert (=> b!516935 (=> res!316459 e!301659)))

(declare-fun lt!236686 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33071 (_ BitVec 32)) SeekEntryResult!4373)

(assert (=> b!516935 (= res!316459 (= lt!236689 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236686 (select (store (arr!15899 a!3235) i!1204 k!2280) j!176) (array!33072 (store (arr!15899 a!3235) i!1204 k!2280) (size!16263 a!3235)) mask!3524)))))

(declare-fun lt!236688 () (_ BitVec 32))

(assert (=> b!516935 (= lt!236689 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236688 (select (arr!15899 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516935 (= lt!236686 (toIndex!0 (select (store (arr!15899 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!516935 (= lt!236688 (toIndex!0 (select (arr!15899 a!3235) j!176) mask!3524))))

(declare-fun e!301662 () Bool)

(assert (=> b!516935 e!301662))

(declare-fun res!316462 () Bool)

(assert (=> b!516935 (=> (not res!316462) (not e!301662))))

(assert (=> b!516935 (= res!316462 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15996 0))(
  ( (Unit!15997) )
))
(declare-fun lt!236687 () Unit!15996)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33071 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15996)

(assert (=> b!516935 (= lt!236687 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!516936 () Bool)

(declare-fun res!316461 () Bool)

(assert (=> b!516936 (=> (not res!316461) (not e!301660))))

(declare-fun arrayContainsKey!0 (array!33071 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516936 (= res!316461 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516937 () Bool)

(declare-fun res!316469 () Bool)

(assert (=> b!516937 (=> (not res!316469) (not e!301660))))

(assert (=> b!516937 (= res!316469 (validKeyInArray!0 k!2280))))

(declare-fun b!516938 () Bool)

(assert (=> b!516938 (= e!301662 (= (seekEntryOrOpen!0 (select (arr!15899 a!3235) j!176) a!3235 mask!3524) (Found!4373 j!176)))))

(assert (= (and start!46856 res!316465) b!516932))

(assert (= (and b!516932 res!316467) b!516929))

(assert (= (and b!516929 res!316466) b!516937))

(assert (= (and b!516937 res!316469) b!516936))

(assert (= (and b!516936 res!316461) b!516933))

(assert (= (and b!516933 res!316460) b!516930))

(assert (= (and b!516930 res!316468) b!516928))

(assert (= (and b!516928 res!316464) b!516935))

(assert (= (and b!516935 res!316462) b!516938))

(assert (= (and b!516935 (not res!316459)) b!516934))

(assert (= (and b!516934 (not res!316463)) b!516931))

(declare-fun m!498425 () Bool)

(assert (=> b!516930 m!498425))

(declare-fun m!498427 () Bool)

(assert (=> b!516933 m!498427))

(declare-fun m!498429 () Bool)

(assert (=> b!516936 m!498429))

(declare-fun m!498431 () Bool)

(assert (=> b!516935 m!498431))

(declare-fun m!498433 () Bool)

(assert (=> b!516935 m!498433))

(declare-fun m!498435 () Bool)

(assert (=> b!516935 m!498435))

(declare-fun m!498437 () Bool)

(assert (=> b!516935 m!498437))

(assert (=> b!516935 m!498431))

(declare-fun m!498439 () Bool)

(assert (=> b!516935 m!498439))

(declare-fun m!498441 () Bool)

(assert (=> b!516935 m!498441))

(assert (=> b!516935 m!498439))

(assert (=> b!516935 m!498439))

(declare-fun m!498443 () Bool)

(assert (=> b!516935 m!498443))

(declare-fun m!498445 () Bool)

(assert (=> b!516935 m!498445))

(assert (=> b!516935 m!498431))

(declare-fun m!498447 () Bool)

(assert (=> b!516935 m!498447))

(declare-fun m!498449 () Bool)

(assert (=> b!516928 m!498449))

(declare-fun m!498451 () Bool)

(assert (=> start!46856 m!498451))

(declare-fun m!498453 () Bool)

(assert (=> start!46856 m!498453))

(assert (=> b!516929 m!498439))

(assert (=> b!516929 m!498439))

(declare-fun m!498455 () Bool)

(assert (=> b!516929 m!498455))

(declare-fun m!498457 () Bool)

(assert (=> b!516931 m!498457))

(assert (=> b!516931 m!498439))

(declare-fun m!498459 () Bool)

(assert (=> b!516937 m!498459))

(assert (=> b!516938 m!498439))

(assert (=> b!516938 m!498439))

(declare-fun m!498461 () Bool)

(assert (=> b!516938 m!498461))

(push 1)

