; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33462 () Bool)

(assert start!33462)

(declare-fun b!331870 () Bool)

(declare-fun res!182906 () Bool)

(declare-fun e!203726 () Bool)

(assert (=> b!331870 (=> (not res!182906) (not e!203726))))

(declare-datatypes ((V!9919 0))(
  ( (V!9920 (val!3398 Int)) )
))
(declare-datatypes ((ValueCell!3010 0))(
  ( (ValueCellFull!3010 (v!5553 V!9919)) (EmptyCell!3010) )
))
(declare-datatypes ((array!17011 0))(
  ( (array!17012 (arr!8037 (Array (_ BitVec 32) ValueCell!3010)) (size!8389 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17011)

(declare-datatypes ((array!17013 0))(
  ( (array!17014 (arr!8038 (Array (_ BitVec 32) (_ BitVec 64))) (size!8390 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17013)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun mask!2385 () (_ BitVec 32))

(assert (=> b!331870 (= res!182906 (and (= (size!8389 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8390 _keys!1895) (size!8389 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!331871 () Bool)

(declare-fun res!182905 () Bool)

(assert (=> b!331871 (=> (not res!182905) (not e!203726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17013 (_ BitVec 32)) Bool)

(assert (=> b!331871 (= res!182905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!331872 () Bool)

(declare-fun e!203727 () Bool)

(declare-fun tp_is_empty!6707 () Bool)

(assert (=> b!331872 (= e!203727 tp_is_empty!6707)))

(declare-fun b!331873 () Bool)

(declare-fun e!203729 () Bool)

(declare-fun e!203730 () Bool)

(declare-fun mapRes!11445 () Bool)

(assert (=> b!331873 (= e!203729 (and e!203730 mapRes!11445))))

(declare-fun condMapEmpty!11445 () Bool)

(declare-fun mapDefault!11445 () ValueCell!3010)

