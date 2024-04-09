; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33378 () Bool)

(assert start!33378)

(declare-fun res!182658 () Bool)

(declare-fun e!203331 () Bool)

(assert (=> start!33378 (=> (not res!182658) (not e!203331))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33378 (= res!182658 (validMask!0 mask!2385))))

(assert (=> start!33378 e!203331))

(assert (=> start!33378 true))

(declare-datatypes ((V!9867 0))(
  ( (V!9868 (val!3378 Int)) )
))
(declare-datatypes ((ValueCell!2990 0))(
  ( (ValueCellFull!2990 (v!5532 V!9867)) (EmptyCell!2990) )
))
(declare-datatypes ((array!16929 0))(
  ( (array!16930 (arr!8001 (Array (_ BitVec 32) ValueCell!2990)) (size!8353 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16929)

(declare-fun e!203333 () Bool)

(declare-fun array_inv!5954 (array!16929) Bool)

(assert (=> start!33378 (and (array_inv!5954 _values!1525) e!203333)))

(declare-datatypes ((array!16931 0))(
  ( (array!16932 (arr!8002 (Array (_ BitVec 32) (_ BitVec 64))) (size!8354 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!16931)

(declare-fun array_inv!5955 (array!16931) Bool)

(assert (=> start!33378 (array_inv!5955 _keys!1895)))

(declare-fun mapNonEmpty!11370 () Bool)

(declare-fun mapRes!11370 () Bool)

(declare-fun tp!23745 () Bool)

(declare-fun e!203334 () Bool)

(assert (=> mapNonEmpty!11370 (= mapRes!11370 (and tp!23745 e!203334))))

(declare-fun mapKey!11370 () (_ BitVec 32))

(declare-fun mapRest!11370 () (Array (_ BitVec 32) ValueCell!2990))

(declare-fun mapValue!11370 () ValueCell!2990)

(assert (=> mapNonEmpty!11370 (= (arr!8001 _values!1525) (store mapRest!11370 mapKey!11370 mapValue!11370))))

(declare-fun b!331380 () Bool)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!331380 (= e!203331 (and (= (size!8353 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8354 _keys!1895) (size!8353 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011) (= (size!8354 _keys!1895) (bvadd #b00000000000000000000000000000001 mask!2385)) (bvsgt #b00000000000000000000000000000000 (size!8354 _keys!1895))))))

(declare-fun b!331381 () Bool)

(declare-fun e!203335 () Bool)

(assert (=> b!331381 (= e!203333 (and e!203335 mapRes!11370))))

(declare-fun condMapEmpty!11370 () Bool)

(declare-fun mapDefault!11370 () ValueCell!2990)

