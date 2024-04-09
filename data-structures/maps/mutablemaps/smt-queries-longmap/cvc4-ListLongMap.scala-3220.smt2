; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45080 () Bool)

(assert start!45080)

(declare-fun b!494501 () Bool)

(declare-fun e!290180 () Bool)

(declare-fun e!290181 () Bool)

(assert (=> b!494501 (= e!290180 e!290181)))

(declare-fun res!297226 () Bool)

(assert (=> b!494501 (=> (not res!297226) (not e!290181))))

(declare-datatypes ((SeekEntryResult!3848 0))(
  ( (MissingZero!3848 (index!17571 (_ BitVec 32))) (Found!3848 (index!17572 (_ BitVec 32))) (Intermediate!3848 (undefined!4660 Bool) (index!17573 (_ BitVec 32)) (x!46665 (_ BitVec 32))) (Undefined!3848) (MissingVacant!3848 (index!17574 (_ BitVec 32))) )
))
(declare-fun lt!223890 () SeekEntryResult!3848)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!494501 (= res!297226 (or (= lt!223890 (MissingZero!3848 i!1204)) (= lt!223890 (MissingVacant!3848 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31985 0))(
  ( (array!31986 (arr!15374 (Array (_ BitVec 32) (_ BitVec 64))) (size!15738 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31985)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31985 (_ BitVec 32)) SeekEntryResult!3848)

(assert (=> b!494501 (= lt!223890 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!494502 () Bool)

(declare-fun res!297230 () Bool)

(declare-fun e!290182 () Bool)

(assert (=> b!494502 (=> res!297230 e!290182)))

(declare-fun lt!223887 () SeekEntryResult!3848)

(assert (=> b!494502 (= res!297230 (or (not (is-Intermediate!3848 lt!223887)) (not (undefined!4660 lt!223887))))))

(declare-fun b!494503 () Bool)

(declare-fun res!297222 () Bool)

(assert (=> b!494503 (=> (not res!297222) (not e!290181))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31985 (_ BitVec 32)) Bool)

(assert (=> b!494503 (= res!297222 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494504 () Bool)

(declare-fun res!297223 () Bool)

(assert (=> b!494504 (=> (not res!297223) (not e!290180))))

(declare-fun arrayContainsKey!0 (array!31985 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494504 (= res!297223 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!297224 () Bool)

(assert (=> start!45080 (=> (not res!297224) (not e!290180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45080 (= res!297224 (validMask!0 mask!3524))))

(assert (=> start!45080 e!290180))

(assert (=> start!45080 true))

(declare-fun array_inv!11148 (array!31985) Bool)

(assert (=> start!45080 (array_inv!11148 a!3235)))

(declare-fun b!494505 () Bool)

(declare-fun res!297229 () Bool)

(assert (=> b!494505 (=> (not res!297229) (not e!290181))))

(declare-datatypes ((List!9585 0))(
  ( (Nil!9582) (Cons!9581 (h!10449 (_ BitVec 64)) (t!15821 List!9585)) )
))
(declare-fun arrayNoDuplicates!0 (array!31985 (_ BitVec 32) List!9585) Bool)

(assert (=> b!494505 (= res!297229 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9582))))

(declare-fun b!494506 () Bool)

(declare-fun res!297221 () Bool)

(assert (=> b!494506 (=> (not res!297221) (not e!290180))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494506 (= res!297221 (validKeyInArray!0 k!2280))))

(declare-fun b!494507 () Bool)

(assert (=> b!494507 (= e!290182 true)))

(declare-fun lt!223891 () SeekEntryResult!3848)

(assert (=> b!494507 (= lt!223891 Undefined!3848)))

(declare-fun b!494508 () Bool)

(declare-fun res!297228 () Bool)

(assert (=> b!494508 (=> (not res!297228) (not e!290180))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!494508 (= res!297228 (validKeyInArray!0 (select (arr!15374 a!3235) j!176)))))

(declare-fun b!494509 () Bool)

(declare-fun res!297227 () Bool)

(assert (=> b!494509 (=> (not res!297227) (not e!290180))))

(assert (=> b!494509 (= res!297227 (and (= (size!15738 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15738 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15738 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494510 () Bool)

(assert (=> b!494510 (= e!290181 (not e!290182))))

(declare-fun res!297225 () Bool)

(assert (=> b!494510 (=> res!297225 e!290182)))

(declare-fun lt!223892 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31985 (_ BitVec 32)) SeekEntryResult!3848)

(assert (=> b!494510 (= res!297225 (= lt!223887 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223892 (select (store (arr!15374 a!3235) i!1204 k!2280) j!176) (array!31986 (store (arr!15374 a!3235) i!1204 k!2280) (size!15738 a!3235)) mask!3524)))))

(declare-fun lt!223889 () (_ BitVec 32))

(assert (=> b!494510 (= lt!223887 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223889 (select (arr!15374 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494510 (= lt!223892 (toIndex!0 (select (store (arr!15374 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494510 (= lt!223889 (toIndex!0 (select (arr!15374 a!3235) j!176) mask!3524))))

(assert (=> b!494510 (= lt!223891 (Found!3848 j!176))))

(assert (=> b!494510 (= lt!223891 (seekEntryOrOpen!0 (select (arr!15374 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!494510 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14634 0))(
  ( (Unit!14635) )
))
(declare-fun lt!223888 () Unit!14634)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31985 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14634)

(assert (=> b!494510 (= lt!223888 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45080 res!297224) b!494509))

(assert (= (and b!494509 res!297227) b!494508))

(assert (= (and b!494508 res!297228) b!494506))

(assert (= (and b!494506 res!297221) b!494504))

(assert (= (and b!494504 res!297223) b!494501))

(assert (= (and b!494501 res!297226) b!494503))

(assert (= (and b!494503 res!297222) b!494505))

(assert (= (and b!494505 res!297229) b!494510))

(assert (= (and b!494510 (not res!297225)) b!494502))

(assert (= (and b!494502 (not res!297230)) b!494507))

(declare-fun m!475633 () Bool)

(assert (=> b!494504 m!475633))

(declare-fun m!475635 () Bool)

(assert (=> b!494506 m!475635))

(declare-fun m!475637 () Bool)

(assert (=> b!494501 m!475637))

(declare-fun m!475639 () Bool)

(assert (=> b!494503 m!475639))

(declare-fun m!475641 () Bool)

(assert (=> b!494508 m!475641))

(assert (=> b!494508 m!475641))

(declare-fun m!475643 () Bool)

(assert (=> b!494508 m!475643))

(declare-fun m!475645 () Bool)

(assert (=> b!494510 m!475645))

(declare-fun m!475647 () Bool)

(assert (=> b!494510 m!475647))

(declare-fun m!475649 () Bool)

(assert (=> b!494510 m!475649))

(declare-fun m!475651 () Bool)

(assert (=> b!494510 m!475651))

(assert (=> b!494510 m!475645))

(assert (=> b!494510 m!475641))

(declare-fun m!475653 () Bool)

(assert (=> b!494510 m!475653))

(assert (=> b!494510 m!475641))

(declare-fun m!475655 () Bool)

(assert (=> b!494510 m!475655))

(assert (=> b!494510 m!475641))

(declare-fun m!475657 () Bool)

(assert (=> b!494510 m!475657))

(assert (=> b!494510 m!475641))

(declare-fun m!475659 () Bool)

(assert (=> b!494510 m!475659))

(assert (=> b!494510 m!475645))

(declare-fun m!475661 () Bool)

(assert (=> b!494510 m!475661))

(declare-fun m!475663 () Bool)

(assert (=> b!494505 m!475663))

(declare-fun m!475665 () Bool)

(assert (=> start!45080 m!475665))

(declare-fun m!475667 () Bool)

(assert (=> start!45080 m!475667))

(push 1)

