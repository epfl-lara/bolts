; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78818 () Bool)

(assert start!78818)

(declare-fun b_free!17003 () Bool)

(declare-fun b_next!17003 () Bool)

(assert (=> start!78818 (= b_free!17003 (not b_next!17003))))

(declare-fun tp!59450 () Bool)

(declare-fun b_and!27761 () Bool)

(assert (=> start!78818 (= tp!59450 b_and!27761)))

(declare-fun mapNonEmpty!31023 () Bool)

(declare-fun mapRes!31023 () Bool)

(declare-fun tp!59451 () Bool)

(declare-fun e!516138 () Bool)

(assert (=> mapNonEmpty!31023 (= mapRes!31023 (and tp!59451 e!516138))))

(declare-datatypes ((V!30979 0))(
  ( (V!30980 (val!9806 Int)) )
))
(declare-datatypes ((ValueCell!9274 0))(
  ( (ValueCellFull!9274 (v!12324 V!30979)) (EmptyCell!9274) )
))
(declare-fun mapValue!31023 () ValueCell!9274)

(declare-datatypes ((array!55014 0))(
  ( (array!55015 (arr!26448 (Array (_ BitVec 32) ValueCell!9274)) (size!26908 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55014)

(declare-fun mapRest!31023 () (Array (_ BitVec 32) ValueCell!9274))

(declare-fun mapKey!31023 () (_ BitVec 32))

(assert (=> mapNonEmpty!31023 (= (arr!26448 _values!1231) (store mapRest!31023 mapKey!31023 mapValue!31023))))

(declare-fun b!919492 () Bool)

(declare-fun res!620131 () Bool)

(declare-fun e!516139 () Bool)

(assert (=> b!919492 (=> (not res!620131) (not e!516139))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!919492 (= res!620131 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!919493 () Bool)

(declare-fun tp_is_empty!19511 () Bool)

(assert (=> b!919493 (= e!516138 tp_is_empty!19511)))

(declare-fun b!919494 () Bool)

(declare-fun res!620126 () Bool)

(declare-fun e!516141 () Bool)

(assert (=> b!919494 (=> (not res!620126) (not e!516141))))

(declare-datatypes ((array!55016 0))(
  ( (array!55017 (arr!26449 (Array (_ BitVec 32) (_ BitVec 64))) (size!26909 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55016)

(declare-datatypes ((List!18676 0))(
  ( (Nil!18673) (Cons!18672 (h!19818 (_ BitVec 64)) (t!26417 List!18676)) )
))
(declare-fun arrayNoDuplicates!0 (array!55016 (_ BitVec 32) List!18676) Bool)

(assert (=> b!919494 (= res!620126 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18673))))

(declare-fun b!919495 () Bool)

(declare-fun e!516142 () Bool)

(declare-fun e!516144 () Bool)

(assert (=> b!919495 (= e!516142 (and e!516144 mapRes!31023))))

(declare-fun condMapEmpty!31023 () Bool)

(declare-fun mapDefault!31023 () ValueCell!9274)

