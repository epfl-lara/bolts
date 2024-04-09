; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33452 () Bool)

(assert start!33452)

(declare-fun b!331780 () Bool)

(declare-fun e!203654 () Bool)

(declare-fun tp_is_empty!6697 () Bool)

(assert (=> b!331780 (= e!203654 tp_is_empty!6697)))

(declare-fun b!331781 () Bool)

(declare-fun res!182859 () Bool)

(declare-fun e!203651 () Bool)

(assert (=> b!331781 (=> (not res!182859) (not e!203651))))

(declare-datatypes ((array!16991 0))(
  ( (array!16992 (arr!8027 (Array (_ BitVec 32) (_ BitVec 64))) (size!8379 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!16991)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16991 (_ BitVec 32)) Bool)

(assert (=> b!331781 (= res!182859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!331782 () Bool)

(declare-fun res!182860 () Bool)

(assert (=> b!331782 (=> (not res!182860) (not e!203651))))

(declare-datatypes ((V!9907 0))(
  ( (V!9908 (val!3393 Int)) )
))
(declare-datatypes ((ValueCell!3005 0))(
  ( (ValueCellFull!3005 (v!5548 V!9907)) (EmptyCell!3005) )
))
(declare-datatypes ((array!16993 0))(
  ( (array!16994 (arr!8028 (Array (_ BitVec 32) ValueCell!3005)) (size!8380 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16993)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!331782 (= res!182860 (and (= (size!8380 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8379 _keys!1895) (size!8380 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!11430 () Bool)

(declare-fun mapRes!11430 () Bool)

(assert (=> mapIsEmpty!11430 mapRes!11430))

(declare-fun b!331783 () Bool)

(assert (=> b!331783 (= e!203651 false)))

(declare-fun lt!158901 () Bool)

(declare-datatypes ((List!4599 0))(
  ( (Nil!4596) (Cons!4595 (h!5451 (_ BitVec 64)) (t!9689 List!4599)) )
))
(declare-fun arrayNoDuplicates!0 (array!16991 (_ BitVec 32) List!4599) Bool)

(assert (=> b!331783 (= lt!158901 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4596))))

(declare-fun b!331784 () Bool)

(declare-fun e!203652 () Bool)

(assert (=> b!331784 (= e!203652 (and e!203654 mapRes!11430))))

(declare-fun condMapEmpty!11430 () Bool)

(declare-fun mapDefault!11430 () ValueCell!3005)

