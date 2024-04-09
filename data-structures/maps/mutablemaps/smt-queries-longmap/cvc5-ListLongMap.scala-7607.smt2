; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95998 () Bool)

(assert start!95998)

(declare-fun b_free!22615 () Bool)

(declare-fun b_next!22615 () Bool)

(assert (=> start!95998 (= b_free!22615 (not b_next!22615))))

(declare-fun tp!79694 () Bool)

(declare-fun b_and!35923 () Bool)

(assert (=> start!95998 (= tp!79694 b_and!35923)))

(declare-fun b!1087213 () Bool)

(declare-fun e!621087 () Bool)

(declare-datatypes ((V!40617 0))(
  ( (V!40618 (val!13365 Int)) )
))
(declare-datatypes ((tuple2!17024 0))(
  ( (tuple2!17025 (_1!8522 (_ BitVec 64)) (_2!8522 V!40617)) )
))
(declare-datatypes ((List!23665 0))(
  ( (Nil!23662) (Cons!23661 (h!24870 tuple2!17024) (t!33345 List!23665)) )
))
(declare-datatypes ((ListLongMap!15005 0))(
  ( (ListLongMap!15006 (toList!7518 List!23665)) )
))
(declare-fun lt!483767 () ListLongMap!15005)

(declare-fun lt!483766 () ListLongMap!15005)

(declare-fun lt!483761 () tuple2!17024)

(declare-fun +!3245 (ListLongMap!15005 tuple2!17024) ListLongMap!15005)

(assert (=> b!1087213 (= e!621087 (= lt!483767 (+!3245 lt!483766 lt!483761)))))

(declare-fun b!1087214 () Bool)

(declare-fun res!725127 () Bool)

(declare-fun e!621086 () Bool)

(assert (=> b!1087214 (=> (not res!725127) (not e!621086))))

(declare-datatypes ((array!70128 0))(
  ( (array!70129 (arr!33734 (Array (_ BitVec 32) (_ BitVec 64))) (size!34271 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70128)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70128 (_ BitVec 32)) Bool)

(assert (=> b!1087214 (= res!725127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1087215 () Bool)

(declare-fun res!725129 () Bool)

(assert (=> b!1087215 (=> (not res!725129) (not e!621086))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12599 0))(
  ( (ValueCellFull!12599 (v!15987 V!40617)) (EmptyCell!12599) )
))
(declare-datatypes ((array!70130 0))(
  ( (array!70131 (arr!33735 (Array (_ BitVec 32) ValueCell!12599)) (size!34272 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70130)

(assert (=> b!1087215 (= res!725129 (and (= (size!34272 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34271 _keys!1070) (size!34272 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1087216 () Bool)

(declare-fun res!725126 () Bool)

(declare-fun e!621088 () Bool)

(assert (=> b!1087216 (=> (not res!725126) (not e!621088))))

(declare-fun lt!483758 () array!70128)

(declare-datatypes ((List!23666 0))(
  ( (Nil!23663) (Cons!23662 (h!24871 (_ BitVec 64)) (t!33346 List!23666)) )
))
(declare-fun arrayNoDuplicates!0 (array!70128 (_ BitVec 32) List!23666) Bool)

(assert (=> b!1087216 (= res!725126 (arrayNoDuplicates!0 lt!483758 #b00000000000000000000000000000000 Nil!23663))))

(declare-fun res!725134 () Bool)

(assert (=> start!95998 (=> (not res!725134) (not e!621086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95998 (= res!725134 (validMask!0 mask!1414))))

(assert (=> start!95998 e!621086))

(assert (=> start!95998 tp!79694))

(assert (=> start!95998 true))

(declare-fun tp_is_empty!26617 () Bool)

(assert (=> start!95998 tp_is_empty!26617))

(declare-fun array_inv!25880 (array!70128) Bool)

(assert (=> start!95998 (array_inv!25880 _keys!1070)))

(declare-fun e!621084 () Bool)

(declare-fun array_inv!25881 (array!70130) Bool)

(assert (=> start!95998 (and (array_inv!25881 _values!874) e!621084)))

(declare-fun b!1087217 () Bool)

(declare-fun e!621083 () Bool)

(declare-fun mapRes!41680 () Bool)

(assert (=> b!1087217 (= e!621084 (and e!621083 mapRes!41680))))

(declare-fun condMapEmpty!41680 () Bool)

(declare-fun mapDefault!41680 () ValueCell!12599)

