; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113252 () Bool)

(assert start!113252)

(declare-fun b_free!31267 () Bool)

(declare-fun b_next!31267 () Bool)

(assert (=> start!113252 (= b_free!31267 (not b_next!31267))))

(declare-fun tp!109606 () Bool)

(declare-fun b_and!50451 () Bool)

(assert (=> start!113252 (= tp!109606 b_and!50451)))

(declare-fun res!891027 () Bool)

(declare-fun e!764452 () Bool)

(assert (=> start!113252 (=> (not res!891027) (not e!764452))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113252 (= res!891027 (validMask!0 mask!1977))))

(assert (=> start!113252 e!764452))

(declare-fun tp_is_empty!37267 () Bool)

(assert (=> start!113252 tp_is_empty!37267))

(assert (=> start!113252 true))

(declare-datatypes ((array!91335 0))(
  ( (array!91336 (arr!44119 (Array (_ BitVec 32) (_ BitVec 64))) (size!44670 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91335)

(declare-fun array_inv!33173 (array!91335) Bool)

(assert (=> start!113252 (array_inv!33173 _keys!1571)))

(declare-datatypes ((V!54793 0))(
  ( (V!54794 (val!18708 Int)) )
))
(declare-datatypes ((ValueCell!17735 0))(
  ( (ValueCellFull!17735 (v!21354 V!54793)) (EmptyCell!17735) )
))
(declare-datatypes ((array!91337 0))(
  ( (array!91338 (arr!44120 (Array (_ BitVec 32) ValueCell!17735)) (size!44671 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91337)

(declare-fun e!764456 () Bool)

(declare-fun array_inv!33174 (array!91337) Bool)

(assert (=> start!113252 (and (array_inv!33174 _values!1303) e!764456)))

(assert (=> start!113252 tp!109606))

(declare-fun b!1342866 () Bool)

(declare-fun res!891021 () Bool)

(assert (=> b!1342866 (=> (not res!891021) (not e!764452))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1342866 (= res!891021 (not (= (select (arr!44119 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1342867 () Bool)

(declare-fun res!891029 () Bool)

(assert (=> b!1342867 (=> (not res!891029) (not e!764452))))

(declare-fun minValue!1245 () V!54793)

(declare-fun zeroValue!1245 () V!54793)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24248 0))(
  ( (tuple2!24249 (_1!12134 (_ BitVec 64)) (_2!12134 V!54793)) )
))
(declare-datatypes ((List!31428 0))(
  ( (Nil!31425) (Cons!31424 (h!32633 tuple2!24248) (t!45913 List!31428)) )
))
(declare-datatypes ((ListLongMap!21917 0))(
  ( (ListLongMap!21918 (toList!10974 List!31428)) )
))
(declare-fun contains!9086 (ListLongMap!21917 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5870 (array!91335 array!91337 (_ BitVec 32) (_ BitVec 32) V!54793 V!54793 (_ BitVec 32) Int) ListLongMap!21917)

(assert (=> b!1342867 (= res!891029 (contains!9086 (getCurrentListMap!5870 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun mapIsEmpty!57607 () Bool)

(declare-fun mapRes!57607 () Bool)

(assert (=> mapIsEmpty!57607 mapRes!57607))

(declare-fun b!1342868 () Bool)

(declare-fun e!764453 () Bool)

(assert (=> b!1342868 (= e!764456 (and e!764453 mapRes!57607))))

(declare-fun condMapEmpty!57607 () Bool)

(declare-fun mapDefault!57607 () ValueCell!17735)

