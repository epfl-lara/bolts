; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112768 () Bool)

(assert start!112768)

(declare-fun b_free!31043 () Bool)

(declare-fun b_next!31043 () Bool)

(assert (=> start!112768 (= b_free!31043 (not b_next!31043))))

(declare-fun tp!108774 () Bool)

(declare-fun b_and!50031 () Bool)

(assert (=> start!112768 (= tp!108774 b_and!50031)))

(declare-fun b!1337163 () Bool)

(declare-fun res!887452 () Bool)

(declare-fun e!761444 () Bool)

(assert (=> b!1337163 (=> (not res!887452) (not e!761444))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90737 0))(
  ( (array!90738 (arr!43828 (Array (_ BitVec 32) (_ BitVec 64))) (size!44379 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90737)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1337163 (= res!887452 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44379 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1337164 () Bool)

(declare-fun res!887450 () Bool)

(assert (=> b!1337164 (=> (not res!887450) (not e!761444))))

(assert (=> b!1337164 (= res!887450 (not (= (select (arr!43828 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1337165 () Bool)

(declare-fun e!761443 () Bool)

(declare-fun e!761440 () Bool)

(declare-fun mapRes!57110 () Bool)

(assert (=> b!1337165 (= e!761443 (and e!761440 mapRes!57110))))

(declare-fun condMapEmpty!57110 () Bool)

(declare-datatypes ((V!54373 0))(
  ( (V!54374 (val!18551 Int)) )
))
(declare-datatypes ((ValueCell!17578 0))(
  ( (ValueCellFull!17578 (v!21190 V!54373)) (EmptyCell!17578) )
))
(declare-datatypes ((array!90739 0))(
  ( (array!90740 (arr!43829 (Array (_ BitVec 32) ValueCell!17578)) (size!44380 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90739)

(declare-fun mapDefault!57110 () ValueCell!17578)

