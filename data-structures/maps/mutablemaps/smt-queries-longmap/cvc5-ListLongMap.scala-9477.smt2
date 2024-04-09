; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112506 () Bool)

(assert start!112506)

(declare-fun b_free!30865 () Bool)

(declare-fun b_next!30865 () Bool)

(assert (=> start!112506 (= b_free!30865 (not b_next!30865))))

(declare-fun tp!108233 () Bool)

(declare-fun b_and!49741 () Bool)

(assert (=> start!112506 (= tp!108233 b_and!49741)))

(declare-fun b!1333585 () Bool)

(declare-fun res!885103 () Bool)

(declare-fun e!759684 () Bool)

(assert (=> b!1333585 (=> (not res!885103) (not e!759684))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1333585 (= res!885103 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1333586 () Bool)

(declare-fun res!885106 () Bool)

(assert (=> b!1333586 (=> (not res!885106) (not e!759684))))

(declare-datatypes ((V!54137 0))(
  ( (V!54138 (val!18462 Int)) )
))
(declare-datatypes ((ValueCell!17489 0))(
  ( (ValueCellFull!17489 (v!21097 V!54137)) (EmptyCell!17489) )
))
(declare-datatypes ((array!90397 0))(
  ( (array!90398 (arr!43660 (Array (_ BitVec 32) ValueCell!17489)) (size!44211 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90397)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-datatypes ((array!90399 0))(
  ( (array!90400 (arr!43661 (Array (_ BitVec 32) (_ BitVec 64))) (size!44212 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90399)

(assert (=> b!1333586 (= res!885106 (and (= (size!44211 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44212 _keys!1590) (size!44211 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1333587 () Bool)

(declare-fun res!885101 () Bool)

(declare-fun e!759680 () Bool)

(assert (=> b!1333587 (=> (not res!885101) (not e!759680))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1333587 (= res!885101 (not (= k!1153 (select (arr!43661 _keys!1590) from!1980))))))

(declare-fun b!1333588 () Bool)

(assert (=> b!1333588 (= e!759684 e!759680)))

(declare-fun res!885104 () Bool)

(assert (=> b!1333588 (=> (not res!885104) (not e!759680))))

(declare-datatypes ((tuple2!23954 0))(
  ( (tuple2!23955 (_1!11987 (_ BitVec 64)) (_2!11987 V!54137)) )
))
(declare-datatypes ((List!31130 0))(
  ( (Nil!31127) (Cons!31126 (h!32335 tuple2!23954) (t!45361 List!31130)) )
))
(declare-datatypes ((ListLongMap!21623 0))(
  ( (ListLongMap!21624 (toList!10827 List!31130)) )
))
(declare-fun lt!592114 () ListLongMap!21623)

(declare-fun lt!592113 () V!54137)

(declare-fun contains!8927 (ListLongMap!21623 (_ BitVec 64)) Bool)

(declare-fun +!4691 (ListLongMap!21623 tuple2!23954) ListLongMap!21623)

(assert (=> b!1333588 (= res!885104 (contains!8927 (+!4691 lt!592114 (tuple2!23955 (select (arr!43661 _keys!1590) from!1980) lt!592113)) k!1153))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54137)

(declare-fun zeroValue!1262 () V!54137)

(declare-fun getCurrentListMapNoExtraKeys!6409 (array!90399 array!90397 (_ BitVec 32) (_ BitVec 32) V!54137 V!54137 (_ BitVec 32) Int) ListLongMap!21623)

(assert (=> b!1333588 (= lt!592114 (getCurrentListMapNoExtraKeys!6409 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun get!22065 (ValueCell!17489 V!54137) V!54137)

(declare-fun dynLambda!3728 (Int (_ BitVec 64)) V!54137)

(assert (=> b!1333588 (= lt!592113 (get!22065 (select (arr!43660 _values!1320) from!1980) (dynLambda!3728 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1333589 () Bool)

(declare-fun res!885102 () Bool)

(assert (=> b!1333589 (=> (not res!885102) (not e!759684))))

(declare-datatypes ((List!31131 0))(
  ( (Nil!31128) (Cons!31127 (h!32336 (_ BitVec 64)) (t!45362 List!31131)) )
))
(declare-fun arrayNoDuplicates!0 (array!90399 (_ BitVec 32) List!31131) Bool)

(assert (=> b!1333589 (= res!885102 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31128))))

(declare-fun b!1333590 () Bool)

(declare-fun e!759682 () Bool)

(declare-fun e!759685 () Bool)

(declare-fun mapRes!56836 () Bool)

(assert (=> b!1333590 (= e!759682 (and e!759685 mapRes!56836))))

(declare-fun condMapEmpty!56836 () Bool)

(declare-fun mapDefault!56836 () ValueCell!17489)

