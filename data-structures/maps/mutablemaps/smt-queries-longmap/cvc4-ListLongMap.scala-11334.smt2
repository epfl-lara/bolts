; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131944 () Bool)

(assert start!131944)

(declare-fun b_free!31625 () Bool)

(declare-fun b_next!31625 () Bool)

(assert (=> start!131944 (= b_free!31625 (not b_next!31625))))

(declare-fun tp!111128 () Bool)

(declare-fun b_and!51045 () Bool)

(assert (=> start!131944 (= tp!111128 b_and!51045)))

(declare-fun b!1544388 () Bool)

(declare-fun e!859650 () Bool)

(declare-fun tp_is_empty!37901 () Bool)

(assert (=> b!1544388 (= e!859650 tp_is_empty!37901)))

(declare-fun b!1544390 () Bool)

(declare-fun res!1059456 () Bool)

(declare-fun e!859652 () Bool)

(assert (=> b!1544390 (=> (not res!1059456) (not e!859652))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!102975 0))(
  ( (array!102976 (arr!49685 (Array (_ BitVec 32) (_ BitVec 64))) (size!50236 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102975)

(assert (=> b!1544390 (= res!1059456 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50236 _keys!618))))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58977 0))(
  ( (V!58978 (val!19028 Int)) )
))
(declare-datatypes ((ValueCell!18040 0))(
  ( (ValueCellFull!18040 (v!21826 V!58977)) (EmptyCell!18040) )
))
(declare-datatypes ((array!102977 0))(
  ( (array!102978 (arr!49686 (Array (_ BitVec 32) ValueCell!18040)) (size!50237 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102977)

(declare-fun minValue!436 () V!58977)

(declare-fun zeroValue!436 () V!58977)

(declare-fun bm!68909 () Bool)

(declare-datatypes ((tuple2!24586 0))(
  ( (tuple2!24587 (_1!12303 (_ BitVec 64)) (_2!12303 V!58977)) )
))
(declare-datatypes ((List!36106 0))(
  ( (Nil!36103) (Cons!36102 (h!37548 tuple2!24586) (t!50807 List!36106)) )
))
(declare-datatypes ((ListLongMap!22207 0))(
  ( (ListLongMap!22208 (toList!11119 List!36106)) )
))
(declare-fun call!68916 () ListLongMap!22207)

(declare-fun getCurrentListMapNoExtraKeys!6569 (array!102975 array!102977 (_ BitVec 32) (_ BitVec 32) V!58977 V!58977 (_ BitVec 32) Int) ListLongMap!22207)

(assert (=> bm!68909 (= call!68916 (getCurrentListMapNoExtraKeys!6569 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!68910 () Bool)

(declare-fun call!68915 () ListLongMap!22207)

(declare-fun call!68913 () ListLongMap!22207)

(assert (=> bm!68910 (= call!68915 call!68913)))

(declare-fun b!1544391 () Bool)

(declare-fun res!1059454 () Bool)

(assert (=> b!1544391 (=> (not res!1059454) (not e!859652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102975 (_ BitVec 32)) Bool)

(assert (=> b!1544391 (= res!1059454 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapIsEmpty!58555 () Bool)

(declare-fun mapRes!58555 () Bool)

(assert (=> mapIsEmpty!58555 mapRes!58555))

(declare-fun b!1544392 () Bool)

(declare-fun e!859654 () Bool)

(declare-fun e!859656 () Bool)

(assert (=> b!1544392 (= e!859654 (and e!859656 mapRes!58555))))

(declare-fun condMapEmpty!58555 () Bool)

(declare-fun mapDefault!58555 () ValueCell!18040)

