; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113640 () Bool)

(assert start!113640)

(declare-fun b_free!31571 () Bool)

(declare-fun b_next!31571 () Bool)

(assert (=> start!113640 (= b_free!31571 (not b_next!31571))))

(declare-fun tp!110526 () Bool)

(declare-fun b_and!50939 () Bool)

(assert (=> start!113640 (= tp!110526 b_and!50939)))

(declare-fun b!1348527 () Bool)

(declare-fun res!894819 () Bool)

(declare-fun e!767179 () Bool)

(assert (=> b!1348527 (=> (not res!894819) (not e!767179))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91931 0))(
  ( (array!91932 (arr!44415 (Array (_ BitVec 32) (_ BitVec 64))) (size!44966 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91931)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!55197 0))(
  ( (V!55198 (val!18860 Int)) )
))
(declare-datatypes ((ValueCell!17887 0))(
  ( (ValueCellFull!17887 (v!21510 V!55197)) (EmptyCell!17887) )
))
(declare-datatypes ((array!91933 0))(
  ( (array!91934 (arr!44416 (Array (_ BitVec 32) ValueCell!17887)) (size!44967 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91933)

(assert (=> b!1348527 (= res!894819 (and (= (size!44967 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44966 _keys!1571) (size!44967 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!58070 () Bool)

(declare-fun mapRes!58070 () Bool)

(assert (=> mapIsEmpty!58070 mapRes!58070))

(declare-fun b!1348528 () Bool)

(declare-fun res!894820 () Bool)

(assert (=> b!1348528 (=> (not res!894820) (not e!767179))))

(declare-fun minValue!1245 () V!55197)

(declare-fun zeroValue!1245 () V!55197)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24458 0))(
  ( (tuple2!24459 (_1!12239 (_ BitVec 64)) (_2!12239 V!55197)) )
))
(declare-datatypes ((List!31627 0))(
  ( (Nil!31624) (Cons!31623 (h!32832 tuple2!24458) (t!46272 List!31627)) )
))
(declare-datatypes ((ListLongMap!22127 0))(
  ( (ListLongMap!22128 (toList!11079 List!31627)) )
))
(declare-fun contains!9194 (ListLongMap!22127 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5969 (array!91931 array!91933 (_ BitVec 32) (_ BitVec 32) V!55197 V!55197 (_ BitVec 32) Int) ListLongMap!22127)

(assert (=> b!1348528 (= res!894820 (contains!9194 (getCurrentListMap!5969 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1348529 () Bool)

(declare-fun e!767181 () Bool)

(declare-fun tp_is_empty!37571 () Bool)

(assert (=> b!1348529 (= e!767181 tp_is_empty!37571)))

(declare-fun res!894816 () Bool)

(assert (=> start!113640 (=> (not res!894816) (not e!767179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113640 (= res!894816 (validMask!0 mask!1977))))

(assert (=> start!113640 e!767179))

(assert (=> start!113640 tp_is_empty!37571))

(assert (=> start!113640 true))

(declare-fun array_inv!33367 (array!91931) Bool)

(assert (=> start!113640 (array_inv!33367 _keys!1571)))

(declare-fun e!767178 () Bool)

(declare-fun array_inv!33368 (array!91933) Bool)

(assert (=> start!113640 (and (array_inv!33368 _values!1303) e!767178)))

(assert (=> start!113640 tp!110526))

(declare-fun b!1348530 () Bool)

(declare-fun res!894821 () Bool)

(assert (=> b!1348530 (=> (not res!894821) (not e!767179))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91931 (_ BitVec 32)) Bool)

(assert (=> b!1348530 (= res!894821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1348531 () Bool)

(declare-fun e!767177 () Bool)

(assert (=> b!1348531 (= e!767177 tp_is_empty!37571)))

(declare-fun mapNonEmpty!58070 () Bool)

(declare-fun tp!110525 () Bool)

(assert (=> mapNonEmpty!58070 (= mapRes!58070 (and tp!110525 e!767177))))

(declare-fun mapValue!58070 () ValueCell!17887)

(declare-fun mapKey!58070 () (_ BitVec 32))

(declare-fun mapRest!58070 () (Array (_ BitVec 32) ValueCell!17887))

(assert (=> mapNonEmpty!58070 (= (arr!44416 _values!1303) (store mapRest!58070 mapKey!58070 mapValue!58070))))

(declare-fun b!1348532 () Bool)

(declare-fun res!894823 () Bool)

(assert (=> b!1348532 (=> (not res!894823) (not e!767179))))

(assert (=> b!1348532 (= res!894823 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44966 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1348533 () Bool)

(declare-fun res!894817 () Bool)

(assert (=> b!1348533 (=> (not res!894817) (not e!767179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1348533 (= res!894817 (validKeyInArray!0 (select (arr!44415 _keys!1571) from!1960)))))

(declare-fun b!1348534 () Bool)

(declare-fun res!894822 () Bool)

(assert (=> b!1348534 (=> (not res!894822) (not e!767179))))

(assert (=> b!1348534 (= res!894822 (not (= (select (arr!44415 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1348535 () Bool)

(assert (=> b!1348535 (= e!767178 (and e!767181 mapRes!58070))))

(declare-fun condMapEmpty!58070 () Bool)

(declare-fun mapDefault!58070 () ValueCell!17887)

