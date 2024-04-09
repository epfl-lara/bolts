; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78592 () Bool)

(assert start!78592)

(declare-fun b_free!16777 () Bool)

(declare-fun b_next!16777 () Bool)

(assert (=> start!78592 (= b_free!16777 (not b_next!16777))))

(declare-fun tp!58772 () Bool)

(declare-fun b_and!27417 () Bool)

(assert (=> start!78592 (= tp!58772 b_and!27417)))

(declare-fun mapIsEmpty!30684 () Bool)

(declare-fun mapRes!30684 () Bool)

(assert (=> mapIsEmpty!30684 mapRes!30684))

(declare-fun b!915667 () Bool)

(declare-fun res!617437 () Bool)

(declare-fun e!513999 () Bool)

(assert (=> b!915667 (=> (not res!617437) (not e!513999))))

(declare-datatypes ((array!54574 0))(
  ( (array!54575 (arr!26228 (Array (_ BitVec 32) (_ BitVec 64))) (size!26688 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54574)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54574 (_ BitVec 32)) Bool)

(assert (=> b!915667 (= res!617437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!617434 () Bool)

(assert (=> start!78592 (=> (not res!617434) (not e!513999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78592 (= res!617434 (validMask!0 mask!1881))))

(assert (=> start!78592 e!513999))

(assert (=> start!78592 true))

(declare-datatypes ((V!30679 0))(
  ( (V!30680 (val!9693 Int)) )
))
(declare-datatypes ((ValueCell!9161 0))(
  ( (ValueCellFull!9161 (v!12211 V!30679)) (EmptyCell!9161) )
))
(declare-datatypes ((array!54576 0))(
  ( (array!54577 (arr!26229 (Array (_ BitVec 32) ValueCell!9161)) (size!26689 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54576)

(declare-fun e!513995 () Bool)

(declare-fun array_inv!20456 (array!54576) Bool)

(assert (=> start!78592 (and (array_inv!20456 _values!1231) e!513995)))

(assert (=> start!78592 tp!58772))

(declare-fun array_inv!20457 (array!54574) Bool)

(assert (=> start!78592 (array_inv!20457 _keys!1487)))

(declare-fun tp_is_empty!19285 () Bool)

(assert (=> start!78592 tp_is_empty!19285))

(declare-fun b!915668 () Bool)

(declare-fun res!617438 () Bool)

(assert (=> b!915668 (=> (not res!617438) (not e!513999))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!915668 (= res!617438 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26688 _keys!1487))))))

(declare-fun b!915669 () Bool)

(assert (=> b!915669 (= e!513999 false)))

(declare-fun lt!411663 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!30679)

(declare-fun minValue!1173 () V!30679)

(declare-datatypes ((tuple2!12642 0))(
  ( (tuple2!12643 (_1!6331 (_ BitVec 64)) (_2!6331 V!30679)) )
))
(declare-datatypes ((List!18500 0))(
  ( (Nil!18497) (Cons!18496 (h!19642 tuple2!12642) (t!26121 List!18500)) )
))
(declare-datatypes ((ListLongMap!11353 0))(
  ( (ListLongMap!11354 (toList!5692 List!18500)) )
))
(declare-fun contains!4712 (ListLongMap!11353 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2921 (array!54574 array!54576 (_ BitVec 32) (_ BitVec 32) V!30679 V!30679 (_ BitVec 32) Int) ListLongMap!11353)

(assert (=> b!915669 (= lt!411663 (contains!4712 (getCurrentListMap!2921 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k!1099))))

(declare-fun mapNonEmpty!30684 () Bool)

(declare-fun tp!58773 () Bool)

(declare-fun e!513997 () Bool)

(assert (=> mapNonEmpty!30684 (= mapRes!30684 (and tp!58773 e!513997))))

(declare-fun mapValue!30684 () ValueCell!9161)

(declare-fun mapKey!30684 () (_ BitVec 32))

(declare-fun mapRest!30684 () (Array (_ BitVec 32) ValueCell!9161))

(assert (=> mapNonEmpty!30684 (= (arr!26229 _values!1231) (store mapRest!30684 mapKey!30684 mapValue!30684))))

(declare-fun b!915670 () Bool)

(declare-fun e!513996 () Bool)

(assert (=> b!915670 (= e!513996 tp_is_empty!19285)))

(declare-fun b!915671 () Bool)

(declare-fun res!617436 () Bool)

(assert (=> b!915671 (=> (not res!617436) (not e!513999))))

(assert (=> b!915671 (= res!617436 (and (= (size!26689 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26688 _keys!1487) (size!26689 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!915672 () Bool)

(declare-fun res!617435 () Bool)

(assert (=> b!915672 (=> (not res!617435) (not e!513999))))

(declare-datatypes ((List!18501 0))(
  ( (Nil!18498) (Cons!18497 (h!19643 (_ BitVec 64)) (t!26122 List!18501)) )
))
(declare-fun arrayNoDuplicates!0 (array!54574 (_ BitVec 32) List!18501) Bool)

(assert (=> b!915672 (= res!617435 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18498))))

(declare-fun b!915673 () Bool)

(assert (=> b!915673 (= e!513995 (and e!513996 mapRes!30684))))

(declare-fun condMapEmpty!30684 () Bool)

(declare-fun mapDefault!30684 () ValueCell!9161)

