; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84592 () Bool)

(assert start!84592)

(declare-fun b_free!20045 () Bool)

(declare-fun b_next!20045 () Bool)

(assert (=> start!84592 (= b_free!20045 (not b_next!20045))))

(declare-fun tp!69923 () Bool)

(declare-fun b_and!32177 () Bool)

(assert (=> start!84592 (= tp!69923 b_and!32177)))

(declare-fun mapNonEmpty!36933 () Bool)

(declare-fun mapRes!36933 () Bool)

(declare-fun tp!69924 () Bool)

(declare-fun e!557677 () Bool)

(assert (=> mapNonEmpty!36933 (= mapRes!36933 (and tp!69924 e!557677))))

(declare-datatypes ((V!35997 0))(
  ( (V!35998 (val!11681 Int)) )
))
(declare-datatypes ((ValueCell!11149 0))(
  ( (ValueCellFull!11149 (v!14248 V!35997)) (EmptyCell!11149) )
))
(declare-fun mapRest!36933 () (Array (_ BitVec 32) ValueCell!11149))

(declare-fun mapKey!36933 () (_ BitVec 32))

(declare-fun mapValue!36933 () ValueCell!11149)

(declare-datatypes ((array!62469 0))(
  ( (array!62470 (arr!30084 (Array (_ BitVec 32) ValueCell!11149)) (size!30564 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62469)

(assert (=> mapNonEmpty!36933 (= (arr!30084 _values!1278) (store mapRest!36933 mapKey!36933 mapValue!36933))))

(declare-fun b!988967 () Bool)

(declare-fun res!661564 () Bool)

(declare-fun e!557682 () Bool)

(assert (=> b!988967 (=> (not res!661564) (not e!557682))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62471 0))(
  ( (array!62472 (arr!30085 (Array (_ BitVec 32) (_ BitVec 64))) (size!30565 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62471)

(assert (=> b!988967 (= res!661564 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30565 _keys!1544))))))

(declare-fun b!988968 () Bool)

(declare-fun e!557679 () Bool)

(declare-fun e!557681 () Bool)

(assert (=> b!988968 (= e!557679 (and e!557681 mapRes!36933))))

(declare-fun condMapEmpty!36933 () Bool)

(declare-fun mapDefault!36933 () ValueCell!11149)

