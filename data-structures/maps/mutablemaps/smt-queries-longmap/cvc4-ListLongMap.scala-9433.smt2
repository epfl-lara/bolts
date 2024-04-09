; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112246 () Bool)

(assert start!112246)

(declare-fun b_free!30605 () Bool)

(declare-fun b_next!30605 () Bool)

(assert (=> start!112246 (= b_free!30605 (not b_next!30605))))

(declare-fun tp!107453 () Bool)

(declare-fun b_and!49275 () Bool)

(assert (=> start!112246 (= tp!107453 b_and!49275)))

(declare-fun b!1328956 () Bool)

(declare-fun res!881846 () Bool)

(declare-fun e!757710 () Bool)

(assert (=> b!1328956 (=> (not res!881846) (not e!757710))))

(declare-datatypes ((array!89887 0))(
  ( (array!89888 (arr!43405 (Array (_ BitVec 32) (_ BitVec 64))) (size!43956 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89887)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89887 (_ BitVec 32)) Bool)

(assert (=> b!1328956 (= res!881846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328957 () Bool)

(declare-fun res!881851 () Bool)

(assert (=> b!1328957 (=> (not res!881851) (not e!757710))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1328957 (= res!881851 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1328958 () Bool)

(declare-fun e!757713 () Bool)

(declare-fun tp_is_empty!36515 () Bool)

(assert (=> b!1328958 (= e!757713 tp_is_empty!36515)))

(declare-fun b!1328959 () Bool)

(declare-fun res!881845 () Bool)

(assert (=> b!1328959 (=> (not res!881845) (not e!757710))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1328959 (= res!881845 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43956 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1328960 () Bool)

(declare-fun res!881844 () Bool)

(assert (=> b!1328960 (=> (not res!881844) (not e!757710))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1328960 (= res!881844 (validKeyInArray!0 (select (arr!43405 _keys!1590) from!1980)))))

(declare-fun b!1328961 () Bool)

(declare-fun res!881849 () Bool)

(assert (=> b!1328961 (=> (not res!881849) (not e!757710))))

(assert (=> b!1328961 (= res!881849 (not (= (select (arr!43405 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1328962 () Bool)

(declare-fun e!757711 () Bool)

(declare-fun e!757712 () Bool)

(declare-fun mapRes!56446 () Bool)

(assert (=> b!1328962 (= e!757711 (and e!757712 mapRes!56446))))

(declare-fun condMapEmpty!56446 () Bool)

(declare-datatypes ((V!53789 0))(
  ( (V!53790 (val!18332 Int)) )
))
(declare-datatypes ((ValueCell!17359 0))(
  ( (ValueCellFull!17359 (v!20967 V!53789)) (EmptyCell!17359) )
))
(declare-datatypes ((array!89889 0))(
  ( (array!89890 (arr!43406 (Array (_ BitVec 32) ValueCell!17359)) (size!43957 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89889)

(declare-fun mapDefault!56446 () ValueCell!17359)

