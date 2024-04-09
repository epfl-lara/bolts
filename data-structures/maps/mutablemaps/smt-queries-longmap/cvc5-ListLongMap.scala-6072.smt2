; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78568 () Bool)

(assert start!78568)

(declare-fun b!915402 () Bool)

(declare-fun e!513818 () Bool)

(assert (=> b!915402 (= e!513818 false)))

(declare-fun lt!411636 () Bool)

(declare-datatypes ((array!54526 0))(
  ( (array!54527 (arr!26204 (Array (_ BitVec 32) (_ BitVec 64))) (size!26664 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54526)

(declare-datatypes ((List!18486 0))(
  ( (Nil!18483) (Cons!18482 (h!19628 (_ BitVec 64)) (t!26107 List!18486)) )
))
(declare-fun arrayNoDuplicates!0 (array!54526 (_ BitVec 32) List!18486) Bool)

(assert (=> b!915402 (= lt!411636 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18483))))

(declare-fun mapNonEmpty!30648 () Bool)

(declare-fun mapRes!30648 () Bool)

(declare-fun tp!58716 () Bool)

(declare-fun e!513815 () Bool)

(assert (=> mapNonEmpty!30648 (= mapRes!30648 (and tp!58716 e!513815))))

(declare-datatypes ((V!30647 0))(
  ( (V!30648 (val!9681 Int)) )
))
(declare-datatypes ((ValueCell!9149 0))(
  ( (ValueCellFull!9149 (v!12199 V!30647)) (EmptyCell!9149) )
))
(declare-fun mapRest!30648 () (Array (_ BitVec 32) ValueCell!9149))

(declare-fun mapKey!30648 () (_ BitVec 32))

(declare-datatypes ((array!54528 0))(
  ( (array!54529 (arr!26205 (Array (_ BitVec 32) ValueCell!9149)) (size!26665 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54528)

(declare-fun mapValue!30648 () ValueCell!9149)

(assert (=> mapNonEmpty!30648 (= (arr!26205 _values!1231) (store mapRest!30648 mapKey!30648 mapValue!30648))))

(declare-fun b!915403 () Bool)

(declare-fun e!513817 () Bool)

(declare-fun tp_is_empty!19261 () Bool)

(assert (=> b!915403 (= e!513817 tp_is_empty!19261)))

(declare-fun res!617279 () Bool)

(assert (=> start!78568 (=> (not res!617279) (not e!513818))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78568 (= res!617279 (validMask!0 mask!1881))))

(assert (=> start!78568 e!513818))

(assert (=> start!78568 true))

(declare-fun e!513819 () Bool)

(declare-fun array_inv!20440 (array!54528) Bool)

(assert (=> start!78568 (and (array_inv!20440 _values!1231) e!513819)))

(declare-fun array_inv!20441 (array!54526) Bool)

(assert (=> start!78568 (array_inv!20441 _keys!1487)))

(declare-fun b!915404 () Bool)

(assert (=> b!915404 (= e!513819 (and e!513817 mapRes!30648))))

(declare-fun condMapEmpty!30648 () Bool)

(declare-fun mapDefault!30648 () ValueCell!9149)

