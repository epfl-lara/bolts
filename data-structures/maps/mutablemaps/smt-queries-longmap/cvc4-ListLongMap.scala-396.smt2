; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7432 () Bool)

(assert start!7432)

(declare-fun b!47744 () Bool)

(declare-fun res!27758 () Bool)

(declare-fun e!30608 () Bool)

(assert (=> b!47744 (=> (not res!27758) (not e!30608))))

(declare-datatypes ((array!3174 0))(
  ( (array!3175 (arr!1521 (Array (_ BitVec 32) (_ BitVec 64))) (size!1743 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3174)

(declare-fun mask!2458 () (_ BitVec 32))

(declare-datatypes ((V!2475 0))(
  ( (V!2476 (val!1067 Int)) )
))
(declare-datatypes ((ValueCell!739 0))(
  ( (ValueCellFull!739 (v!2127 V!2475)) (EmptyCell!739) )
))
(declare-datatypes ((array!3176 0))(
  ( (array!3177 (arr!1522 (Array (_ BitVec 32) ValueCell!739)) (size!1744 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3176)

(declare-fun extraKeys!1471 () (_ BitVec 32))

(assert (=> b!47744 (= res!27758 (and (= (size!1744 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1743 _keys!1940) (size!1744 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!2129 () Bool)

(declare-fun mapRes!2129 () Bool)

(assert (=> mapIsEmpty!2129 mapRes!2129))

(declare-fun b!47745 () Bool)

(declare-fun e!30610 () Bool)

(declare-fun tp_is_empty!2057 () Bool)

(assert (=> b!47745 (= e!30610 tp_is_empty!2057)))

(declare-fun b!47746 () Bool)

(declare-fun e!30606 () Bool)

(assert (=> b!47746 (= e!30606 tp_is_empty!2057)))

(declare-fun b!47747 () Bool)

(declare-fun res!27757 () Bool)

(assert (=> b!47747 (=> (not res!27757) (not e!30608))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3174 (_ BitVec 32)) Bool)

(assert (=> b!47747 (= res!27757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458))))

(declare-fun res!27759 () Bool)

(assert (=> start!7432 (=> (not res!27759) (not e!30608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7432 (= res!27759 (validMask!0 mask!2458))))

(assert (=> start!7432 e!30608))

(assert (=> start!7432 true))

(declare-fun e!30607 () Bool)

(declare-fun array_inv!872 (array!3176) Bool)

(assert (=> start!7432 (and (array_inv!872 _values!1550) e!30607)))

(declare-fun array_inv!873 (array!3174) Bool)

(assert (=> start!7432 (array_inv!873 _keys!1940)))

(declare-fun mapNonEmpty!2129 () Bool)

(declare-fun tp!6278 () Bool)

(assert (=> mapNonEmpty!2129 (= mapRes!2129 (and tp!6278 e!30606))))

(declare-fun mapKey!2129 () (_ BitVec 32))

(declare-fun mapValue!2129 () ValueCell!739)

(declare-fun mapRest!2129 () (Array (_ BitVec 32) ValueCell!739))

(assert (=> mapNonEmpty!2129 (= (arr!1522 _values!1550) (store mapRest!2129 mapKey!2129 mapValue!2129))))

(declare-fun b!47748 () Bool)

(assert (=> b!47748 (= e!30608 false)))

(declare-fun lt!20460 () Bool)

(declare-datatypes ((List!1283 0))(
  ( (Nil!1280) (Cons!1279 (h!1859 (_ BitVec 64)) (t!4319 List!1283)) )
))
(declare-fun arrayNoDuplicates!0 (array!3174 (_ BitVec 32) List!1283) Bool)

(assert (=> b!47748 (= lt!20460 (arrayNoDuplicates!0 _keys!1940 #b00000000000000000000000000000000 Nil!1280))))

(declare-fun b!47749 () Bool)

(assert (=> b!47749 (= e!30607 (and e!30610 mapRes!2129))))

(declare-fun condMapEmpty!2129 () Bool)

(declare-fun mapDefault!2129 () ValueCell!739)

