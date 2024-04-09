; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7348 () Bool)

(assert start!7348)

(declare-fun b!47176 () Bool)

(declare-fun e!30176 () Bool)

(declare-fun tp_is_empty!2011 () Bool)

(assert (=> b!47176 (= e!30176 tp_is_empty!2011)))

(declare-fun mapNonEmpty!2048 () Bool)

(declare-fun mapRes!2048 () Bool)

(declare-fun tp!6197 () Bool)

(assert (=> mapNonEmpty!2048 (= mapRes!2048 (and tp!6197 e!30176))))

(declare-datatypes ((V!2415 0))(
  ( (V!2416 (val!1044 Int)) )
))
(declare-datatypes ((ValueCell!716 0))(
  ( (ValueCellFull!716 (v!2103 V!2415)) (EmptyCell!716) )
))
(declare-fun mapRest!2048 () (Array (_ BitVec 32) ValueCell!716))

(declare-fun mapKey!2048 () (_ BitVec 32))

(declare-fun mapValue!2048 () ValueCell!716)

(declare-datatypes ((array!3082 0))(
  ( (array!3083 (arr!1479 (Array (_ BitVec 32) ValueCell!716)) (size!1701 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3082)

(assert (=> mapNonEmpty!2048 (= (arr!1479 _values!1550) (store mapRest!2048 mapKey!2048 mapValue!2048))))

(declare-fun b!47177 () Bool)

(declare-fun res!27452 () Bool)

(declare-fun e!30174 () Bool)

(assert (=> b!47177 (=> (not res!27452) (not e!30174))))

(declare-datatypes ((array!3084 0))(
  ( (array!3085 (arr!1480 (Array (_ BitVec 32) (_ BitVec 64))) (size!1702 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3084)

(declare-fun mask!2458 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3084 (_ BitVec 32)) Bool)

(assert (=> b!47177 (= res!27452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458))))

(declare-fun b!47178 () Bool)

(declare-fun res!27454 () Bool)

(assert (=> b!47178 (=> (not res!27454) (not e!30174))))

(declare-fun extraKeys!1471 () (_ BitVec 32))

(assert (=> b!47178 (= res!27454 (and (= (size!1701 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1702 _keys!1940) (size!1701 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!2048 () Bool)

(assert (=> mapIsEmpty!2048 mapRes!2048))

(declare-fun res!27453 () Bool)

(assert (=> start!7348 (=> (not res!27453) (not e!30174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7348 (= res!27453 (validMask!0 mask!2458))))

(assert (=> start!7348 e!30174))

(assert (=> start!7348 true))

(declare-fun e!30173 () Bool)

(declare-fun array_inv!842 (array!3082) Bool)

(assert (=> start!7348 (and (array_inv!842 _values!1550) e!30173)))

(declare-fun array_inv!843 (array!3084) Bool)

(assert (=> start!7348 (array_inv!843 _keys!1940)))

(declare-fun b!47179 () Bool)

(assert (=> b!47179 (= e!30174 (bvsgt #b00000000000000000000000000000000 (size!1702 _keys!1940)))))

(declare-fun b!47180 () Bool)

(declare-fun e!30175 () Bool)

(assert (=> b!47180 (= e!30173 (and e!30175 mapRes!2048))))

(declare-fun condMapEmpty!2048 () Bool)

(declare-fun mapDefault!2048 () ValueCell!716)

