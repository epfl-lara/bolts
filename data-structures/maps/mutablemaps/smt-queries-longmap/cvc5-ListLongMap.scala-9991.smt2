; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117994 () Bool)

(assert start!117994)

(declare-fun b!1381710 () Bool)

(declare-fun res!923445 () Bool)

(declare-fun e!783251 () Bool)

(assert (=> b!1381710 (=> (not res!923445) (not e!783251))))

(declare-datatypes ((array!94301 0))(
  ( (array!94302 (arr!45529 (Array (_ BitVec 32) (_ BitVec 64))) (size!46080 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94301)

(declare-datatypes ((List!32243 0))(
  ( (Nil!32240) (Cons!32239 (h!33448 (_ BitVec 64)) (t!46944 List!32243)) )
))
(declare-fun arrayNoDuplicates!0 (array!94301 (_ BitVec 32) List!32243) Bool)

(assert (=> b!1381710 (= res!923445 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32240))))

(declare-fun b!1381711 () Bool)

(assert (=> b!1381711 (= e!783251 false)))

(declare-fun lt!608227 () Bool)

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94301 (_ BitVec 32)) Bool)

(assert (=> b!1381711 (= lt!608227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381708 () Bool)

(declare-fun res!923448 () Bool)

(assert (=> b!1381708 (=> (not res!923448) (not e!783251))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381708 (= res!923448 (and (= (size!46080 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46080 a!2971))))))

(declare-fun res!923446 () Bool)

(assert (=> start!117994 (=> (not res!923446) (not e!783251))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117994 (= res!923446 (validMask!0 mask!3034))))

(assert (=> start!117994 e!783251))

(assert (=> start!117994 true))

(declare-fun array_inv!34474 (array!94301) Bool)

(assert (=> start!117994 (array_inv!34474 a!2971)))

(declare-fun b!1381709 () Bool)

(declare-fun res!923447 () Bool)

(assert (=> b!1381709 (=> (not res!923447) (not e!783251))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381709 (= res!923447 (validKeyInArray!0 (select (arr!45529 a!2971) i!1094)))))

(assert (= (and start!117994 res!923446) b!1381708))

(assert (= (and b!1381708 res!923448) b!1381709))

(assert (= (and b!1381709 res!923447) b!1381710))

(assert (= (and b!1381710 res!923445) b!1381711))

(declare-fun m!1266951 () Bool)

(assert (=> b!1381710 m!1266951))

(declare-fun m!1266953 () Bool)

(assert (=> b!1381711 m!1266953))

(declare-fun m!1266955 () Bool)

(assert (=> start!117994 m!1266955))

(declare-fun m!1266957 () Bool)

(assert (=> start!117994 m!1266957))

(declare-fun m!1266959 () Bool)

(assert (=> b!1381709 m!1266959))

(assert (=> b!1381709 m!1266959))

(declare-fun m!1266961 () Bool)

(assert (=> b!1381709 m!1266961))

(push 1)

(assert (not b!1381711))

(assert (not b!1381709))

(assert (not start!117994))

(assert (not b!1381710))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

