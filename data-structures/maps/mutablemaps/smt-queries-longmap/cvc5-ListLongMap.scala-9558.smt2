; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113246 () Bool)

(assert start!113246)

(declare-fun b_free!31261 () Bool)

(declare-fun b_next!31261 () Bool)

(assert (=> start!113246 (= b_free!31261 (not b_next!31261))))

(declare-fun tp!109588 () Bool)

(declare-fun b_and!50439 () Bool)

(assert (=> start!113246 (= tp!109588 b_and!50439)))

(declare-fun b!1342752 () Bool)

(declare-fun res!890945 () Bool)

(declare-fun e!764409 () Bool)

(assert (=> b!1342752 (=> (not res!890945) (not e!764409))))

(declare-datatypes ((array!91323 0))(
  ( (array!91324 (arr!44113 (Array (_ BitVec 32) (_ BitVec 64))) (size!44664 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91323)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1342752 (= res!890945 (validKeyInArray!0 (select (arr!44113 _keys!1571) from!1960)))))

(declare-fun res!890942 () Bool)

(assert (=> start!113246 (=> (not res!890942) (not e!764409))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113246 (= res!890942 (validMask!0 mask!1977))))

(assert (=> start!113246 e!764409))

(declare-fun tp_is_empty!37261 () Bool)

(assert (=> start!113246 tp_is_empty!37261))

(assert (=> start!113246 true))

(declare-fun array_inv!33167 (array!91323) Bool)

(assert (=> start!113246 (array_inv!33167 _keys!1571)))

(declare-datatypes ((V!54785 0))(
  ( (V!54786 (val!18705 Int)) )
))
(declare-datatypes ((ValueCell!17732 0))(
  ( (ValueCellFull!17732 (v!21351 V!54785)) (EmptyCell!17732) )
))
(declare-datatypes ((array!91325 0))(
  ( (array!91326 (arr!44114 (Array (_ BitVec 32) ValueCell!17732)) (size!44665 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91325)

(declare-fun e!764407 () Bool)

(declare-fun array_inv!33168 (array!91325) Bool)

(assert (=> start!113246 (and (array_inv!33168 _values!1303) e!764407)))

(assert (=> start!113246 tp!109588))

(declare-fun mapNonEmpty!57598 () Bool)

(declare-fun mapRes!57598 () Bool)

(declare-fun tp!109589 () Bool)

(declare-fun e!764408 () Bool)

(assert (=> mapNonEmpty!57598 (= mapRes!57598 (and tp!109589 e!764408))))

(declare-fun mapRest!57598 () (Array (_ BitVec 32) ValueCell!17732))

(declare-fun mapKey!57598 () (_ BitVec 32))

(declare-fun mapValue!57598 () ValueCell!17732)

(assert (=> mapNonEmpty!57598 (= (arr!44114 _values!1303) (store mapRest!57598 mapKey!57598 mapValue!57598))))

(declare-fun b!1342753 () Bool)

(declare-fun res!890943 () Bool)

(assert (=> b!1342753 (=> (not res!890943) (not e!764409))))

(declare-fun minValue!1245 () V!54785)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun zeroValue!1245 () V!54785)

(declare-datatypes ((tuple2!24242 0))(
  ( (tuple2!24243 (_1!12131 (_ BitVec 64)) (_2!12131 V!54785)) )
))
(declare-datatypes ((List!31422 0))(
  ( (Nil!31419) (Cons!31418 (h!32627 tuple2!24242) (t!45901 List!31422)) )
))
(declare-datatypes ((ListLongMap!21911 0))(
  ( (ListLongMap!21912 (toList!10971 List!31422)) )
))
(declare-fun contains!9083 (ListLongMap!21911 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5867 (array!91323 array!91325 (_ BitVec 32) (_ BitVec 32) V!54785 V!54785 (_ BitVec 32) Int) ListLongMap!21911)

(assert (=> b!1342753 (= res!890943 (contains!9083 (getCurrentListMap!5867 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1342754 () Bool)

(declare-fun e!764410 () Bool)

(assert (=> b!1342754 (= e!764410 tp_is_empty!37261)))

(declare-fun b!1342755 () Bool)

(declare-fun res!890944 () Bool)

(assert (=> b!1342755 (=> (not res!890944) (not e!764409))))

(assert (=> b!1342755 (= res!890944 (and (= (size!44665 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44664 _keys!1571) (size!44665 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1342756 () Bool)

(declare-fun res!890940 () Bool)

(assert (=> b!1342756 (=> (not res!890940) (not e!764409))))

(assert (=> b!1342756 (= res!890940 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1342757 () Bool)

(declare-fun res!890948 () Bool)

(assert (=> b!1342757 (=> (not res!890948) (not e!764409))))

(assert (=> b!1342757 (= res!890948 (not (= (select (arr!44113 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1342758 () Bool)

(declare-fun res!890946 () Bool)

(assert (=> b!1342758 (=> (not res!890946) (not e!764409))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91323 (_ BitVec 32)) Bool)

(assert (=> b!1342758 (= res!890946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1342759 () Bool)

(assert (=> b!1342759 (= e!764408 tp_is_empty!37261)))

(declare-fun b!1342760 () Bool)

(declare-fun res!890947 () Bool)

(assert (=> b!1342760 (=> (not res!890947) (not e!764409))))

(declare-datatypes ((List!31423 0))(
  ( (Nil!31420) (Cons!31419 (h!32628 (_ BitVec 64)) (t!45902 List!31423)) )
))
(declare-fun arrayNoDuplicates!0 (array!91323 (_ BitVec 32) List!31423) Bool)

(assert (=> b!1342760 (= res!890947 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31420))))

(declare-fun b!1342761 () Bool)

(assert (=> b!1342761 (= e!764407 (and e!764410 mapRes!57598))))

(declare-fun condMapEmpty!57598 () Bool)

(declare-fun mapDefault!57598 () ValueCell!17732)

