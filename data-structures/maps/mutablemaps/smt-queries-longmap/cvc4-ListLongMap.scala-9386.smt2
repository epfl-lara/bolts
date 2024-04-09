; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111792 () Bool)

(assert start!111792)

(declare-fun b_free!30413 () Bool)

(declare-fun b_next!30413 () Bool)

(assert (=> start!111792 (= b_free!30413 (not b_next!30413))))

(declare-fun tp!106716 () Bool)

(declare-fun b_and!48961 () Bool)

(assert (=> start!111792 (= tp!106716 b_and!48961)))

(declare-fun b!1324151 () Bool)

(declare-fun e!754912 () Bool)

(declare-fun tp_is_empty!36233 () Bool)

(assert (=> b!1324151 (= e!754912 tp_is_empty!36233)))

(declare-fun b!1324152 () Bool)

(declare-fun res!878997 () Bool)

(declare-fun e!754910 () Bool)

(assert (=> b!1324152 (=> (not res!878997) (not e!754910))))

(declare-datatypes ((array!89335 0))(
  ( (array!89336 (arr!43137 (Array (_ BitVec 32) (_ BitVec 64))) (size!43688 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89335)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1324152 (= res!878997 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43688 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1324153 () Bool)

(declare-fun e!754908 () Bool)

(declare-fun mapRes!55997 () Bool)

(assert (=> b!1324153 (= e!754908 (and e!754912 mapRes!55997))))

(declare-fun condMapEmpty!55997 () Bool)

(declare-datatypes ((V!53413 0))(
  ( (V!53414 (val!18191 Int)) )
))
(declare-datatypes ((ValueCell!17218 0))(
  ( (ValueCellFull!17218 (v!20819 V!53413)) (EmptyCell!17218) )
))
(declare-datatypes ((array!89337 0))(
  ( (array!89338 (arr!43138 (Array (_ BitVec 32) ValueCell!17218)) (size!43689 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89337)

(declare-fun mapDefault!55997 () ValueCell!17218)

