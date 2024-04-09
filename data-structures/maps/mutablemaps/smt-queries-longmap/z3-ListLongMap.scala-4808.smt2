; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66208 () Bool)

(assert start!66208)

(declare-fun b!761993 () Bool)

(declare-fun res!515277 () Bool)

(declare-fun e!424832 () Bool)

(assert (=> b!761993 (=> (not res!515277) (not e!424832))))

(declare-datatypes ((array!42066 0))(
  ( (array!42067 (arr!20137 (Array (_ BitVec 32) (_ BitVec 64))) (size!20558 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42066)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!761993 (= res!515277 (and (= (size!20558 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20558 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20558 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!515278 () Bool)

(assert (=> start!66208 (=> (not res!515278) (not e!424832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66208 (= res!515278 (validMask!0 mask!3328))))

(assert (=> start!66208 e!424832))

(declare-fun array_inv!15911 (array!42066) Bool)

(assert (=> start!66208 (array_inv!15911 a!3186)))

(assert (=> start!66208 true))

(declare-fun b!761994 () Bool)

(declare-fun res!515274 () Bool)

(assert (=> b!761994 (=> (not res!515274) (not e!424832))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!761994 (= res!515274 (validKeyInArray!0 k0!2102))))

(declare-fun b!761995 () Bool)

(declare-fun res!515275 () Bool)

(declare-fun e!424831 () Bool)

(assert (=> b!761995 (=> (not res!515275) (not e!424831))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42066 (_ BitVec 32)) Bool)

(assert (=> b!761995 (= res!515275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!761996 () Bool)

(assert (=> b!761996 (= e!424831 false)))

(declare-fun lt!339453 () Bool)

(declare-datatypes ((List!14192 0))(
  ( (Nil!14189) (Cons!14188 (h!15272 (_ BitVec 64)) (t!20515 List!14192)) )
))
(declare-fun arrayNoDuplicates!0 (array!42066 (_ BitVec 32) List!14192) Bool)

(assert (=> b!761996 (= lt!339453 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14189))))

(declare-fun b!761997 () Bool)

(declare-fun res!515280 () Bool)

(assert (=> b!761997 (=> (not res!515280) (not e!424832))))

(declare-fun arrayContainsKey!0 (array!42066 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!761997 (= res!515280 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!761998 () Bool)

(declare-fun res!515276 () Bool)

(assert (=> b!761998 (=> (not res!515276) (not e!424832))))

(assert (=> b!761998 (= res!515276 (validKeyInArray!0 (select (arr!20137 a!3186) j!159)))))

(declare-fun b!761999 () Bool)

(assert (=> b!761999 (= e!424832 e!424831)))

(declare-fun res!515279 () Bool)

(assert (=> b!761999 (=> (not res!515279) (not e!424831))))

(declare-datatypes ((SeekEntryResult!7744 0))(
  ( (MissingZero!7744 (index!33343 (_ BitVec 32))) (Found!7744 (index!33344 (_ BitVec 32))) (Intermediate!7744 (undefined!8556 Bool) (index!33345 (_ BitVec 32)) (x!64285 (_ BitVec 32))) (Undefined!7744) (MissingVacant!7744 (index!33346 (_ BitVec 32))) )
))
(declare-fun lt!339454 () SeekEntryResult!7744)

(assert (=> b!761999 (= res!515279 (or (= lt!339454 (MissingZero!7744 i!1173)) (= lt!339454 (MissingVacant!7744 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42066 (_ BitVec 32)) SeekEntryResult!7744)

(assert (=> b!761999 (= lt!339454 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(assert (= (and start!66208 res!515278) b!761993))

(assert (= (and b!761993 res!515277) b!761998))

(assert (= (and b!761998 res!515276) b!761994))

(assert (= (and b!761994 res!515274) b!761997))

(assert (= (and b!761997 res!515280) b!761999))

(assert (= (and b!761999 res!515279) b!761995))

(assert (= (and b!761995 res!515275) b!761996))

(declare-fun m!708881 () Bool)

(assert (=> start!66208 m!708881))

(declare-fun m!708883 () Bool)

(assert (=> start!66208 m!708883))

(declare-fun m!708885 () Bool)

(assert (=> b!761995 m!708885))

(declare-fun m!708887 () Bool)

(assert (=> b!761997 m!708887))

(declare-fun m!708889 () Bool)

(assert (=> b!761999 m!708889))

(declare-fun m!708891 () Bool)

(assert (=> b!761994 m!708891))

(declare-fun m!708893 () Bool)

(assert (=> b!761998 m!708893))

(assert (=> b!761998 m!708893))

(declare-fun m!708895 () Bool)

(assert (=> b!761998 m!708895))

(declare-fun m!708897 () Bool)

(assert (=> b!761996 m!708897))

(check-sat (not b!761996) (not b!761998) (not start!66208) (not b!761999) (not b!761994) (not b!761995) (not b!761997))
(check-sat)
