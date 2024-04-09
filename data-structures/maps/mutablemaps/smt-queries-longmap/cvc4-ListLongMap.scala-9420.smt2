; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112168 () Bool)

(assert start!112168)

(declare-fun mapIsEmpty!56329 () Bool)

(declare-fun mapRes!56329 () Bool)

(assert (=> mapIsEmpty!56329 mapRes!56329))

(declare-fun b!1327945 () Bool)

(declare-fun res!881195 () Bool)

(declare-fun e!757129 () Bool)

(assert (=> b!1327945 (=> (not res!881195) (not e!757129))))

(declare-datatypes ((array!89739 0))(
  ( (array!89740 (arr!43331 (Array (_ BitVec 32) (_ BitVec 64))) (size!43882 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89739)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89739 (_ BitVec 32)) Bool)

(assert (=> b!1327945 (= res!881195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapNonEmpty!56329 () Bool)

(declare-fun tp!107237 () Bool)

(declare-fun e!757127 () Bool)

(assert (=> mapNonEmpty!56329 (= mapRes!56329 (and tp!107237 e!757127))))

(declare-datatypes ((V!53685 0))(
  ( (V!53686 (val!18293 Int)) )
))
(declare-datatypes ((ValueCell!17320 0))(
  ( (ValueCellFull!17320 (v!20928 V!53685)) (EmptyCell!17320) )
))
(declare-fun mapValue!56329 () ValueCell!17320)

(declare-datatypes ((array!89741 0))(
  ( (array!89742 (arr!43332 (Array (_ BitVec 32) ValueCell!17320)) (size!43883 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89741)

(declare-fun mapKey!56329 () (_ BitVec 32))

(declare-fun mapRest!56329 () (Array (_ BitVec 32) ValueCell!17320))

(assert (=> mapNonEmpty!56329 (= (arr!43332 _values!1320) (store mapRest!56329 mapKey!56329 mapValue!56329))))

(declare-fun b!1327946 () Bool)

(declare-fun tp_is_empty!36437 () Bool)

(assert (=> b!1327946 (= e!757127 tp_is_empty!36437)))

(declare-fun b!1327947 () Bool)

(declare-fun e!757126 () Bool)

(declare-fun e!757125 () Bool)

(assert (=> b!1327947 (= e!757126 (and e!757125 mapRes!56329))))

(declare-fun condMapEmpty!56329 () Bool)

(declare-fun mapDefault!56329 () ValueCell!17320)

