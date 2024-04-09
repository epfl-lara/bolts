; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113268 () Bool)

(assert start!113268)

(declare-fun b_free!31283 () Bool)

(declare-fun b_next!31283 () Bool)

(assert (=> start!113268 (= b_free!31283 (not b_next!31283))))

(declare-fun tp!109654 () Bool)

(declare-fun b_and!50483 () Bool)

(assert (=> start!113268 (= tp!109654 b_and!50483)))

(declare-fun res!891241 () Bool)

(declare-fun e!764573 () Bool)

(assert (=> start!113268 (=> (not res!891241) (not e!764573))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113268 (= res!891241 (validMask!0 mask!1977))))

(assert (=> start!113268 e!764573))

(declare-fun tp_is_empty!37283 () Bool)

(assert (=> start!113268 tp_is_empty!37283))

(assert (=> start!113268 true))

(declare-datatypes ((array!91367 0))(
  ( (array!91368 (arr!44135 (Array (_ BitVec 32) (_ BitVec 64))) (size!44686 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91367)

(declare-fun array_inv!33185 (array!91367) Bool)

(assert (=> start!113268 (array_inv!33185 _keys!1571)))

(declare-datatypes ((V!54813 0))(
  ( (V!54814 (val!18716 Int)) )
))
(declare-datatypes ((ValueCell!17743 0))(
  ( (ValueCellFull!17743 (v!21362 V!54813)) (EmptyCell!17743) )
))
(declare-datatypes ((array!91369 0))(
  ( (array!91370 (arr!44136 (Array (_ BitVec 32) ValueCell!17743)) (size!44687 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91369)

(declare-fun e!764572 () Bool)

(declare-fun array_inv!33186 (array!91369) Bool)

(assert (=> start!113268 (and (array_inv!33186 _values!1303) e!764572)))

(assert (=> start!113268 tp!109654))

(declare-fun b!1343170 () Bool)

(declare-fun res!891237 () Bool)

(assert (=> b!1343170 (=> (not res!891237) (not e!764573))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1343170 (= res!891237 (not (= (select (arr!44135 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1343171 () Bool)

(declare-fun e!764574 () Bool)

(assert (=> b!1343171 (= e!764574 tp_is_empty!37283)))

(declare-fun b!1343172 () Bool)

(assert (=> b!1343172 (= e!764573 (not true))))

(declare-datatypes ((tuple2!24260 0))(
  ( (tuple2!24261 (_1!12140 (_ BitVec 64)) (_2!12140 V!54813)) )
))
(declare-datatypes ((List!31438 0))(
  ( (Nil!31435) (Cons!31434 (h!32643 tuple2!24260) (t!45939 List!31438)) )
))
(declare-datatypes ((ListLongMap!21929 0))(
  ( (ListLongMap!21930 (toList!10980 List!31438)) )
))
(declare-fun lt!594777 () ListLongMap!21929)

(declare-fun zeroValue!1245 () V!54813)

(declare-fun contains!9092 (ListLongMap!21929 (_ BitVec 64)) Bool)

(declare-fun +!4778 (ListLongMap!21929 tuple2!24260) ListLongMap!21929)

(assert (=> b!1343172 (contains!9092 (+!4778 lt!594777 (tuple2!24261 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k!1142)))

(declare-datatypes ((Unit!44021 0))(
  ( (Unit!44022) )
))
(declare-fun lt!594779 () Unit!44021)

(declare-fun addStillContains!1204 (ListLongMap!21929 (_ BitVec 64) V!54813 (_ BitVec 64)) Unit!44021)

(assert (=> b!1343172 (= lt!594779 (addStillContains!1204 lt!594777 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k!1142))))

(assert (=> b!1343172 (contains!9092 lt!594777 k!1142)))

(declare-fun lt!594776 () Unit!44021)

(declare-fun lt!594781 () V!54813)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!370 ((_ BitVec 64) (_ BitVec 64) V!54813 ListLongMap!21929) Unit!44021)

(assert (=> b!1343172 (= lt!594776 (lemmaInListMapAfterAddingDiffThenInBefore!370 k!1142 (select (arr!44135 _keys!1571) from!1960) lt!594781 lt!594777))))

(declare-fun lt!594778 () ListLongMap!21929)

(assert (=> b!1343172 (contains!9092 lt!594778 k!1142)))

(declare-fun lt!594780 () Unit!44021)

(assert (=> b!1343172 (= lt!594780 (lemmaInListMapAfterAddingDiffThenInBefore!370 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594778))))

(assert (=> b!1343172 (= lt!594778 (+!4778 lt!594777 (tuple2!24261 (select (arr!44135 _keys!1571) from!1960) lt!594781)))))

(declare-fun defaultEntry!1306 () Int)

(declare-fun get!22333 (ValueCell!17743 V!54813) V!54813)

(declare-fun dynLambda!3815 (Int (_ BitVec 64)) V!54813)

(assert (=> b!1343172 (= lt!594781 (get!22333 (select (arr!44136 _values!1303) from!1960) (dynLambda!3815 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!54813)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6501 (array!91367 array!91369 (_ BitVec 32) (_ BitVec 32) V!54813 V!54813 (_ BitVec 32) Int) ListLongMap!21929)

(assert (=> b!1343172 (= lt!594777 (getCurrentListMapNoExtraKeys!6501 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1343173 () Bool)

(declare-fun e!764576 () Bool)

(assert (=> b!1343173 (= e!764576 tp_is_empty!37283)))

(declare-fun mapNonEmpty!57631 () Bool)

(declare-fun mapRes!57631 () Bool)

(declare-fun tp!109655 () Bool)

(assert (=> mapNonEmpty!57631 (= mapRes!57631 (and tp!109655 e!764576))))

(declare-fun mapRest!57631 () (Array (_ BitVec 32) ValueCell!17743))

(declare-fun mapValue!57631 () ValueCell!17743)

(declare-fun mapKey!57631 () (_ BitVec 32))

(assert (=> mapNonEmpty!57631 (= (arr!44136 _values!1303) (store mapRest!57631 mapKey!57631 mapValue!57631))))

(declare-fun b!1343174 () Bool)

(assert (=> b!1343174 (= e!764572 (and e!764574 mapRes!57631))))

(declare-fun condMapEmpty!57631 () Bool)

(declare-fun mapDefault!57631 () ValueCell!17743)

