; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3768 () Bool)

(assert start!3768)

(declare-fun b!26353 () Bool)

(declare-fun e!17145 () Bool)

(declare-fun tp_is_empty!1091 () Bool)

(assert (=> b!26353 (= e!17145 tp_is_empty!1091)))

(declare-fun mapNonEmpty!1153 () Bool)

(declare-fun mapRes!1153 () Bool)

(declare-fun tp!3673 () Bool)

(declare-fun e!17144 () Bool)

(assert (=> mapNonEmpty!1153 (= mapRes!1153 (and tp!3673 e!17144))))

(declare-datatypes ((V!1279 0))(
  ( (V!1280 (val!572 Int)) )
))
(declare-datatypes ((ValueCell!346 0))(
  ( (ValueCellFull!346 (v!1658 V!1279)) (EmptyCell!346) )
))
(declare-datatypes ((array!1413 0))(
  ( (array!1414 (arr!664 (Array (_ BitVec 32) ValueCell!346)) (size!765 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1413)

(declare-fun mapRest!1153 () (Array (_ BitVec 32) ValueCell!346))

(declare-fun mapValue!1153 () ValueCell!346)

(declare-fun mapKey!1153 () (_ BitVec 32))

(assert (=> mapNonEmpty!1153 (= (arr!664 _values!1501) (store mapRest!1153 mapKey!1153 mapValue!1153))))

(declare-fun mapIsEmpty!1153 () Bool)

(assert (=> mapIsEmpty!1153 mapRes!1153))

(declare-fun b!26354 () Bool)

(assert (=> b!26354 (= e!17144 tp_is_empty!1091)))

(declare-fun res!15639 () Bool)

(declare-fun e!17146 () Bool)

(assert (=> start!3768 (=> (not res!15639) (not e!17146))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3768 (= res!15639 (validMask!0 mask!2294))))

(assert (=> start!3768 e!17146))

(assert (=> start!3768 true))

(declare-fun e!17142 () Bool)

(declare-fun array_inv!459 (array!1413) Bool)

(assert (=> start!3768 (and (array_inv!459 _values!1501) e!17142)))

(declare-datatypes ((array!1415 0))(
  ( (array!1416 (arr!665 (Array (_ BitVec 32) (_ BitVec 64))) (size!766 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1415)

(declare-fun array_inv!460 (array!1415) Bool)

(assert (=> start!3768 (array_inv!460 _keys!1833)))

(declare-fun b!26355 () Bool)

(declare-fun res!15638 () Bool)

(assert (=> b!26355 (=> (not res!15638) (not e!17146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1415 (_ BitVec 32)) Bool)

(assert (=> b!26355 (= res!15638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!26356 () Bool)

(assert (=> b!26356 (= e!17142 (and e!17145 mapRes!1153))))

(declare-fun condMapEmpty!1153 () Bool)

(declare-fun mapDefault!1153 () ValueCell!346)

