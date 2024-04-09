; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6160 () Bool)

(assert start!6160)

(declare-fun res!25153 () Bool)

(declare-fun e!26742 () Bool)

(assert (=> start!6160 (=> (not res!25153) (not e!26742))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6160 (= res!25153 (validMask!0 mask!853))))

(assert (=> start!6160 e!26742))

(assert (=> start!6160 true))

(declare-fun b!42255 () Bool)

(assert (=> b!42255 (= e!26742 (not true))))

(declare-datatypes ((array!2773 0))(
  ( (array!2774 (arr!1330 (Array (_ BitVec 32) (_ BitVec 64))) (size!1494 (_ BitVec 32))) )
))
(declare-fun lt!17385 () array!2773)

(declare-fun arrayCountValidKeys!0 (array!2773 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42255 (= (arrayCountValidKeys!0 lt!17385 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1097 0))(
  ( (Unit!1098) )
))
(declare-fun lt!17386 () Unit!1097)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2773 (_ BitVec 32) (_ BitVec 32)) Unit!1097)

(assert (=> b!42255 (= lt!17386 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17385 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42255 (= lt!17385 (array!2774 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6160 res!25153) b!42255))

(declare-fun m!35855 () Bool)

(assert (=> start!6160 m!35855))

(declare-fun m!35857 () Bool)

(assert (=> b!42255 m!35857))

(declare-fun m!35859 () Bool)

(assert (=> b!42255 m!35859))

(push 1)

(assert (not start!6160))

(assert (not b!42255))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

