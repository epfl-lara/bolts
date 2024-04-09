; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111910 () Bool)

(assert start!111910)

(declare-fun b_free!30473 () Bool)

(declare-fun b_next!30473 () Bool)

(assert (=> start!111910 (= b_free!30473 (not b_next!30473))))

(declare-fun tp!106899 () Bool)

(declare-fun b_and!49051 () Bool)

(assert (=> start!111910 (= tp!106899 b_and!49051)))

(declare-fun b!1325457 () Bool)

(declare-fun res!879780 () Bool)

(declare-fun e!755618 () Bool)

(assert (=> b!1325457 (=> (not res!879780) (not e!755618))))

(declare-datatypes ((array!89455 0))(
  ( (array!89456 (arr!43196 (Array (_ BitVec 32) (_ BitVec 64))) (size!43747 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89455)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89455 (_ BitVec 32)) Bool)

(assert (=> b!1325457 (= res!879780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1325458 () Bool)

(declare-fun res!879777 () Bool)

(assert (=> b!1325458 (=> (not res!879777) (not e!755618))))

(declare-datatypes ((List!30822 0))(
  ( (Nil!30819) (Cons!30818 (h!32027 (_ BitVec 64)) (t!44773 List!30822)) )
))
(declare-fun arrayNoDuplicates!0 (array!89455 (_ BitVec 32) List!30822) Bool)

(assert (=> b!1325458 (= res!879777 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30819))))

(declare-fun b!1325459 () Bool)

(declare-fun res!879776 () Bool)

(assert (=> b!1325459 (=> (not res!879776) (not e!755618))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1325459 (= res!879776 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43747 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1325460 () Bool)

(declare-fun e!755619 () Bool)

(declare-fun e!755616 () Bool)

(declare-fun mapRes!56091 () Bool)

(assert (=> b!1325460 (= e!755619 (and e!755616 mapRes!56091))))

(declare-fun condMapEmpty!56091 () Bool)

(declare-datatypes ((V!53493 0))(
  ( (V!53494 (val!18221 Int)) )
))
(declare-datatypes ((ValueCell!17248 0))(
  ( (ValueCellFull!17248 (v!20852 V!53493)) (EmptyCell!17248) )
))
(declare-datatypes ((array!89457 0))(
  ( (array!89458 (arr!43197 (Array (_ BitVec 32) ValueCell!17248)) (size!43748 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89457)

(declare-fun mapDefault!56091 () ValueCell!17248)

