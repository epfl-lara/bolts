; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35710 () Bool)

(assert start!35710)

(declare-fun b!358404 () Bool)

(declare-fun res!199270 () Bool)

(declare-fun e!219428 () Bool)

(assert (=> b!358404 (=> (not res!199270) (not e!219428))))

(declare-datatypes ((array!19837 0))(
  ( (array!19838 (arr!9409 (Array (_ BitVec 32) (_ BitVec 64))) (size!9761 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19837)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19837 (_ BitVec 32)) Bool)

(assert (=> b!358404 (= res!199270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!199269 () Bool)

(assert (=> start!35710 (=> (not res!199269) (not e!219428))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35710 (= res!199269 (validMask!0 mask!1842))))

(assert (=> start!35710 e!219428))

(assert (=> start!35710 true))

(declare-datatypes ((V!11851 0))(
  ( (V!11852 (val!4122 Int)) )
))
(declare-datatypes ((ValueCell!3734 0))(
  ( (ValueCellFull!3734 (v!6312 V!11851)) (EmptyCell!3734) )
))
(declare-datatypes ((array!19839 0))(
  ( (array!19840 (arr!9410 (Array (_ BitVec 32) ValueCell!3734)) (size!9762 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19839)

(declare-fun e!219429 () Bool)

(declare-fun array_inv!6916 (array!19839) Bool)

(assert (=> start!35710 (and (array_inv!6916 _values!1208) e!219429)))

(declare-fun array_inv!6917 (array!19837) Bool)

(assert (=> start!35710 (array_inv!6917 _keys!1456)))

(declare-fun b!358405 () Bool)

(assert (=> b!358405 (= e!219428 false)))

(declare-fun lt!166180 () Bool)

(declare-datatypes ((List!5457 0))(
  ( (Nil!5454) (Cons!5453 (h!6309 (_ BitVec 64)) (t!10615 List!5457)) )
))
(declare-fun arrayNoDuplicates!0 (array!19837 (_ BitVec 32) List!5457) Bool)

(assert (=> b!358405 (= lt!166180 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5454))))

(declare-fun mapIsEmpty!13740 () Bool)

(declare-fun mapRes!13740 () Bool)

(assert (=> mapIsEmpty!13740 mapRes!13740))

(declare-fun b!358406 () Bool)

(declare-fun e!219427 () Bool)

(assert (=> b!358406 (= e!219429 (and e!219427 mapRes!13740))))

(declare-fun condMapEmpty!13740 () Bool)

(declare-fun mapDefault!13740 () ValueCell!3734)

