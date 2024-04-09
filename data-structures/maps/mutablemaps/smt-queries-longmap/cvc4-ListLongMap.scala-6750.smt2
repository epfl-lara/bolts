; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84666 () Bool)

(assert start!84666)

(declare-fun b_free!20063 () Bool)

(declare-fun b_next!20063 () Bool)

(assert (=> start!84666 (= b_free!20063 (not b_next!20063))))

(declare-fun tp!69982 () Bool)

(declare-fun b_and!32213 () Bool)

(assert (=> start!84666 (= tp!69982 b_and!32213)))

(declare-fun b!989735 () Bool)

(declare-fun res!661961 () Bool)

(declare-fun e!558117 () Bool)

(assert (=> b!989735 (=> (not res!661961) (not e!558117))))

(declare-datatypes ((array!62505 0))(
  ( (array!62506 (arr!30101 (Array (_ BitVec 32) (_ BitVec 64))) (size!30581 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62505)

(declare-datatypes ((List!20946 0))(
  ( (Nil!20943) (Cons!20942 (h!22104 (_ BitVec 64)) (t!29911 List!20946)) )
))
(declare-fun arrayNoDuplicates!0 (array!62505 (_ BitVec 32) List!20946) Bool)

(assert (=> b!989735 (= res!661961 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20943))))

(declare-fun b!989736 () Bool)

(declare-fun e!558116 () Bool)

(declare-fun tp_is_empty!23279 () Bool)

(assert (=> b!989736 (= e!558116 tp_is_empty!23279)))

(declare-fun b!989737 () Bool)

(declare-fun e!558119 () Bool)

(declare-fun mapRes!36964 () Bool)

(assert (=> b!989737 (= e!558119 (and e!558116 mapRes!36964))))

(declare-fun condMapEmpty!36964 () Bool)

(declare-datatypes ((V!36021 0))(
  ( (V!36022 (val!11690 Int)) )
))
(declare-datatypes ((ValueCell!11158 0))(
  ( (ValueCellFull!11158 (v!14260 V!36021)) (EmptyCell!11158) )
))
(declare-datatypes ((array!62507 0))(
  ( (array!62508 (arr!30102 (Array (_ BitVec 32) ValueCell!11158)) (size!30582 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62507)

(declare-fun mapDefault!36964 () ValueCell!11158)

