; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78572 () Bool)

(assert start!78572)

(declare-fun mapNonEmpty!30654 () Bool)

(declare-fun mapRes!30654 () Bool)

(declare-fun tp!58722 () Bool)

(declare-fun e!513849 () Bool)

(assert (=> mapNonEmpty!30654 (= mapRes!30654 (and tp!58722 e!513849))))

(declare-fun mapKey!30654 () (_ BitVec 32))

(declare-datatypes ((V!30651 0))(
  ( (V!30652 (val!9683 Int)) )
))
(declare-datatypes ((ValueCell!9151 0))(
  ( (ValueCellFull!9151 (v!12201 V!30651)) (EmptyCell!9151) )
))
(declare-fun mapValue!30654 () ValueCell!9151)

(declare-datatypes ((array!54534 0))(
  ( (array!54535 (arr!26208 (Array (_ BitVec 32) ValueCell!9151)) (size!26668 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54534)

(declare-fun mapRest!30654 () (Array (_ BitVec 32) ValueCell!9151))

(assert (=> mapNonEmpty!30654 (= (arr!26208 _values!1231) (store mapRest!30654 mapKey!30654 mapValue!30654))))

(declare-fun res!617297 () Bool)

(declare-fun e!513847 () Bool)

(assert (=> start!78572 (=> (not res!617297) (not e!513847))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78572 (= res!617297 (validMask!0 mask!1881))))

(assert (=> start!78572 e!513847))

(assert (=> start!78572 true))

(declare-fun e!513846 () Bool)

(declare-fun array_inv!20444 (array!54534) Bool)

(assert (=> start!78572 (and (array_inv!20444 _values!1231) e!513846)))

(declare-datatypes ((array!54536 0))(
  ( (array!54537 (arr!26209 (Array (_ BitVec 32) (_ BitVec 64))) (size!26669 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54536)

(declare-fun array_inv!20445 (array!54536) Bool)

(assert (=> start!78572 (array_inv!20445 _keys!1487)))

(declare-fun b!915438 () Bool)

(declare-fun res!617296 () Bool)

(assert (=> b!915438 (=> (not res!617296) (not e!513847))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54536 (_ BitVec 32)) Bool)

(assert (=> b!915438 (= res!617296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!915439 () Bool)

(declare-fun tp_is_empty!19265 () Bool)

(assert (=> b!915439 (= e!513849 tp_is_empty!19265)))

(declare-fun b!915440 () Bool)

(declare-fun res!617295 () Bool)

(assert (=> b!915440 (=> (not res!617295) (not e!513847))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!915440 (= res!617295 (and (= (size!26668 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26669 _keys!1487) (size!26668 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!915441 () Bool)

(declare-fun e!513845 () Bool)

(assert (=> b!915441 (= e!513845 tp_is_empty!19265)))

(declare-fun b!915442 () Bool)

(assert (=> b!915442 (= e!513847 false)))

(declare-fun lt!411642 () Bool)

(declare-datatypes ((List!18488 0))(
  ( (Nil!18485) (Cons!18484 (h!19630 (_ BitVec 64)) (t!26109 List!18488)) )
))
(declare-fun arrayNoDuplicates!0 (array!54536 (_ BitVec 32) List!18488) Bool)

(assert (=> b!915442 (= lt!411642 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18485))))

(declare-fun b!915443 () Bool)

(assert (=> b!915443 (= e!513846 (and e!513845 mapRes!30654))))

(declare-fun condMapEmpty!30654 () Bool)

(declare-fun mapDefault!30654 () ValueCell!9151)

