; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72720 () Bool)

(assert start!72720)

(declare-fun b!843581 () Bool)

(declare-fun e!470757 () Bool)

(assert (=> b!843581 (= e!470757 false)))

(declare-fun lt!381126 () Bool)

(declare-datatypes ((array!47714 0))(
  ( (array!47715 (arr!22884 (Array (_ BitVec 32) (_ BitVec 64))) (size!23325 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47714)

(declare-datatypes ((List!16315 0))(
  ( (Nil!16312) (Cons!16311 (h!17442 (_ BitVec 64)) (t!22694 List!16315)) )
))
(declare-fun arrayNoDuplicates!0 (array!47714 (_ BitVec 32) List!16315) Bool)

(assert (=> b!843581 (= lt!381126 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16312))))

(declare-fun mapNonEmpty!25214 () Bool)

(declare-fun mapRes!25214 () Bool)

(declare-fun tp!48533 () Bool)

(declare-fun e!470758 () Bool)

(assert (=> mapNonEmpty!25214 (= mapRes!25214 (and tp!48533 e!470758))))

(declare-datatypes ((V!26037 0))(
  ( (V!26038 (val!7919 Int)) )
))
(declare-datatypes ((ValueCell!7432 0))(
  ( (ValueCellFull!7432 (v!10340 V!26037)) (EmptyCell!7432) )
))
(declare-fun mapValue!25214 () ValueCell!7432)

(declare-fun mapKey!25214 () (_ BitVec 32))

(declare-fun mapRest!25214 () (Array (_ BitVec 32) ValueCell!7432))

(declare-datatypes ((array!47716 0))(
  ( (array!47717 (arr!22885 (Array (_ BitVec 32) ValueCell!7432)) (size!23326 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47716)

(assert (=> mapNonEmpty!25214 (= (arr!22885 _values!688) (store mapRest!25214 mapKey!25214 mapValue!25214))))

(declare-fun b!843582 () Bool)

(declare-fun res!573340 () Bool)

(assert (=> b!843582 (=> (not res!573340) (not e!470757))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!843582 (= res!573340 (and (= (size!23326 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23325 _keys!868) (size!23326 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843583 () Bool)

(declare-fun res!573339 () Bool)

(assert (=> b!843583 (=> (not res!573339) (not e!470757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47714 (_ BitVec 32)) Bool)

(assert (=> b!843583 (= res!573339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!843584 () Bool)

(declare-fun e!470756 () Bool)

(declare-fun e!470760 () Bool)

(assert (=> b!843584 (= e!470756 (and e!470760 mapRes!25214))))

(declare-fun condMapEmpty!25214 () Bool)

(declare-fun mapDefault!25214 () ValueCell!7432)

