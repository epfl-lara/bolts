; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48922 () Bool)

(assert start!48922)

(declare-fun b!538841 () Bool)

(declare-fun res!334199 () Bool)

(declare-fun e!312427 () Bool)

(assert (=> b!538841 (=> (not res!334199) (not e!312427))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538841 (= res!334199 (validKeyInArray!0 k!1998))))

(declare-fun b!538842 () Bool)

(declare-fun e!312425 () Bool)

(assert (=> b!538842 (= e!312425 false)))

(declare-fun lt!247013 () Bool)

(declare-datatypes ((array!34090 0))(
  ( (array!34091 (arr!16380 (Array (_ BitVec 32) (_ BitVec 64))) (size!16744 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34090)

(declare-datatypes ((List!10552 0))(
  ( (Nil!10549) (Cons!10548 (h!11491 (_ BitVec 64)) (t!16788 List!10552)) )
))
(declare-fun arrayNoDuplicates!0 (array!34090 (_ BitVec 32) List!10552) Bool)

(assert (=> b!538842 (= lt!247013 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10549))))

(declare-fun b!538843 () Bool)

(declare-fun res!334201 () Bool)

(assert (=> b!538843 (=> (not res!334201) (not e!312427))))

(declare-fun arrayContainsKey!0 (array!34090 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538843 (= res!334201 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538844 () Bool)

(declare-fun res!334200 () Bool)

(assert (=> b!538844 (=> (not res!334200) (not e!312427))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!538844 (= res!334200 (validKeyInArray!0 (select (arr!16380 a!3154) j!147)))))

(declare-fun res!334196 () Bool)

(assert (=> start!48922 (=> (not res!334196) (not e!312427))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48922 (= res!334196 (validMask!0 mask!3216))))

(assert (=> start!48922 e!312427))

(assert (=> start!48922 true))

(declare-fun array_inv!12154 (array!34090) Bool)

(assert (=> start!48922 (array_inv!12154 a!3154)))

(declare-fun b!538845 () Bool)

(assert (=> b!538845 (= e!312427 e!312425)))

(declare-fun res!334202 () Bool)

(assert (=> b!538845 (=> (not res!334202) (not e!312425))))

(declare-datatypes ((SeekEntryResult!4845 0))(
  ( (MissingZero!4845 (index!21604 (_ BitVec 32))) (Found!4845 (index!21605 (_ BitVec 32))) (Intermediate!4845 (undefined!5657 Bool) (index!21606 (_ BitVec 32)) (x!50551 (_ BitVec 32))) (Undefined!4845) (MissingVacant!4845 (index!21607 (_ BitVec 32))) )
))
(declare-fun lt!247012 () SeekEntryResult!4845)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538845 (= res!334202 (or (= lt!247012 (MissingZero!4845 i!1153)) (= lt!247012 (MissingVacant!4845 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34090 (_ BitVec 32)) SeekEntryResult!4845)

(assert (=> b!538845 (= lt!247012 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!538846 () Bool)

(declare-fun res!334198 () Bool)

(assert (=> b!538846 (=> (not res!334198) (not e!312425))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34090 (_ BitVec 32)) Bool)

(assert (=> b!538846 (= res!334198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538847 () Bool)

(declare-fun res!334197 () Bool)

(assert (=> b!538847 (=> (not res!334197) (not e!312427))))

(assert (=> b!538847 (= res!334197 (and (= (size!16744 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16744 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16744 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48922 res!334196) b!538847))

(assert (= (and b!538847 res!334197) b!538844))

(assert (= (and b!538844 res!334200) b!538841))

(assert (= (and b!538841 res!334199) b!538843))

(assert (= (and b!538843 res!334201) b!538845))

(assert (= (and b!538845 res!334202) b!538846))

(assert (= (and b!538846 res!334198) b!538842))

(declare-fun m!517981 () Bool)

(assert (=> b!538841 m!517981))

(declare-fun m!517983 () Bool)

(assert (=> b!538844 m!517983))

(assert (=> b!538844 m!517983))

(declare-fun m!517985 () Bool)

(assert (=> b!538844 m!517985))

(declare-fun m!517987 () Bool)

(assert (=> start!48922 m!517987))

(declare-fun m!517989 () Bool)

(assert (=> start!48922 m!517989))

(declare-fun m!517991 () Bool)

(assert (=> b!538846 m!517991))

(declare-fun m!517993 () Bool)

(assert (=> b!538842 m!517993))

(declare-fun m!517995 () Bool)

(assert (=> b!538845 m!517995))

(declare-fun m!517997 () Bool)

(assert (=> b!538843 m!517997))

(push 1)

(assert (not b!538846))

(assert (not b!538842))

(assert (not b!538841))

(assert (not start!48922))

(assert (not b!538845))

(assert (not b!538844))

(assert (not b!538843))

(check-sat)

(pop 1)

