; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84560 () Bool)

(assert start!84560)

(declare-fun b_free!20027 () Bool)

(declare-fun b_next!20027 () Bool)

(assert (=> start!84560 (= b_free!20027 (not b_next!20027))))

(declare-fun tp!69867 () Bool)

(declare-fun b_and!32139 () Bool)

(assert (=> start!84560 (= tp!69867 b_and!32139)))

(declare-fun b!988582 () Bool)

(declare-fun res!661320 () Bool)

(declare-fun e!557469 () Bool)

(assert (=> b!988582 (=> (not res!661320) (not e!557469))))

(declare-datatypes ((array!62433 0))(
  ( (array!62434 (arr!30067 (Array (_ BitVec 32) (_ BitVec 64))) (size!30547 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62433)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62433 (_ BitVec 32)) Bool)

(assert (=> b!988582 (= res!661320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!988583 () Bool)

(declare-fun res!661317 () Bool)

(assert (=> b!988583 (=> (not res!661317) (not e!557469))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!988583 (= res!661317 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30547 _keys!1544))))))

(declare-fun b!988584 () Bool)

(declare-fun res!661321 () Bool)

(assert (=> b!988584 (=> (not res!661321) (not e!557469))))

(declare-datatypes ((V!35973 0))(
  ( (V!35974 (val!11672 Int)) )
))
(declare-datatypes ((ValueCell!11140 0))(
  ( (ValueCellFull!11140 (v!14239 V!35973)) (EmptyCell!11140) )
))
(declare-datatypes ((array!62435 0))(
  ( (array!62436 (arr!30068 (Array (_ BitVec 32) ValueCell!11140)) (size!30548 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62435)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!988584 (= res!661321 (and (= (size!30548 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30547 _keys!1544) (size!30548 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!988585 () Bool)

(declare-fun e!557472 () Bool)

(declare-fun tp_is_empty!23243 () Bool)

(assert (=> b!988585 (= e!557472 tp_is_empty!23243)))

(declare-fun b!988586 () Bool)

(declare-fun e!557468 () Bool)

(declare-fun mapRes!36903 () Bool)

(assert (=> b!988586 (= e!557468 (and e!557472 mapRes!36903))))

(declare-fun condMapEmpty!36903 () Bool)

(declare-fun mapDefault!36903 () ValueCell!11140)

