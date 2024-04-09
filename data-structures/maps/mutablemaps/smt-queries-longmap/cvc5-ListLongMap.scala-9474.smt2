; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112488 () Bool)

(assert start!112488)

(declare-fun b_free!30847 () Bool)

(declare-fun b_next!30847 () Bool)

(assert (=> start!112488 (= b_free!30847 (not b_next!30847))))

(declare-fun tp!108178 () Bool)

(declare-fun b_and!49705 () Bool)

(assert (=> start!112488 (= tp!108178 b_and!49705)))

(declare-fun b!1333203 () Bool)

(declare-fun res!884814 () Bool)

(declare-fun e!759526 () Bool)

(assert (=> b!1333203 (=> (not res!884814) (not e!759526))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1333203 (= res!884814 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1333204 () Bool)

(declare-fun e!759529 () Bool)

(declare-fun tp_is_empty!36757 () Bool)

(assert (=> b!1333204 (= e!759529 tp_is_empty!36757)))

(declare-fun b!1333205 () Bool)

(declare-fun res!884822 () Bool)

(assert (=> b!1333205 (=> (not res!884822) (not e!759526))))

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90361 0))(
  ( (array!90362 (arr!43642 (Array (_ BitVec 32) (_ BitVec 64))) (size!44193 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90361)

(assert (=> b!1333205 (= res!884822 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44193 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1333206 () Bool)

(declare-fun e!759525 () Bool)

(assert (=> b!1333206 (= e!759525 tp_is_empty!36757)))

(declare-fun b!1333207 () Bool)

(declare-fun res!884821 () Bool)

(assert (=> b!1333207 (=> (not res!884821) (not e!759526))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90361 (_ BitVec 32)) Bool)

(assert (=> b!1333207 (= res!884821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun res!884819 () Bool)

(assert (=> start!112488 (=> (not res!884819) (not e!759526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112488 (= res!884819 (validMask!0 mask!1998))))

(assert (=> start!112488 e!759526))

(declare-datatypes ((V!54113 0))(
  ( (V!54114 (val!18453 Int)) )
))
(declare-datatypes ((ValueCell!17480 0))(
  ( (ValueCellFull!17480 (v!21088 V!54113)) (EmptyCell!17480) )
))
(declare-datatypes ((array!90363 0))(
  ( (array!90364 (arr!43643 (Array (_ BitVec 32) ValueCell!17480)) (size!44194 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90363)

(declare-fun e!759527 () Bool)

(declare-fun array_inv!32859 (array!90363) Bool)

(assert (=> start!112488 (and (array_inv!32859 _values!1320) e!759527)))

(assert (=> start!112488 true))

(declare-fun array_inv!32860 (array!90361) Bool)

(assert (=> start!112488 (array_inv!32860 _keys!1590)))

(assert (=> start!112488 tp!108178))

(assert (=> start!112488 tp_is_empty!36757))

(declare-fun b!1333208 () Bool)

(declare-fun res!884815 () Bool)

(assert (=> b!1333208 (=> (not res!884815) (not e!759526))))

(assert (=> b!1333208 (= res!884815 (not (= (select (arr!43642 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1333209 () Bool)

(declare-fun res!884818 () Bool)

(assert (=> b!1333209 (=> (not res!884818) (not e!759526))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54113)

(declare-fun zeroValue!1262 () V!54113)

(declare-datatypes ((tuple2!23936 0))(
  ( (tuple2!23937 (_1!11978 (_ BitVec 64)) (_2!11978 V!54113)) )
))
(declare-datatypes ((List!31114 0))(
  ( (Nil!31111) (Cons!31110 (h!32319 tuple2!23936) (t!45327 List!31114)) )
))
(declare-datatypes ((ListLongMap!21605 0))(
  ( (ListLongMap!21606 (toList!10818 List!31114)) )
))
(declare-fun contains!8918 (ListLongMap!21605 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5739 (array!90361 array!90363 (_ BitVec 32) (_ BitVec 32) V!54113 V!54113 (_ BitVec 32) Int) ListLongMap!21605)

(assert (=> b!1333209 (= res!884818 (contains!8918 (getCurrentListMap!5739 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1333210 () Bool)

(declare-fun mapRes!56809 () Bool)

(assert (=> b!1333210 (= e!759527 (and e!759529 mapRes!56809))))

(declare-fun condMapEmpty!56809 () Bool)

(declare-fun mapDefault!56809 () ValueCell!17480)

