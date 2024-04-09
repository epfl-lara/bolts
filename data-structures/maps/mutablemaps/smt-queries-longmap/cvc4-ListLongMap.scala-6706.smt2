; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84240 () Bool)

(assert start!84240)

(declare-fun b_free!19913 () Bool)

(declare-fun b_next!19913 () Bool)

(assert (=> start!84240 (= b_free!19913 (not b_next!19913))))

(declare-fun tp!69344 () Bool)

(declare-fun b_and!31921 () Bool)

(assert (=> start!84240 (= tp!69344 b_and!31921)))

(declare-fun b!984867 () Bool)

(declare-fun res!659147 () Bool)

(declare-fun e!555211 () Bool)

(assert (=> b!984867 (=> (not res!659147) (not e!555211))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!984867 (= res!659147 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!659142 () Bool)

(assert (=> start!84240 (=> (not res!659142) (not e!555211))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84240 (= res!659142 (validMask!0 mask!1948))))

(assert (=> start!84240 e!555211))

(assert (=> start!84240 true))

(declare-fun tp_is_empty!23015 () Bool)

(assert (=> start!84240 tp_is_empty!23015))

(declare-datatypes ((V!35669 0))(
  ( (V!35670 (val!11558 Int)) )
))
(declare-datatypes ((ValueCell!11026 0))(
  ( (ValueCellFull!11026 (v!14120 V!35669)) (EmptyCell!11026) )
))
(declare-datatypes ((array!61997 0))(
  ( (array!61998 (arr!29852 (Array (_ BitVec 32) ValueCell!11026)) (size!30332 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61997)

(declare-fun e!555210 () Bool)

(declare-fun array_inv!22943 (array!61997) Bool)

(assert (=> start!84240 (and (array_inv!22943 _values!1278) e!555210)))

(assert (=> start!84240 tp!69344))

(declare-datatypes ((array!61999 0))(
  ( (array!62000 (arr!29853 (Array (_ BitVec 32) (_ BitVec 64))) (size!30333 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61999)

(declare-fun array_inv!22944 (array!61999) Bool)

(assert (=> start!84240 (array_inv!22944 _keys!1544)))

(declare-fun b!984868 () Bool)

(declare-fun res!659146 () Bool)

(assert (=> b!984868 (=> (not res!659146) (not e!555211))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61999 (_ BitVec 32)) Bool)

(assert (=> b!984868 (= res!659146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!984869 () Bool)

(declare-fun e!555207 () Bool)

(declare-fun mapRes!36551 () Bool)

(assert (=> b!984869 (= e!555210 (and e!555207 mapRes!36551))))

(declare-fun condMapEmpty!36551 () Bool)

(declare-fun mapDefault!36551 () ValueCell!11026)

