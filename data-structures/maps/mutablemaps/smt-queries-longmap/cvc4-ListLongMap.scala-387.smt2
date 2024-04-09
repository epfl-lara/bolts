; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7334 () Bool)

(assert start!7334)

(declare-fun b!47116 () Bool)

(declare-fun e!30109 () Bool)

(declare-fun tp_is_empty!2003 () Bool)

(assert (=> b!47116 (= e!30109 tp_is_empty!2003)))

(declare-fun mapIsEmpty!2033 () Bool)

(declare-fun mapRes!2033 () Bool)

(assert (=> mapIsEmpty!2033 mapRes!2033))

(declare-fun res!27436 () Bool)

(declare-fun e!30106 () Bool)

(assert (=> start!7334 (=> (not res!27436) (not e!30106))))

(declare-fun mask!2458 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7334 (= res!27436 (validMask!0 mask!2458))))

(assert (=> start!7334 e!30106))

(assert (=> start!7334 true))

(declare-datatypes ((V!2403 0))(
  ( (V!2404 (val!1040 Int)) )
))
(declare-datatypes ((ValueCell!712 0))(
  ( (ValueCellFull!712 (v!2099 V!2403)) (EmptyCell!712) )
))
(declare-datatypes ((array!3064 0))(
  ( (array!3065 (arr!1471 (Array (_ BitVec 32) ValueCell!712)) (size!1693 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3064)

(declare-fun e!30110 () Bool)

(declare-fun array_inv!834 (array!3064) Bool)

(assert (=> start!7334 (and (array_inv!834 _values!1550) e!30110)))

(declare-datatypes ((array!3066 0))(
  ( (array!3067 (arr!1472 (Array (_ BitVec 32) (_ BitVec 64))) (size!1694 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3066)

(declare-fun array_inv!835 (array!3066) Bool)

(assert (=> start!7334 (array_inv!835 _keys!1940)))

(declare-fun b!47117 () Bool)

(declare-fun e!30107 () Bool)

(assert (=> b!47117 (= e!30107 tp_is_empty!2003)))

(declare-fun mapNonEmpty!2033 () Bool)

(declare-fun tp!6182 () Bool)

(assert (=> mapNonEmpty!2033 (= mapRes!2033 (and tp!6182 e!30109))))

(declare-fun mapKey!2033 () (_ BitVec 32))

(declare-fun mapValue!2033 () ValueCell!712)

(declare-fun mapRest!2033 () (Array (_ BitVec 32) ValueCell!712))

(assert (=> mapNonEmpty!2033 (= (arr!1471 _values!1550) (store mapRest!2033 mapKey!2033 mapValue!2033))))

(declare-fun extraKeys!1471 () (_ BitVec 32))

(declare-fun b!47118 () Bool)

(assert (=> b!47118 (= e!30106 (and (= (size!1693 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1694 _keys!1940) (size!1693 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011) (not (= (size!1694 _keys!1940) (bvadd #b00000000000000000000000000000001 mask!2458)))))))

(declare-fun b!47119 () Bool)

(assert (=> b!47119 (= e!30110 (and e!30107 mapRes!2033))))

(declare-fun condMapEmpty!2033 () Bool)

(declare-fun mapDefault!2033 () ValueCell!712)

