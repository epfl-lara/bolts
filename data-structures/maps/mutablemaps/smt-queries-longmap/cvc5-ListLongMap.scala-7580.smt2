; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95836 () Bool)

(assert start!95836)

(declare-fun b_free!22453 () Bool)

(declare-fun b_next!22453 () Bool)

(assert (=> start!95836 (= b_free!22453 (not b_next!22453))))

(declare-fun tp!79209 () Bool)

(declare-fun b_and!35599 () Bool)

(assert (=> start!95836 (= tp!79209 b_and!35599)))

(declare-fun mapIsEmpty!41437 () Bool)

(declare-fun mapRes!41437 () Bool)

(assert (=> mapIsEmpty!41437 mapRes!41437))

(declare-fun b!1083769 () Bool)

(declare-fun res!722572 () Bool)

(declare-fun e!619269 () Bool)

(assert (=> b!1083769 (=> (not res!722572) (not e!619269))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083769 (= res!722572 (validKeyInArray!0 k!904))))

(declare-fun b!1083770 () Bool)

(declare-fun res!722574 () Bool)

(assert (=> b!1083770 (=> (not res!722574) (not e!619269))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69812 0))(
  ( (array!69813 (arr!33576 (Array (_ BitVec 32) (_ BitVec 64))) (size!34113 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69812)

(assert (=> b!1083770 (= res!722574 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34113 _keys!1070))))))

(declare-fun b!1083772 () Bool)

(declare-fun res!722573 () Bool)

(assert (=> b!1083772 (=> (not res!722573) (not e!619269))))

(declare-datatypes ((List!23539 0))(
  ( (Nil!23536) (Cons!23535 (h!24744 (_ BitVec 64)) (t!33057 List!23539)) )
))
(declare-fun arrayNoDuplicates!0 (array!69812 (_ BitVec 32) List!23539) Bool)

(assert (=> b!1083772 (= res!722573 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23536))))

(declare-fun b!1083773 () Bool)

(declare-fun res!722577 () Bool)

(declare-fun e!619268 () Bool)

(assert (=> b!1083773 (=> (not res!722577) (not e!619268))))

(declare-fun lt!480273 () array!69812)

(assert (=> b!1083773 (= res!722577 (arrayNoDuplicates!0 lt!480273 #b00000000000000000000000000000000 Nil!23536))))

(declare-fun b!1083774 () Bool)

(declare-fun res!722576 () Bool)

(assert (=> b!1083774 (=> (not res!722576) (not e!619269))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40401 0))(
  ( (V!40402 (val!13284 Int)) )
))
(declare-datatypes ((ValueCell!12518 0))(
  ( (ValueCellFull!12518 (v!15906 V!40401)) (EmptyCell!12518) )
))
(declare-datatypes ((array!69814 0))(
  ( (array!69815 (arr!33577 (Array (_ BitVec 32) ValueCell!12518)) (size!34114 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69814)

(assert (=> b!1083774 (= res!722576 (and (= (size!34114 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34113 _keys!1070) (size!34114 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1083775 () Bool)

(declare-fun res!722571 () Bool)

(assert (=> b!1083775 (=> (not res!722571) (not e!619269))))

(assert (=> b!1083775 (= res!722571 (= (select (arr!33576 _keys!1070) i!650) k!904))))

(declare-fun b!1083776 () Bool)

(assert (=> b!1083776 (= e!619269 e!619268)))

(declare-fun res!722575 () Bool)

(assert (=> b!1083776 (=> (not res!722575) (not e!619268))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69812 (_ BitVec 32)) Bool)

(assert (=> b!1083776 (= res!722575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480273 mask!1414))))

(assert (=> b!1083776 (= lt!480273 (array!69813 (store (arr!33576 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34113 _keys!1070)))))

(declare-fun b!1083777 () Bool)

(declare-fun e!619271 () Bool)

(declare-fun tp_is_empty!26455 () Bool)

(assert (=> b!1083777 (= e!619271 tp_is_empty!26455)))

(declare-fun mapNonEmpty!41437 () Bool)

(declare-fun tp!79208 () Bool)

(declare-fun e!619273 () Bool)

(assert (=> mapNonEmpty!41437 (= mapRes!41437 (and tp!79208 e!619273))))

(declare-fun mapRest!41437 () (Array (_ BitVec 32) ValueCell!12518))

(declare-fun mapValue!41437 () ValueCell!12518)

(declare-fun mapKey!41437 () (_ BitVec 32))

(assert (=> mapNonEmpty!41437 (= (arr!33577 _values!874) (store mapRest!41437 mapKey!41437 mapValue!41437))))

(declare-fun b!1083778 () Bool)

(declare-fun e!619272 () Bool)

(assert (=> b!1083778 (= e!619272 (and e!619271 mapRes!41437))))

(declare-fun condMapEmpty!41437 () Bool)

(declare-fun mapDefault!41437 () ValueCell!12518)

