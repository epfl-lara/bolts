; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33530 () Bool)

(assert start!33530)

(declare-fun b_free!6811 () Bool)

(declare-fun b_next!6811 () Bool)

(assert (=> start!33530 (= b_free!6811 (not b_next!6811))))

(declare-fun tp!23927 () Bool)

(declare-fun b_and!14003 () Bool)

(assert (=> start!33530 (= tp!23927 b_and!14003)))

(declare-fun b!332469 () Bool)

(declare-fun res!183236 () Bool)

(declare-fun e!204175 () Bool)

(assert (=> b!332469 (=> (not res!183236) (not e!204175))))

(declare-datatypes ((array!17119 0))(
  ( (array!17120 (arr!8090 (Array (_ BitVec 32) (_ BitVec 64))) (size!8442 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17119)

(declare-datatypes ((List!4624 0))(
  ( (Nil!4621) (Cons!4620 (h!5476 (_ BitVec 64)) (t!9714 List!4624)) )
))
(declare-fun arrayNoDuplicates!0 (array!17119 (_ BitVec 32) List!4624) Bool)

(assert (=> b!332469 (= res!183236 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4621))))

(declare-fun b!332470 () Bool)

(declare-fun res!183231 () Bool)

(assert (=> b!332470 (=> (not res!183231) (not e!204175))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!9995 0))(
  ( (V!9996 (val!3426 Int)) )
))
(declare-datatypes ((ValueCell!3038 0))(
  ( (ValueCellFull!3038 (v!5581 V!9995)) (EmptyCell!3038) )
))
(declare-datatypes ((array!17121 0))(
  ( (array!17122 (arr!8091 (Array (_ BitVec 32) ValueCell!3038)) (size!8443 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17121)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!332470 (= res!183231 (and (= (size!8443 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8442 _keys!1895) (size!8443 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!332471 () Bool)

(declare-fun res!183234 () Bool)

(assert (=> b!332471 (=> (not res!183234) (not e!204175))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!332471 (= res!183234 (validKeyInArray!0 k!1348))))

(declare-fun mapIsEmpty!11532 () Bool)

(declare-fun mapRes!11532 () Bool)

(assert (=> mapIsEmpty!11532 mapRes!11532))

(declare-fun b!332472 () Bool)

(declare-fun e!204176 () Bool)

(declare-fun tp_is_empty!6763 () Bool)

(assert (=> b!332472 (= e!204176 tp_is_empty!6763)))

(declare-fun b!332473 () Bool)

(declare-fun res!183235 () Bool)

(assert (=> b!332473 (=> (not res!183235) (not e!204175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17119 (_ BitVec 32)) Bool)

(assert (=> b!332473 (= res!183235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!11532 () Bool)

(declare-fun tp!23928 () Bool)

(declare-fun e!204177 () Bool)

(assert (=> mapNonEmpty!11532 (= mapRes!11532 (and tp!23928 e!204177))))

(declare-fun mapValue!11532 () ValueCell!3038)

(declare-fun mapKey!11532 () (_ BitVec 32))

(declare-fun mapRest!11532 () (Array (_ BitVec 32) ValueCell!3038))

(assert (=> mapNonEmpty!11532 (= (arr!8091 _values!1525) (store mapRest!11532 mapKey!11532 mapValue!11532))))

(declare-fun b!332474 () Bool)

(declare-fun e!204174 () Bool)

(assert (=> b!332474 (= e!204174 (and e!204176 mapRes!11532))))

(declare-fun condMapEmpty!11532 () Bool)

(declare-fun mapDefault!11532 () ValueCell!3038)

