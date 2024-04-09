; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35734 () Bool)

(assert start!35734)

(declare-fun b!358620 () Bool)

(declare-fun e!219611 () Bool)

(assert (=> b!358620 (= e!219611 false)))

(declare-fun lt!166216 () Bool)

(declare-datatypes ((array!19883 0))(
  ( (array!19884 (arr!9432 (Array (_ BitVec 32) (_ BitVec 64))) (size!9784 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19883)

(declare-datatypes ((List!5467 0))(
  ( (Nil!5464) (Cons!5463 (h!6319 (_ BitVec 64)) (t!10625 List!5467)) )
))
(declare-fun arrayNoDuplicates!0 (array!19883 (_ BitVec 32) List!5467) Bool)

(assert (=> b!358620 (= lt!166216 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5464))))

(declare-fun res!199376 () Bool)

(assert (=> start!35734 (=> (not res!199376) (not e!219611))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35734 (= res!199376 (validMask!0 mask!1842))))

(assert (=> start!35734 e!219611))

(assert (=> start!35734 true))

(declare-datatypes ((V!11883 0))(
  ( (V!11884 (val!4134 Int)) )
))
(declare-datatypes ((ValueCell!3746 0))(
  ( (ValueCellFull!3746 (v!6324 V!11883)) (EmptyCell!3746) )
))
(declare-datatypes ((array!19885 0))(
  ( (array!19886 (arr!9433 (Array (_ BitVec 32) ValueCell!3746)) (size!9785 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19885)

(declare-fun e!219609 () Bool)

(declare-fun array_inv!6936 (array!19885) Bool)

(assert (=> start!35734 (and (array_inv!6936 _values!1208) e!219609)))

(declare-fun array_inv!6937 (array!19883) Bool)

(assert (=> start!35734 (array_inv!6937 _keys!1456)))

(declare-fun b!358621 () Bool)

(declare-fun e!219607 () Bool)

(declare-fun mapRes!13776 () Bool)

(assert (=> b!358621 (= e!219609 (and e!219607 mapRes!13776))))

(declare-fun condMapEmpty!13776 () Bool)

(declare-fun mapDefault!13776 () ValueCell!3746)

