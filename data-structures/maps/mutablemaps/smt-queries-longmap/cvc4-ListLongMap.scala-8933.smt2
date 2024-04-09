; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108364 () Bool)

(assert start!108364)

(declare-fun res!849463 () Bool)

(declare-fun e!730405 () Bool)

(assert (=> start!108364 (=> (not res!849463) (not e!730405))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108364 (= res!849463 (validMask!0 mask!2175))))

(assert (=> start!108364 e!730405))

(assert (=> start!108364 true))

(declare-datatypes ((V!49789 0))(
  ( (V!49790 (val!16832 Int)) )
))
(declare-datatypes ((ValueCell!15859 0))(
  ( (ValueCellFull!15859 (v!19430 V!49789)) (EmptyCell!15859) )
))
(declare-datatypes ((array!84071 0))(
  ( (array!84072 (arr!40535 (Array (_ BitVec 32) ValueCell!15859)) (size!41086 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84071)

(declare-fun e!730402 () Bool)

(declare-fun array_inv!30765 (array!84071) Bool)

(assert (=> start!108364 (and (array_inv!30765 _values!1445) e!730402)))

(declare-datatypes ((array!84073 0))(
  ( (array!84074 (arr!40536 (Array (_ BitVec 32) (_ BitVec 64))) (size!41087 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84073)

(declare-fun array_inv!30766 (array!84073) Bool)

(assert (=> start!108364 (array_inv!30766 _keys!1741)))

(declare-fun b!1278525 () Bool)

(declare-fun res!849462 () Bool)

(assert (=> b!1278525 (=> (not res!849462) (not e!730405))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84073 (_ BitVec 32)) Bool)

(assert (=> b!1278525 (= res!849462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278526 () Bool)

(assert (=> b!1278526 (= e!730405 false)))

(declare-fun lt!575839 () Bool)

(declare-datatypes ((List!28907 0))(
  ( (Nil!28904) (Cons!28903 (h!30112 (_ BitVec 64)) (t!42454 List!28907)) )
))
(declare-fun arrayNoDuplicates!0 (array!84073 (_ BitVec 32) List!28907) Bool)

(assert (=> b!1278526 (= lt!575839 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28904))))

(declare-fun b!1278527 () Bool)

(declare-fun res!849464 () Bool)

(assert (=> b!1278527 (=> (not res!849464) (not e!730405))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1278527 (= res!849464 (and (= (size!41086 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41087 _keys!1741) (size!41086 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1278528 () Bool)

(declare-fun e!730404 () Bool)

(declare-fun tp_is_empty!33515 () Bool)

(assert (=> b!1278528 (= e!730404 tp_is_empty!33515)))

(declare-fun mapIsEmpty!51824 () Bool)

(declare-fun mapRes!51824 () Bool)

(assert (=> mapIsEmpty!51824 mapRes!51824))

(declare-fun b!1278529 () Bool)

(assert (=> b!1278529 (= e!730402 (and e!730404 mapRes!51824))))

(declare-fun condMapEmpty!51824 () Bool)

(declare-fun mapDefault!51824 () ValueCell!15859)

