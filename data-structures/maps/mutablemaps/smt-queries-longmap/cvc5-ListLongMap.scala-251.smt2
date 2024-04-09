; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4186 () Bool)

(assert start!4186)

(declare-fun b_free!1093 () Bool)

(declare-fun b_next!1093 () Bool)

(assert (=> start!4186 (= b_free!1093 (not b_next!1093))))

(declare-fun tp!4699 () Bool)

(declare-fun b_and!1905 () Bool)

(assert (=> start!4186 (= tp!4699 b_and!1905)))

(declare-fun mapNonEmpty!1699 () Bool)

(declare-fun mapRes!1699 () Bool)

(declare-fun tp!4698 () Bool)

(declare-fun e!20279 () Bool)

(assert (=> mapNonEmpty!1699 (= mapRes!1699 (and tp!4698 e!20279))))

(declare-datatypes ((V!1755 0))(
  ( (V!1756 (val!750 Int)) )
))
(declare-datatypes ((ValueCell!524 0))(
  ( (ValueCellFull!524 (v!1839 V!1755)) (EmptyCell!524) )
))
(declare-fun mapValue!1699 () ValueCell!524)

(declare-datatypes ((array!2101 0))(
  ( (array!2102 (arr!1004 (Array (_ BitVec 32) ValueCell!524)) (size!1105 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2101)

(declare-fun mapKey!1699 () (_ BitVec 32))

(declare-fun mapRest!1699 () (Array (_ BitVec 32) ValueCell!524))

(assert (=> mapNonEmpty!1699 (= (arr!1004 _values!1501) (store mapRest!1699 mapKey!1699 mapValue!1699))))

(declare-fun b!31796 () Bool)

(declare-fun res!19268 () Bool)

(declare-fun e!20281 () Bool)

(assert (=> b!31796 (=> (not res!19268) (not e!20281))))

(declare-datatypes ((array!2103 0))(
  ( (array!2104 (arr!1005 (Array (_ BitVec 32) (_ BitVec 64))) (size!1106 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2103)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2103 (_ BitVec 32)) Bool)

(assert (=> b!31796 (= res!19268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31797 () Bool)

(declare-fun tp_is_empty!1447 () Bool)

(assert (=> b!31797 (= e!20279 tp_is_empty!1447)))

(declare-fun b!31798 () Bool)

(assert (=> b!31798 (= e!20281 false)))

(declare-fun lt!11610 () (_ BitVec 32))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!2103 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!31798 (= lt!11610 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!31799 () Bool)

(declare-fun res!19267 () Bool)

(assert (=> b!31799 (=> (not res!19267) (not e!20281))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1755)

(declare-fun minValue!1443 () V!1755)

(declare-datatypes ((tuple2!1216 0))(
  ( (tuple2!1217 (_1!618 (_ BitVec 64)) (_2!618 V!1755)) )
))
(declare-datatypes ((List!819 0))(
  ( (Nil!816) (Cons!815 (h!1382 tuple2!1216) (t!3514 List!819)) )
))
(declare-datatypes ((ListLongMap!797 0))(
  ( (ListLongMap!798 (toList!414 List!819)) )
))
(declare-fun contains!351 (ListLongMap!797 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!239 (array!2103 array!2101 (_ BitVec 32) (_ BitVec 32) V!1755 V!1755 (_ BitVec 32) Int) ListLongMap!797)

(assert (=> b!31799 (= res!19267 (not (contains!351 (getCurrentListMap!239 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!31800 () Bool)

(declare-fun e!20280 () Bool)

(declare-fun e!20278 () Bool)

(assert (=> b!31800 (= e!20280 (and e!20278 mapRes!1699))))

(declare-fun condMapEmpty!1699 () Bool)

(declare-fun mapDefault!1699 () ValueCell!524)

