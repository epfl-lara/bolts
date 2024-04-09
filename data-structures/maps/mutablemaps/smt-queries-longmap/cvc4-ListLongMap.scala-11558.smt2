; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134662 () Bool)

(assert start!134662)

(declare-fun res!1073525 () Bool)

(declare-fun e!876062 () Bool)

(assert (=> start!134662 (=> (not res!1073525) (not e!876062))))

(declare-fun mask!4043 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134662 (= res!1073525 (validMask!0 mask!4043))))

(assert (=> start!134662 e!876062))

(assert (=> start!134662 true))

(declare-datatypes ((array!104807 0))(
  ( (array!104808 (arr!50577 (Array (_ BitVec 32) (_ BitVec 64))) (size!51128 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104807)

(declare-fun array_inv!39222 (array!104807) Bool)

(assert (=> start!134662 (array_inv!39222 a!3462)))

(declare-fun b!1571149 () Bool)

(declare-fun res!1073524 () Bool)

(assert (=> b!1571149 (=> (not res!1073524) (not e!876062))))

(assert (=> b!1571149 (= res!1073524 (= (size!51128 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571150 () Bool)

(assert (=> b!1571150 (= e!876062 false)))

(declare-fun lt!673456 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104807 (_ BitVec 32)) Bool)

(assert (=> b!1571150 (= lt!673456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(assert (= (and start!134662 res!1073525) b!1571149))

(assert (= (and b!1571149 res!1073524) b!1571150))

(declare-fun m!1445185 () Bool)

(assert (=> start!134662 m!1445185))

(declare-fun m!1445187 () Bool)

(assert (=> start!134662 m!1445187))

(declare-fun m!1445189 () Bool)

(assert (=> b!1571150 m!1445189))

(push 1)

(assert (not start!134662))

(assert (not b!1571150))

(check-sat)

(pop 1)

