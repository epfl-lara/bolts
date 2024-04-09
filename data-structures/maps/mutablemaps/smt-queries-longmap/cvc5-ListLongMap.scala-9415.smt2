; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112134 () Bool)

(assert start!112134)

(declare-fun b!1327639 () Bool)

(declare-fun res!881042 () Bool)

(declare-fun e!756870 () Bool)

(assert (=> b!1327639 (=> (not res!881042) (not e!756870))))

(declare-datatypes ((V!53641 0))(
  ( (V!53642 (val!18276 Int)) )
))
(declare-datatypes ((ValueCell!17303 0))(
  ( (ValueCellFull!17303 (v!20911 V!53641)) (EmptyCell!17303) )
))
(declare-datatypes ((array!89671 0))(
  ( (array!89672 (arr!43297 (Array (_ BitVec 32) ValueCell!17303)) (size!43848 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89671)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89673 0))(
  ( (array!89674 (arr!43298 (Array (_ BitVec 32) (_ BitVec 64))) (size!43849 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89673)

(declare-fun mask!1998 () (_ BitVec 32))

(assert (=> b!1327639 (= res!881042 (and (= (size!43848 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43849 _keys!1590) (size!43848 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!56278 () Bool)

(declare-fun mapRes!56278 () Bool)

(assert (=> mapIsEmpty!56278 mapRes!56278))

(declare-fun b!1327640 () Bool)

(declare-fun e!756871 () Bool)

(declare-fun e!756873 () Bool)

(assert (=> b!1327640 (= e!756871 (and e!756873 mapRes!56278))))

(declare-fun condMapEmpty!56278 () Bool)

(declare-fun mapDefault!56278 () ValueCell!17303)

