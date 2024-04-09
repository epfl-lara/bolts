; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3782 () Bool)

(assert start!3782)

(declare-fun b!26479 () Bool)

(declare-fun e!17251 () Bool)

(assert (=> b!26479 (= e!17251 false)))

(declare-fun lt!10377 () Bool)

(declare-datatypes ((array!1441 0))(
  ( (array!1442 (arr!678 (Array (_ BitVec 32) (_ BitVec 64))) (size!779 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1441)

(declare-datatypes ((List!588 0))(
  ( (Nil!585) (Cons!584 (h!1151 (_ BitVec 64)) (t!3277 List!588)) )
))
(declare-fun arrayNoDuplicates!0 (array!1441 (_ BitVec 32) List!588) Bool)

(assert (=> b!26479 (= lt!10377 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!585))))

(declare-fun mapIsEmpty!1174 () Bool)

(declare-fun mapRes!1174 () Bool)

(assert (=> mapIsEmpty!1174 mapRes!1174))

(declare-fun b!26480 () Bool)

(declare-fun e!17249 () Bool)

(declare-fun tp_is_empty!1105 () Bool)

(assert (=> b!26480 (= e!17249 tp_is_empty!1105)))

(declare-fun b!26482 () Bool)

(declare-fun e!17250 () Bool)

(assert (=> b!26482 (= e!17250 tp_is_empty!1105)))

(declare-fun b!26483 () Bool)

(declare-fun res!15702 () Bool)

(assert (=> b!26483 (=> (not res!15702) (not e!17251))))

(declare-datatypes ((V!1299 0))(
  ( (V!1300 (val!579 Int)) )
))
(declare-datatypes ((ValueCell!353 0))(
  ( (ValueCellFull!353 (v!1665 V!1299)) (EmptyCell!353) )
))
(declare-datatypes ((array!1443 0))(
  ( (array!1444 (arr!679 (Array (_ BitVec 32) ValueCell!353)) (size!780 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1443)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!26483 (= res!15702 (and (= (size!780 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!779 _keys!1833) (size!780 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26484 () Bool)

(declare-fun e!17247 () Bool)

(assert (=> b!26484 (= e!17247 (and e!17250 mapRes!1174))))

(declare-fun condMapEmpty!1174 () Bool)

(declare-fun mapDefault!1174 () ValueCell!353)

