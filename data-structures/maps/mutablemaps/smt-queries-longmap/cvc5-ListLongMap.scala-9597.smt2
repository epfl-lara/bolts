; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113480 () Bool)

(assert start!113480)

(declare-fun b_free!31495 () Bool)

(declare-fun b_next!31495 () Bool)

(assert (=> start!113480 (= b_free!31495 (not b_next!31495))))

(declare-fun tp!110291 () Bool)

(declare-fun b_and!50793 () Bool)

(assert (=> start!113480 (= tp!110291 b_and!50793)))

(declare-fun b!1346608 () Bool)

(declare-fun res!893627 () Bool)

(declare-fun e!766247 () Bool)

(assert (=> b!1346608 (=> (not res!893627) (not e!766247))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91779 0))(
  ( (array!91780 (arr!44341 (Array (_ BitVec 32) (_ BitVec 64))) (size!44892 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91779)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!55097 0))(
  ( (V!55098 (val!18822 Int)) )
))
(declare-datatypes ((ValueCell!17849 0))(
  ( (ValueCellFull!17849 (v!21468 V!55097)) (EmptyCell!17849) )
))
(declare-datatypes ((array!91781 0))(
  ( (array!91782 (arr!44342 (Array (_ BitVec 32) ValueCell!17849)) (size!44893 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91781)

(assert (=> b!1346608 (= res!893627 (and (= (size!44893 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44892 _keys!1571) (size!44893 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1346609 () Bool)

(declare-fun res!893625 () Bool)

(assert (=> b!1346609 (=> (not res!893625) (not e!766247))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1346609 (= res!893625 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44892 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1346610 () Bool)

(declare-fun res!893624 () Bool)

(assert (=> b!1346610 (=> (not res!893624) (not e!766247))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91779 (_ BitVec 32)) Bool)

(assert (=> b!1346610 (= res!893624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1346611 () Bool)

(declare-fun e!766245 () Bool)

(declare-fun tp_is_empty!37495 () Bool)

(assert (=> b!1346611 (= e!766245 tp_is_empty!37495)))

(declare-fun b!1346612 () Bool)

(declare-fun e!766244 () Bool)

(declare-fun mapRes!57949 () Bool)

(assert (=> b!1346612 (= e!766244 (and e!766245 mapRes!57949))))

(declare-fun condMapEmpty!57949 () Bool)

(declare-fun mapDefault!57949 () ValueCell!17849)

