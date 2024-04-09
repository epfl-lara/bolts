; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97036 () Bool)

(assert start!97036)

(declare-fun b!1103327 () Bool)

(declare-fun e!629864 () Bool)

(declare-datatypes ((List!24159 0))(
  ( (Nil!24156) (Cons!24155 (h!25364 (_ BitVec 64)) (t!34431 List!24159)) )
))
(declare-fun contains!6425 (List!24159 (_ BitVec 64)) Bool)

(assert (=> b!1103327 (= e!629864 (contains!6425 Nil!24156 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!736170 () Bool)

(declare-fun e!629860 () Bool)

(assert (=> start!97036 (=> (not res!736170) (not e!629860))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!71478 0))(
  ( (array!71479 (arr!34393 (Array (_ BitVec 32) (_ BitVec 64))) (size!34930 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71478)

(assert (=> start!97036 (= res!736170 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34930 _keys!1208))))))

(assert (=> start!97036 e!629860))

(declare-fun array_inv!26344 (array!71478) Bool)

(assert (=> start!97036 (array_inv!26344 _keys!1208)))

(assert (=> start!97036 true))

(declare-datatypes ((V!41529 0))(
  ( (V!41530 (val!13707 Int)) )
))
(declare-datatypes ((ValueCell!12941 0))(
  ( (ValueCellFull!12941 (v!16339 V!41529)) (EmptyCell!12941) )
))
(declare-datatypes ((array!71480 0))(
  ( (array!71481 (arr!34394 (Array (_ BitVec 32) ValueCell!12941)) (size!34931 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71480)

(declare-fun e!629865 () Bool)

(declare-fun array_inv!26345 (array!71480) Bool)

(assert (=> start!97036 (and (array_inv!26345 _values!996) e!629865)))

(declare-fun b!1103328 () Bool)

(declare-fun res!736174 () Bool)

(assert (=> b!1103328 (=> (not res!736174) (not e!629860))))

(declare-fun noDuplicate!1600 (List!24159) Bool)

(assert (=> b!1103328 (= res!736174 (noDuplicate!1600 Nil!24156))))

(declare-fun mapIsEmpty!42754 () Bool)

(declare-fun mapRes!42754 () Bool)

(assert (=> mapIsEmpty!42754 mapRes!42754))

(declare-fun b!1103329 () Bool)

(declare-fun e!629862 () Bool)

(declare-fun tp_is_empty!27301 () Bool)

(assert (=> b!1103329 (= e!629862 tp_is_empty!27301)))

(declare-fun b!1103330 () Bool)

(assert (=> b!1103330 (= e!629860 e!629864)))

(declare-fun res!736175 () Bool)

(assert (=> b!1103330 (=> res!736175 e!629864)))

(assert (=> b!1103330 (= res!736175 (contains!6425 Nil!24156 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1103331 () Bool)

(declare-fun res!736171 () Bool)

(assert (=> b!1103331 (=> (not res!736171) (not e!629860))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103331 (= res!736171 (validMask!0 mask!1564))))

(declare-fun b!1103332 () Bool)

(declare-fun e!629863 () Bool)

(assert (=> b!1103332 (= e!629865 (and e!629863 mapRes!42754))))

(declare-fun condMapEmpty!42754 () Bool)

(declare-fun mapDefault!42754 () ValueCell!12941)

