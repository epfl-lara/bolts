; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43280 () Bool)

(assert start!43280)

(declare-fun b_free!12139 () Bool)

(declare-fun b_next!12139 () Bool)

(assert (=> start!43280 (= b_free!12139 (not b_next!12139))))

(declare-fun tp!42687 () Bool)

(declare-fun b_and!20909 () Bool)

(assert (=> start!43280 (= tp!42687 b_and!20909)))

(declare-fun mapIsEmpty!22174 () Bool)

(declare-fun mapRes!22174 () Bool)

(assert (=> mapIsEmpty!22174 mapRes!22174))

(declare-fun b!479231 () Bool)

(declare-fun e!281950 () Bool)

(declare-fun tp_is_empty!13651 () Bool)

(assert (=> b!479231 (= e!281950 tp_is_empty!13651)))

(declare-fun b!479232 () Bool)

(declare-fun e!281949 () Bool)

(assert (=> b!479232 (= e!281949 tp_is_empty!13651)))

(declare-fun mapNonEmpty!22174 () Bool)

(declare-fun tp!42688 () Bool)

(assert (=> mapNonEmpty!22174 (= mapRes!22174 (and tp!42688 e!281950))))

(declare-datatypes ((V!19273 0))(
  ( (V!19274 (val!6873 Int)) )
))
(declare-datatypes ((ValueCell!6464 0))(
  ( (ValueCellFull!6464 (v!9158 V!19273)) (EmptyCell!6464) )
))
(declare-fun mapRest!22174 () (Array (_ BitVec 32) ValueCell!6464))

(declare-fun mapValue!22174 () ValueCell!6464)

(declare-fun mapKey!22174 () (_ BitVec 32))

(declare-datatypes ((array!30941 0))(
  ( (array!30942 (arr!14874 (Array (_ BitVec 32) ValueCell!6464)) (size!15232 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30941)

(assert (=> mapNonEmpty!22174 (= (arr!14874 _values!1516) (store mapRest!22174 mapKey!22174 mapValue!22174))))

(declare-fun b!479234 () Bool)

(declare-fun res!285938 () Bool)

(declare-fun e!281952 () Bool)

(assert (=> b!479234 (=> (not res!285938) (not e!281952))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!30943 0))(
  ( (array!30944 (arr!14875 (Array (_ BitVec 32) (_ BitVec 64))) (size!15233 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30943)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!479234 (= res!285938 (and (= (size!15232 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15233 _keys!1874) (size!15232 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!479235 () Bool)

(declare-fun res!285939 () Bool)

(assert (=> b!479235 (=> (not res!285939) (not e!281952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30943 (_ BitVec 32)) Bool)

(assert (=> b!479235 (= res!285939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479236 () Bool)

(declare-fun e!281951 () Bool)

(assert (=> b!479236 (= e!281951 (and e!281949 mapRes!22174))))

(declare-fun condMapEmpty!22174 () Bool)

(declare-fun mapDefault!22174 () ValueCell!6464)

