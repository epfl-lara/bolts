; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95758 () Bool)

(assert start!95758)

(declare-fun b_free!22375 () Bool)

(declare-fun b_next!22375 () Bool)

(assert (=> start!95758 (= b_free!22375 (not b_next!22375))))

(declare-fun tp!78975 () Bool)

(declare-fun b_and!35443 () Bool)

(assert (=> start!95758 (= tp!78975 b_and!35443)))

(declare-fun b!1082287 () Bool)

(declare-fun res!721519 () Bool)

(declare-fun e!618570 () Bool)

(assert (=> b!1082287 (=> (not res!721519) (not e!618570))))

(declare-datatypes ((array!69658 0))(
  ( (array!69659 (arr!33499 (Array (_ BitVec 32) (_ BitVec 64))) (size!34036 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69658)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69658 (_ BitVec 32)) Bool)

(assert (=> b!1082287 (= res!721519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1082288 () Bool)

(declare-fun res!721524 () Bool)

(declare-fun e!618571 () Bool)

(assert (=> b!1082288 (=> (not res!721524) (not e!618571))))

(declare-fun lt!479564 () array!69658)

(declare-datatypes ((List!23484 0))(
  ( (Nil!23481) (Cons!23480 (h!24689 (_ BitVec 64)) (t!32924 List!23484)) )
))
(declare-fun arrayNoDuplicates!0 (array!69658 (_ BitVec 32) List!23484) Bool)

(assert (=> b!1082288 (= res!721524 (arrayNoDuplicates!0 lt!479564 #b00000000000000000000000000000000 Nil!23481))))

(declare-fun b!1082289 () Bool)

(declare-fun res!721523 () Bool)

(assert (=> b!1082289 (=> (not res!721523) (not e!618570))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1082289 (= res!721523 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34036 _keys!1070))))))

(declare-fun b!1082290 () Bool)

(declare-fun e!618566 () Bool)

(declare-fun e!618568 () Bool)

(declare-fun mapRes!41320 () Bool)

(assert (=> b!1082290 (= e!618566 (and e!618568 mapRes!41320))))

(declare-fun condMapEmpty!41320 () Bool)

(declare-datatypes ((V!40297 0))(
  ( (V!40298 (val!13245 Int)) )
))
(declare-datatypes ((ValueCell!12479 0))(
  ( (ValueCellFull!12479 (v!15867 V!40297)) (EmptyCell!12479) )
))
(declare-datatypes ((array!69660 0))(
  ( (array!69661 (arr!33500 (Array (_ BitVec 32) ValueCell!12479)) (size!34037 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69660)

(declare-fun mapDefault!41320 () ValueCell!12479)

