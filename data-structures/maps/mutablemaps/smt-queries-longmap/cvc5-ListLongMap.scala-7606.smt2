; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95992 () Bool)

(assert start!95992)

(declare-fun b_free!22609 () Bool)

(declare-fun b_next!22609 () Bool)

(assert (=> start!95992 (= b_free!22609 (not b_next!22609))))

(declare-fun tp!79676 () Bool)

(declare-fun b_and!35911 () Bool)

(assert (=> start!95992 (= tp!79676 b_and!35911)))

(declare-fun mapIsEmpty!41671 () Bool)

(declare-fun mapRes!41671 () Bool)

(assert (=> mapIsEmpty!41671 mapRes!41671))

(declare-fun b!1087079 () Bool)

(declare-fun res!725026 () Bool)

(declare-fun e!621010 () Bool)

(assert (=> b!1087079 (=> (not res!725026) (not e!621010))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((array!70116 0))(
  ( (array!70117 (arr!33728 (Array (_ BitVec 32) (_ BitVec 64))) (size!34265 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70116)

(declare-datatypes ((V!40609 0))(
  ( (V!40610 (val!13362 Int)) )
))
(declare-datatypes ((ValueCell!12596 0))(
  ( (ValueCellFull!12596 (v!15984 V!40609)) (EmptyCell!12596) )
))
(declare-datatypes ((array!70118 0))(
  ( (array!70119 (arr!33729 (Array (_ BitVec 32) ValueCell!12596)) (size!34266 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70118)

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1087079 (= res!725026 (and (= (size!34266 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34265 _keys!1070) (size!34266 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1087080 () Bool)

(declare-fun e!621009 () Bool)

(declare-fun e!621013 () Bool)

(assert (=> b!1087080 (= e!621009 (and e!621013 mapRes!41671))))

(declare-fun condMapEmpty!41671 () Bool)

(declare-fun mapDefault!41671 () ValueCell!12596)

