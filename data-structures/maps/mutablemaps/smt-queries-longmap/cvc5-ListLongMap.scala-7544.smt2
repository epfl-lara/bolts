; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95620 () Bool)

(assert start!95620)

(declare-fun b!1079731 () Bool)

(declare-fun res!719659 () Bool)

(declare-fun e!617325 () Bool)

(assert (=> b!1079731 (=> (not res!719659) (not e!617325))))

(declare-datatypes ((array!69386 0))(
  ( (array!69387 (arr!33363 (Array (_ BitVec 32) (_ BitVec 64))) (size!33900 (_ BitVec 32))) )
))
(declare-fun lt!478846 () array!69386)

(declare-datatypes ((List!23383 0))(
  ( (Nil!23380) (Cons!23379 (h!24588 (_ BitVec 64)) (t!32749 List!23383)) )
))
(declare-fun arrayNoDuplicates!0 (array!69386 (_ BitVec 32) List!23383) Bool)

(assert (=> b!1079731 (= res!719659 (arrayNoDuplicates!0 lt!478846 #b00000000000000000000000000000000 Nil!23380))))

(declare-fun b!1079732 () Bool)

(assert (=> b!1079732 (= e!617325 (not true))))

(declare-fun _keys!1070 () array!69386)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1079732 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35449 0))(
  ( (Unit!35450) )
))
(declare-fun lt!478847 () Unit!35449)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69386 (_ BitVec 64) (_ BitVec 32)) Unit!35449)

(assert (=> b!1079732 (= lt!478847 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1079733 () Bool)

(declare-fun e!617328 () Bool)

(assert (=> b!1079733 (= e!617328 e!617325)))

(declare-fun res!719662 () Bool)

(assert (=> b!1079733 (=> (not res!719662) (not e!617325))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69386 (_ BitVec 32)) Bool)

(assert (=> b!1079733 (= res!719662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478846 mask!1414))))

(assert (=> b!1079733 (= lt!478846 (array!69387 (store (arr!33363 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33900 _keys!1070)))))

(declare-fun mapIsEmpty!41113 () Bool)

(declare-fun mapRes!41113 () Bool)

(assert (=> mapIsEmpty!41113 mapRes!41113))

(declare-fun b!1079734 () Bool)

(declare-fun e!617327 () Bool)

(declare-fun tp_is_empty!26239 () Bool)

(assert (=> b!1079734 (= e!617327 tp_is_empty!26239)))

(declare-fun b!1079735 () Bool)

(declare-fun res!719656 () Bool)

(assert (=> b!1079735 (=> (not res!719656) (not e!617328))))

(assert (=> b!1079735 (= res!719656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1079736 () Bool)

(declare-fun res!719661 () Bool)

(assert (=> b!1079736 (=> (not res!719661) (not e!617328))))

(assert (=> b!1079736 (= res!719661 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23380))))

(declare-fun b!1079737 () Bool)

(declare-fun res!719663 () Bool)

(assert (=> b!1079737 (=> (not res!719663) (not e!617328))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079737 (= res!719663 (validKeyInArray!0 k!904))))

(declare-fun mapNonEmpty!41113 () Bool)

(declare-fun tp!78576 () Bool)

(assert (=> mapNonEmpty!41113 (= mapRes!41113 (and tp!78576 e!617327))))

(declare-datatypes ((V!40113 0))(
  ( (V!40114 (val!13176 Int)) )
))
(declare-datatypes ((ValueCell!12410 0))(
  ( (ValueCellFull!12410 (v!15798 V!40113)) (EmptyCell!12410) )
))
(declare-datatypes ((array!69388 0))(
  ( (array!69389 (arr!33364 (Array (_ BitVec 32) ValueCell!12410)) (size!33901 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69388)

(declare-fun mapRest!41113 () (Array (_ BitVec 32) ValueCell!12410))

(declare-fun mapKey!41113 () (_ BitVec 32))

(declare-fun mapValue!41113 () ValueCell!12410)

(assert (=> mapNonEmpty!41113 (= (arr!33364 _values!874) (store mapRest!41113 mapKey!41113 mapValue!41113))))

(declare-fun b!1079738 () Bool)

(declare-fun res!719655 () Bool)

(assert (=> b!1079738 (=> (not res!719655) (not e!617328))))

(assert (=> b!1079738 (= res!719655 (= (select (arr!33363 _keys!1070) i!650) k!904))))

(declare-fun res!719658 () Bool)

(assert (=> start!95620 (=> (not res!719658) (not e!617328))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95620 (= res!719658 (validMask!0 mask!1414))))

(assert (=> start!95620 e!617328))

(assert (=> start!95620 true))

(declare-fun array_inv!25626 (array!69386) Bool)

(assert (=> start!95620 (array_inv!25626 _keys!1070)))

(declare-fun e!617329 () Bool)

(declare-fun array_inv!25627 (array!69388) Bool)

(assert (=> start!95620 (and (array_inv!25627 _values!874) e!617329)))

(declare-fun b!1079739 () Bool)

(declare-fun res!719660 () Bool)

(assert (=> b!1079739 (=> (not res!719660) (not e!617328))))

(assert (=> b!1079739 (= res!719660 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33900 _keys!1070))))))

(declare-fun b!1079740 () Bool)

(declare-fun e!617326 () Bool)

(assert (=> b!1079740 (= e!617329 (and e!617326 mapRes!41113))))

(declare-fun condMapEmpty!41113 () Bool)

(declare-fun mapDefault!41113 () ValueCell!12410)

