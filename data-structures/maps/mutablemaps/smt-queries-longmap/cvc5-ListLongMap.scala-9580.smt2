; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113378 () Bool)

(assert start!113378)

(declare-fun b_free!31393 () Bool)

(declare-fun b_next!31393 () Bool)

(assert (=> start!113378 (= b_free!31393 (not b_next!31393))))

(declare-fun tp!109985 () Bool)

(declare-fun b_and!50649 () Bool)

(assert (=> start!113378 (= tp!109985 b_and!50649)))

(declare-fun b!1344949 () Bool)

(declare-fun res!892465 () Bool)

(declare-fun e!765422 () Bool)

(assert (=> b!1344949 (=> (not res!892465) (not e!765422))))

(declare-datatypes ((V!54961 0))(
  ( (V!54962 (val!18771 Int)) )
))
(declare-fun minValue!1245 () V!54961)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91583 0))(
  ( (array!91584 (arr!44243 (Array (_ BitVec 32) (_ BitVec 64))) (size!44794 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91583)

(declare-fun zeroValue!1245 () V!54961)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17798 0))(
  ( (ValueCellFull!17798 (v!21417 V!54961)) (EmptyCell!17798) )
))
(declare-datatypes ((array!91585 0))(
  ( (array!91586 (arr!44244 (Array (_ BitVec 32) ValueCell!17798)) (size!44795 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91585)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24334 0))(
  ( (tuple2!24335 (_1!12177 (_ BitVec 64)) (_2!12177 V!54961)) )
))
(declare-datatypes ((List!31507 0))(
  ( (Nil!31504) (Cons!31503 (h!32712 tuple2!24334) (t!46064 List!31507)) )
))
(declare-datatypes ((ListLongMap!22003 0))(
  ( (ListLongMap!22004 (toList!11017 List!31507)) )
))
(declare-fun contains!9129 (ListLongMap!22003 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5910 (array!91583 array!91585 (_ BitVec 32) (_ BitVec 32) V!54961 V!54961 (_ BitVec 32) Int) ListLongMap!22003)

(assert (=> b!1344949 (= res!892465 (contains!9129 (getCurrentListMap!5910 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1344950 () Bool)

(declare-fun e!765420 () Bool)

(declare-fun tp_is_empty!37393 () Bool)

(assert (=> b!1344950 (= e!765420 tp_is_empty!37393)))

(declare-fun b!1344951 () Bool)

(declare-fun res!892471 () Bool)

(assert (=> b!1344951 (=> (not res!892471) (not e!765422))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91583 (_ BitVec 32)) Bool)

(assert (=> b!1344951 (= res!892471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57796 () Bool)

(declare-fun mapRes!57796 () Bool)

(assert (=> mapIsEmpty!57796 mapRes!57796))

(declare-fun b!1344952 () Bool)

(declare-fun e!765417 () Bool)

(assert (=> b!1344952 (= e!765422 e!765417)))

(declare-fun res!892473 () Bool)

(assert (=> b!1344952 (=> (not res!892473) (not e!765417))))

(declare-fun lt!595204 () ListLongMap!22003)

(declare-fun lt!595202 () V!54961)

(declare-fun +!4797 (ListLongMap!22003 tuple2!24334) ListLongMap!22003)

(assert (=> b!1344952 (= res!892473 (contains!9129 (+!4797 lt!595204 (tuple2!24335 (select (arr!44243 _keys!1571) from!1960) lt!595202)) k!1142))))

(declare-fun getCurrentListMapNoExtraKeys!6520 (array!91583 array!91585 (_ BitVec 32) (_ BitVec 32) V!54961 V!54961 (_ BitVec 32) Int) ListLongMap!22003)

(assert (=> b!1344952 (= lt!595204 (getCurrentListMapNoExtraKeys!6520 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22390 (ValueCell!17798 V!54961) V!54961)

(declare-fun dynLambda!3834 (Int (_ BitVec 64)) V!54961)

(assert (=> b!1344952 (= lt!595202 (get!22390 (select (arr!44244 _values!1303) from!1960) (dynLambda!3834 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1344954 () Bool)

(declare-fun res!892466 () Bool)

(assert (=> b!1344954 (=> (not res!892466) (not e!765422))))

(assert (=> b!1344954 (= res!892466 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1344955 () Bool)

(declare-fun res!892470 () Bool)

(assert (=> b!1344955 (=> (not res!892470) (not e!765422))))

(declare-datatypes ((List!31508 0))(
  ( (Nil!31505) (Cons!31504 (h!32713 (_ BitVec 64)) (t!46065 List!31508)) )
))
(declare-fun arrayNoDuplicates!0 (array!91583 (_ BitVec 32) List!31508) Bool)

(assert (=> b!1344955 (= res!892470 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31505))))

(declare-fun b!1344956 () Bool)

(declare-fun res!892469 () Bool)

(assert (=> b!1344956 (=> (not res!892469) (not e!765417))))

(assert (=> b!1344956 (= res!892469 (not (= k!1142 (select (arr!44243 _keys!1571) from!1960))))))

(declare-fun b!1344957 () Bool)

(declare-fun res!892475 () Bool)

(assert (=> b!1344957 (=> (not res!892475) (not e!765422))))

(assert (=> b!1344957 (= res!892475 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44794 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!57796 () Bool)

(declare-fun tp!109984 () Bool)

(declare-fun e!765419 () Bool)

(assert (=> mapNonEmpty!57796 (= mapRes!57796 (and tp!109984 e!765419))))

(declare-fun mapValue!57796 () ValueCell!17798)

(declare-fun mapRest!57796 () (Array (_ BitVec 32) ValueCell!17798))

(declare-fun mapKey!57796 () (_ BitVec 32))

(assert (=> mapNonEmpty!57796 (= (arr!44244 _values!1303) (store mapRest!57796 mapKey!57796 mapValue!57796))))

(declare-fun b!1344958 () Bool)

(assert (=> b!1344958 (= e!765419 tp_is_empty!37393)))

(declare-fun b!1344959 () Bool)

(declare-fun e!765421 () Bool)

(assert (=> b!1344959 (= e!765421 (and e!765420 mapRes!57796))))

(declare-fun condMapEmpty!57796 () Bool)

(declare-fun mapDefault!57796 () ValueCell!17798)

