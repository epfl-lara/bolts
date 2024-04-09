; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95822 () Bool)

(assert start!95822)

(declare-fun b_free!22439 () Bool)

(declare-fun b_next!22439 () Bool)

(assert (=> start!95822 (= b_free!22439 (not b_next!22439))))

(declare-fun tp!79166 () Bool)

(declare-fun b_and!35571 () Bool)

(assert (=> start!95822 (= tp!79166 b_and!35571)))

(declare-fun b!1083503 () Bool)

(declare-fun res!722384 () Bool)

(declare-fun e!619144 () Bool)

(assert (=> b!1083503 (=> (not res!722384) (not e!619144))))

(declare-datatypes ((array!69784 0))(
  ( (array!69785 (arr!33562 (Array (_ BitVec 32) (_ BitVec 64))) (size!34099 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69784)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1083503 (= res!722384 (= (select (arr!33562 _keys!1070) i!650) k!904))))

(declare-fun mapIsEmpty!41416 () Bool)

(declare-fun mapRes!41416 () Bool)

(assert (=> mapIsEmpty!41416 mapRes!41416))

(declare-fun b!1083504 () Bool)

(declare-fun res!722390 () Bool)

(assert (=> b!1083504 (=> (not res!722390) (not e!619144))))

(assert (=> b!1083504 (= res!722390 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34099 _keys!1070))))))

(declare-fun mapNonEmpty!41416 () Bool)

(declare-fun tp!79167 () Bool)

(declare-fun e!619147 () Bool)

(assert (=> mapNonEmpty!41416 (= mapRes!41416 (and tp!79167 e!619147))))

(declare-datatypes ((V!40381 0))(
  ( (V!40382 (val!13277 Int)) )
))
(declare-datatypes ((ValueCell!12511 0))(
  ( (ValueCellFull!12511 (v!15899 V!40381)) (EmptyCell!12511) )
))
(declare-datatypes ((array!69786 0))(
  ( (array!69787 (arr!33563 (Array (_ BitVec 32) ValueCell!12511)) (size!34100 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69786)

(declare-fun mapRest!41416 () (Array (_ BitVec 32) ValueCell!12511))

(declare-fun mapKey!41416 () (_ BitVec 32))

(declare-fun mapValue!41416 () ValueCell!12511)

(assert (=> mapNonEmpty!41416 (= (arr!33563 _values!874) (store mapRest!41416 mapKey!41416 mapValue!41416))))

(declare-fun b!1083505 () Bool)

(declare-fun e!619142 () Bool)

(declare-fun e!619145 () Bool)

(assert (=> b!1083505 (= e!619142 (and e!619145 mapRes!41416))))

(declare-fun condMapEmpty!41416 () Bool)

(declare-fun mapDefault!41416 () ValueCell!12511)

