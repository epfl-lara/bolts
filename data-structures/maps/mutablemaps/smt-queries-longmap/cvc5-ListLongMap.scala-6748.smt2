; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84650 () Bool)

(assert start!84650)

(declare-fun b_free!20047 () Bool)

(declare-fun b_next!20047 () Bool)

(assert (=> start!84650 (= b_free!20047 (not b_next!20047))))

(declare-fun tp!69934 () Bool)

(declare-fun b_and!32197 () Bool)

(assert (=> start!84650 (= tp!69934 b_and!32197)))

(declare-fun mapIsEmpty!36940 () Bool)

(declare-fun mapRes!36940 () Bool)

(assert (=> mapIsEmpty!36940 mapRes!36940))

(declare-fun b!989495 () Bool)

(declare-fun res!661789 () Bool)

(declare-fun e!557995 () Bool)

(assert (=> b!989495 (=> (not res!661789) (not e!557995))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62475 0))(
  ( (array!62476 (arr!30086 (Array (_ BitVec 32) (_ BitVec 64))) (size!30566 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62475)

(assert (=> b!989495 (= res!661789 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30566 _keys!1544))))))

(declare-fun res!661793 () Bool)

(assert (=> start!84650 (=> (not res!661793) (not e!557995))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84650 (= res!661793 (validMask!0 mask!1948))))

(assert (=> start!84650 e!557995))

(assert (=> start!84650 true))

(declare-fun tp_is_empty!23263 () Bool)

(assert (=> start!84650 tp_is_empty!23263))

(declare-datatypes ((V!36001 0))(
  ( (V!36002 (val!11682 Int)) )
))
(declare-datatypes ((ValueCell!11150 0))(
  ( (ValueCellFull!11150 (v!14252 V!36001)) (EmptyCell!11150) )
))
(declare-datatypes ((array!62477 0))(
  ( (array!62478 (arr!30087 (Array (_ BitVec 32) ValueCell!11150)) (size!30567 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62477)

(declare-fun e!557999 () Bool)

(declare-fun array_inv!23101 (array!62477) Bool)

(assert (=> start!84650 (and (array_inv!23101 _values!1278) e!557999)))

(assert (=> start!84650 tp!69934))

(declare-fun array_inv!23102 (array!62475) Bool)

(assert (=> start!84650 (array_inv!23102 _keys!1544)))

(declare-fun b!989496 () Bool)

(declare-fun e!557996 () Bool)

(assert (=> b!989496 (= e!557996 tp_is_empty!23263)))

(declare-fun mapNonEmpty!36940 () Bool)

(declare-fun tp!69933 () Bool)

(assert (=> mapNonEmpty!36940 (= mapRes!36940 (and tp!69933 e!557996))))

(declare-fun mapValue!36940 () ValueCell!11150)

(declare-fun mapRest!36940 () (Array (_ BitVec 32) ValueCell!11150))

(declare-fun mapKey!36940 () (_ BitVec 32))

(assert (=> mapNonEmpty!36940 (= (arr!30087 _values!1278) (store mapRest!36940 mapKey!36940 mapValue!36940))))

(declare-fun b!989497 () Bool)

(declare-fun res!661795 () Bool)

(assert (=> b!989497 (=> (not res!661795) (not e!557995))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!989497 (= res!661795 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!989498 () Bool)

(declare-fun e!557997 () Bool)

(assert (=> b!989498 (= e!557997 tp_is_empty!23263)))

(declare-fun b!989499 () Bool)

(declare-fun res!661794 () Bool)

(assert (=> b!989499 (=> (not res!661794) (not e!557995))))

(assert (=> b!989499 (= res!661794 (and (= (size!30567 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30566 _keys!1544) (size!30567 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!989500 () Bool)

(assert (=> b!989500 (= e!557999 (and e!557997 mapRes!36940))))

(declare-fun condMapEmpty!36940 () Bool)

(declare-fun mapDefault!36940 () ValueCell!11150)

