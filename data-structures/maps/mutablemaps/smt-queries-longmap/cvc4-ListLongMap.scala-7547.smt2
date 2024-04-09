; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95642 () Bool)

(assert start!95642)

(declare-fun b_free!22259 () Bool)

(declare-fun b_next!22259 () Bool)

(assert (=> start!95642 (= b_free!22259 (not b_next!22259))))

(declare-fun tp!78627 () Bool)

(declare-fun b_and!35255 () Bool)

(assert (=> start!95642 (= tp!78627 b_and!35255)))

(declare-fun mapIsEmpty!41146 () Bool)

(declare-fun mapRes!41146 () Bool)

(assert (=> mapIsEmpty!41146 mapRes!41146))

(declare-fun mapNonEmpty!41146 () Bool)

(declare-fun tp!78626 () Bool)

(declare-fun e!617524 () Bool)

(assert (=> mapNonEmpty!41146 (= mapRes!41146 (and tp!78626 e!617524))))

(declare-datatypes ((V!40141 0))(
  ( (V!40142 (val!13187 Int)) )
))
(declare-datatypes ((ValueCell!12421 0))(
  ( (ValueCellFull!12421 (v!15809 V!40141)) (EmptyCell!12421) )
))
(declare-datatypes ((array!69428 0))(
  ( (array!69429 (arr!33384 (Array (_ BitVec 32) ValueCell!12421)) (size!33921 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69428)

(declare-fun mapKey!41146 () (_ BitVec 32))

(declare-fun mapValue!41146 () ValueCell!12421)

(declare-fun mapRest!41146 () (Array (_ BitVec 32) ValueCell!12421))

(assert (=> mapNonEmpty!41146 (= (arr!33384 _values!874) (store mapRest!41146 mapKey!41146 mapValue!41146))))

(declare-fun b!1080127 () Bool)

(declare-fun res!719954 () Bool)

(declare-fun e!617525 () Bool)

(assert (=> b!1080127 (=> (not res!719954) (not e!617525))))

(declare-datatypes ((array!69430 0))(
  ( (array!69431 (arr!33385 (Array (_ BitVec 32) (_ BitVec 64))) (size!33922 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69430)

(declare-datatypes ((List!23393 0))(
  ( (Nil!23390) (Cons!23389 (h!24598 (_ BitVec 64)) (t!32759 List!23393)) )
))
(declare-fun arrayNoDuplicates!0 (array!69430 (_ BitVec 32) List!23393) Bool)

(assert (=> b!1080127 (= res!719954 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23390))))

(declare-fun res!719959 () Bool)

(assert (=> start!95642 (=> (not res!719959) (not e!617525))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95642 (= res!719959 (validMask!0 mask!1414))))

(assert (=> start!95642 e!617525))

(assert (=> start!95642 tp!78627))

(assert (=> start!95642 true))

(declare-fun tp_is_empty!26261 () Bool)

(assert (=> start!95642 tp_is_empty!26261))

(declare-fun array_inv!25638 (array!69430) Bool)

(assert (=> start!95642 (array_inv!25638 _keys!1070)))

(declare-fun e!617522 () Bool)

(declare-fun array_inv!25639 (array!69428) Bool)

(assert (=> start!95642 (and (array_inv!25639 _values!874) e!617522)))

(declare-fun b!1080128 () Bool)

(declare-fun res!719958 () Bool)

(assert (=> b!1080128 (=> (not res!719958) (not e!617525))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080128 (= res!719958 (validKeyInArray!0 k!904))))

(declare-fun b!1080129 () Bool)

(declare-fun res!719956 () Bool)

(declare-fun e!617527 () Bool)

(assert (=> b!1080129 (=> (not res!719956) (not e!617527))))

(declare-fun lt!478931 () array!69430)

(assert (=> b!1080129 (= res!719956 (arrayNoDuplicates!0 lt!478931 #b00000000000000000000000000000000 Nil!23390))))

(declare-fun b!1080130 () Bool)

(declare-fun e!617526 () Bool)

(assert (=> b!1080130 (= e!617522 (and e!617526 mapRes!41146))))

(declare-fun condMapEmpty!41146 () Bool)

(declare-fun mapDefault!41146 () ValueCell!12421)

