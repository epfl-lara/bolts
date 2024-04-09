; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!710 () Bool)

(assert start!710)

(declare-fun b_free!143 () Bool)

(declare-fun b_next!143 () Bool)

(assert (=> start!710 (= b_free!143 (not b_next!143))))

(declare-fun tp!652 () Bool)

(declare-fun b_and!285 () Bool)

(assert (=> start!710 (= tp!652 b_and!285)))

(declare-fun res!5914 () Bool)

(declare-fun e!2570 () Bool)

(assert (=> start!710 (=> (not res!5914) (not e!2570))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!710 (= res!5914 (validMask!0 mask!2250))))

(assert (=> start!710 e!2570))

(assert (=> start!710 tp!652))

(assert (=> start!710 true))

(declare-datatypes ((V!471 0))(
  ( (V!472 (val!116 Int)) )
))
(declare-datatypes ((ValueCell!94 0))(
  ( (ValueCellFull!94 (v!1205 V!471)) (EmptyCell!94) )
))
(declare-datatypes ((array!375 0))(
  ( (array!376 (arr!178 (Array (_ BitVec 32) ValueCell!94)) (size!240 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!375)

(declare-fun e!2572 () Bool)

(declare-fun array_inv!125 (array!375) Bool)

(assert (=> start!710 (and (array_inv!125 _values!1492) e!2572)))

(declare-fun tp_is_empty!221 () Bool)

(assert (=> start!710 tp_is_empty!221))

(declare-datatypes ((array!377 0))(
  ( (array!378 (arr!179 (Array (_ BitVec 32) (_ BitVec 64))) (size!241 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!377)

(declare-fun array_inv!126 (array!377) Bool)

(assert (=> start!710 (array_inv!126 _keys!1806)))

(declare-fun b!4817 () Bool)

(declare-fun e!2569 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!377 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4817 (= e!2569 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!4818 () Bool)

(assert (=> b!4818 (= e!2570 (not true))))

(assert (=> b!4818 e!2569))

(declare-fun c!287 () Bool)

(assert (=> b!4818 (= c!287 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!471)

(declare-datatypes ((Unit!47 0))(
  ( (Unit!48) )
))
(declare-fun lt!795 () Unit!47)

(declare-fun minValue!1434 () V!471)

(declare-fun lemmaKeyInListMapIsInArray!11 (array!377 array!375 (_ BitVec 32) (_ BitVec 32) V!471 V!471 (_ BitVec 64) Int) Unit!47)

(assert (=> b!4818 (= lt!795 (lemmaKeyInListMapIsInArray!11 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!4819 () Bool)

(declare-fun res!5911 () Bool)

(assert (=> b!4819 (=> (not res!5911) (not e!2570))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!377 (_ BitVec 32)) Bool)

(assert (=> b!4819 (= res!5911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!4820 () Bool)

(declare-fun e!2571 () Bool)

(declare-fun mapRes!296 () Bool)

(assert (=> b!4820 (= e!2572 (and e!2571 mapRes!296))))

(declare-fun condMapEmpty!296 () Bool)

(declare-fun mapDefault!296 () ValueCell!94)

