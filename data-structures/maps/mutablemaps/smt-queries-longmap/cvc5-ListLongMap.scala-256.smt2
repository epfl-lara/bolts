; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4216 () Bool)

(assert start!4216)

(declare-fun b_free!1123 () Bool)

(declare-fun b_next!1123 () Bool)

(assert (=> start!4216 (= b_free!1123 (not b_next!1123))))

(declare-fun tp!4788 () Bool)

(declare-fun b_and!1935 () Bool)

(assert (=> start!4216 (= tp!4788 b_and!1935)))

(declare-fun b!32246 () Bool)

(declare-fun res!19587 () Bool)

(declare-fun e!20506 () Bool)

(assert (=> b!32246 (=> (not res!19587) (not e!20506))))

(declare-datatypes ((array!2159 0))(
  ( (array!2160 (arr!1033 (Array (_ BitVec 32) (_ BitVec 64))) (size!1134 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2159)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2159 (_ BitVec 32)) Bool)

(assert (=> b!32246 (= res!19587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun res!19582 () Bool)

(assert (=> start!4216 (=> (not res!19582) (not e!20506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4216 (= res!19582 (validMask!0 mask!2294))))

(assert (=> start!4216 e!20506))

(assert (=> start!4216 true))

(assert (=> start!4216 tp!4788))

(declare-datatypes ((V!1795 0))(
  ( (V!1796 (val!765 Int)) )
))
(declare-datatypes ((ValueCell!539 0))(
  ( (ValueCellFull!539 (v!1854 V!1795)) (EmptyCell!539) )
))
(declare-datatypes ((array!2161 0))(
  ( (array!2162 (arr!1034 (Array (_ BitVec 32) ValueCell!539)) (size!1135 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2161)

(declare-fun e!20504 () Bool)

(declare-fun array_inv!685 (array!2161) Bool)

(assert (=> start!4216 (and (array_inv!685 _values!1501) e!20504)))

(declare-fun array_inv!686 (array!2159) Bool)

(assert (=> start!4216 (array_inv!686 _keys!1833)))

(declare-fun tp_is_empty!1477 () Bool)

(assert (=> start!4216 tp_is_empty!1477))

(declare-fun b!32247 () Bool)

(declare-fun res!19584 () Bool)

(assert (=> b!32247 (=> (not res!19584) (not e!20506))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!2159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32247 (= res!19584 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!32248 () Bool)

(declare-fun res!19588 () Bool)

(assert (=> b!32248 (=> (not res!19588) (not e!20506))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!32248 (= res!19588 (and (= (size!1135 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1134 _keys!1833) (size!1135 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!32249 () Bool)

(declare-fun e!20503 () Bool)

(assert (=> b!32249 (= e!20503 tp_is_empty!1477)))

(declare-fun mapIsEmpty!1744 () Bool)

(declare-fun mapRes!1744 () Bool)

(assert (=> mapIsEmpty!1744 mapRes!1744))

(declare-fun b!32250 () Bool)

(declare-fun e!20502 () Bool)

(assert (=> b!32250 (= e!20504 (and e!20502 mapRes!1744))))

(declare-fun condMapEmpty!1744 () Bool)

(declare-fun mapDefault!1744 () ValueCell!539)

