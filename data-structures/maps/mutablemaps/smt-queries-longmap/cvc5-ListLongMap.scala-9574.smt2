; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113342 () Bool)

(assert start!113342)

(declare-fun b_free!31357 () Bool)

(declare-fun b_next!31357 () Bool)

(assert (=> start!113342 (= b_free!31357 (not b_next!31357))))

(declare-fun tp!109877 () Bool)

(declare-fun b_and!50589 () Bool)

(assert (=> start!113342 (= tp!109877 b_and!50589)))

(declare-fun b!1344274 () Bool)

(declare-fun e!765130 () Bool)

(assert (=> b!1344274 (= e!765130 false)))

(declare-datatypes ((V!54913 0))(
  ( (V!54914 (val!18753 Int)) )
))
(declare-fun minValue!1245 () V!54913)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91511 0))(
  ( (array!91512 (arr!44207 (Array (_ BitVec 32) (_ BitVec 64))) (size!44758 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91511)

(declare-fun lt!595117 () Bool)

(declare-fun zeroValue!1245 () V!54913)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17780 0))(
  ( (ValueCellFull!17780 (v!21399 V!54913)) (EmptyCell!17780) )
))
(declare-datatypes ((array!91513 0))(
  ( (array!91514 (arr!44208 (Array (_ BitVec 32) ValueCell!17780)) (size!44759 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91513)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24310 0))(
  ( (tuple2!24311 (_1!12165 (_ BitVec 64)) (_2!12165 V!54913)) )
))
(declare-datatypes ((List!31484 0))(
  ( (Nil!31481) (Cons!31480 (h!32689 tuple2!24310) (t!46015 List!31484)) )
))
(declare-datatypes ((ListLongMap!21979 0))(
  ( (ListLongMap!21980 (toList!11005 List!31484)) )
))
(declare-fun contains!9117 (ListLongMap!21979 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5898 (array!91511 array!91513 (_ BitVec 32) (_ BitVec 32) V!54913 V!54913 (_ BitVec 32) Int) ListLongMap!21979)

(assert (=> b!1344274 (= lt!595117 (contains!9117 (getCurrentListMap!5898 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1344275 () Bool)

(declare-fun res!891980 () Bool)

(assert (=> b!1344275 (=> (not res!891980) (not e!765130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91511 (_ BitVec 32)) Bool)

(assert (=> b!1344275 (= res!891980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1344276 () Bool)

(declare-fun e!765127 () Bool)

(declare-fun tp_is_empty!37357 () Bool)

(assert (=> b!1344276 (= e!765127 tp_is_empty!37357)))

(declare-fun mapIsEmpty!57742 () Bool)

(declare-fun mapRes!57742 () Bool)

(assert (=> mapIsEmpty!57742 mapRes!57742))

(declare-fun b!1344277 () Bool)

(declare-fun res!891976 () Bool)

(assert (=> b!1344277 (=> (not res!891976) (not e!765130))))

(assert (=> b!1344277 (= res!891976 (and (= (size!44759 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44758 _keys!1571) (size!44759 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun res!891979 () Bool)

(assert (=> start!113342 (=> (not res!891979) (not e!765130))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113342 (= res!891979 (validMask!0 mask!1977))))

(assert (=> start!113342 e!765130))

(assert (=> start!113342 tp_is_empty!37357))

(assert (=> start!113342 true))

(declare-fun array_inv!33235 (array!91511) Bool)

(assert (=> start!113342 (array_inv!33235 _keys!1571)))

(declare-fun e!765129 () Bool)

(declare-fun array_inv!33236 (array!91513) Bool)

(assert (=> start!113342 (and (array_inv!33236 _values!1303) e!765129)))

(assert (=> start!113342 tp!109877))

(declare-fun b!1344278 () Bool)

(declare-fun res!891977 () Bool)

(assert (=> b!1344278 (=> (not res!891977) (not e!765130))))

(declare-datatypes ((List!31485 0))(
  ( (Nil!31482) (Cons!31481 (h!32690 (_ BitVec 64)) (t!46016 List!31485)) )
))
(declare-fun arrayNoDuplicates!0 (array!91511 (_ BitVec 32) List!31485) Bool)

(assert (=> b!1344278 (= res!891977 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31482))))

(declare-fun b!1344279 () Bool)

(declare-fun e!765128 () Bool)

(assert (=> b!1344279 (= e!765128 tp_is_empty!37357)))

(declare-fun b!1344280 () Bool)

(declare-fun res!891978 () Bool)

(assert (=> b!1344280 (=> (not res!891978) (not e!765130))))

(assert (=> b!1344280 (= res!891978 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44758 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1344281 () Bool)

(assert (=> b!1344281 (= e!765129 (and e!765128 mapRes!57742))))

(declare-fun condMapEmpty!57742 () Bool)

(declare-fun mapDefault!57742 () ValueCell!17780)

