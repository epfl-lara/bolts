; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33504 () Bool)

(assert start!33504)

(declare-fun b!332264 () Bool)

(declare-fun e!204043 () Bool)

(declare-datatypes ((array!17091 0))(
  ( (array!17092 (arr!8077 (Array (_ BitVec 32) (_ BitVec 64))) (size!8429 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17091)

(assert (=> b!332264 (= e!204043 (bvsgt #b00000000000000000000000000000000 (size!8429 _keys!1895)))))

(declare-fun res!183113 () Bool)

(assert (=> start!33504 (=> (not res!183113) (not e!204043))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33504 (= res!183113 (validMask!0 mask!2385))))

(assert (=> start!33504 e!204043))

(assert (=> start!33504 true))

(declare-datatypes ((V!9975 0))(
  ( (V!9976 (val!3419 Int)) )
))
(declare-datatypes ((ValueCell!3031 0))(
  ( (ValueCellFull!3031 (v!5574 V!9975)) (EmptyCell!3031) )
))
(declare-datatypes ((array!17093 0))(
  ( (array!17094 (arr!8078 (Array (_ BitVec 32) ValueCell!3031)) (size!8430 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17093)

(declare-fun e!204045 () Bool)

(declare-fun array_inv!6008 (array!17093) Bool)

(assert (=> start!33504 (and (array_inv!6008 _values!1525) e!204045)))

(declare-fun array_inv!6009 (array!17091) Bool)

(assert (=> start!33504 (array_inv!6009 _keys!1895)))

(declare-fun b!332265 () Bool)

(declare-fun res!183112 () Bool)

(assert (=> b!332265 (=> (not res!183112) (not e!204043))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17091 (_ BitVec 32)) Bool)

(assert (=> b!332265 (= res!183112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!332266 () Bool)

(declare-fun res!183109 () Bool)

(assert (=> b!332266 (=> (not res!183109) (not e!204043))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!332266 (= res!183109 (validKeyInArray!0 k!1348))))

(declare-fun mapIsEmpty!11508 () Bool)

(declare-fun mapRes!11508 () Bool)

(assert (=> mapIsEmpty!11508 mapRes!11508))

(declare-fun b!332267 () Bool)

(declare-fun res!183110 () Bool)

(assert (=> b!332267 (=> (not res!183110) (not e!204043))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!332267 (= res!183110 (and (= (size!8430 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8429 _keys!1895) (size!8430 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!332268 () Bool)

(declare-fun e!204044 () Bool)

(assert (=> b!332268 (= e!204045 (and e!204044 mapRes!11508))))

(declare-fun condMapEmpty!11508 () Bool)

(declare-fun mapDefault!11508 () ValueCell!3031)

