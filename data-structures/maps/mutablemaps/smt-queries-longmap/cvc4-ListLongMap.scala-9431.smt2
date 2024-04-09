; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112234 () Bool)

(assert start!112234)

(declare-fun b_free!30593 () Bool)

(declare-fun b_next!30593 () Bool)

(assert (=> start!112234 (= b_free!30593 (not b_next!30593))))

(declare-fun tp!107416 () Bool)

(declare-fun b_and!49253 () Bool)

(assert (=> start!112234 (= tp!107416 b_and!49253)))

(declare-fun b!1328731 () Bool)

(declare-fun res!881690 () Bool)

(declare-fun e!757624 () Bool)

(assert (=> b!1328731 (=> (not res!881690) (not e!757624))))

(declare-datatypes ((array!89863 0))(
  ( (array!89864 (arr!43393 (Array (_ BitVec 32) (_ BitVec 64))) (size!43944 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89863)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89863 (_ BitVec 32)) Bool)

(assert (=> b!1328731 (= res!881690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328732 () Bool)

(declare-fun res!881687 () Bool)

(assert (=> b!1328732 (=> (not res!881687) (not e!757624))))

(declare-datatypes ((List!30926 0))(
  ( (Nil!30923) (Cons!30922 (h!32131 (_ BitVec 64)) (t!44939 List!30926)) )
))
(declare-fun arrayNoDuplicates!0 (array!89863 (_ BitVec 32) List!30926) Bool)

(assert (=> b!1328732 (= res!881687 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30923))))

(declare-fun b!1328734 () Bool)

(declare-fun res!881688 () Bool)

(assert (=> b!1328734 (=> (not res!881688) (not e!757624))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1328734 (= res!881688 (validKeyInArray!0 (select (arr!43393 _keys!1590) from!1980)))))

(declare-fun b!1328735 () Bool)

(declare-fun res!881689 () Bool)

(assert (=> b!1328735 (=> (not res!881689) (not e!757624))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1328735 (= res!881689 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43944 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1328736 () Bool)

(declare-fun e!757623 () Bool)

(declare-fun e!757622 () Bool)

(declare-fun mapRes!56428 () Bool)

(assert (=> b!1328736 (= e!757623 (and e!757622 mapRes!56428))))

(declare-fun condMapEmpty!56428 () Bool)

(declare-datatypes ((V!53773 0))(
  ( (V!53774 (val!18326 Int)) )
))
(declare-datatypes ((ValueCell!17353 0))(
  ( (ValueCellFull!17353 (v!20961 V!53773)) (EmptyCell!17353) )
))
(declare-datatypes ((array!89865 0))(
  ( (array!89866 (arr!43394 (Array (_ BitVec 32) ValueCell!17353)) (size!43945 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89865)

(declare-fun mapDefault!56428 () ValueCell!17353)

