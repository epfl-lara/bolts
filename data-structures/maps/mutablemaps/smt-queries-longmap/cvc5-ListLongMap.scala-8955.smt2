; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108492 () Bool)

(assert start!108492)

(declare-fun b_free!28003 () Bool)

(declare-fun b_next!28003 () Bool)

(assert (=> start!108492 (= b_free!28003 (not b_next!28003))))

(declare-fun tp!99119 () Bool)

(declare-fun b_and!46073 () Bool)

(assert (=> start!108492 (= tp!99119 b_and!46073)))

(declare-fun b!1279951 () Bool)

(declare-fun res!850313 () Bool)

(declare-fun e!731365 () Bool)

(assert (=> b!1279951 (=> (not res!850313) (not e!731365))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!49961 0))(
  ( (V!49962 (val!16896 Int)) )
))
(declare-datatypes ((ValueCell!15923 0))(
  ( (ValueCellFull!15923 (v!19494 V!49961)) (EmptyCell!15923) )
))
(declare-datatypes ((array!84319 0))(
  ( (array!84320 (arr!40659 (Array (_ BitVec 32) ValueCell!15923)) (size!41210 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84319)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84321 0))(
  ( (array!84322 (arr!40660 (Array (_ BitVec 32) (_ BitVec 64))) (size!41211 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84321)

(assert (=> b!1279951 (= res!850313 (and (= (size!41210 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41211 _keys!1741) (size!41210 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!850314 () Bool)

(assert (=> start!108492 (=> (not res!850314) (not e!731365))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108492 (= res!850314 (validMask!0 mask!2175))))

(assert (=> start!108492 e!731365))

(declare-fun tp_is_empty!33643 () Bool)

(assert (=> start!108492 tp_is_empty!33643))

(assert (=> start!108492 true))

(declare-fun e!731363 () Bool)

(declare-fun array_inv!30849 (array!84319) Bool)

(assert (=> start!108492 (and (array_inv!30849 _values!1445) e!731363)))

(declare-fun array_inv!30850 (array!84321) Bool)

(assert (=> start!108492 (array_inv!30850 _keys!1741)))

(assert (=> start!108492 tp!99119))

(declare-fun b!1279952 () Bool)

(assert (=> b!1279952 (= e!731365 false)))

(declare-fun zeroValue!1387 () V!49961)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576013 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun minValue!1387 () V!49961)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21770 0))(
  ( (tuple2!21771 (_1!10895 (_ BitVec 64)) (_2!10895 V!49961)) )
))
(declare-datatypes ((List!28979 0))(
  ( (Nil!28976) (Cons!28975 (h!30184 tuple2!21770) (t!42526 List!28979)) )
))
(declare-datatypes ((ListLongMap!19439 0))(
  ( (ListLongMap!19440 (toList!9735 List!28979)) )
))
(declare-fun contains!7788 (ListLongMap!19439 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4755 (array!84321 array!84319 (_ BitVec 32) (_ BitVec 32) V!49961 V!49961 (_ BitVec 32) Int) ListLongMap!19439)

(assert (=> b!1279952 (= lt!576013 (contains!7788 (getCurrentListMap!4755 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1279953 () Bool)

(declare-fun res!850316 () Bool)

(assert (=> b!1279953 (=> (not res!850316) (not e!731365))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84321 (_ BitVec 32)) Bool)

(assert (=> b!1279953 (= res!850316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1279954 () Bool)

(declare-fun e!731361 () Bool)

(assert (=> b!1279954 (= e!731361 tp_is_empty!33643)))

(declare-fun b!1279955 () Bool)

(declare-fun res!850315 () Bool)

(assert (=> b!1279955 (=> (not res!850315) (not e!731365))))

(declare-datatypes ((List!28980 0))(
  ( (Nil!28977) (Cons!28976 (h!30185 (_ BitVec 64)) (t!42527 List!28980)) )
))
(declare-fun arrayNoDuplicates!0 (array!84321 (_ BitVec 32) List!28980) Bool)

(assert (=> b!1279955 (= res!850315 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28977))))

(declare-fun b!1279956 () Bool)

(declare-fun res!850312 () Bool)

(assert (=> b!1279956 (=> (not res!850312) (not e!731365))))

(assert (=> b!1279956 (= res!850312 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41211 _keys!1741))))))

(declare-fun b!1279957 () Bool)

(declare-fun mapRes!52016 () Bool)

(assert (=> b!1279957 (= e!731363 (and e!731361 mapRes!52016))))

(declare-fun condMapEmpty!52016 () Bool)

(declare-fun mapDefault!52016 () ValueCell!15923)

