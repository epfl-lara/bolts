; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108502 () Bool)

(assert start!108502)

(declare-fun b_free!28013 () Bool)

(declare-fun b_next!28013 () Bool)

(assert (=> start!108502 (= b_free!28013 (not b_next!28013))))

(declare-fun tp!99150 () Bool)

(declare-fun b_and!46083 () Bool)

(assert (=> start!108502 (= tp!99150 b_and!46083)))

(declare-fun mapIsEmpty!52031 () Bool)

(declare-fun mapRes!52031 () Bool)

(assert (=> mapIsEmpty!52031 mapRes!52031))

(declare-fun res!850388 () Bool)

(declare-fun e!731439 () Bool)

(assert (=> start!108502 (=> (not res!850388) (not e!731439))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108502 (= res!850388 (validMask!0 mask!2175))))

(assert (=> start!108502 e!731439))

(declare-fun tp_is_empty!33653 () Bool)

(assert (=> start!108502 tp_is_empty!33653))

(assert (=> start!108502 true))

(declare-datatypes ((V!49973 0))(
  ( (V!49974 (val!16901 Int)) )
))
(declare-datatypes ((ValueCell!15928 0))(
  ( (ValueCellFull!15928 (v!19499 V!49973)) (EmptyCell!15928) )
))
(declare-datatypes ((array!84337 0))(
  ( (array!84338 (arr!40668 (Array (_ BitVec 32) ValueCell!15928)) (size!41219 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84337)

(declare-fun e!731440 () Bool)

(declare-fun array_inv!30857 (array!84337) Bool)

(assert (=> start!108502 (and (array_inv!30857 _values!1445) e!731440)))

(declare-datatypes ((array!84339 0))(
  ( (array!84340 (arr!40669 (Array (_ BitVec 32) (_ BitVec 64))) (size!41220 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84339)

(declare-fun array_inv!30858 (array!84339) Bool)

(assert (=> start!108502 (array_inv!30858 _keys!1741)))

(assert (=> start!108502 tp!99150))

(declare-fun b!1280071 () Bool)

(declare-fun e!731437 () Bool)

(assert (=> b!1280071 (= e!731437 tp_is_empty!33653)))

(declare-fun b!1280072 () Bool)

(declare-fun res!850389 () Bool)

(assert (=> b!1280072 (=> (not res!850389) (not e!731439))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1280072 (= res!850389 (and (= (size!41219 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41220 _keys!1741) (size!41219 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280073 () Bool)

(declare-fun res!850390 () Bool)

(assert (=> b!1280073 (=> (not res!850390) (not e!731439))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1280073 (= res!850390 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41220 _keys!1741))))))

(declare-fun b!1280074 () Bool)

(declare-fun res!850391 () Bool)

(assert (=> b!1280074 (=> (not res!850391) (not e!731439))))

(declare-datatypes ((List!28987 0))(
  ( (Nil!28984) (Cons!28983 (h!30192 (_ BitVec 64)) (t!42534 List!28987)) )
))
(declare-fun arrayNoDuplicates!0 (array!84339 (_ BitVec 32) List!28987) Bool)

(assert (=> b!1280074 (= res!850391 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28984))))

(declare-fun b!1280075 () Bool)

(declare-fun e!731436 () Bool)

(assert (=> b!1280075 (= e!731440 (and e!731436 mapRes!52031))))

(declare-fun condMapEmpty!52031 () Bool)

(declare-fun mapDefault!52031 () ValueCell!15928)

