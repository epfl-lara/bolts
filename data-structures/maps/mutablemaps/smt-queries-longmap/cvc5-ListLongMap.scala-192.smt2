; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3770 () Bool)

(assert start!3770)

(declare-fun mapNonEmpty!1156 () Bool)

(declare-fun mapRes!1156 () Bool)

(declare-fun tp!3676 () Bool)

(declare-fun e!17161 () Bool)

(assert (=> mapNonEmpty!1156 (= mapRes!1156 (and tp!3676 e!17161))))

(declare-datatypes ((V!1283 0))(
  ( (V!1284 (val!573 Int)) )
))
(declare-datatypes ((ValueCell!347 0))(
  ( (ValueCellFull!347 (v!1659 V!1283)) (EmptyCell!347) )
))
(declare-datatypes ((array!1417 0))(
  ( (array!1418 (arr!666 (Array (_ BitVec 32) ValueCell!347)) (size!767 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1417)

(declare-fun mapValue!1156 () ValueCell!347)

(declare-fun mapKey!1156 () (_ BitVec 32))

(declare-fun mapRest!1156 () (Array (_ BitVec 32) ValueCell!347))

(assert (=> mapNonEmpty!1156 (= (arr!666 _values!1501) (store mapRest!1156 mapKey!1156 mapValue!1156))))

(declare-fun b!26371 () Bool)

(declare-fun res!15647 () Bool)

(declare-fun e!17158 () Bool)

(assert (=> b!26371 (=> (not res!15647) (not e!17158))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1419 0))(
  ( (array!1420 (arr!667 (Array (_ BitVec 32) (_ BitVec 64))) (size!768 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1419)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!26371 (= res!15647 (and (= (size!767 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!768 _keys!1833) (size!767 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26372 () Bool)

(assert (=> b!26372 (= e!17158 false)))

(declare-fun lt!10359 () Bool)

(declare-datatypes ((List!583 0))(
  ( (Nil!580) (Cons!579 (h!1146 (_ BitVec 64)) (t!3272 List!583)) )
))
(declare-fun arrayNoDuplicates!0 (array!1419 (_ BitVec 32) List!583) Bool)

(assert (=> b!26372 (= lt!10359 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!580))))

(declare-fun b!26373 () Bool)

(declare-fun e!17160 () Bool)

(declare-fun tp_is_empty!1093 () Bool)

(assert (=> b!26373 (= e!17160 tp_is_empty!1093)))

(declare-fun mapIsEmpty!1156 () Bool)

(assert (=> mapIsEmpty!1156 mapRes!1156))

(declare-fun b!26374 () Bool)

(declare-fun e!17157 () Bool)

(assert (=> b!26374 (= e!17157 (and e!17160 mapRes!1156))))

(declare-fun condMapEmpty!1156 () Bool)

(declare-fun mapDefault!1156 () ValueCell!347)

