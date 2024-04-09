; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113048 () Bool)

(assert start!113048)

(declare-fun b!1339382 () Bool)

(declare-fun res!888600 () Bool)

(declare-fun e!762926 () Bool)

(assert (=> b!1339382 (=> (not res!888600) (not e!762926))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!90945 0))(
  ( (array!90946 (arr!43924 (Array (_ BitVec 32) (_ BitVec 64))) (size!44475 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90945)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54521 0))(
  ( (V!54522 (val!18606 Int)) )
))
(declare-datatypes ((ValueCell!17633 0))(
  ( (ValueCellFull!17633 (v!21252 V!54521)) (EmptyCell!17633) )
))
(declare-datatypes ((array!90947 0))(
  ( (array!90948 (arr!43925 (Array (_ BitVec 32) ValueCell!17633)) (size!44476 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90947)

(assert (=> b!1339382 (= res!888600 (and (= (size!44476 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44475 _keys!1571) (size!44476 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57301 () Bool)

(declare-fun mapRes!57301 () Bool)

(declare-fun tp!109001 () Bool)

(declare-fun e!762922 () Bool)

(assert (=> mapNonEmpty!57301 (= mapRes!57301 (and tp!109001 e!762922))))

(declare-fun mapRest!57301 () (Array (_ BitVec 32) ValueCell!17633))

(declare-fun mapValue!57301 () ValueCell!17633)

(declare-fun mapKey!57301 () (_ BitVec 32))

(assert (=> mapNonEmpty!57301 (= (arr!43925 _values!1303) (store mapRest!57301 mapKey!57301 mapValue!57301))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun b!1339383 () Bool)

(assert (=> b!1339383 (= e!762926 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44475 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsgt from!1960 (size!44475 _keys!1571))))))

(declare-fun b!1339384 () Bool)

(declare-fun res!888601 () Bool)

(assert (=> b!1339384 (=> (not res!888601) (not e!762926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90945 (_ BitVec 32)) Bool)

(assert (=> b!1339384 (= res!888601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339385 () Bool)

(declare-fun e!762923 () Bool)

(declare-fun tp_is_empty!37063 () Bool)

(assert (=> b!1339385 (= e!762923 tp_is_empty!37063)))

(declare-fun mapIsEmpty!57301 () Bool)

(assert (=> mapIsEmpty!57301 mapRes!57301))

(declare-fun b!1339386 () Bool)

(declare-fun res!888599 () Bool)

(assert (=> b!1339386 (=> (not res!888599) (not e!762926))))

(declare-datatypes ((List!31281 0))(
  ( (Nil!31278) (Cons!31277 (h!32486 (_ BitVec 64)) (t!45620 List!31281)) )
))
(declare-fun arrayNoDuplicates!0 (array!90945 (_ BitVec 32) List!31281) Bool)

(assert (=> b!1339386 (= res!888599 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31278))))

(declare-fun res!888602 () Bool)

(assert (=> start!113048 (=> (not res!888602) (not e!762926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113048 (= res!888602 (validMask!0 mask!1977))))

(assert (=> start!113048 e!762926))

(assert (=> start!113048 true))

(declare-fun array_inv!33041 (array!90945) Bool)

(assert (=> start!113048 (array_inv!33041 _keys!1571)))

(declare-fun e!762925 () Bool)

(declare-fun array_inv!33042 (array!90947) Bool)

(assert (=> start!113048 (and (array_inv!33042 _values!1303) e!762925)))

(declare-fun b!1339387 () Bool)

(assert (=> b!1339387 (= e!762922 tp_is_empty!37063)))

(declare-fun b!1339388 () Bool)

(assert (=> b!1339388 (= e!762925 (and e!762923 mapRes!57301))))

(declare-fun condMapEmpty!57301 () Bool)

(declare-fun mapDefault!57301 () ValueCell!17633)

