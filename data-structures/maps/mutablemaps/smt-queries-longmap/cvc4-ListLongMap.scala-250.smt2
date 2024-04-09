; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4184 () Bool)

(assert start!4184)

(declare-fun b_free!1091 () Bool)

(declare-fun b_next!1091 () Bool)

(assert (=> start!4184 (= b_free!1091 (not b_next!1091))))

(declare-fun tp!4692 () Bool)

(declare-fun b_and!1903 () Bool)

(assert (=> start!4184 (= tp!4692 b_and!1903)))

(declare-fun b!31766 () Bool)

(declare-fun res!19249 () Bool)

(declare-fun e!20262 () Bool)

(assert (=> b!31766 (=> (not res!19249) (not e!20262))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31766 (= res!19249 (validKeyInArray!0 k!1304))))

(declare-fun b!31767 () Bool)

(declare-fun res!19248 () Bool)

(assert (=> b!31767 (=> (not res!19248) (not e!20262))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1751 0))(
  ( (V!1752 (val!749 Int)) )
))
(declare-datatypes ((ValueCell!523 0))(
  ( (ValueCellFull!523 (v!1838 V!1751)) (EmptyCell!523) )
))
(declare-datatypes ((array!2097 0))(
  ( (array!2098 (arr!1002 (Array (_ BitVec 32) ValueCell!523)) (size!1103 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2097)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2099 0))(
  ( (array!2100 (arr!1003 (Array (_ BitVec 32) (_ BitVec 64))) (size!1104 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2099)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1751)

(declare-fun minValue!1443 () V!1751)

(declare-datatypes ((tuple2!1214 0))(
  ( (tuple2!1215 (_1!617 (_ BitVec 64)) (_2!617 V!1751)) )
))
(declare-datatypes ((List!817 0))(
  ( (Nil!814) (Cons!813 (h!1380 tuple2!1214) (t!3512 List!817)) )
))
(declare-datatypes ((ListLongMap!795 0))(
  ( (ListLongMap!796 (toList!413 List!817)) )
))
(declare-fun contains!350 (ListLongMap!795 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!238 (array!2099 array!2097 (_ BitVec 32) (_ BitVec 32) V!1751 V!1751 (_ BitVec 32) Int) ListLongMap!795)

(assert (=> b!31767 (= res!19248 (not (contains!350 (getCurrentListMap!238 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!31769 () Bool)

(declare-fun res!19251 () Bool)

(assert (=> b!31769 (=> (not res!19251) (not e!20262))))

(assert (=> b!31769 (= res!19251 (and (= (size!1103 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1104 _keys!1833) (size!1103 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1696 () Bool)

(declare-fun mapRes!1696 () Bool)

(assert (=> mapIsEmpty!1696 mapRes!1696))

(declare-fun b!31770 () Bool)

(declare-fun res!19246 () Bool)

(assert (=> b!31770 (=> (not res!19246) (not e!20262))))

(declare-datatypes ((List!818 0))(
  ( (Nil!815) (Cons!814 (h!1381 (_ BitVec 64)) (t!3513 List!818)) )
))
(declare-fun arrayNoDuplicates!0 (array!2099 (_ BitVec 32) List!818) Bool)

(assert (=> b!31770 (= res!19246 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!815))))

(declare-fun b!31771 () Bool)

(declare-fun e!20264 () Bool)

(declare-fun tp_is_empty!1445 () Bool)

(assert (=> b!31771 (= e!20264 tp_is_empty!1445)))

(declare-fun b!31772 () Bool)

(declare-fun e!20266 () Bool)

(assert (=> b!31772 (= e!20266 tp_is_empty!1445)))

(declare-fun b!31773 () Bool)

(declare-fun res!19247 () Bool)

(assert (=> b!31773 (=> (not res!19247) (not e!20262))))

(declare-fun arrayContainsKey!0 (array!2099 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!31773 (= res!19247 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!31774 () Bool)

(declare-fun e!20263 () Bool)

(assert (=> b!31774 (= e!20263 (and e!20266 mapRes!1696))))

(declare-fun condMapEmpty!1696 () Bool)

(declare-fun mapDefault!1696 () ValueCell!523)

