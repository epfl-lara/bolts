; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96668 () Bool)

(assert start!96668)

(declare-fun b_free!23105 () Bool)

(declare-fun b_next!23105 () Bool)

(assert (=> start!96668 (= b_free!23105 (not b_next!23105))))

(declare-fun tp!81254 () Bool)

(declare-fun b_and!36947 () Bool)

(assert (=> start!96668 (= tp!81254 b_and!36947)))

(declare-fun mapIsEmpty!42505 () Bool)

(declare-fun mapRes!42505 () Bool)

(assert (=> mapIsEmpty!42505 mapRes!42505))

(declare-fun b!1098952 () Bool)

(declare-fun e!627277 () Bool)

(declare-fun e!627278 () Bool)

(assert (=> b!1098952 (= e!627277 e!627278)))

(declare-fun res!733485 () Bool)

(assert (=> b!1098952 (=> (not res!733485) (not e!627278))))

(declare-datatypes ((array!71178 0))(
  ( (array!71179 (arr!34253 (Array (_ BitVec 32) (_ BitVec 64))) (size!34790 (_ BitVec 32))) )
))
(declare-fun lt!491914 () array!71178)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71178 (_ BitVec 32)) Bool)

(assert (=> b!1098952 (= res!733485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!491914 mask!1414))))

(declare-fun _keys!1070 () array!71178)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1098952 (= lt!491914 (array!71179 (store (arr!34253 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34790 _keys!1070)))))

(declare-fun b!1098953 () Bool)

(declare-fun e!627280 () Bool)

(declare-fun e!627284 () Bool)

(assert (=> b!1098953 (= e!627280 (and e!627284 mapRes!42505))))

(declare-fun condMapEmpty!42505 () Bool)

(declare-datatypes ((V!41333 0))(
  ( (V!41334 (val!13634 Int)) )
))
(declare-datatypes ((ValueCell!12868 0))(
  ( (ValueCellFull!12868 (v!16260 V!41333)) (EmptyCell!12868) )
))
(declare-datatypes ((array!71180 0))(
  ( (array!71181 (arr!34254 (Array (_ BitVec 32) ValueCell!12868)) (size!34791 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71180)

(declare-fun mapDefault!42505 () ValueCell!12868)

