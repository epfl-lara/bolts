; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111614 () Bool)

(assert start!111614)

(declare-fun b_free!30235 () Bool)

(declare-fun b_next!30235 () Bool)

(assert (=> start!111614 (= b_free!30235 (not b_next!30235))))

(declare-fun tp!106181 () Bool)

(declare-fun b_and!48639 () Bool)

(assert (=> start!111614 (= tp!106181 b_and!48639)))

(declare-fun mapNonEmpty!55730 () Bool)

(declare-fun mapRes!55730 () Bool)

(declare-fun tp!106182 () Bool)

(declare-fun e!753577 () Bool)

(assert (=> mapNonEmpty!55730 (= mapRes!55730 (and tp!106182 e!753577))))

(declare-datatypes ((V!53177 0))(
  ( (V!53178 (val!18102 Int)) )
))
(declare-datatypes ((ValueCell!17129 0))(
  ( (ValueCellFull!17129 (v!20730 V!53177)) (EmptyCell!17129) )
))
(declare-fun mapValue!55730 () ValueCell!17129)

(declare-datatypes ((array!89001 0))(
  ( (array!89002 (arr!42970 (Array (_ BitVec 32) ValueCell!17129)) (size!43521 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89001)

(declare-fun mapRest!55730 () (Array (_ BitVec 32) ValueCell!17129))

(declare-fun mapKey!55730 () (_ BitVec 32))

(assert (=> mapNonEmpty!55730 (= (arr!42970 _values!1337) (store mapRest!55730 mapKey!55730 mapValue!55730))))

(declare-fun b!1321229 () Bool)

(declare-fun e!753575 () Bool)

(declare-fun e!753576 () Bool)

(assert (=> b!1321229 (= e!753575 (and e!753576 mapRes!55730))))

(declare-fun condMapEmpty!55730 () Bool)

(declare-fun mapDefault!55730 () ValueCell!17129)

