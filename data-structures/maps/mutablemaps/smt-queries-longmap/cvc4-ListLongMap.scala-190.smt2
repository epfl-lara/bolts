; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3762 () Bool)

(assert start!3762)

(declare-fun mapNonEmpty!1144 () Bool)

(declare-fun mapRes!1144 () Bool)

(declare-fun tp!3664 () Bool)

(declare-fun e!17100 () Bool)

(assert (=> mapNonEmpty!1144 (= mapRes!1144 (and tp!3664 e!17100))))

(declare-fun mapKey!1144 () (_ BitVec 32))

(declare-datatypes ((V!1271 0))(
  ( (V!1272 (val!569 Int)) )
))
(declare-datatypes ((ValueCell!343 0))(
  ( (ValueCellFull!343 (v!1655 V!1271)) (EmptyCell!343) )
))
(declare-datatypes ((array!1401 0))(
  ( (array!1402 (arr!658 (Array (_ BitVec 32) ValueCell!343)) (size!759 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1401)

(declare-fun mapValue!1144 () ValueCell!343)

(declare-fun mapRest!1144 () (Array (_ BitVec 32) ValueCell!343))

(assert (=> mapNonEmpty!1144 (= (arr!658 _values!1501) (store mapRest!1144 mapKey!1144 mapValue!1144))))

(declare-fun b!26299 () Bool)

(declare-fun e!17097 () Bool)

(declare-fun tp_is_empty!1085 () Bool)

(assert (=> b!26299 (= e!17097 tp_is_empty!1085)))

(declare-fun b!26300 () Bool)

(declare-fun res!15611 () Bool)

(declare-fun e!17101 () Bool)

(assert (=> b!26300 (=> (not res!15611) (not e!17101))))

(declare-datatypes ((array!1403 0))(
  ( (array!1404 (arr!659 (Array (_ BitVec 32) (_ BitVec 64))) (size!760 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1403)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1403 (_ BitVec 32)) Bool)

(assert (=> b!26300 (= res!15611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!26301 () Bool)

(assert (=> b!26301 (= e!17101 false)))

(declare-fun lt!10347 () Bool)

(declare-datatypes ((List!581 0))(
  ( (Nil!578) (Cons!577 (h!1144 (_ BitVec 64)) (t!3270 List!581)) )
))
(declare-fun arrayNoDuplicates!0 (array!1403 (_ BitVec 32) List!581) Bool)

(assert (=> b!26301 (= lt!10347 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!578))))

(declare-fun mapIsEmpty!1144 () Bool)

(assert (=> mapIsEmpty!1144 mapRes!1144))

(declare-fun b!26302 () Bool)

(assert (=> b!26302 (= e!17100 tp_is_empty!1085)))

(declare-fun b!26303 () Bool)

(declare-fun res!15612 () Bool)

(assert (=> b!26303 (=> (not res!15612) (not e!17101))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!26303 (= res!15612 (and (= (size!759 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!760 _keys!1833) (size!759 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26304 () Bool)

(declare-fun e!17098 () Bool)

(assert (=> b!26304 (= e!17098 (and e!17097 mapRes!1144))))

(declare-fun condMapEmpty!1144 () Bool)

(declare-fun mapDefault!1144 () ValueCell!343)

