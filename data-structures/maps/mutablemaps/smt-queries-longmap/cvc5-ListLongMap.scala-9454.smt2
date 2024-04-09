; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112368 () Bool)

(assert start!112368)

(declare-fun b_free!30727 () Bool)

(declare-fun b_next!30727 () Bool)

(assert (=> start!112368 (= b_free!30727 (not b_next!30727))))

(declare-fun tp!107818 () Bool)

(declare-fun b_and!49519 () Bool)

(assert (=> start!112368 (= tp!107818 b_and!49519)))

(declare-fun b!1331274 () Bool)

(declare-fun res!883493 () Bool)

(declare-fun e!758626 () Bool)

(assert (=> b!1331274 (=> (not res!883493) (not e!758626))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90125 0))(
  ( (array!90126 (arr!43524 (Array (_ BitVec 32) (_ BitVec 64))) (size!44075 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90125)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1331274 (= res!883493 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44075 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!883497 () Bool)

(assert (=> start!112368 (=> (not res!883497) (not e!758626))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112368 (= res!883497 (validMask!0 mask!1998))))

(assert (=> start!112368 e!758626))

(declare-datatypes ((V!53953 0))(
  ( (V!53954 (val!18393 Int)) )
))
(declare-datatypes ((ValueCell!17420 0))(
  ( (ValueCellFull!17420 (v!21028 V!53953)) (EmptyCell!17420) )
))
(declare-datatypes ((array!90127 0))(
  ( (array!90128 (arr!43525 (Array (_ BitVec 32) ValueCell!17420)) (size!44076 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90127)

(declare-fun e!758629 () Bool)

(declare-fun array_inv!32785 (array!90127) Bool)

(assert (=> start!112368 (and (array_inv!32785 _values!1320) e!758629)))

(assert (=> start!112368 true))

(declare-fun array_inv!32786 (array!90125) Bool)

(assert (=> start!112368 (array_inv!32786 _keys!1590)))

(assert (=> start!112368 tp!107818))

(declare-fun tp_is_empty!36637 () Bool)

(assert (=> start!112368 tp_is_empty!36637))

(declare-fun b!1331275 () Bool)

(declare-fun res!883494 () Bool)

(assert (=> b!1331275 (=> (not res!883494) (not e!758626))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90125 (_ BitVec 32)) Bool)

(assert (=> b!1331275 (= res!883494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1331276 () Bool)

(declare-fun e!758625 () Bool)

(declare-fun mapRes!56629 () Bool)

(assert (=> b!1331276 (= e!758629 (and e!758625 mapRes!56629))))

(declare-fun condMapEmpty!56629 () Bool)

(declare-fun mapDefault!56629 () ValueCell!17420)

