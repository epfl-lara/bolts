; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84828 () Bool)

(assert start!84828)

(declare-fun extraKeys!1472 () (_ BitVec 32))

(declare-fun b!991295 () Bool)

(declare-datatypes ((V!36081 0))(
  ( (V!36082 (val!11712 Int)) )
))
(declare-datatypes ((ValueCell!11180 0))(
  ( (ValueCellFull!11180 (v!14288 V!36081)) (EmptyCell!11180) )
))
(declare-datatypes ((array!62593 0))(
  ( (array!62594 (arr!30142 (Array (_ BitVec 32) ValueCell!11180)) (size!30622 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62593)

(declare-fun e!559069 () Bool)

(declare-fun mask!2471 () (_ BitVec 32))

(declare-datatypes ((array!62595 0))(
  ( (array!62596 (arr!30143 (Array (_ BitVec 32) (_ BitVec 64))) (size!30623 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62595)

(assert (=> b!991295 (= e!559069 (and (= (size!30622 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30623 _keys!1945) (size!30622 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011) (= (size!30623 _keys!1945) (bvadd #b00000000000000000000000000000001 mask!2471)) (bvsgt #b00000000000000000000000000000000 (size!30623 _keys!1945))))))

(declare-fun b!991296 () Bool)

(declare-fun e!559071 () Bool)

(declare-fun tp_is_empty!23323 () Bool)

(assert (=> b!991296 (= e!559071 tp_is_empty!23323)))

(declare-fun mapIsEmpty!37041 () Bool)

(declare-fun mapRes!37041 () Bool)

(assert (=> mapIsEmpty!37041 mapRes!37041))

(declare-fun b!991297 () Bool)

(declare-fun e!559068 () Bool)

(assert (=> b!991297 (= e!559068 (and e!559071 mapRes!37041))))

(declare-fun condMapEmpty!37041 () Bool)

(declare-fun mapDefault!37041 () ValueCell!11180)

