; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7362 () Bool)

(assert start!7362)

(declare-fun b!47250 () Bool)

(declare-fun e!30232 () Bool)

(declare-datatypes ((array!3096 0))(
  ( (array!3097 (arr!1485 (Array (_ BitVec 32) (_ BitVec 64))) (size!1707 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3096)

(assert (=> b!47250 (= e!30232 (and (bvsle #b00000000000000000000000000000000 (size!1707 _keys!1940)) (bvsge (size!1707 _keys!1940) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!2060 () Bool)

(declare-fun mapRes!2060 () Bool)

(assert (=> mapIsEmpty!2060 mapRes!2060))

(declare-fun b!47251 () Bool)

(declare-fun res!27485 () Bool)

(assert (=> b!47251 (=> (not res!27485) (not e!30232))))

(declare-fun mask!2458 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3096 (_ BitVec 32)) Bool)

(assert (=> b!47251 (= res!27485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458))))

(declare-fun b!47252 () Bool)

(declare-fun e!30233 () Bool)

(declare-fun tp_is_empty!2017 () Bool)

(assert (=> b!47252 (= e!30233 tp_is_empty!2017)))

(declare-fun b!47253 () Bool)

(declare-fun e!30236 () Bool)

(assert (=> b!47253 (= e!30236 tp_is_empty!2017)))

(declare-fun mapNonEmpty!2060 () Bool)

(declare-fun tp!6209 () Bool)

(assert (=> mapNonEmpty!2060 (= mapRes!2060 (and tp!6209 e!30233))))

(declare-datatypes ((V!2423 0))(
  ( (V!2424 (val!1047 Int)) )
))
(declare-datatypes ((ValueCell!719 0))(
  ( (ValueCellFull!719 (v!2106 V!2423)) (EmptyCell!719) )
))
(declare-fun mapValue!2060 () ValueCell!719)

(declare-datatypes ((array!3098 0))(
  ( (array!3099 (arr!1486 (Array (_ BitVec 32) ValueCell!719)) (size!1708 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3098)

(declare-fun mapRest!2060 () (Array (_ BitVec 32) ValueCell!719))

(declare-fun mapKey!2060 () (_ BitVec 32))

(assert (=> mapNonEmpty!2060 (= (arr!1486 _values!1550) (store mapRest!2060 mapKey!2060 mapValue!2060))))

(declare-fun b!47255 () Bool)

(declare-fun res!27486 () Bool)

(assert (=> b!47255 (=> (not res!27486) (not e!30232))))

(declare-fun extraKeys!1471 () (_ BitVec 32))

(assert (=> b!47255 (= res!27486 (and (= (size!1708 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1707 _keys!1940) (size!1708 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011)))))

(declare-fun res!27487 () Bool)

(assert (=> start!7362 (=> (not res!27487) (not e!30232))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7362 (= res!27487 (validMask!0 mask!2458))))

(assert (=> start!7362 e!30232))

(assert (=> start!7362 true))

(declare-fun e!30234 () Bool)

(declare-fun array_inv!848 (array!3098) Bool)

(assert (=> start!7362 (and (array_inv!848 _values!1550) e!30234)))

(declare-fun array_inv!849 (array!3096) Bool)

(assert (=> start!7362 (array_inv!849 _keys!1940)))

(declare-fun b!47254 () Bool)

(assert (=> b!47254 (= e!30234 (and e!30236 mapRes!2060))))

(declare-fun condMapEmpty!2060 () Bool)

(declare-fun mapDefault!2060 () ValueCell!719)

