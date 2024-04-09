; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84482 () Bool)

(assert start!84482)

(declare-fun b_free!20005 () Bool)

(declare-fun b_next!20005 () Bool)

(assert (=> start!84482 (= b_free!20005 (not b_next!20005))))

(declare-fun tp!69796 () Bool)

(declare-fun b_and!32095 () Bool)

(assert (=> start!84482 (= tp!69796 b_and!32095)))

(declare-fun b!987655 () Bool)

(declare-fun res!660833 () Bool)

(declare-fun e!556948 () Bool)

(assert (=> b!987655 (=> (not res!660833) (not e!556948))))

(declare-datatypes ((array!62391 0))(
  ( (array!62392 (arr!30047 (Array (_ BitVec 32) (_ BitVec 64))) (size!30527 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62391)

(declare-datatypes ((List!20907 0))(
  ( (Nil!20904) (Cons!20903 (h!22065 (_ BitVec 64)) (t!29848 List!20907)) )
))
(declare-fun arrayNoDuplicates!0 (array!62391 (_ BitVec 32) List!20907) Bool)

(assert (=> b!987655 (= res!660833 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20904))))

(declare-fun mapIsEmpty!36866 () Bool)

(declare-fun mapRes!36866 () Bool)

(assert (=> mapIsEmpty!36866 mapRes!36866))

(declare-fun b!987656 () Bool)

(declare-fun e!556947 () Bool)

(declare-fun e!556946 () Bool)

(assert (=> b!987656 (= e!556947 (and e!556946 mapRes!36866))))

(declare-fun condMapEmpty!36866 () Bool)

(declare-datatypes ((V!35945 0))(
  ( (V!35946 (val!11661 Int)) )
))
(declare-datatypes ((ValueCell!11129 0))(
  ( (ValueCellFull!11129 (v!14225 V!35945)) (EmptyCell!11129) )
))
(declare-datatypes ((array!62393 0))(
  ( (array!62394 (arr!30048 (Array (_ BitVec 32) ValueCell!11129)) (size!30528 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62393)

(declare-fun mapDefault!36866 () ValueCell!11129)

