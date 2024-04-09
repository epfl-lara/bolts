; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3774 () Bool)

(assert start!3774)

(declare-fun b!26407 () Bool)

(declare-fun e!17188 () Bool)

(declare-fun tp_is_empty!1097 () Bool)

(assert (=> b!26407 (= e!17188 tp_is_empty!1097)))

(declare-fun mapIsEmpty!1162 () Bool)

(declare-fun mapRes!1162 () Bool)

(assert (=> mapIsEmpty!1162 mapRes!1162))

(declare-fun mapNonEmpty!1162 () Bool)

(declare-fun tp!3682 () Bool)

(assert (=> mapNonEmpty!1162 (= mapRes!1162 (and tp!3682 e!17188))))

(declare-datatypes ((V!1287 0))(
  ( (V!1288 (val!575 Int)) )
))
(declare-datatypes ((ValueCell!349 0))(
  ( (ValueCellFull!349 (v!1661 V!1287)) (EmptyCell!349) )
))
(declare-datatypes ((array!1425 0))(
  ( (array!1426 (arr!670 (Array (_ BitVec 32) ValueCell!349)) (size!771 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1425)

(declare-fun mapValue!1162 () ValueCell!349)

(declare-fun mapKey!1162 () (_ BitVec 32))

(declare-fun mapRest!1162 () (Array (_ BitVec 32) ValueCell!349))

(assert (=> mapNonEmpty!1162 (= (arr!670 _values!1501) (store mapRest!1162 mapKey!1162 mapValue!1162))))

(declare-fun b!26409 () Bool)

(declare-fun e!17187 () Bool)

(assert (=> b!26409 (= e!17187 tp_is_empty!1097)))

(declare-fun b!26410 () Bool)

(declare-fun res!15666 () Bool)

(declare-fun e!17190 () Bool)

(assert (=> b!26410 (=> (not res!15666) (not e!17190))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1427 0))(
  ( (array!1428 (arr!671 (Array (_ BitVec 32) (_ BitVec 64))) (size!772 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1427)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!26410 (= res!15666 (and (= (size!771 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!772 _keys!1833) (size!771 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26411 () Bool)

(assert (=> b!26411 (= e!17190 false)))

(declare-fun lt!10365 () Bool)

(declare-datatypes ((List!585 0))(
  ( (Nil!582) (Cons!581 (h!1148 (_ BitVec 64)) (t!3274 List!585)) )
))
(declare-fun arrayNoDuplicates!0 (array!1427 (_ BitVec 32) List!585) Bool)

(assert (=> b!26411 (= lt!10365 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!582))))

(declare-fun b!26412 () Bool)

(declare-fun e!17191 () Bool)

(assert (=> b!26412 (= e!17191 (and e!17187 mapRes!1162))))

(declare-fun condMapEmpty!1162 () Bool)

(declare-fun mapDefault!1162 () ValueCell!349)

