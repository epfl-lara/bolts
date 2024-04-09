; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!486 () Bool)

(assert start!486)

(declare-fun b!2863 () Bool)

(declare-fun res!4877 () Bool)

(declare-fun e!1194 () Bool)

(assert (=> b!2863 (=> (not res!4877) (not e!1194))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!279 0))(
  ( (V!280 (val!44 Int)) )
))
(declare-datatypes ((ValueCell!22 0))(
  ( (ValueCellFull!22 (v!1130 V!279)) (EmptyCell!22) )
))
(declare-datatypes ((array!85 0))(
  ( (array!86 (arr!39 (Array (_ BitVec 32) ValueCell!22)) (size!101 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!85)

(declare-datatypes ((array!87 0))(
  ( (array!88 (arr!40 (Array (_ BitVec 32) (_ BitVec 64))) (size!102 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!87)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!2863 (= res!4877 (and (= (size!101 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!102 _keys!1806) (size!101 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!2864 () Bool)

(declare-fun res!4876 () Bool)

(assert (=> b!2864 (=> (not res!4876) (not e!1194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87 (_ BitVec 32)) Bool)

(assert (=> b!2864 (= res!4876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapNonEmpty!62 () Bool)

(declare-fun mapRes!62 () Bool)

(declare-fun tp!302 () Bool)

(declare-fun e!1190 () Bool)

(assert (=> mapNonEmpty!62 (= mapRes!62 (and tp!302 e!1190))))

(declare-fun mapValue!62 () ValueCell!22)

(declare-fun mapRest!62 () (Array (_ BitVec 32) ValueCell!22))

(declare-fun mapKey!62 () (_ BitVec 32))

(assert (=> mapNonEmpty!62 (= (arr!39 _values!1492) (store mapRest!62 mapKey!62 mapValue!62))))

(declare-fun b!2865 () Bool)

(declare-fun e!1192 () Bool)

(declare-fun e!1191 () Bool)

(assert (=> b!2865 (= e!1192 (and e!1191 mapRes!62))))

(declare-fun condMapEmpty!62 () Bool)

(declare-fun mapDefault!62 () ValueCell!22)

