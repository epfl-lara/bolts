; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82524 () Bool)

(assert start!82524)

(declare-fun mapIsEmpty!34141 () Bool)

(declare-fun mapRes!34141 () Bool)

(assert (=> mapIsEmpty!34141 mapRes!34141))

(declare-fun b!961292 () Bool)

(declare-fun res!643490 () Bool)

(declare-fun e!542052 () Bool)

(assert (=> b!961292 (=> (not res!643490) (not e!542052))))

(declare-datatypes ((array!58959 0))(
  ( (array!58960 (arr!28344 (Array (_ BitVec 32) (_ BitVec 64))) (size!28824 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58959)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58959 (_ BitVec 32)) Bool)

(assert (=> b!961292 (= res!643490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!961293 () Bool)

(declare-fun res!643489 () Bool)

(assert (=> b!961293 (=> (not res!643489) (not e!542052))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33557 0))(
  ( (V!33558 (val!10766 Int)) )
))
(declare-datatypes ((ValueCell!10234 0))(
  ( (ValueCellFull!10234 (v!13324 V!33557)) (EmptyCell!10234) )
))
(declare-datatypes ((array!58961 0))(
  ( (array!58962 (arr!28345 (Array (_ BitVec 32) ValueCell!10234)) (size!28825 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58961)

(assert (=> b!961293 (= res!643489 (and (= (size!28825 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28824 _keys!1686) (size!28825 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961294 () Bool)

(declare-fun e!542050 () Bool)

(declare-fun tp_is_empty!21431 () Bool)

(assert (=> b!961294 (= e!542050 tp_is_empty!21431)))

(declare-fun b!961295 () Bool)

(declare-fun e!542053 () Bool)

(declare-fun e!542049 () Bool)

(assert (=> b!961295 (= e!542053 (and e!542049 mapRes!34141))))

(declare-fun condMapEmpty!34141 () Bool)

(declare-fun mapDefault!34141 () ValueCell!10234)

