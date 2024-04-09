; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108790 () Bool)

(assert start!108790)

(declare-fun b_free!28267 () Bool)

(declare-fun b_next!28267 () Bool)

(assert (=> start!108790 (= b_free!28267 (not b_next!28267))))

(declare-fun tp!99918 () Bool)

(declare-fun b_and!46343 () Bool)

(assert (=> start!108790 (= tp!99918 b_and!46343)))

(declare-fun b!1284138 () Bool)

(declare-fun res!853165 () Bool)

(declare-fun e!733540 () Bool)

(assert (=> b!1284138 (=> (not res!853165) (not e!733540))))

(declare-datatypes ((array!84829 0))(
  ( (array!84830 (arr!40912 (Array (_ BitVec 32) (_ BitVec 64))) (size!41463 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84829)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84829 (_ BitVec 32)) Bool)

(assert (=> b!1284138 (= res!853165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!52418 () Bool)

(declare-fun mapRes!52418 () Bool)

(declare-fun tp!99917 () Bool)

(declare-fun e!733538 () Bool)

(assert (=> mapNonEmpty!52418 (= mapRes!52418 (and tp!99917 e!733538))))

(declare-datatypes ((V!50313 0))(
  ( (V!50314 (val!17028 Int)) )
))
(declare-datatypes ((ValueCell!16055 0))(
  ( (ValueCellFull!16055 (v!19628 V!50313)) (EmptyCell!16055) )
))
(declare-fun mapValue!52418 () ValueCell!16055)

(declare-datatypes ((array!84831 0))(
  ( (array!84832 (arr!40913 (Array (_ BitVec 32) ValueCell!16055)) (size!41464 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84831)

(declare-fun mapKey!52418 () (_ BitVec 32))

(declare-fun mapRest!52418 () (Array (_ BitVec 32) ValueCell!16055))

(assert (=> mapNonEmpty!52418 (= (arr!40913 _values!1445) (store mapRest!52418 mapKey!52418 mapValue!52418))))

(declare-fun b!1284139 () Bool)

(declare-fun res!853163 () Bool)

(assert (=> b!1284139 (=> (not res!853163) (not e!733540))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1284139 (= res!853163 (and (= (size!41464 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41463 _keys!1741) (size!41464 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!52418 () Bool)

(assert (=> mapIsEmpty!52418 mapRes!52418))

(declare-fun b!1284140 () Bool)

(declare-fun res!853164 () Bool)

(assert (=> b!1284140 (=> (not res!853164) (not e!733540))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1284140 (= res!853164 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41463 _keys!1741))))))

(declare-fun b!1284141 () Bool)

(declare-fun e!733539 () Bool)

(declare-fun e!733536 () Bool)

(assert (=> b!1284141 (= e!733539 (and e!733536 mapRes!52418))))

(declare-fun condMapEmpty!52418 () Bool)

(declare-fun mapDefault!52418 () ValueCell!16055)

