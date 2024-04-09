; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112474 () Bool)

(assert start!112474)

(declare-fun b_free!30833 () Bool)

(declare-fun b_next!30833 () Bool)

(assert (=> start!112474 (= b_free!30833 (not b_next!30833))))

(declare-fun tp!108136 () Bool)

(declare-fun b_and!49685 () Bool)

(assert (=> start!112474 (= tp!108136 b_and!49685)))

(declare-fun b!1332958 () Bool)

(declare-fun e!759420 () Bool)

(assert (=> b!1332958 (= e!759420 false)))

(declare-datatypes ((V!54093 0))(
  ( (V!54094 (val!18446 Int)) )
))
(declare-datatypes ((ValueCell!17473 0))(
  ( (ValueCellFull!17473 (v!21081 V!54093)) (EmptyCell!17473) )
))
(declare-datatypes ((array!90333 0))(
  ( (array!90334 (arr!43628 (Array (_ BitVec 32) ValueCell!17473)) (size!44179 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90333)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90335 0))(
  ( (array!90336 (arr!43629 (Array (_ BitVec 32) (_ BitVec 64))) (size!44180 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90335)

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54093)

(declare-fun zeroValue!1262 () V!54093)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun lt!592034 () Bool)

(declare-datatypes ((tuple2!23924 0))(
  ( (tuple2!23925 (_1!11972 (_ BitVec 64)) (_2!11972 V!54093)) )
))
(declare-datatypes ((List!31104 0))(
  ( (Nil!31101) (Cons!31100 (h!32309 tuple2!23924) (t!45309 List!31104)) )
))
(declare-datatypes ((ListLongMap!21593 0))(
  ( (ListLongMap!21594 (toList!10812 List!31104)) )
))
(declare-fun contains!8912 (ListLongMap!21593 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5733 (array!90335 array!90333 (_ BitVec 32) (_ BitVec 32) V!54093 V!54093 (_ BitVec 32) Int) ListLongMap!21593)

(assert (=> b!1332958 (= lt!592034 (contains!8912 (getCurrentListMap!5733 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1332960 () Bool)

(declare-fun e!759422 () Bool)

(declare-fun tp_is_empty!36743 () Bool)

(assert (=> b!1332960 (= e!759422 tp_is_empty!36743)))

(declare-fun mapNonEmpty!56788 () Bool)

(declare-fun mapRes!56788 () Bool)

(declare-fun tp!108137 () Bool)

(declare-fun e!759423 () Bool)

(assert (=> mapNonEmpty!56788 (= mapRes!56788 (and tp!108137 e!759423))))

(declare-fun mapKey!56788 () (_ BitVec 32))

(declare-fun mapValue!56788 () ValueCell!17473)

(declare-fun mapRest!56788 () (Array (_ BitVec 32) ValueCell!17473))

(assert (=> mapNonEmpty!56788 (= (arr!43628 _values!1320) (store mapRest!56788 mapKey!56788 mapValue!56788))))

(declare-fun b!1332961 () Bool)

(declare-fun res!884641 () Bool)

(assert (=> b!1332961 (=> (not res!884641) (not e!759420))))

(declare-datatypes ((List!31105 0))(
  ( (Nil!31102) (Cons!31101 (h!32310 (_ BitVec 64)) (t!45310 List!31105)) )
))
(declare-fun arrayNoDuplicates!0 (array!90335 (_ BitVec 32) List!31105) Bool)

(assert (=> b!1332961 (= res!884641 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31102))))

(declare-fun b!1332962 () Bool)

(assert (=> b!1332962 (= e!759423 tp_is_empty!36743)))

(declare-fun b!1332963 () Bool)

(declare-fun res!884638 () Bool)

(assert (=> b!1332963 (=> (not res!884638) (not e!759420))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90335 (_ BitVec 32)) Bool)

(assert (=> b!1332963 (= res!884638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332964 () Bool)

(declare-fun res!884639 () Bool)

(assert (=> b!1332964 (=> (not res!884639) (not e!759420))))

(assert (=> b!1332964 (= res!884639 (and (= (size!44179 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44180 _keys!1590) (size!44179 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1332959 () Bool)

(declare-fun e!759424 () Bool)

(assert (=> b!1332959 (= e!759424 (and e!759422 mapRes!56788))))

(declare-fun condMapEmpty!56788 () Bool)

(declare-fun mapDefault!56788 () ValueCell!17473)

