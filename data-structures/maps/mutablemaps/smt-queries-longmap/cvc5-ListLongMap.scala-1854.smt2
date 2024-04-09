; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33500 () Bool)

(assert start!33500)

(declare-fun b!332216 () Bool)

(declare-fun res!183079 () Bool)

(declare-fun e!204013 () Bool)

(assert (=> b!332216 (=> (not res!183079) (not e!204013))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!332216 (= res!183079 (validKeyInArray!0 k!1348))))

(declare-fun mapIsEmpty!11502 () Bool)

(declare-fun mapRes!11502 () Bool)

(assert (=> mapIsEmpty!11502 mapRes!11502))

(declare-fun b!332217 () Bool)

(declare-fun res!183081 () Bool)

(assert (=> b!332217 (=> (not res!183081) (not e!204013))))

(declare-datatypes ((array!17083 0))(
  ( (array!17084 (arr!8073 (Array (_ BitVec 32) (_ BitVec 64))) (size!8425 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17083)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17083 (_ BitVec 32)) Bool)

(assert (=> b!332217 (= res!183081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!332218 () Bool)

(declare-fun e!204014 () Bool)

(declare-fun tp_is_empty!6745 () Bool)

(assert (=> b!332218 (= e!204014 tp_is_empty!6745)))

(declare-fun b!332219 () Bool)

(declare-fun e!204011 () Bool)

(assert (=> b!332219 (= e!204011 tp_is_empty!6745)))

(declare-fun mapNonEmpty!11502 () Bool)

(declare-fun tp!23877 () Bool)

(assert (=> mapNonEmpty!11502 (= mapRes!11502 (and tp!23877 e!204011))))

(declare-datatypes ((V!9971 0))(
  ( (V!9972 (val!3417 Int)) )
))
(declare-datatypes ((ValueCell!3029 0))(
  ( (ValueCellFull!3029 (v!5572 V!9971)) (EmptyCell!3029) )
))
(declare-fun mapValue!11502 () ValueCell!3029)

(declare-fun mapKey!11502 () (_ BitVec 32))

(declare-datatypes ((array!17085 0))(
  ( (array!17086 (arr!8074 (Array (_ BitVec 32) ValueCell!3029)) (size!8426 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17085)

(declare-fun mapRest!11502 () (Array (_ BitVec 32) ValueCell!3029))

(assert (=> mapNonEmpty!11502 (= (arr!8074 _values!1525) (store mapRest!11502 mapKey!11502 mapValue!11502))))

(declare-fun b!332220 () Bool)

(assert (=> b!332220 (= e!204013 (bvsgt #b00000000000000000000000000000000 (size!8425 _keys!1895)))))

(declare-fun res!183083 () Bool)

(assert (=> start!33500 (=> (not res!183083) (not e!204013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33500 (= res!183083 (validMask!0 mask!2385))))

(assert (=> start!33500 e!204013))

(assert (=> start!33500 true))

(declare-fun e!204015 () Bool)

(declare-fun array_inv!6004 (array!17085) Bool)

(assert (=> start!33500 (and (array_inv!6004 _values!1525) e!204015)))

(declare-fun array_inv!6005 (array!17083) Bool)

(assert (=> start!33500 (array_inv!6005 _keys!1895)))

(declare-fun b!332221 () Bool)

(declare-fun res!183080 () Bool)

(assert (=> b!332221 (=> (not res!183080) (not e!204013))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!332221 (= res!183080 (and (= (size!8426 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8425 _keys!1895) (size!8426 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!332222 () Bool)

(assert (=> b!332222 (= e!204015 (and e!204014 mapRes!11502))))

(declare-fun condMapEmpty!11502 () Bool)

(declare-fun mapDefault!11502 () ValueCell!3029)

